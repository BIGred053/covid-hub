class CreateRegistrationFormsQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :registration_forms_questions do |t|
      t.references :registration_form, index: true, foreign_key: true, null: false
      t.references :question, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
