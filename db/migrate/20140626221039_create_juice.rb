class CreateJuice < ActiveRecord::Migration
  def change
    create_table :juices do |t|
      t.string :flavor
      t.string :ingredients
    end
  end
end
