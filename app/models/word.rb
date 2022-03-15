class Word < ApplicationRecord
  def self.new(word, meaning)
    super(word: word, meaning: meaning)
  end

  def find_meaning(word)
    byebug    
    word = Word.find_by(word: word)
    word.meaning
  end
end 