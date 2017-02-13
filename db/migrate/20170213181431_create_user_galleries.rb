class CreateUserGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :user_galleries do |t|
      t.integer :user_id
      t.integer :gallery_id

      t.timestamps
    end
  end
end
