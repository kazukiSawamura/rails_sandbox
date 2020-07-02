require 'faker'
Faker::Config.locale = :ja

Post.delete_all
ActiveRecord::Base.connection.execute("TRUNCATE posts")
100.times do |count|
  posts = []
  puts "Postのseedデータ作成(#{count+1}/100)..."
  10000.times do
    title = Faker::Lorem.sentence
    description = Faker::Lorem.sentence(word_count: 100)
    ngram_idx = UtilNgram.to_ngram(title + description)
    posts << Post.new(title: title, description: description, ngram_idx: ngram_idx)
  end
  Post.import posts
end