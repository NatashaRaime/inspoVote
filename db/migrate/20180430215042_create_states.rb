class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.integer :stateId
      t.string :name

      t.timestamps
    end
    add_index :states, :stateId
  end
end
