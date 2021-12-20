class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :invitations, dependent: :destroy
  has_many :attendees, through: :invitations
  
  validates :title, length: { in: 3..16 }, presence: true
  validates :location, length: { in: 3..90 }, presence: true
  validates :date, presence: true
  validates :creator_id, presence:true

end
