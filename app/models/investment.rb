class Investment < ActiveRecord::Base
  belongs_to :customer
  validates :customer_id, presence: true
  default_scope -> { order('created_at DESC') }
  #belongs_to :receipt
  #belongs_to :insurance

  def total
    price - original_value
  end

  def total_amount
    @total_amount ||= read_attribute(:total_amount) || transactions.sum(:total)
  end
end
