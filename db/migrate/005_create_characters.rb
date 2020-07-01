class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
        create_table :characters do |row|
            row.string :name
            row.integer :actor_id
            row.integer :show_id
        end
    end
end