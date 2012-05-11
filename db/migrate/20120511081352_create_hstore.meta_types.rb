# This migration comes from meta_types (originally 20120507130230)
class CreateHstore < ActiveRecord::Migration
  def self.up
    execute "CREATE EXTENSION hstore"
  end

  def self.down
    execute "DROP EXTENSION hstore"
  end
end
