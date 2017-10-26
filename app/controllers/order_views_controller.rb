class OrderViewsController < ApplicationController
  before_action :authenticate_client!, :only => [:currentOrderClient, :historyClient]

  def currentOrderClient
   @currentorder = Order.joins(:table, :orderdishes, :dishes).find(current_client.orders.last.id)
  end

  def historyClient
    @historyClient = Order.history_client current_client
    @historyClient = @historyClient.paginate(:page => 1, :per_page => 12)
  end

  def ordersChef
  end

  def orderWaiter
  end

  def sales
  end
end
