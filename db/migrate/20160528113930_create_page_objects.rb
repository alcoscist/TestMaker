class CreatePageObjects < ActiveRecord::Migration
  def change
    create_table :page_objects do |t|
      t.text :name
      t.text :tagName

      t.timestamps null: false
    end
  end
end
