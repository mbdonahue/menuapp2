json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :restaurant_name, :manager_name, :street_address_1, :street_address_2, :city, :state, :zip, :neighborhood, :phone_number, :cuisine
  json.url restaurant_url(restaurant, format: :json)
end
