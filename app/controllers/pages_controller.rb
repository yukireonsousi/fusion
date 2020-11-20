# class PagesController < ApplicationController
class PagesController < ApplicationController
  before_action :sign_in_required, only: [:show] #application_controller.rb内で定義したメソッド
  def index
    # @user = current_user.id
    # @user = User.where.includes(id: params[:id])
  end

  

  def show

    # @user = User.find(params[:id])
    @user = current_user.id




    # @name = user.name
    # @baggage = user.baggages
    # @baggage = User.baggages.order("created_at DESC").page(params[:page]).per(5)

    # @baggage = Baggage.find_by(params[:id])
    # @user = User.find_by(id: @baggage.user_id)
  end


  


end
