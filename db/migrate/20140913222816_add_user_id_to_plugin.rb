class AddUserIdToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :user_id, :integer
  end
end
