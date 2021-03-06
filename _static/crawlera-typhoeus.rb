require 'typhoeus'

url = "http://twitter.com"
proxy_host = "proxy.crawlera.com:8010"
proxy_auth = "<API KEY>:"

request = Typhoeus::Request.new(
  url,
  method: :get,
  headers: { 
    "X-Crawlera-Use-HTTPS" => 1
  },
  proxy: proxy_host,
  proxyuserpwd: proxy_auth
)

request.run
print "Response Code: "
puts request.response.code
print "Response Time: "
puts request.response.total_time
print "Response Headers: "
puts request.response.headers
print "Response Body: "
puts request.response.body
