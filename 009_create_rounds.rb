class CreateRounds < ActiveRecord::Migration
  def self.up
    create_table :rounds, :id => true do |t|
      t.string :caseid, :limit => 50
      t.string :datetime, :limit => 50
      t.string :user, :limit => 50
      t.string :res2, :limit => 50
      t.string :res3, :limit => 50
      t.timestamps
    end
  end

  def self.down
    drop_table :rounds
  end
end
