class AddStoriesReferencesToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :story, index: true
  end
end
