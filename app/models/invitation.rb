class Invitation < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :event

  validates :attendee_id, presence: true, uniqueness: {scope: :event_id}
  validates :event, presence:true
end
