class OrderViewsController < ApplicationController
  before_action :authenticate_client!, :only => [:currentOrderClient, :historyClient]
  def currentOrderClient
   @currentorder = Order.joins(:table, :orderdishes, :dishes).find(current_client.orders.last.id)
  end

  def historyClient
  end

  def ordersChef
  end

  def orderWaiter
  end

  def sales
  end
end
