class AddTypCompanies < ActiveRecord::Migration[5.2]
  def up
  	#Typ_companies
  	TypCompany.create(name: "Consumer")
  	TypCompany.create(name: "Deliverer")
  	TypCompany.create(name: "Supplier") 
  end
end
