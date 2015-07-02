class Savingsdeposittransaction < ActiveRecord::Base
belongs_to :savingsdeposit
after_save :calculate_current_balance


    def calculate_current_balance
      if self.transaction_mode =='Credit'
         savingsdeposit.current_balance += self.transaction_amount
       elsif self.transaction_mode =='Debit'
         savingsdeposit.current_balance -= self.transaction_amount
       else
           :blank
        end
         savingsdeposit.save
    end


attr_accessor :current_balance
attr_accessible :current_balance 

  attr_accessible :comments, :particulars, :status, :transaction_amount, :transaction_date, :transaction_mode, :transaction_type, :savingsdeposit_id

   before_save :set_default_val
     def set_default_val
      self.status = 'Pending' unless self.status
     end

   before_save :transaction_date
     def set_transaction_date
      self.transaction_date = Date.today
     end


  validates :transaction_mode, presence: true

  validates :transaction_type, presence: true

  validates :transaction_amount, presence: true

end
