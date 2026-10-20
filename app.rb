require "sinatra"

EMAIL = "aaronnsibanda@gmail.com"

get "/#{EMAIL.gsub(/[^A-Aa-z0-9]/, '_')}" do
  content_type "text/plain"
  x,y = params["x"],params["y"]
  valid = [x,y].all? { |v| v.is_a?(String) && v.match?(/\A\d+\z/)}
  valid ? x.to_i.lcm(y.to_i).to_s : "NaN"
end

