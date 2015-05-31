class Receipt < ActiveRecord::Base
  belongs_to :customer

  default_scope -> { order('created_at DESC') }
  #has_many :properties, dependent: :destroy
  #has_many :money_on_deposits, dependent: :destroy
  #has_many :shares, dependent: :destroy
  #has_many :vehicles, dependent: :destroy
  #has_many :pensions, dependent: :destroy
  #has_many :investments, dependent: :destroy
  #has_many :miscs, dependent: :destroy
  #has_many :loans, dependent: :destroy
end
