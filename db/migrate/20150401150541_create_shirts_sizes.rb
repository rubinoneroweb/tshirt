class CreateShirtsSizes < ActiveRecord::Migration
  def change
    create_table :shirts_and_sizes do |t|
    	t.belongs_to :shirt, index: true
      	t.belongs_to :size, index: true
    end
  end
end
