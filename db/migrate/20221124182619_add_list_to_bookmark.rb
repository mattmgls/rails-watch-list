class AddListToBookmark < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :list, null: false, foreign_key: true, to_table: :lists
  end
end
