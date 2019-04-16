class Consignment < ApplicationRecord
  require 'csv'
  has_many :goods, dependent: :destroy

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # Check if Consignment ID is in system and Exit_time is true
      if (consignment_out = Consignment.find_by(given_consignment_ID: row[1])) && (row[7].nil? == false) # TODO: Raise error if consignment already in and exit time is nil
        consignment_out.destroy
        # consignment_out.exit_time = Faker::Time.between(DateTime.now - 181, DateTime.now) # TODO: Having issue with updating time
      elsif
        consignment = Consignment.new(
          source: row[4], # TODO: Change to hash
          destination: row[5],
          entry_time: row[6],
          exit_time: row[7],
          given_consignment_ID: row[1],
          status: 'Available'
        )
        consignment.save!

        good = Good.new(
          name: row[2],
          good_type: row[3],
          consignment: consignment
        )
        good.save!
      end
    end
  end
end
