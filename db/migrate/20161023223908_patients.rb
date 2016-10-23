class Patients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.column :firstname, :string, :limit => 45, :null => false
      t.column :middlename, :string, :limit => 45, :null => false
      t.column :lastname, :string, :limit => 45
      t.column :weight, :integer
      t.column :height, :integer
      t.column :mrn, :string, :limit => 6, :null => false
    end
  end

  def self.down
    drop_table :patients
  end
end
