# frozen_string_literal: true

class Staff < ApplicationRecord
  has_many_attached :aadhar_card_images
end
