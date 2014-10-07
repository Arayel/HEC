class CreateLineUpBooms < ActiveRecord::Migration
  def change
    create_table :line_up_booms do |t|
      t.text :DjName
      t.date :SetTime
      t.text :MusicStyle

      t.timestamps
    end
  end
end
