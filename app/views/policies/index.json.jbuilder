json.array!(@policies) do |policy|
  json.extract! policy, :id, :name, :shortdesc, :longdesc, :monthlypremium, :annualpremium, :policylimit, :exclusionperiod, :minretentionperiod
  json.url policy_url(policy, format: :json)
end
