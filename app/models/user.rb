class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
   attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :Address, :mobile_number, :role
   
 has_many :customers
  # attr_accessible :title, :body




   validates :mobile_number, presence: true
   validates_length_of :mobile_number, :is => 10, :wrong_length => "should have 10digits"
   validates :Address, presence: true
end
