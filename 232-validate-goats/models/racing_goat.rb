class RacingGoat < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :gender, presence: true
  validates :best_100m_time, numericality: { only_integer:true }
  
end
