class CreateAddUserIdToQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :add_user_id_to_questions do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
