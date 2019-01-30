require_relative('../models/house')

#index
get '/houses' do
  @houses = House.all()
  erb(:"houses/index")
end

# show
get '/houses/:id' do
  @houses = House.find(params[:id])
  erb(:"houses/show")
end
