module StatisticsHelper
  def sporters_by_age
    bar_chart @op, height: '500px', library: {
        title: {text: 'Sporters by age', x: -20},
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Ages count'
            }
        },
        xAxis: {
            title: {
                text: 'Age'
            }
        }
    }
  end
end
