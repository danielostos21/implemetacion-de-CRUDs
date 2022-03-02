class City < ApplicationRecord
  belongs_to :state
  has_many :companies
  
  # Obtener las ciudades de un estado a partir del id del estado (state_id)
  def self.state_id(state_id)
    City.where(state_id: state_id)
  end


  #obtener las ciudades de un estado a partir del nombre del estado del estado
  
  def self.state_name(state_name)
    # Obtener el estado
    estado = State.find_by(name:state_name)
    unless estado.nil? #Si existe el estado
      self.state_id(estado.id) #Encontrar las ciudas por su ID
    end  
  end


end
