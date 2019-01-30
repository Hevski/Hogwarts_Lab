require_relative('../models/student')


get '/students' do
  @students = Student.all()
  erb(:"students/index")
end

get '/students/new' do
  erb(:"students/new")
end

post '/students' do
  @students = Student.new(params)
  @students.save()
  erb(:"students/create")
end

get '/students/:id' do
  @students = Student.find(params[:id])
  erb(:"students/show")
end

get '/students/:id/edit' do
  @students = Student.find(params[:id])
  erb(:"students/edit")
end
