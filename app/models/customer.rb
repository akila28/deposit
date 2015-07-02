# == Schema Information
#
# Table name: customers
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  date_of_birth :date
#  sex           :string(255)
#  address       :text
#  city          :string(255)
#  state         :string(255)
#  pincode       :integer
#  PAN           :text
#  status        :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Customer < ActiveRecord::Base
has_many :folios
accepts_nested_attributes_for :folios

has_many :savingsdeposits
accepts_nested_attributes_for :savingsdeposits


attr_accessible :code, :PAN, :address, :city, :date_of_birth, :first_name, :last_name, :pincode, :sex, :state, :status, :photo, :folios_attributes, :savingsdeposits_attributes
belongs_to :user 
mount_uploader :photo, PhotoUploader 



before_create :increment_code
def increment_code
    self.code = (self.class.last.nil?) ? "0000000001" : ((self.class.last.code.to_i) + 1).to_s.rjust(10,'0')
end

before_save :set_default_val
def set_default_val
   self.status = 'Pending' unless self.status
end




validates :first_name, presence: true,
		       format: { with: %r{\A[a-zA-Z]*} }
validates :last_name, presence: true,
		      format: { with: %r{\A[a-zA-Z]*} }

validates_numericality_of :pincode, presence: true
validates_length_of :pincode, :is => 6, :wrong_length => "should have 6digits"

validates :PAN, presence: true, format: { with: %r{\A[A-Z]{5}\d{4}[A-Z]{1}} }
validates_length_of :PAN, :is => 10, :wrong_length => "should have 10digits"
validates_uniqueness_of :PAN 

validates_inclusion_of :date_of_birth,
                :in => Date.civil(1900,1,1)..Date.today,
                 :message => "is invalid"

#validates_uniqueness_of :code, presence: true, :wrong_length => "should have 10digits"
#validates_length_of :code, :is =>10, :start_code => 0000000001
#validates :code, numericality: { greater_than_or_equal_to: 0000000001 }

validates :address, presence: true
validates :sex, presence: true
validates :state, presence: true
validates :city, presence: true
end

