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
