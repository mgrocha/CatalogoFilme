class CreateCastfilms < ActiveRecord::Migration[7.0]
  def change
    create_table :castfilms do |t|
      t.references :author, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
