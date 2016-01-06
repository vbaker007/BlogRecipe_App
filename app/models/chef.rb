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
    chef = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
    chef.update(
      chefname: auth_hash.info.chefname,
      token: auth_hash.credentials.token,
      secret: auth_hash.credentials.secret
    )
    chef
  end

  def twitter
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.twitter_api_key
      config.consumer_secret     = Rails.application.secrets.twitter_api_secret
      config.access_token        = token
      config.access_token_secret = secret
    end
  end
end