class AddSourceReferenceToStory < ActiveRecord::Migration
  def change
    add_reference :stories, :source, index: true
  end
end
