class String
  def palindrome?
    self==reverse
  end
  def all_possible_permutations
    self.chars.to_a.permutation.map(&:join)
  end
end
def planidromePermutation?(s)
  s.all_possible_permutations.each{|str|
    return true if str.palindrome?
  }
  return false
end