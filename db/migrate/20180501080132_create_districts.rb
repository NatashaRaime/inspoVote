class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts, primary_key: :districtId do |t|
      t.integer :stateId
      t.string :name

      t.timestamps
  end
end
end