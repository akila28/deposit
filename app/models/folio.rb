class Folio < ActiveRecord::Base

  belongs_to :customer

 attr_accessible :folio_allocation_date, :folio_number, :no_of_shares, :customer_id

 validates :no_of_shares, presence: true
 
  before_create :increment_folio_number
   def increment_folio_number
     self.folio_number = (self.class.last.nil?) ? "00001" : ((self.class.last.folio_number.to_i) + 1).to_s.rjust(5,'0')
   end

  before_save :set_folio_allocation_date
  def set_folio_allocation_date
    self.folio_allocation_date = Date.today
  end

 end
