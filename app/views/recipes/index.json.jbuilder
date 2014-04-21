json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :description, :dishtype_id
  json.url recipe_url(recipe, format: :json)
end
