class AddGenreDaySeason < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :genre, :sting
    add_column :shows, :day, :sting
    add_column :shows, :season, :sting
  end
end
    