class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :containers
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
