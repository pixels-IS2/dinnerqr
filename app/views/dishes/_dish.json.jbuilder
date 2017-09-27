json.extract! dish, :id, :name, :state, :description, :speciality, :price, :created_at, :updated_at
json.url dish_url(dish, format: :json)
