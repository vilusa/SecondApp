class Person < ApplicationRecord
	# Profile ilişkisi
	has_one :profile

	#Tag İlişkisi
	has_many :tags, :as => :tagable
end
