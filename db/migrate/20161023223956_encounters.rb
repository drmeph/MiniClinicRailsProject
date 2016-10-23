class Encounters < ActiveRecord::Migration
  def self.up
    create_table :encounters do |t|
      t.column :visitnumber, :string, :limit => 6, :null => false
      t.column :admittedat, :datetime, :null => false
      t.column :discharedat, :datetime
      t.column :location, :string
      t.column :room, :integer
      t.column :bed, :integer
    end
  end

  def self.down
    drop_table :encounters
  end
end
