class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :category
      t.string :title
      t.string :yield
      t.text :ingredients
      t.text :content
      t.string :level
      t.string :country
      t.belongs_to :user
      t.timestamp
    end
  end
end
