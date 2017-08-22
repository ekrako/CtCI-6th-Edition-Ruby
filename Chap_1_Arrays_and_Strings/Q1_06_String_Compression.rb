def string_compression(string)
  comp=[]
  prev_char=''
  string.each_char{ |ch|
    if ch==prev_char
      comp.last[1]+=1
    else
      comp << [ch,1]
    end
    prev_char=ch
  }
  comp.join.length<string.length ? comp.join : string

end
