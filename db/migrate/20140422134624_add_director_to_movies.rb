class AddDirectorToMovies < ActiveRecord::Migration
  def up
    add_column :movies, :director, :string
  end

  def change
    add_column :movies, :director, :string
  end
  
  def down
    remove_column :movies, :director
  end
end
