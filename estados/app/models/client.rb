class Client < ApplicationRecord
  belongs_to :company
  has_many :projects

  # obtener los clientes de una empresa a partir del nombre de la empresa
  def self.company_name(company_name)
    # Obtener la ciudad
    empresa = Company.find_by_name(company_name)

    unless empresa.nil? # Solo si existe la ciudad
      Client.where(company_id: empresa.id) # Devolver la lista de empresas
    end
  end

end
