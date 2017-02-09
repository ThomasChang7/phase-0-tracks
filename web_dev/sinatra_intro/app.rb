# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that retrieves
# an address
get '/contact' do
  "10-10 401 street Avalon, Medievengland 00100"
end

# write a GET route that retrieves
# a person's name as a query parameter and say "Good Job, [person's name]!" If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do
  name = params[:name]
  if name
  "Good Job, #{params[:name]}!" 
  else
  "Good Job!"
  end
end

# write a GET route that uses 
# route parameters to add two numbers and respond with the result. 

get '/sum/:num1/plus/:num2' do
  "#{params[:num1].to_i} + #{params[:num2].to_i} = #{params[:num1].to_i + params[:num2].to_i} "
end

get '/search/:name' do
  students = db.execute("SELECT * FROM students")
  response = ''
  students.each do |student|
    if student['name'] == params[:name]
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
    end
  end
  if response == ""
    "No students found"
  else
    response
  end
end
