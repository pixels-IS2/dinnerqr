class StatisticsController < ApplicationController

  def show
    puts 'su re puta madre que lo remilpario..'
    puts "LlllllllllllllllllllllllllllllllllllllllllllllllllllllLLLLLLLL"
    @op1=Order.dishmax
    @op2=Order.client
    @op3=Order.mesa
    @op4=Order.ventasf
    puts @op
    puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlllllllllllllllllllllLLLLLLLL"
  end
end
