class CreateShirtsColors < ActiveRecord::Migration
  def change
    create_table :shirts_and_colors do |t|
    	t.belongs_to :shirt, index: true
      	t.belongs_to :color, index: true
    end
  end
end
