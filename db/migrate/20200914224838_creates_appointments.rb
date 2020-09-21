class CreatesAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :appointment_date
      t.boolean :confirmed, :default => false
      t.integer :service_level
      t.text :notes
      t.boolean :completed, :default => false
      t.integer :customer_id
      t.integer :mechanic_id
    end
  end
end
