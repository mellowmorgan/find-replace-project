require 'pry'

class Word 
  def initialize(content)
    @content = content
  end
  def find_replace(word, new_word)
    arr=@content.split(" ")
    i=0
    newArr = []
    arr.each do |element| 
      #element is cathredral word is cat new_word is puppy
      if element.include?(word)
        start_index=element.index(word)
        end_index=start_index+word.length-1
        replaced_word=element
        replaced_word[start_index..end_index]=new_word
        newArr.push(replaced_word)
      else
        newArr.push(element)
      end
    end
    newArr.join(" ")
  end
end

# My kitty is cuter than any other kitty