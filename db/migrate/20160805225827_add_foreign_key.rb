class AddForeignKey < ActiveRecord::Migration
  def change
    add_column :num_questions, :survey_id, :integer
  end
end
