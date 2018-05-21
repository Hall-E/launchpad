class ChangeColumnDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :categories, :icon_id, :integer, default: 1
  end
end
