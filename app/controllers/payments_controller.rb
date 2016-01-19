class PaymentsController < ApplicationController

  def create


    

    @product = Product.find(params[:product_id_test])
    logger.debug {"product #{@product.inspect}"}
    @user = current_user
    @cost = Float(@product.price)/100

    token = params[:stripeToken]
    begin
      charge = Stripe::Charge.create(
        :amount => @product.price,
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]


      )
      if charge.paid
        Order.create(product_id: @product.id, user_id: @user.id, total: @product.price/100)
  end
      rescue Stripe::CardError => e
      body = e.json_body
     err = body[:error]
     flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
   end
   redirect_to product_path(@product)
 end
 end
