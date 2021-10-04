class CreateWickwalls < ActiveRecord::Migration[6.1]
  def change
    create_table :wickwalls do |t|
      t.string :last_squawk
      t.string :last_tweet

      t.timestamps
    end
  end
end
