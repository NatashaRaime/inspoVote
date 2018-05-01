class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.integer :raceId
      t.string :title

      t.timestamps
    end
    add_index :races, :raceId
  end
end
