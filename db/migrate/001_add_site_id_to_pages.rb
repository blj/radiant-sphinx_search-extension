class AddSiteIdToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :searchable, :boolean, :default => true
    add_index  :pages, :searchable
    add_column :pages, :delta, :boolean, :default => false
  end

  def self.down
    remove_column :pages, :delta
    remove_column :pages, :searchable
    remove_index  :pages, :searchable
  end
end
