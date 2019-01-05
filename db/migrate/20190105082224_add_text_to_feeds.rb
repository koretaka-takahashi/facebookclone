class AddTextToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :text, :string
  end
end
