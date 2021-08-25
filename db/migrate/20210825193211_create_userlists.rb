class CreateUserlists < ActiveRecord::Migration[6.1]
  def change
    create_table :userlists do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :list, null: false, foreign_key: true
      t.boolean :owner
      t.boolean :editor
      t.boolean :viewer

      t.timestamps
    end
  end
end
