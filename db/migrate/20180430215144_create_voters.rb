class CreateVoters < ActiveRecord::Migration[5.2]
  def change
    create_table :voters do |t|
      t.integer :voterId
      t.integer :districtId
      t.string :name
      t.string :email
      t.string :passwordHash

      t.timestamps
    end
    add_index :voters, :voterId
    add_index :voters, :districtId
  end
end
