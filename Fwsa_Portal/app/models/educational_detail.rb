# frozen_string_literal: true

class EducationalDetail < ApplicationRecord
  MARK_FORMAT_REGEX = /\a\d+\z/.freeze

  validates :current_class, presence: true
  validates :sslc_school_name, presence: true, length: { minimum: 3, maximum: 100 },
                               format: { with: /\A[^0-9`!@#$%\^&*+_=]+\z/, message: 'Minimum 3 three letters' }
  validates :sslc_school_type, presence: true
  validates :sslc_completion, presence: true
  validates :sslc_maths_score, presence: true, length: { minimum: 1, maximum: 3 }, format: { with: MARK_FORMAT_REGEX }
  validates :sslc_english_score, presence: true, length: { minimum: 2, maximum: 100 },
                                 format: { with: MARK_FORMAT_REGEX }
  validates :sslc_total_score, presence: true, length: { minimum: 2, maximum: 100 }, format: { with: MARK_FORMAT_REGEX }
  validates :sslc_school_medium, presence: true
  validates :higher_education_name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :higher_education_type, presence: true
  validates :higher_education_completion, presence: true
  validates :higher_education_maths_score, presence: true, length: { minimum: 2, maximum: 100 },
                                           format: { with: MARK_FORMAT_REGEX }
  validates :higher_education_english_score, presence: true, length: { minimum: 2, maximum: 100 },
                                             format: { with: MARK_FORMAT_REGEX }
  validates :higher_education_computer_score, presence: true, length: { minimum: 2, maximum: 100 },
                                              format: { with: MARK_FORMAT_REGEX }
  validates :higher_education_total_score, presence: true, length: { minimum: 2, maximum: 100 },
                                           format: { with: MARK_FORMAT_REGEX }
  validates :higher_education_diploma_score, presence: true, length: { minimum: 2, maximum: 100 },
                                             format: { with: MARK_FORMAT_REGEX }
  validates :higher_education_medium, presence: true
end
