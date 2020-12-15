require 'rest-client'
require 'json'
require 'pry'

# api_json = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=search-terms&key=AIzaSyAH1ef5StuZkUbTo1IqpjjpGT6LBeyz-UM")


# results = JSON.parse(api_json)["results"]


# results.each do |app|
#     data = []
#     object = {
#         "title": app["title"],
#         "image_src": app["image"],
#         "rating": rand(25..200)
#     }
#     data << object
#     Appetizer.create!(data)
# end