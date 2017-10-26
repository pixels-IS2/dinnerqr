class ChartsController < ApplicationController
  def sales_by_dish
    result = Order.sales_by_dish
    render json: [{name: 'Count', data: result}]
  end
end