class AddShirtToPrintjobs < ActiveRecord::Migration
  def change
    add_column :printjobs, :shirt_id, :integer
  end
end
