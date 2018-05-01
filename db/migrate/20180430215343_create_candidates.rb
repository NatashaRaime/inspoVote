class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.integer :candidateId
      t.integer :raceId
      t.integer :votes
      t.string :name

      t.timestamps
    end
    add_index :candidates, :candidateId
  end
end
