class Recipe < ActiveRecord::Base
  validates :name, presence: true: { minimum: 5, maximum: 100 }
  validates :summary, presence: true
end