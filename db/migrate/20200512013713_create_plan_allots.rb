class CreatePlanAllots < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_allots do |t|

      t.timestamps
    end
  end
end
