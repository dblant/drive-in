class CreatesMechanics < ActiveRecord::Migration[6.0]
  def change
    create_table :mechanics do |t|
      
      t.string :first_name
      t.string :last_name
      t.integer :skills
      t.text :bio
      
    
    end
  end
end
