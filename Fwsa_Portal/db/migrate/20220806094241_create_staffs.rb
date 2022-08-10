# frozen_string_literal: true

class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :designation
      t.string :experience
      t.bigint :phone_number
      t.string :email_id
      t.integer :age
      t.binary :aadhar_card_images

      t.timestamps
    end
  end
end
