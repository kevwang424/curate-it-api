class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :artist_name
      t.string :classification
      t.string :century
      t.string :culture
      t.string :image_url
      t.string :dimensions
      t.string :label_text
      t.string :commentary
      t.string :dated


      t.timestamps
    end
  end
end
