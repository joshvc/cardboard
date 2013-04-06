class CreateCardboardPages < ActiveRecord::Migration
  def change
    create_table :cardboard_pages do |t|
      t.string :title
      t.string :path
      t.string :slug
      t.integer :position
      t.text :meta_seo
      t.string :identifier, :unique => true

      t.timestamps
    end
    add_index :cardboard_pages, [:path, :slug], :unique => true
    add_index :cardboard_pages, :identifier, :unique => true
  end
end
