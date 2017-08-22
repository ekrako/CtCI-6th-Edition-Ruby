def check_permutation(s1="", s2="")
  return true if s1 == s2
  return false if s1.length != s2.length
	letters = []
	letters = s1.chars
	s2.chars.each do |char|
    if letters.include?(char)
  	  s2 = s2.delete(char)
    else 
  	  return false
    end
  end
	return s2.empty?
end
