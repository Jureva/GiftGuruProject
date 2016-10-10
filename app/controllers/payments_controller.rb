class PaymentsController < ApplicationController
  
  before_action :admin_user,     only: [:index]
  before_action :logged_in_user, only: [:new, :create]
  
  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new  #changed
  end

  def create
    @payment = Payment.new(payment_params) #changed

    if @payment.save  #changed
      if @payment.process #changed
        redirect_to payments_path, notice: "The user has been successfully charged." and return
      end
    end
    render 'new'
  end

private
  def payment_params
    params.require(:payment).permit(:first_name, :last_name, :credit_card_number, :expiration_month, :expiration_year, :card_security_code, :amount)
  end
end