json.array!(@coverages) do |coverage|
  json.extract! coverage, :id, :name, :liability, :deductible
  json.url coverage_url(coverage, format: :json)
end
