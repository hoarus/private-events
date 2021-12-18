class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  
  validates :title, length: { in: 3..16 }, presence: true
  validates :location, length: { in: 3..90 }, presence: true
  validates :date, presence: true
  validates :creator_id, presence:true
end
