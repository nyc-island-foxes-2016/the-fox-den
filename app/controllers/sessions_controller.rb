get '/login' do
  @fox = Fox.new
  erb :login
end

post '/login' do
  @fox = Fox.find_by(name: params[:fox][:name])
  if @fox && @fox.password == params[:fox][:password]
    session[:fox_id] = @fox.id
    redirect "/foxes/#{@fox.id}"
  else
    @fox = Fox.new(params[:fox])
    @errors = ["Either the name or password was incorrect."]
    erb :login
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
