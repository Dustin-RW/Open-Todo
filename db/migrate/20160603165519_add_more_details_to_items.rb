class AddMoreDetailsToItems < ActiveRecord::Migration
  def change
    add_column :items, :user_id, :integer
    add_column :items, :completed, :boolean
  end
end
