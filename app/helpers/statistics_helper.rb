module StatisticsHelper
  def sales_by_dish
    column_chart sales_by_dish_charts_path, library: {
        title: {text: 'Best sellers', x: -20},
        yAxis: {
            title: {
                text: 'Dish'
            }
        },
        xAxis: {
            title: {
                text: 'Sporters by country'
            }
        }
    }
  end
end
