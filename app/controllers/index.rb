# sign up form (homepage)
get '/' do
  erb: index
end

# create a new user in database
post '/users' do
end

# display a list of all recipes
get '/recipes' do
end

# display the form to create a recipe
get 'recipes/new' do
end

# create a recipe in the database
post 'recipes' do
end

# updates a specific recipe in the database only by the user that created it
patch 'recipes/:id' do
end

# updates a specific recipe in the database only by the user that created it
delete 'recipes/:id' do
end




