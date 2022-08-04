class CreateFamilyDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :family_details do |t|
      t.string :parent_detail
      t.string :mother_qualification
      t.string :father_qualification
      t.string :mother_occupation
      t.string :mother_income
      t.string :father_occupation
      t.string :father_income
      t.string :other_income_bigint
      t.bigint :electricity_amount

      t.timestamps
    end
  end
end
