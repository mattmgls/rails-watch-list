class AddMovieToBookmark < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :movie, null: false, foreign_key: true, to_table: :movies
  end
end
