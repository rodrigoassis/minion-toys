class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    toy = Toy.find(order_params[:toy_id])
    order = Order.new(toy: toy, user: current_user, quantity: 1, unit_price: toy.price)

    if order.save
      ApplicationMailer.order_created(order).deliver_now
      redirect_to root_path, notice: "Reserva realizada com sucesso! Entraremos em contato em breve."
    else
      redirect_to root_path, alert: "Não conseguimos realizar sua reserva. Por favor entre em contato."
    end
  end

  def order_params
    params.require(:order).permit(:toy_id)
  end
end
