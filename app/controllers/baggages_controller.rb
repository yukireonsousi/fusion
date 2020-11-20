class BaggagesController < ApplicationController
  before_action :if_not_admin, except: [:show, :delivery_data]
  before_action :set_baggage, only: [:edit, :update, :show, :destroy, :toggle]
  # before_action :move_to_index,only: [:show]
  
  def index
    
    @search = User.ransack(params[:q]) #:qは入力したクエリのq
    @users = @search.result#検索した"結果"ユーザーのparams丸ごと
    # @bagages = Baggage.find(user_id: @user.id)
    
  end

  def new

      @baggage = Baggage.new(baggage_params)
      
  end

  def create
    
    @baggage = Baggage.new(baggage_params)
    
    if @baggage.save
      
      redirect_to pages_show_path(@baggage)
    else
      
      render file: "pages/show"
      
    end
  end

  def edit
    
  end

  def update
    if @baggage.update(baggage_params)
      redirect_to pages_show_path(@baggage)
    else
      render :edit
    end
  end

  def show
    
  end

  def destroy
    if current_user.admin? && @baggage.destroy
      redirect_to user_path, notice: '削除されました'
    else
      render baggage_path
    end
  end

  def delivery_data
    # redirect_to root_path unless current_user || current_user.admin?
    @user = User.find(params[:id])
    @baggages = Baggage.where(user_id: @user.id).order("created_at DESC").page(params[:page]).per(5)
    
  end

  def toggle
  if @baggage.update_attributes(:delivery_data => params[:delivery_data]) # 「update_attributes」は単一の属性、今回はdelivery_dataを更新するための記述
    redirect_to delivery_data_baggage_path(@baggage)
  else
    flash.now[:alert] = 'メッセージを入力してください。'
      render :delivery_data
    
  end
end



  private
  

  def if_not_admin
    redirect_to root_path unless current_user.admin?#管理者ユーザー以外が特定のアクションを実行しようとした場合トップページにリダイレクトされる
  end

  def set_baggage
    @baggage = Baggage.find(params[:id])#edit, show, destroy などのアクションで使用する変数をセットします。
    
  end

  def baggage_params
    params.require(:baggage).permit(
      :kind,:storage_period, :code, :user_id )#.merge(user_id: current_user.id)
  end

  def delivery_data_params
    params.require(:baggage).permit(
        :kind,:storage_period, :code, :user_id, :delivery_data )
    # params.require(:ba
  end
  # def move_to_index
  #   redirect_to action: :index unless user_signed_in? && current_user.id == @baggage.user_id || current_user.admin
  # end


end


