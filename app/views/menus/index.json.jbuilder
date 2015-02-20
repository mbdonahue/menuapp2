json.array!(@menus) do |menu|
  json.extract! menu, :id, :meal
  json.url menu_url(menu, format: :json)
end
