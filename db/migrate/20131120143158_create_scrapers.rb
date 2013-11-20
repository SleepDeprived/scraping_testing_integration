class CreateScrapers < ActiveRecord::Migration
  def change
    create_table :scrapers do |t|
      t.text :link
      t.text :image_url

      t.timestamps
    end
  end
end
