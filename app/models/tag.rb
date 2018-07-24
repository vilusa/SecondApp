class Tag < ApplicationRecord
	belongs_to :tagable, :polymorphic => true

	validates :name, uniqueness: { scope: :name}
	
end
