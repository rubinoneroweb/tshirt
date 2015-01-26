class AddScriptToPrintjobs < ActiveRecord::Migration
  def change
  		add_column :printjobs, :caption, :text
  		add_column :printjobs, :font_id, :integer
  		add_column :printjobs, :price, :float
  end
end
