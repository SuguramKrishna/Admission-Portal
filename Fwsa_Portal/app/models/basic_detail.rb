# frozen_string_literal: true

class BasicDetail < ApplicationRecord
  REGEX_PATTERN = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/.freeze
  validates :student_name, presence: true, length: { minimum: 3, maximum: 100 },
                           format: { with: /\A[^0-9`!@#$%\^&*+_=]+\z/ }
  validates :email_id, presence: true, length: { minimum: 10, maximum: 255 }, uniqueness: { case_sensitive: false },
                       format: { with: REGEX_PATTERN }
  validates :primary_number, presence: true, length: { minimum: 10, maximum: 10 }, uniqueness: true
  validates :alternate_number, presence: true, length: { minimum: 10, maximum: 10 }, uniqueness: true
  validates :dob, presence: true
  validates :parent_name, presence: true, length: { minimum: 3, maximum: 100 },
                          format: { with: /\A[^0-9`!@#$%\^&*+_=]+\z/ }
  validates :parent_relation, presence: true, length: { minimum: 3, maximum: 100 },
                              format: { with: /\A[^0-9`!@#$%\^&*+_=]+\z/ }
end
