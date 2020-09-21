class CreatesCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|

      t.string :name
      t.string :username
      t.string :car_make
      t.string :car_model
      t.integer :car_year
      
    end
  end
end
