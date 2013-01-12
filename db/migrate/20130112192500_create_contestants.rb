class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :description
      t.datetime :date_added
      t.integer :id

      t.timestamps
    end
    add_index :contestants, :id, :unique => true
  end
end
