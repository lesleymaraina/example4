class BCell < ActiveRecord::Base
	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		B_cells.create! row.to_hash
	end
end
end
