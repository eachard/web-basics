get '/' do

	@albums = Album.all
  
  erb :index
end

get '/new' do
  erb :form
end

post '/' do
	album = Album.new(params)


	# On peut faire aussi
	# album = Album.new({
	# @name = params[:name]
	# @artist = params[:artist]
	# @year = params[:year]
	# })


album.save
puts "_____________"
p album

@albums = Album.all
puts "_____________"
p @albums
  
  erb :index
end

get '/:id' do 

id = params[:id].to_i
@album = Album.find(id)

  erb :show
end
