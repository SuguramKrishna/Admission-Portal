# frozen_string_literal: true

class AddProfileColumnToStaffs < ActiveRecord::Migration[6.1]
  def change
    add_column :staffs, :profile, :binary
  end
end
