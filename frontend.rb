require 'Unirest'
require 'pp'

p "Welcome to my shirt shop"
p "Please choose an option"

p "[1] See all of my shirts!"
p "[2] See a particular shirt"
p "[3] Create a shirt option."

user_input = gets.chomp

if user_input == '1'
  p "Here are all of my shirts!"
  response = Unirest.get("localhost:3000/v1/shirts")
  shirts = response.body
  pp response.body
elsif user_input == '2'
  p "Enter an id to see a particular shirt."
  shirt_id = gets.chomp
  response  = Unirest.get("localhost:3000/v1/shirts/#{shirt_id}")
  pp response.body
elsif user_input == '3'
  the_params = {}
  p "Enter the size"
  the_params[:size] = gets.chomp
  p "Enter the color"
  the_params[:color] = gets.chomp
  p "Enter the price"
  the_params[:price] = gets.chomp
  response = Unirest.post("localhost:3000/v1/shirts", parameters: the_params)
  pp response.body
end
