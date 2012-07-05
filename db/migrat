class CreateScans < ActiveRecord::Migration
  def self.up
    create_table :scans, :id => true do |t|
      t.string :caseid, :limit => 50
      t.string :time_sqequence, :limit => 50
      t.string :orig_filename, :limit => 100
      t.string :final_filename, :limit => 100
      t.string :patid, :limit => 50
      t.string :plname, :limit => 50
      t.string :pfname, :limit => 50
      t.string :avitar, :limit => 100
      t.string :res1, :limit => 50
      t.string :res2, :limit => 50
      t.string :res3, :limit => 50
      t.timestamps
    end
  end

  def self.down
    drop_table :scans
  end
end
