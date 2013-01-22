class AddCategoryIdToTweet < ActiveRecord::Migration
  def change
		add_column :tweets, :category_id, :integer, :null => false, :default => -1
  end
end
