class Review < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :chef
  validates :chef_id, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }
end 
