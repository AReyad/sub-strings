dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
user_input = gets.chomp

def substrings(string, dictionary)
  result = Hash.new
  dictionary.map do |word|
    word_count = 0
    string.downcase.scan(word).each do |matching_word|
      word_count += 1 
      result[matching_word] = word_count
    end
  end
  result.empty? ? "No matches found" : result
end

p substrings(user_input, dictionary)