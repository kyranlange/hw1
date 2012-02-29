def palindrome?(string)
  string = string.downcase;
  string = string.gsub(/\W/, '');
  return string == string.reverse;
end

palindrome?("A man, a plan, a canal -- Panama")   #=> true
palindrome?("Madam, I'm Adam!")   #=> true
palindrome?("Abracadabra")  #=> false (nil is also ok)


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

print count_words("A man, a plan, a canal -- Panama");
print count_words "Doo bee doo bee doo";
