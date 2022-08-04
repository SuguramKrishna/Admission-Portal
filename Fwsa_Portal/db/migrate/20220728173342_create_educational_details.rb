class CreateEducationalDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :educational_details do |t|
      t.string :current_class
      t.string :sslc_school_name
      t.string :sslc_school_type
      t.bigint :sslc_completion
      t.bigint :sslc_maths_score
      t.bigint :sslc_english_score
      t.bigint :sslc_total_score
      t.string :sslc_school_medium
      t.string :higher_education_name
      t.string :higher_education_type
      t.bigint :higher_education_completion
      t.string :higher_education_maths_score
      t.string :higher_education_english_score
      t.string :higher_education_computer_score
      t.string :higher_education_total_score
      t.string :higher_education_diploma_score
      t.string :higher_education_medium

      t.timestamps
    end
  end
end
