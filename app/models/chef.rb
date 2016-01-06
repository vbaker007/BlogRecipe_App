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
  has_secure_password 

  def self.find_or_create_from_auth_hash(auth_hash)
    chef = where(provider: auth_hash.provider, uid: auth_hash.uid]).first_or_create
    chef.update(
      chefname: auth_hash.info.chefname,
      image: auth_hash.info.image,
      token: auth_hash.credentials.token,
      secret: auth_hash.credentials.secret
      )
  end
end