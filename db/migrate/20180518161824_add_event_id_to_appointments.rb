class AddEventIdToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_reference :appointments, :event, foreign_key: true
  end
end
