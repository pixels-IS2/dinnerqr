class OrderViewsController < ApplicationController
  before_action :authenticate_client!, :only => [:currentOrderClient, :historyClient]

  def currentOrderClient
   @currentorder = Order.joins(:table, :orderdishes, :dishes).find(current_client.orders.last.id)
  end

  def historyClient
    @historyClient = current_client.orders.joins(:orderdishes, :dishes).select("orders.*, orders.id   as orderId, orders.created_at as created, orderdishes.*, dishes.*, dishes.price as dishprice")
    @historyClient = @historyClient.paginate(:page => 1, :per_page => 12)
  end

  def ordersChef
  end

  def orderWaiter
  end

  def sales
  end
end
