class AddCatchphraseToCharacters < ActiveRecord::Migration[5.1]
  # define the method change where to do the migration
  def change 
    add_column :characters, :catchphrase, :string
  end
end