require "sinatra"
enable :sessions

get "/" do
	erb :first_page
end

post "/name" do
	session[:name] = params[:name]
	redirect "/name_redirect"
end 

get "/name_redirect" do 
	erb :second_page
end

post "/age" do
	session[:age] = params[:age]
	redirect "/favorite_food"
end

get "/favorite_food" do
	erb :third_page
end

post "/food_drink" do
	session[:food] = params[:food]
	session[:drink] = params[:drink]
	redirect "/favorite_numbers"
end

get "/favorite_numbers" do 
	erb :fourth_page
end

post "/numbers" do
	session[:fav_num_one] = params[:fav_num_one]
	session[:fav_num_two] = params[:fav_num_two]
	session[:fav_num_three] = params[:fav_num_three]
	redirect "/favorite_color"
end

get "/favorite_color" do 
	erb :fifth_page
end

post "/colors" do
	session[:fav_color] = params[:fav_color]
	redirect "/results" 
end

get "/results" do
	name = session[:name]
	age = session[:age]
	food = session[:food]
	drink = session[:drink]
	fav_num_one = session[:fav_num_one]
	fav_num_two = session[:fav_num_two]
	fav_num_three = session[:fav_num_three]
	fav_color = session[:fav_color]
	erb :sixth_page, locals:{name: name, age: age, food: food, drink: drink, fav_num_one: fav_num_one, fav_num_two: fav_num_two, fav_num_three: fav_num_three, fav_color: fav_color}
end
