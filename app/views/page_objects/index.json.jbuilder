json.array!(@page_objects) do |page_object|
  json.extract! page_object, :id, :name, :tagName
  json.url page_object_url(page_object, format: :json)
end
