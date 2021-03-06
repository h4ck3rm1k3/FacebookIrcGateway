class CreateDuplications < ActiveRecord::Migration
  def self.up
    create_table :duplications do |t|
      t.column :parent_id, :string, :null => false, :primary => true
      t.column :obj_id, :string, :null => false
      t.timestamps
    end

    change_table :duplications do |t|
      t.index [:parent_id, :obj_id]
    end
  end

  def self.down
    drop_table :duplications
  end
end
