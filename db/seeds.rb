#seeds

# generating 10 random heroes
10.times do
    hero = Hero.create!(
        name: Faker::Superhero.name,
        super_name: Faker::Superhero.descriptor
    )
end

#generating 10 random powers
10.times do
    power = Power.create!(
      name: Faker::Superhero.power,
      description: Faker::Lorem.sentence
    )
  end

  #generating 10 random super_powers
10.times do
    hero_power = HeroPower.create!(
        power_id: rand(1..10),
        hero_id: rand(1..10),
        strength: ['strong', 'weak', 'average'].sample
    )
end
