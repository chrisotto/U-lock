post '/bikes' do
  @bikes = JSON.parse(Net::HTTP.get(URI("https://bikeindex.org:443/api/v2/bikes_search/stolen?page=1&proximity=#{params[:address]}&proximity_square=100")))["bikes"]
  @address = params[:address]
  erb :'index'
end
