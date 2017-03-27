class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.integer :lec_no
      t.text :description
      t.string :youtube_link
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
