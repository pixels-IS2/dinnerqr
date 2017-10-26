class StatisticsController < ApplicationController

  before_action :authenticate_administrator!

  def show
    @op1=Order.dishmax
    @op2=Order.client
    @op3=Order.mesa
    @op4=Order.ventasf
    puts @op
  end
end
