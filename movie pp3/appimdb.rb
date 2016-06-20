require("imdb")

the_search= Imdb::Search.new("Captain America")
#an array of results
first_result= the_search.movies[0]

puts "Total of #{the_search.movies.length} results"
puts "First result:"
puts first_result.title
puts first_result.rating 

