Status.delete_all
posts = []
%w(status1 status2 status3 status4 status5 status6).each do |name|
  posts << Status.new(name: name)
end
Status.import posts