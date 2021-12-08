require ('rspec')
require ('find_replace')

describe('#Word') do
  words = Word.new("The kitty likes to be warm.")
  words2 = Word.new("My kitty kitty is cuter than any other kitty.")
  words3 = Word.new("I am walking my cat to the cathedral")

  # it("returns the word entered if its found within the content") do
  #   expect(words.find_replace("kitty", "puppy")).to(eq("kitty"))
  # end
  it("returns the new content entered with replaced word") do
    expect(words.find_replace("kitty", "puppy")).to(eq("The puppy likes to be warm."))
  end
  it("returns the new content entered with replaced words") do
    expect(words2.find_replace("kitty", "puppy")).to(eq("My puppy puppy is cuter than any other puppy."))
  end
end

