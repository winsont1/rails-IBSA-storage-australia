require 'faker'

puts 'Destroying seeds...'
Consignment.destroy_all

puts 'Creating 50 fake goods...'

good_type =  ['Food', 'Textile', 'Metal', 'Wood', 'Paper', 'Liquid']
good_name =  ['Coconuts', 'Rolls of Cotton', 'Wooden Boards 20”x20”', 'Roll of Paper', 'Edible Oil (10L)','Bales of Hay','Cuban Cigars']


50.times do
  consignment = Consignment.new(
    source: Faker::Address.country,
    destination: Faker::Address.state,
    entry_time: Faker::Time.between(DateTime.now - 365,
      DateTime.now - 182),
    exit_time: nil,
    given_consignment_ID: 'AS'+rand(1000..3000).to_s+"AP")
  consignment.save!

  good = Good.new(
    name: good_name[rand(0..6)],
    good_type: good_type[rand(0..5)],
    consignment: consignment
  )
  good.save!

end
puts 'Finished!'
