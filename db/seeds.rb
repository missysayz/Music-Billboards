10.times do
    Billboard.create(
      chart:  Faker::Music.instrument,
      genre: Faker::Music.genre,
      week: Faker::Date.backward(3650),
    )
  end
  
  puts "10 Billboards Created"
  