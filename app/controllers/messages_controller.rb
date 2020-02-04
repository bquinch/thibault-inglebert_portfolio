class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create
  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to root_url(anchor: 'contact'), notice: "Merci pour votre message, je vous répondrai dès que possible !"
      @message.save
    else
      redirect_to root_url(anchor: 'contact'), notice: 'Informations incomplètes'
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
