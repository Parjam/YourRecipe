# sign in form (homepage)
get '/' do
  erb :index
end

# creates a session
post '/sessions' do
  user = User.find_by_username(params[:username])
  if user && user.password == params[:password]
    session[:user_id] = user.id
  end

  if logged_in?
    redirect "/recipes/#{current_user.id}"
  else
    flash[:error] = "Your username or password is incorrect!"
    redirect '/'
  end
end

# sign up form
get '/users/new' do
  erb :signup
end

# create a new user in database
post '/users' do
  User.create(params)
  user = User.find_by(email: params[:email])
  session[:user_id] = user.id
  redirect "/recipes/#{current_user.id}"
end


# display the form to create a recipe
get '/recipes/new' do
  p "got to route"
  erb :create_recipe
end

# display a list of all recipes
get '/recipes/:id' do
  erb :recipe
end

# create a recipe in the database
post '/recipes' do
  Recipe.create(params)
end

# updates a specific recipe in the database only by the user that created it
patch '/recipes/:id' do
end

# updates a specific recipe in the database only by the user that created it
delete '/recipes/:id' do
end




