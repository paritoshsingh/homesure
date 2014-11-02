json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :shortdesc, :longdesc
  json.url plan_url(plan, format: :json)
end
