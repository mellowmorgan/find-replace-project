require 'pry'

class Word 
  def initialize(content)
    @content = content
  end
  def find_replace(word, new_word)
    arr=@content.split(" ")
    i=0
    while (i<arr.length)
      if arr[i]==word
        arr[i] = new_word
      end
      i+=1
    end
    arr.join(" ")
  end
end

# My kitty is cuter than any other kitty