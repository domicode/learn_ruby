class Book

  def title=(string)
    @string = string
  end

  def title

    words = @string.split(" ")
   
    words.each_index do |index|
      words[index].capitalize! unless %w(the and over I in the of a an).include?(words[index])
    end
   
    words.first.capitalize!
    words.join(' ')
  end

end


