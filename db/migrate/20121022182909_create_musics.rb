class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.text :description
      t.text :link
      t.boolean :display, default: false

      t.timestamps
    end
  end
end
