get '/' do
  redirect '/foxes'
end

get '/foxes' do
  @foxes = Fox.order(:created_at)
  erb :'foxes/index'
end

get '/foxes/new' do
  @fox = Fox.new
  @dens = Den.all
  erb :'foxes/new'
end

get '/foxes/:id' do
  @fox = Fox.find(params[:id])
  erb :'foxes/show'
end

post '/foxes' do
  @dens = Den.all
  @fox = Fox.new(params[:fox])
  if @fox.save
    redirect "/foxes/#{@fox.id}"
  else
    @errors = @fox.errors.full_messages
    erb :'foxes/new'
  end
end

get '/foxes/:id/edit' do
  @dens = Den.all
  @fox = Fox.find(params[:id])
  erb :'foxes/edit'
end

put '/foxes/:id' do
  fox = Fox.find(params[:id])
  fox.update(params[:fox])
  redirect "/foxes/#{fox.id}"
end

delete '/foxes/:id' do
  fox = Fox.find(params[:id])
  fox.destroy
  redirect '/foxes'
end
