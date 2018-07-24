class Company < ApplicationRecord
	# Account (iban) ilişkisi
	has_many :accounts

	#Tag İlişkisi
	has_many :tags, :as => :tagable
end
