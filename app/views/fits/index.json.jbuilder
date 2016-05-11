json.array!(@fits) do |fit|
  json.extract! fit, :id, :title, :description
  json.url fit_url(fit, format: :json)
end
