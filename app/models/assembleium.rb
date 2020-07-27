class Assembleium < ApplicationRecord
  def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
    Assembleium.create! row.to_hash
  end
  end
end
