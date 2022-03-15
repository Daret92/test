class Dictionary < ApplicationRecord
  belongs_to :word

  def self.new(array)
    array.each do |word|
      super(word: word)
    end
  end

end
