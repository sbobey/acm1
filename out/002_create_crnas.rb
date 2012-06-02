class CreateCrnas < ActiveRecord::Migration
  def self.up
    create_table :crnas, :id => true do |t|
      t.string :code, :limit => 50
      t.string :lname, :limit => 50
      t.string :fname, :limit => 50
      t.string :mname, :limit => 10
      t.string :cat1, :limit => 50
      t.string :cat2, :limit => 50
      t.string :cat3, :limit => 50
      t.string :cat4, :limit => 50
      t.string :cat5, :limit => 50
      t.timestamps
    end
  end

  def self.down
    drop_table :crnas
  end
end
