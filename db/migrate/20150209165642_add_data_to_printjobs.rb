class AddDataToPrintjobs < ActiveRecord::Migration
  def change
        add_column :printjobs, :lettering, :string
  end
end
