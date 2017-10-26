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
    @ordersChef = Orderdish.orders_chef current_chef
    @ordersChef = @ordersChef.paginate(:page => 1, :per_page => 12)
    
  end
  
  def preparated
    Orderdish.where(id: params[:orderdishes_ids]).update_all state: "preparated"
    redirect_to :ordersChef
        
  end

  def orderWaiter
    @ordersWaiter = Orderdish.orders_waiter current_waiter
    @ordersWaiter = @ordersWaiter.paginate(:page => 1, :per_page => 12)
  end
  
  def deliverated
    Orderdish.where(id: params[:orderdishes_ids]).update_all state: "deliverated"
    #redirect_to :orderWaiter
        
  end

  def sales
  end
  private
  
  def order_params
    
    params.require(:order_views).permit(:orderdishes_ids)
  end
  
end

