require("compare")
require "rspec"

describe ("Compare") do
  test = Compare.new("tea", "tea")
  it("compares letters in a word") do
    expect(test.wordcompare(test.word, test.otherword)).to(eq(true))
  end

  describe ("is_a_word") do
    test = Compare.new("tea", "tea")
    testword = "mork"
    it("checks for vowels and returns true if there are any") do
      expect(test.is_a_word(testword)).to(eq(true))
    end
  end

  describe ("alphabetizer") do
    test = Compare.new("tea", "tea")
    it("alphabetizes word") do
      expect(test.alphabetizer(test.word)).to(eq(["a", "e", "t"]))
    end
  end
end
describe ("makewordsconsistent") do
  test = Compare.new("TEA", "TEA")
  test.makewordsconsistent
  it("downcases words") do
    expect(test.word).to((eq("tea")))
  end
end

describe ("antigramtest") do
  test = Compare.new("pancake", "go")
  word = test.word
  otherword = test.otherword
  it("checks if any characters match") do
    expect(test.antigramtest(word, otherword)).to(eq(false))
  end
end
describe ("splitasentence") do
  test = Compare.new("cat", "cat")
  test.sentence = "hello this is a sentence"
  it("removes spaces between words") do
    expect(test.splitasentence(test.sentence)).to(eq(["hello", "this", "is", "a", "sentence"]))
  end
end
