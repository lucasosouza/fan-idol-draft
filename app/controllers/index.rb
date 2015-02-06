get '/' do
  erb :index
end

post '/fan' do
  Relationship.create(fan_id: User.find_by(username: params[:username]).id, idol_id: current_user.id)
  erb :index
end

post '/idol' do
  Relationship.create(idol_id: User.find_by(username: params[:username]).id, fan_id: current_user.id)
  erb :index
end

get '/delete/:fan_id/:idol_id' do
  Relationship.find_by(fan_id: params[:fan_id], idol_id: params[:idol_id]).destroy
  erb :index
end

