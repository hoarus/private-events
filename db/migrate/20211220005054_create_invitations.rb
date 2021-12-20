class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.belongs_to :attendee, class_name: "User"
      t.belongs_to :event
      t.timestamps
    end
  end
end

