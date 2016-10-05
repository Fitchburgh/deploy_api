require_relative 'environment'
require_relative 'student'
require_relative 'professor'
require 'sinatra'

get '/api/professor' do
  Professor.all.to_json
end

get '/api/student' do
  Student.all.to_json
end

# get '/' do
#   College.select('*').where(id: 1).all.joins(:students).to_json
# end

# post 'api/coffees' do
#   coffee = Coffee.new(name: params['name'], country_id: params['id'])
#   if coffee.valid?
#     if coffee.save
#       status 201
#       return coffee.to_json
#     end
#   end
#   status 400
# end
