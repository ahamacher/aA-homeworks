class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.date :yr, null: false
      t.integer :band_id, null: false
      t.boolean :live_album, null: false, default: false
      t.timestamps
    end
    add_index :albums, :band_id
  end
end
