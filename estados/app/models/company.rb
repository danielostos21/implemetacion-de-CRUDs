class Company < ApplicationRecord
  belongs_to :city
  has_many :clients


  # obtener las empresas de una ciudad a partir del nombre de la ciudad
  def self.city_name(city_name)
    # Obtener la ciudad
    ciudad = City.find_by_name(city_name)
  
    unless ciudad.nil? # Solo si existe la ciudad
      Company.where(city_id: ciudad.id) # Devolver la lista de empresas
    end
  end

end
