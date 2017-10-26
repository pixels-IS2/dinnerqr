class StatisticsController < ApplicationController

  def index
    @orders = Orders.all
  end
end
