# codecademy tutorial

# ask for user input and save it
puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

# convert input into array
words = text.split

# initialize hashmap
frequencies = Hash.new(0)

# populate hashmap by wordcount
words.each {|word| frequencies[word] += 1 }

# sort by word frequency
frequencies = frequencies.sort_by do |word, count|
  count
end

# reverse sort in place
frequencies.reverse!

# print output to screen
frequencies.each {|word, count| puts "#{word}: #{count}"}




