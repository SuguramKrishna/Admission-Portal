# frozen_string_literal: true

class AddingColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :basic_details, :declaration, :string, default: 'yes'
  end
end
