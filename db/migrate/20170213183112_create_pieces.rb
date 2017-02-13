class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :artist_name
      t.string :classification
      t.string :century
      t.string :place
      t.string :image_url
      t.string :dimension
      t.string :notes

      t.timestamps
    end
  end
end
