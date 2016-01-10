class User < ActiveRecord::Base
  has_many :articles


  #def self.create_with_omniauth(auth)
  #  create! do |chef|
  #    user.provider = auth["provider"]
  #    user.uid = auth["uid"]
  #    user.username = auth["info"]["name"]
  #  end
  #end
end