class CreateBites < ActiveRecord::Migration[5.2]
  def change
    create_table :bites do |t|
      t.integer :biter_id
      t.integer :bitee_id

      t.timestamps
    end
  end
end
