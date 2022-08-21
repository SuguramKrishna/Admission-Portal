# frozen_string_literal: true

class BasicDetail < ApplicationRecord
  FORMAT_REGEX = /\A[^0-9`!@#$%\^&*+_=]+\z/.freeze
  validates :student_name, presence: true, length: { minimum: 3, maximum: 100 },
                           format: { with: FORMAT_REGEX }
  validates :email_id, presence: true, length: { minimum: 10, maximum: 255 }, uniqueness: { case_sensitive: false },
                       email: { mode: :strict, require_fqdn: true }
  validates :primary_number, presence: true, length: { minimum: 10, maximum: 10 }, uniqueness: true
  validates :alternate_number, presence: true, length: { minimum: 10, maximum: 10 }, uniqueness: true
  validates :dob, presence: true
  validates :parent_name, presence: true, length: { minimum: 3, maximum: 100 },
                          format: { with: FORMAT_REGEX }
  validates :parent_relation, presence: true, length: { minimum: 3, maximum: 100 },
                              format: { with: FORMAT_REGEX }
end
