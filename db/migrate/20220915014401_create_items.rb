class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :explanation, null: false
      t.integer :without_tax, null: false
      t.boolean :sold_out, null: false, default: false

      t.timestamps
    end
  end
end
