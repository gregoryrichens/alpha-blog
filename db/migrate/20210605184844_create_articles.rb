class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    drop_table(:articles, if_exists: true)
    create_table :articles do |t|
      t.string :title
      t.text :description
    end
  end
end
