require('compare')
require 'rspec'

describe ('Compare') do
  test= Compare.new()
  word = "tea"
  otherword = "tea"
  it('compares letters in a word') do
    expect(test.wordcompare(word,otherword)).to(eq(true))
  end

  describe ('is_a_word') do 
    test= Compare.new()
  word = "tea"
   it('checks for vowels and returns true if there are any') do 
    expect(is_a_word(word)).to(eq(true)) 
     end 
      end
end

