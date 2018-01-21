require 'sinatra'

f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }

get '/fib/:num' do
  f[params['num'].to_i].to_s
end
