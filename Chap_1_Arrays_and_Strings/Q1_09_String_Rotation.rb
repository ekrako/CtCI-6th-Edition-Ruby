def string_rotation(s1, s2)
  return false if s1.length!=s2.length
  (s1.length).times{|index|
    return true if s1.chars.rotate(index).join==s2
  }
  return false
end
