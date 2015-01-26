class AddFontColorToPrintjobs < ActiveRecord::Migration
  def change
    add_column :printjobs, :font_color, :integer
  end
end
