# frozen_string_literal: true

class RenameOtherIncomeBigintToOtherIncome < ActiveRecord::Migration[6.1]
  def change
    rename_column :family_details, :other_income_bigint, :other_income
  end
end
