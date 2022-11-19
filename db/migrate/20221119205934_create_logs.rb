class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.date :date_comment
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
