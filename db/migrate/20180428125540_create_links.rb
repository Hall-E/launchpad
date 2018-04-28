class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :link_url
      t.string :link_style
      t.integer :icon_id
      t.integer :category_id

      t.timestamps
    end
  end
end
