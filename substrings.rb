dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,dictionary)
  strings = string.split
  dictionary.reduce(Hash.new(0)) do |result, word|
    strings.each do |string|
      result[word] += 1 if string.include?(word)
    end
    result
  end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
