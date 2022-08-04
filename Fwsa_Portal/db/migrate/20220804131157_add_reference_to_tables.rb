class AddReferenceToTables < ActiveRecord::Migration[6.1]
  def change
    add_reference :educational_details, :basic_details, foreign_key: true
    add_reference :family_details, :basic_details, foreign_key: true
    add_reference :refferal_details, :basic_details, foreign_key: true

  end
end
