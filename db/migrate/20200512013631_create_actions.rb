# frozen_string_literal: true

class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      # 設定中の項目
      t.boolean :selected, null: false, default: false
      # 例）学習など
      t.boolean :important, null: false, default: false
      t.timestamps
    end
  end
end
