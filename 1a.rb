def palindrome?(string)
  string = string.downcase;
  string = string.gsub(/\W/, '');
  return string == string.reverse;
end

palindrome?("A man, a plan, a canal -- Panama")   #=> true
palindrome?("Madam, I'm Adam!")   #=> true
palindrome?("Abracadabra")  #=> false (nil is also ok)

