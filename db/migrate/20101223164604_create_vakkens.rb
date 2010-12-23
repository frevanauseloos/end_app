class CreateVakkens < ActiveRecord::Migration
  def self.up
    create_table :vakkens do |t|
      t.string :name
      t.integer :studiepunten

      t.timestamps
    end
  end

  def self.down
    drop_table :vakkens
  end
end
