class User < ActiveRecord::Base
  validates :email, presence: true
  validates :first_name, uniqueness: true
end
