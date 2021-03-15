# using 'rails generate migration create_articles' created this file after adding 
# required clm thenn we run 'rails db:migrate, its automatically added to schemas.rb file'
 
class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
