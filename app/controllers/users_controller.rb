class UsersController < ApplicationController
  
  # def show
  #   # redirect_to root_path unless current_user || current_user.admin?
  #   @user = User.find(params[:id])
  #   @baggages = Baggage.where(user_id: @user.id).order("created_at DESC").page(params[:page]).per(5)
    
  # end

  
  
  # def create
  #   @user = User.find(params[:id])
  #   @baggages = Baggage.where(user_id: @user.id)
  #    @baggages.new(delivery_data_params)


    #  @delivery_data = @baggages.all
  # end
    
  # def update
  #   @baggage = Baggage.find(params[:id])
  #   @baggage.update(delivery_data_params)




  




# private

#   def delivery_data_params
#     params.require(:baggage).permit(
#         :kind,:storage_period, :code, :user_id, :delivery_data )
#     # params.require(:baggage).permit(:delivery_data)
#   end
end

