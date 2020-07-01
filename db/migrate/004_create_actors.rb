class CreateActors < ActiveRecord::Migration[5.1]
    def change
        create_table :actors do |row|
            row.string :first_name
            row.string :last_name
        end
    end
end