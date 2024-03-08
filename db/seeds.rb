require "json"
require "open-uri"
key = 'api_key=f9fdebbc8388d6939e502387da8c1e28'

url = "https://api.themoviedb.org/3/movie/top_rated?#{key}&"
print = 20.times do |i|
  puts "Importing movies from page #{i + 1}"
  movies = JSON.parse(URI.open("#{url}page=#{i + 1}").read)['results']
  movies.each do |movie|
    puts "Creating #{movie['title']}"
    base_poster_url = "https://image.tmdb.org/t/p/w500/"
    Movie.create(
      title: movie['original_title'],
      overview: movie['overview'],
      poster_url: "#{base_poster_url}#{movie['poster_path']}",
      rating: movie['vote_average'].to_i
    )
  end
end
puts print
