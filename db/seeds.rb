require "json"
require "open-uri"
key = 'api_key=f9fdebbc8388d6939e502387da8c1e28'

url = 'https://tmdb.lewagon.com/movie/top_rated'
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)["results"]

movies.each do |movie|
  # puts "#{movie["original_title"]}, #{movie["overview"]}, #{movie['poster_path']}, #{movie["vote_average"]}"
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}",rating: movie["vote_average"].to_i)
end

url2 = "https://api.themoviedb.org/3/movie/top_rated?#{key}&page=2"
movies_serialized2 = URI.open(url2).read
movies2 = JSON.parse(movies_serialized2)["results"]

movies2.each do |movie|
  # puts "#{movie["original_title"]}, #{movie["overview"]}, #{movie['poster_path']}, #{movie["vote_average"]}"
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}",rating: movie["vote_average"].to_i)
end

url3 = "https://api.themoviedb.org/3/movie/top_rated?#{key}&page=3"
movies_serialized3 = URI.open(url3).read
movies3 = JSON.parse(movies_serialized3)["results"]

movies3.each do |movie|
  # puts "#{movie["original_title"]}, #{movie["overview"]}, #{movie['poster_path']}, #{movie["vote_average"]}"
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}",rating: movie["vote_average"].to_i)
end

url4 = "https://api.themoviedb.org/3/movie/top_rated?#{key}&page=4"
movies_serialized4 = URI.open(url4).read
movies4 = JSON.parse(movies_serialized4)["results"]

movies4.each do |movie|
  # puts "#{movie["original_title"]}, #{movie["overview"]}, #{movie['poster_path']}, #{movie["vote_average"]}"
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}",rating: movie["vote_average"].to_i)
end

url5 = "https://api.themoviedb.org/3/movie/top_rated?#{key}&page=5"
movies_serialized5 = URI.open(url5).read
movies5 = JSON.parse(movies_serialized5)["results"]

movies5.each do |movie|
  # puts "#{movie["original_title"]}, #{movie["overview"]}, #{movie['poster_path']}, #{movie["vote_average"]}"
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}",rating: movie["vote_average"].to_i)
end

url6 = "https://api.themoviedb.org/3/movie/top_rated?#{key}&page=6"
movies_serialized6 = URI.open(url6).read
movies6 = JSON.parse(movies_serialized6)["results"]

movies6.each do |movie|
  # puts "#{movie["original_title"]}, #{movie["overview"]}, #{movie['poster_path']}, #{movie["vote_average"]}"
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}",rating: movie["vote_average"].to_i)
end
