dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

user_input = gets.chomp

def substrings(string, dictionary)
  matching_words_array =  []
  
  scanned_string_array = dictionary.map do |word|
    string.downcase.scan(word)
  end

  scanned_string_array.select do |sub_array|
    if !sub_array.empty?
     sub_array.map {|word| matching_words_array.push(word)}
    end
  end

  matching_result = matching_words_array.reduce(Hash.new(0)) do |word, count|
     word[count] += 1
     word
  end

  if matching_result == {}
    "No matches"
  else
  matching_result
  end
end

puts substrings(user_input, dictionary)