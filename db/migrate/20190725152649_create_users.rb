class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :display_name
      t.string :profile_picture
      t.string :classification

      t.timestamps
    end
  end
end
