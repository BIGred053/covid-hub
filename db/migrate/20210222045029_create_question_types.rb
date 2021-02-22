class CreateQuestionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :question_types do |t|
      t.string :display_name
      t.string :associated_tag
      t.timestamps
    end
  end
end
