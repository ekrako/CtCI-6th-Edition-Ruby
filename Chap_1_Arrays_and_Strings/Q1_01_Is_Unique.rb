def is_unique?(string)
  a=string.chars.to_a
  a.length==a.uniq.length
end
