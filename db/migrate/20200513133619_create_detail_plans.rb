# frozen_string_literal: true

class CreateDetailPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :detail_plans do |t|
      t.integer :action_id, null: false
      t.integer :plan_allot_id, null: false
      # 詳細の計画の始まりの時間
      t.datetime :begin_term
      # 詳細の計画の終わりの時間
      t.datetime :end_term
      t.timestamps
    end
  end
end
