class RemoveContentFromArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :content, :text
  end

  def down 
    add_column :articles, :content, :text
  end
end
