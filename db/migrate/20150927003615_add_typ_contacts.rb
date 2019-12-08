class AddTypContacts < ActiveRecord::Migration[5.2]
  def up
  	#Typ_contacts
  	TypContact.create(name: "Billing")
  	TypContact.create(name: "Shipping")
  end
end
