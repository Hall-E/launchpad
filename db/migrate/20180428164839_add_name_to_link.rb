class AddNameToLink < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :name, :string
  end
end
