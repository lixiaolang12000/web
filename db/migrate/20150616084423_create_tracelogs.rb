class CreateTracelogs < ActiveRecord::Migration
  def change
    create_table :tracelogs do |t|
      t.integer :gameid
      t.integer :gametype
      t.integer :pos
      t.integer :coin
      t.integer :status
      t.float :mulbability
      t.datetime :time
      t.integer :userid
      t.string :useraccount
      t.integer :action

      t.timestamps null: false
    end
  end
end
