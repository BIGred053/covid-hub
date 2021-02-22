class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :prompt
      t.references :question_type, index: true, foreign_key: true, null: false
      t.boolean :verification_required
      t.boolean :verification_preferred
      t.boolean :required_question
      t.timestamps
    end
  end
end
