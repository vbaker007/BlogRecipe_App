class Chef < ActiveRecord::Base
  has_many :recipes
  has_many :likes
  has_many :reviews
  before_save { self.email = email.downcase }
  validates :chefname, presence: true, length: { minimum: 3, maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
                                    uniqueness: { case_sensitive: false },
                                    format: { with: VALID_EMAIL_REGEX }
  #mount_uploader :picture, PictureUploader
  #validate :picture_size
  has_secure_password 

  def self.create_with_omniauth(auth)
    create! do |chef|
      chef.provider = auth["provider"]
      #chef.uid = auth["uid"]
      #chef.chefname = auth["info"]["name"]
      
      #chef.password = chef.password
    end
  end

  #private
  #  def picture_size
  #    if picture.size > 5.megabytes
  #      errors.add(:picture, "should be less than 5MB")
  #    end
  #  end
end