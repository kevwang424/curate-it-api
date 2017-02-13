class CreateGalleryPieces < ActiveRecord::Migration[5.0]
  def change
    create_table :gallery_pieces do |t|
      t.integer :gallery_id
      t.integer :piece_id
      
      t.timestamps
    end
  end
end
