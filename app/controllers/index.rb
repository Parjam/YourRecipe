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
    redirect "/recipes"
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
  redirect "/recipes"
end

# user can logout
post '/logout' do
  # log_out
  redirect '/'
end

# display a list of all recipes
get '/recipes' do
  erb :recipe
end

# display the form to create a recipe
get '/recipes/new' do
  erb :create_recipe
end

get '/recipe/:id' do
  erb :specific_recipe
end


# create a recipe in the database
post '/recipes' do
  recipe = Recipe.create(params)
  redirect '/recipes'
end




