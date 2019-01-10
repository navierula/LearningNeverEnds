# codecademy tutorial

# starting db
movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

# menu
puts "What would you like to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

# get user menu option
choice = gets.chomp

case choice

  # adding a movie
  when "add"
  puts "What movie would you like to add?"
  title = gets.chomp
  puts "What are you rating the movie?"
  rating = gets.chomp
  if movies[title.to_sym] == nil
  movies[title.to_sym] = rating.to_i
  else
    puts "Movie is already saved in databse."
  end
  
  # updating a movie
  when "update"
  puts "What movie would you like to update?"
  title = gets.chomp
  if movie[title.to_sym] == nil
    puts "The movie is not in the database."
  else
    puts "What are you rating the movie?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end

  # displaying movies
  when "display"
  movies.each{|movie,rating| puts "#{movie}: #{rating}"}
  
  # deleting a movie
  when "delete"
  puts "What movie would you like to delete?"
  title = gets.chomp
  if movies[title.to_sym] == nil
    puts "The movie is not in the database."
  else
    movies.delete(title)
  end
  
end




