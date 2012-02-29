def palindrome?(string)
  string = string.downcase;
  string = string.gsub(/\W/, '');
  return string == string.reverse;
end

def count_words(string)
  string = string.downcase;
  words = string.split(/\W/);
  words.delete("");
  word_count = Hash.new;
  words.each do |word|
    if word_count[word]
      word_count[word] += 1;
    else 
      word_count[word] = 1;
    end
  end
  
  return word_count;
end