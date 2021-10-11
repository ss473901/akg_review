class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true
      t.string :content
      t.integer :score

      t.timestamps
    end
  end
end
