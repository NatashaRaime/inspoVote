class CreateElections < ActiveRecord::Migration[5.2]
  def change
    create_table :elections do |t|
      t.integer :electionId
      t.integer :districtId
      t.datetime :electionDate
      t.string :title
      t.boolean :completed

      t.timestamps
    end
    add_index :elections, :electionId
    add_index :elections, :districtId
  end
end
