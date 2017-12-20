class PaymentsController < ApplicationController

  def express
      response = EXPRESS_GATEWAY.setup_purchase(current_cart.build_payment.price_in_cents,
        :ip                => request.remote_ip,
        :return_url        => new_payment_url,
        :cancel_return_url => lands_url
      )
      redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
    end

    def new
      @payment = Payment.new(:express_token => params[:token])
    end

    def create
      @payment = current_cart.build_payment(payment_params)
      @payment.ip_address = request.remote_ip
      #byebug
      if @payment.save!
        if @payment.purchase
          flash[:success]="Giao dich thanh cong"
          redirect_to payment_path(@payment)
        else
          flash[:error]="Giao dich that bai"
          redirect_to lands_path
        end
      else
        logger.debug @payment.errors.full_messages.join(", ")
        render :action => 'new'
      end
    end
private
def payment_params
  params.require(:payment).permit(:firstname, :lastname,:express_token)
end
 end
