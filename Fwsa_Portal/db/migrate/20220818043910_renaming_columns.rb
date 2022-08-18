# frozen_string_literal: true

class RenamingColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :admins, :password_digest, :password
  end
end
