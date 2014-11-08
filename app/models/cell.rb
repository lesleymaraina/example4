class Cell < ActiveRecord::Base
	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row| 
		Cells.create! row.to_hash
	end 
end
end
