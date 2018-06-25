class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :list_id
      # wiring the schema - the database - FK
      # wire my model with the association.
    

      t.timestamps
    end
  end
end
