class CreateChecklibs < ActiveRecord::Migration[5.1]
  def change
    create_table :checklibs do |t|

      t.timestamps
    end
  end
end
