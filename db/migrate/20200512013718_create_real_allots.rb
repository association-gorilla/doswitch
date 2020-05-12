class CreateRealAllots < ActiveRecord::Migration[6.0]
  def change
    create_table :real_allots do |t|

      t.timestamps
    end
  end
end
