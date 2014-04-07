require "titleize"

def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, number = 2)
  (input + " ")* (number-1) + input
end

def start_of_word(word, letters)
  word[0..letters-1]
end

def first_word(words)
  words.split[0]
end 

# def titleize(title)
#     title.titleize
# end

def titleize(words)
  words = words.split
 
  words.each_index do |index|
    words[index].capitalize! unless %w(the and over).include?(words[index])
  end
 
  words.first.capitalize!
  words.join(' ')
 
end