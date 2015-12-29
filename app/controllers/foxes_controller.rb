get '/' do
  redirect '/foxes'
end

get '/foxes' do
  @foxes = Fox.all
  erb :'foxes/index'
end

get '/foxes/new' do
  erb :'foxes/new'
end

get '/foxes/:id' do
  @fox = Fox.find(params[:id])
  erb :'foxes/show'
end

post '/foxes' do
  fox = Fox.create(params[:fox])
  redirect "/foxes/#{fox.id}"
end

