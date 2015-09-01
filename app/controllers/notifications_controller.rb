class NotificationsController < ApplicationController
  def show
  end

  def create
    NotificationsMailer.contact(email_params).deliver_now #name contact is arbitrary can be whatever you want
  end

  private

  def email_params
    params.permit(:name, :email, :message)
  end
end
