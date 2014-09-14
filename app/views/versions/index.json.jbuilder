json.array!(@versions) do |version|
  json.extract! version, :id, :plugin_id, :number, :jasper_version, :notes
  json.url version_url(version, format: :json)
end
