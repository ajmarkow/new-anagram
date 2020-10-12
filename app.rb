require "./compare.rb"

puts "Give me two words, and i'll tell you if they are Anagrams or Antigrams."
puts "Lets start with the first word:"
firstword = gets.chomp
puts "Great, now let's have the second word youd like to check against:"
secondword = gets.chomp
puts "Alright, we're computing!"
examplecompare = Compare.new(firstword, secondword)
examplecompare.makewordsconsistent()
testwordone = examplecompare.is_a_word(examplecompare.word)
testwordtwo = examplecompare.is_a_word(examplecompare.otherword)
if testwordone == true && testwordtwo == true
  puts "Both terms input were words"
  alphabetizedtestword = examplecompare.alphabetizer(examplecompare.word)
  alphabetizedtestwordtwo = examplecompare.alphabetizer(examplecompare.otherword)
  wordcompareresult = examplecompare.wordcompare(alphabetizedtestword, alphabetizedtestwordtwo)
  if wordcompareresult == true
    puts "They are anagrams"
  elsif wordcompareresult == false
    puts "They are not anagrams"
  end
  puts "Now let's check if the words  are antigrams meaning they have no matching letters."
  antigramtestresult = examplecompare.antigramtest(examplecompare.word, examplecompare.otherword)
  if antigramtestresult == true
    puts "The words aren't antigrams"
  elsif antigramtestresult == false
    puts "The word are Antigrams."
  end
elsif testwordone == false or testwordtwo == false
  puts "One or more terms input was not a word.  Please put in two words and try again."
end
puts "See ya later!"
