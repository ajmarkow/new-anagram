require "rspec"

class Compare
  attr_accessor(:word, :otherword, :sentence)

  def initialize(word, otherword)
    @word = word
    @otherword = otherword
    @sentence = sentence
  end

  def makewordsconsistent()
    self.word = self.word.downcase
    self.otherword = self.otherword.downcase
  end

  def wordcompare(word, otherword)
    puts "input #{word} and #{otherword}"
    if word == otherword
      answer = true
    else
      answer = false
    end
    return answer
  end

  def is_a_word(input)
    answer = input.match (/[aeiou]/)
    if answer == nil
      return false
    else
      return true
    end
  end

  def alphabetizer(word)
    splitword = word.split("")
    splitword.sort!()
    return splitword
  end

  def antigramtest(word, otherword)
    alphabethash = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26 }
    splitword = word.split("")
    splitwordvalue = (splitword.map { |element| alphabethash.fetch(element) }).inject(0, &:+)
    splitotherword = otherword.split("")
    splitotherwordvalue = (splitotherword.map { |element| alphabethash.fetch(element) }).inject(0, &:+)
    return splitwordvalue != splitotherwordvalue
  end

  def splitasentence(sentence)
    splitsentence = sentence.split(" ")
    return splitsentence
  end
end
