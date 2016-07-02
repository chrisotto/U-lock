get '/users/new' do

	erb :'/users/new'
end

post '/users' do
	@user = User.new(username: params[:username], email: params[:email], city: params[:city], state: params[:state], zip: params[:zip].to_i, password: params[:password])
	if @user.save
		redirect '/sessions/new'
	else
		redirect '/users/new'
	end
end

get '/users/:id' do
  @user = User.find_by(id: session[:user_id])
  erb :'users/profile'
end
