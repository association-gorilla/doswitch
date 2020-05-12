class CreateAchieveRates < ActiveRecord::Migration[6.0]
  def change
    create_table :achieve_rates do |t|

      t.timestamps
    end
  end
end
