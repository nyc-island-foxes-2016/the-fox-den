get '/ajax/foxes' do 
  erb :fox_talk
end

get '/ajax/foxes/all' do
  @foxes = Fox.all
  erb :'foxes/index', layout: !request.xhr? 
end

get '/ajax/foxes/:id' do
end

post '/ajax/foxes' do 
end

put '/ajax/foxes/:id' do
end

delete '/ajax/foxes/:id' do
end