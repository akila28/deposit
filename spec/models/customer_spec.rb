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

require 'spec_helper'

describe Customer do
  pending "add some examples to (or delete) #{__FILE__}"
end
