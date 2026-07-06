class CreateWords < ActiveRecord::Migration[7.1]
  def change
    create_table :words do |t|
      t.string  :japanese,          null: false
      t.string  :romaji,            null: false
      t.string  :korean_meaning,    null: false
      t.integer :group,             null: false
      t.string  :pos,               null: false
      t.string  :reading_breakdown

      t.timestamps
    end
  end
end
