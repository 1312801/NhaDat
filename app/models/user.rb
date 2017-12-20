class User < ApplicationRecord
	has_many :lands
	before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :country, presence: true
def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  #chuyen tu ki hieu sang ten
  def country_name
   c = ISO3166::Country[self.country]
   return c.translations[I18n.locale.to_s] || c.name
end
def paypal_url(return_url)
	values = {
	:business => 'xxxxxxxx@xxx.com',
        :cmd => '_cart',
	:upload => 1,
	:return => return_url,
	}
	values.merge!({
	"amount_1" => @user.id,
	"item_name_1" => @user.name,
	"quantity_1" => '1'
	})
         # For test transactions use this URL
	"https://www.paypal.com/cgi-bin/webscr?&#8221" + values.to_query
 end

end
