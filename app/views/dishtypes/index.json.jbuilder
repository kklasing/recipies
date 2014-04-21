json.array!(@dishtypes) do |dishtype|
  json.extract! dishtype, :name
  json.url dishtype_url(dishtype, format: :json)
end
