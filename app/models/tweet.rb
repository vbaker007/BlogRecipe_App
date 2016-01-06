class Tweet < ActiveRecord::Base
  belongs_to :chef
  validates :chef_id, :body, presence: true

  before_create :post_to_twitter
end