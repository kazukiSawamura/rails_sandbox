class Post < ApplicationRecord
  before_save do
    self.ngram_idx = UtilNgram.to_ngram("#{self.title} #{self.description}")
  end

  scope :search_word, ->(key){
      where("MATCH(ngram_idx) AGAINST('#{key}')")
  }

  # scope :search, -> (key){
  #   ngramed_key = UtilNgram.to_ngram(key, ' +')
  #   where("match(ngram_idx) against (? in boolean mode)", "+#{ngramed_key}")
  # }
  def self.search(key)
    ngramed_key = UtilNgram.to_ngram(key, ' +')
    where("match(ngram_idx) against (? in boolean mode)", "+#{ngramed_key}")
  end
end