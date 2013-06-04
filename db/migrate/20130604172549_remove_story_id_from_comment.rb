class RemoveStoryIdFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :story_id, :integer
  end
end
