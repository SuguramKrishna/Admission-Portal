# frozen_string_literal: true

class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.integer :status
      t.references :basic_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
