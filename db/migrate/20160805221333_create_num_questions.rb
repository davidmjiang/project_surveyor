class CreateNumQuestions < ActiveRecord::Migration
  def change
    create_table :num_questions do |t|
      t.string :name
      t.integer :min_value
      t.integer :max_value
      t.boolean :required
      t.timestamps null: false
    end
  end
end
