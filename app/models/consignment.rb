class Consignment < ApplicationRecord
  require 'csv'
  has_many :goods, dependent: :destroy

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      consignment = Consignment.new(
        source: row[4], # TODO: Change to hash
        destination: row[5],
        entry_time: row[6],
        exit_time: row[7],
        given_consignment_ID: row[1]
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
