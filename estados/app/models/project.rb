class Project < ApplicationRecord
  belongs_to :client
  belongs_to :status

  # Obtener el nombre del cliente del proyecto a partr del codigo del proyecto
  def self.client_name(code)
    # Encontrar el proyecto por id
    proyecto = Project.find_by_codigo(code) 
    # Solo si existe el proyecto
    unless proyecto.nil?
      proyecto.client.nombre # Devolver el nombre del cliente
    end

  end

end
