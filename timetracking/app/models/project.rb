class Project < ApplicationRecord
 has_many :time_entries	 


 validates :name, presence: true, uniqueness: true, format: { with: /[a-zA-Z\d\s]/}, length: { maximum: 30 }

 # validates_associated :time_entries

	def self.clean_old
		olds = Project.where("created_at: < ?" , 1.week.ago)

		olds.destroy_all
	end

end


	

