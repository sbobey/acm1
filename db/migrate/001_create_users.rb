class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, :id => true do |t|
      t.string :userid, :limit => 50
      t.string :password, :limit => 50
      t.string :name, :limit => 50
      t.string :customer_code, :limit => 50
      t.string :prac_access, :limit => 50
      t.string :allow_all_pracs, :limit => 10
      t.string :revoked, :limit => 10
      t.string :email, :limit => 50
      t.string :res3, :limit => 50
      t.string :res4, :limit => 50
      t.string :res5, :limit => 50
      t.string :res6, :limit => 50
      t.string :res7, :limit => 50
      t.string :res8, :limit => 50
      t.string :res9, :limit => 10
      t.string :res10, :limit => 10
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
