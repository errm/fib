require "sinatra"

f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }

get "/:num" do
  f[params.fetch("num").to_i].to_s
end

get "/" do
  f[1].to_s
end
