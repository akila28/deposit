class Dailyproduct < ActiveRecord::Base
  belongs_to :savingsdeposit

  attr_accessible :balance, :from_date, :interest, :no_of_days, :rate_of_interest, :to_date, :savingsdeposit_id

before_save :set_from_date
     def set_from_date
      self.from_date = Date.today
     end

before_save :set_to_date
     def set_to_date
      self.to_date = Date.today
     end

after_save :calculate_no_of_days
   def calculate_no_of_days
     no_of_days = from_date - to_date
   end

end
