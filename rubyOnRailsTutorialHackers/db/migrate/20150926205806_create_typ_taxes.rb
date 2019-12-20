class CreateTypTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :typ_taxes do |t|
    	t.string :name, null: false
    	t.timestamps
    end
  end
end
