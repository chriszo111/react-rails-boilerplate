require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  has_many :stashes, dependent: :destroy

  def password
    @password = Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encrypted_password = @password
  end
end

# == Schema Information
#
# Table name: users
#
#  id                 :bigint           not null, primary key
#  first_name         :string
#  last_name          :string
#  username           :string
#  email              :string
#  encrypted_password :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#