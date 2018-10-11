class ToysController < ApplicationController

  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find_by_url_name(params[:url_name])
    @order = Order.new
  end
end
