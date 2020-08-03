require 'faker'
Faker::Config.locale = :ja

Post.delete_all
statuses = Status.all.map{|s| [s.id, s.name]}.to_h

100.times do |count|
  posts = []
  puts "Postのseedデータ作成(#{count+1}/100)..."
  10000.times do |c|
    title = Faker::Lorem.sentence
    body = Faker::Lorem.sentence(word_count: 100)
    status_id = c % Status.count + 1
    posts << Post.new(title: title,
                      status_id: status_id,
                      body: body,
                      fulltext: "#{title} #{body} #{statuses[status_id]}")
  end
  Post.import posts
end