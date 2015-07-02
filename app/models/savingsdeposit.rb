class Savingsdeposit < ActiveRecord::Base

belongs_to :customer
    
has_many :savingsdeposittransactions

has_many :dailyproducts

#belongs_to  :user

#before_filter :authenticate_user!

accepts_nested_attributes_for :savingsdeposittransactions

#attr_accessor :total_bal
attr_accessor :transaction_amount
attr_accessible :savingsdeposittransactions_attributes

attr_accessor :first_name
attr_accessible :first_name
attr_accessible :account_type, :current_balance, :opened_on, :status, :customer_id



before_save :set_default_val
  def set_default_val
            self.status = 'Pending' unless self.status
  end


before_save :set_opened_on_date
 def set_opened_on_date
    self.opened_on = Date.today
 end

  validates :customer_id, presence: true
  validates :account_type, presence: true
  validates :current_balance, presence: true
  validates_numericality_of :current_balance, :greater_than_or_equal_to => 100
 
end
