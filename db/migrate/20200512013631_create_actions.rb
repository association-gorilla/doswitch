class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|

      t.timestamps
    end
  end
end
