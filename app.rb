require "sinatra"

get "/" do
	erb :first_page
end

post "/name" do
	name = params[:name]
	redirect "/name_redirect?name=" + name
end 

get "/name_redirect" do 
	f_name = params[:name]
	erb :second_page, locals:{f_name: f_name}
end

post "/age" do
	f_name = params[:f_name]
	age = params[:age]
	redirect "/favorite_food?f_name=" + f_name + "&age=" + age
end

get "/favorite_food" do
	f_name = params[:f_name]
	age = params[:age]
	erb :third_page, locals:{f_name: f_name, age: age}
end

post "/food_drink" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	redirect "/favorite_numbers?f_name=" + f_name + "&age=" + age + "&food=" + food + "&drink=" + drink
end

get "/favorite_numbers" do 
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	erb :fourth_page, locals:{f_name: f_name, age: age, food: food, drink: drink}
end

post "/numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	fav_num_one = params[:fav_num_one]
	fav_num_two = params[:fav_num_two]
	fav_num_three = params[:fav_num_three]
	redirect "/favorite_color?f_name=" + f_name + "&age=" + age + "&food=" + food + "&drink=" + drink + "&fav_num_one=" + fav_num_one + "&fav_num_two=" + fav_num_two + "&fav_num_three=" + fav_num_three
end

get "/favorite_color" do 
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	fav_num_one = params[:fav_num_one]
	fav_num_two = params[:fav_num_two]
	fav_num_three = params[:fav_num_three]
	erb :fifth_page, locals:{f_name: f_name, age: age, food: food, drink: drink, fav_num_one: fav_num_one, fav_num_two: fav_num_two, fav_num_three: fav_num_three}
end

post "/colors" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	fav_num_one = params[:fav_num_one]
	fav_num_two = params[:fav_num_two]
	fav_num_three = params[:fav_num_three]
	fav_color = params[:fav_color]
	redirect "/results?f_name=" + f_name + "&age=" + age + "&food=" + food + "&drink=" + drink + "&fav_num_one=" + fav_num_one + "&fav_num_two=" + fav_num_two + "&fav_num_three=" + fav_num_three + "&fav_color=" + fav_color
end

get "/results" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	fav_num_one = params[:fav_num_one]
	fav_num_two = params[:fav_num_two]
	fav_num_three = params[:fav_num_three]
	fav_color = params[:fav_color]
	erb :sixth_page, locals:{f_name: f_name, age: age, food: food, drink: drink, fav_num_one: fav_num_one, fav_num_two: fav_num_two, fav_num_three: fav_num_three, fav_color: fav_color}
end
