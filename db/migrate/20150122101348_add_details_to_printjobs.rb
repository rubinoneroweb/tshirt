class AddDetailsToPrintjobs < ActiveRecord::Migration
  def change
    add_column :printjobs, :note, :text
    add_column :printjobs, :ready, :boolean
    add_column :printjobs, :archived, :boolean
  end
end
