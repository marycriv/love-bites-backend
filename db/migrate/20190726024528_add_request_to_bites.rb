class AddRequestToBites < ActiveRecord::Migration[5.2]
  def change
    add_column :bites, :status, :integer, default: 0
  end
end
