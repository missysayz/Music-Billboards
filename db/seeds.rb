10.times do
    Billboard.create(
      chart:  Faker::Music.instrument,
      genre: Faker::Music.genre,
      week: Faker::Date.backward(3650),
    )

    2.times do
      Artist.create(
        first_name: "Gary",
        last_name: "Busey"
      )
    end
  end
  
  puts "10 Billboards Created"
  