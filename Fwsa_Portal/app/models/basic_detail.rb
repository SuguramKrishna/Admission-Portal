# frozen_string_literal: true

class BasicDetail < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/.freeze
  validates :student_name, presence: true, length: { minimum: 3, maximum: 100 },
                           format: { with: /\A[^0-9`!@#$%\^&*+_=]+\z/ }
  validates :email_id, presence: true, length: { minimum: 10, maximum: 255 },
                       format: { with: VALID_EMAIL_REGEX, message: 'Must be a valid Email address' }, uniqueness: { case_senitive: false }
  validates :primary_number, presence: true, length: { minimum: 10, maximum: 10 }, uniqueness: true
  validates :alternate_number, presence: true, length: { minimum: 10, maximum: 10 }, uniqueness: true
  validates :dob, presence: true
end
