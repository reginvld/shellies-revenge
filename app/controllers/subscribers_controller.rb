class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end
  
def create
  @subscriber = Subscriber.new(subscriber_params)
  if @subscriber.save
    flash[:success] = "saved successfully"
    redirect_to subscribers_path
  else
    flash[:danger] = @subscriber.errors.full_messages.join(", ")
    redirect_to subscribers_path
  end
end  
private
  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end