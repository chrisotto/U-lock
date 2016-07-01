get '/' do
	@bikes = JSON.parse(Net::HTTP.get(URI('https://bikeindex.org:443/api/v2/bikes_search/stolen?page=1&proximity=94107&proximity_square=100')))["bikes"]
  @address = "San Francisco, CA"
	erb :'index'
end
