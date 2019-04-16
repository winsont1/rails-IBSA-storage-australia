require 'faker'

puts 'Creating 10 fake goods...'
10.times do
  consignment = Consignment.new(
    source: Faker::Address.country,
    destination: Faker::Address.state,
    entry_time: Faker::Time.between(DateTime.now - 365,
      DateTime.now - 182),
    exit_time: nil,
    given_consignment_ID: 'A'+rand(1000..3000).to_s)
  consignment.save!

  good = Good.new(
    name: Faker::Construction.material,
    good_type: Faker::Construction.subcontract_category,
    consignment: consignment
  )
  good.save!

end
puts 'Finished!'
