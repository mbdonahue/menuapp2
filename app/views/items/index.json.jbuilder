json.array!(@items) do |item|
  json.extract! item, :id, :name, :price, :menu_id, :description, :menu_category, :menu_tag
  json.url item_url(item, format: :json)
end
