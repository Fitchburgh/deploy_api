require_relative 'environment'
require_relative 'student'
require_relative 'professor'
require_relative 'semester'
require 'sinatra'

get '/api/professor' do
  Professor.all.to_json
end

get '/api/student' do
  Student.all.to_json
end

post '/api/student' do
  new_kid = Student.create(student_name: params[:student_name],
                           years_completed: params[:years_completed])
  if new_kid.valid?
    if new_kid.save
      status 201
      p '201'
      return new_kid.to_json
    end
    status 400
    '400'
  end
  status 400
  'end 400'
end

post '/api/semester' do
  Semester.create(professor_id: params['professor_id'], student_id: params['student_id']).to_json
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
