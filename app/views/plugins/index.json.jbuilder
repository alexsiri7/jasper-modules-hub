json.array!(@plugins) do |plugin|
  json.extract! plugin, :id, :name, :description, :url
  json.url plugin_url(plugin, format: :json)
end
