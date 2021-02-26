class CreateAnswerOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_options do |t|
      t.references :question, index: true, foreign_key: true, null: false
      t.string :display_text
      t.string :value
      t.timestamps
    end
  end
end
