class ChangeEventId < ActiveRecord::Migration[5.1]
  def change
    rename_column :appointments, :event_id, :attended_event_id
    rename_column :appointments, :user_id, :attendee_id
  end
end
