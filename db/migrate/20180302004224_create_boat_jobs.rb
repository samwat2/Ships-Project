class CreateBoatJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :boat_jobs do |t|
      t.references :boat, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
