require "test_helper"

class WordTest < ActiveSupport::TestCase
  test "get a apple" do
    
    apple = Word.new("apple","a fruit")
    apple.save
    p apple.word == "apple"
    p apple.meaning == "a fruit"

    car = Word.new("car","a transport")
    car.save
    dictionary = Dictionary.new([apple,car])

    dictionary.each do |dictionary|
      p dictionary.find_meaning("apple") == "a fruit"
      p dictionary.find_meaning("car") == "a transport"
    end

  end

  
end
