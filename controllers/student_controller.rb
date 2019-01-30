require_relative('../models/student')


get '/students' do
  @students = Student.all()
  erb(:"students/index")
end
