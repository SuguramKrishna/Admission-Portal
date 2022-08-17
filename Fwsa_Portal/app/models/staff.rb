# frozen_string_literal: true

class Staff < ApplicationRecord
  has_one_attached :profile
end
