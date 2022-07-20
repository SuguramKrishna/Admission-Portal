class CreateBasicDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :basic_details do |t|
      t.string :student_name
      t.date :dob
      t.string :gender
      t.string :address
      t.bigint :primary_number
      t.bigint :alternate_number
      t.string :email_id
      t.string :parent_name
      t.string :parent_relation

      t.timestamps
    end
  end
end
