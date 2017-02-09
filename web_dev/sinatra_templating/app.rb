# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS campuses(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL
# post '/campuses' do
db.execute(create_table_cmd)
#   db.execute("INSERT INTO campuses (name) VALUES (?)", [params['name']])
#   redirect '/'
# end

get '/' do
  @students = db.execute("SELECT * FROM students")
  @campuses = db.execute("SELECT * FROM campuses")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


get '/students/remove' do 
  erb :remove_student
end

# delete a student via form
post '/students_rm' do
  db.execute("DELETE FROM students WHERE name=?", [params['name']])
  redirect '/'
end

post '/campuses' do
  db.execute("INSERT INTO campuses (name) VALUES (?)", [params['name']])
  redirect '/'
end

get '/campuses/new' do
  erb :new_campus
end





# add static resources