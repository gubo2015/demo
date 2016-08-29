# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  mobile     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  
end
