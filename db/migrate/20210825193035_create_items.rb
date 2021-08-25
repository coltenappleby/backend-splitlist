class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :notes
      t.string :location
      t.boolean :completed
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
