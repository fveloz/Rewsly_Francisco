class RemoveUserIdFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :user_id, :integer
  end
end