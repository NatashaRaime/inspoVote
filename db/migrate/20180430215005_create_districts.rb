class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.integer :districtId
      t.integer :stateId
      t.string :name

      t.timestamps
    end
    add_index :districts, :districtId
    add_index :districts, :stateId
  end
end
