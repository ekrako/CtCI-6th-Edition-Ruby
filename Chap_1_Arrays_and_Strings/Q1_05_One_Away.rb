
def checkOneRemove (s1,s2)
  oneMove = false
  s2.each_char.with_index { |ch,i|
    oneMove=true if ch!=s1[i] if !oneMove
    if oneMove
      return false if ch!=s1[i+1]
    end
  }
  return true
end
  
def one_away(s1, s2)
  return false if (s1.length-s2.length).abs>1
  oneMove = false
  # check replacment
  if s1.length==s2.length
    s2.each_char.with_index{ |char,i|
      if char != s1.chars[i]
        return false if oneMove
        oneMove=true
      end
    }
    return true
  else
    if s2.length > s1.length
      checkOneRemove(s2,s1)
    else
      checkOneRemove(s1,s2)
    end
  end
end
