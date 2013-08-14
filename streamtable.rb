require 'rubygems'
require 'sinatra'
require 'ohm'
require 'haml'
require 'mustache'
require 'json'

class StreamTable < Sinatra::Base

  set :views, "#{APPLICATION_PATH}/views"
  set :static, true
  set :public_directory, "../#{APPLICATION_PATH}/public"
  set :haml, { :format => :html5 }
  set :root, APPLICATION_PATH

  get '/' do
    haml :index
  end

  get '/movies/movies.json' do
    content_type :json

=begin
    response = Array.new
    response << [
      "name" => 'Once Upon a Time in the West',
      "rating" =>  '8.7',
      "director"  => 'Sergio Leone',
      "year" => '1968',
      "actor" => 'Henry Fonda'
    ]

    return response.flatten.to_json
=end

    movies_data = File.read("#{APPLICATION_PATH}/data/movies.json")
    return movies_data
  end

end
