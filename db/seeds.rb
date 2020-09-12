load(Rails.root.join('db', 'seeds', "masters.rb"))
load(Rails.root.join('db', 'seeds', "#{Rails.env.downcase}.rb"))
