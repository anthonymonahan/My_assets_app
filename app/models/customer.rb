class Customer < ActiveRecord::Base
  has_many :properties, dependent: :destroy
  has_many :money_on_deposits, dependent: :destroy
  has_many :shares, dependent: :destroy
  has_many :vehicles, dependent: :destroy
  has_many :pensions, dependent: :destroy
  has_many :investments, dependent: :destroy
  has_many :miscs, dependent: :destroy
  has_many :loans, dependent: :destroy
  has_many :receipts, dependent: :destroy

  before_save { self.email = email.downcase }
  validates :CustomerName, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }

  # Returns the hash digest of the given string.
  def Customer.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
