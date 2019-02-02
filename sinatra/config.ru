require_relative "./app.rb"

# Docker で rackup するとき用
use Rack::Static, urls: %w[/css /favicon.ico /img /js /image], root: "public"

run Isuconp::App
