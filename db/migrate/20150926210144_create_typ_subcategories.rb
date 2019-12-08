class CreateTypSubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :typ_subcategories do |t|
    	t.string :name
    	t.belongs_to :typ_category
    end
  end
end
