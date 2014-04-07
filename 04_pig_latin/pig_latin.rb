def translate(words="string")
  if words =~ /\A[^aeiou]/
    letters = words.split("")
    while letters[0] =~ /\A[^aeiou]/
      letters = letters.rotate(1)
    end
      output = letters.join("")
      output + "ay" 
  else
    words + "ay"
  end
end
