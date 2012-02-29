def combine_anagrams(words)
  result = []
  
  words.each do |w|
    inter = words.select do |compare|
      compare.downcase.split(//).sort.join == w.downcase.split(//).sort.join
    end
    result << inter
  end
    
  return result.uniq
end

input = ['cars', 'for', 'Potatoes', 'racs', 'four', 'sCar', 'creams', 'scream']
print combine_anagrams(input)
