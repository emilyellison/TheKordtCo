class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :link
      t.boolean :writer, default: false
      t.boolean :director, default: false
      t.boolean :producer, default: false
      t.boolean :display, default: false

      t.timestamps
    end
  end
end
