class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :description
      t.integer :containers
      t.decimal :cost
      t.references :user, foreign_key: true
      t.string :destination
      t.string :orgin

      t.timestamps
    end
  end
end
