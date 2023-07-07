require 'bundler/setup'
Bundler.setup(:default)

require 'faraday'

response = Faraday.get('http://httpbingo.org')

p response.status

p response.headers

p response.body

