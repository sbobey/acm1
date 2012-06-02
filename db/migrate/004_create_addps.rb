class CreateAddps < ActiveRecord::Migration
  def self.up
    create_table :addps, :id => true do |t|
      t.string :addcode, :limit => 50
      t.string :cptcode, :limit => 50
      t.string :Desc, :limit => 50
      t.string :units, :limit => 10
      t.string :fee, :limit => 50
      t.timestamps
    end
  end

  def self.down
    drop_table :addps
  end
end
