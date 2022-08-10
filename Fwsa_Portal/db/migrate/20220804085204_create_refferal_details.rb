# frozen_string_literal: true

class CreateRefferalDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :refferal_details do |t|
      t.string :approach
      t.string :refferal_person_details
      t.string :refferal_person_name
      t.bigint :refferal_person_number
      t.string :refferal_person_relationship
      t.string :additional_information

      t.timestamps
    end
  end
end
