class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    has_role? :admin
  end

  def epidemiology?
    has_role? :epidemiology or has_role? :admin
  end

  def communication?
    has_role? :communication or has_role? :admin
  end

  def localities
  	if area == "MS"
    	return Locality.where(enabled:true)
    else
    	if (['dpapt', 'dpapn', 'dpape', 'dpapcr'].include? area )
    		return Locality.where(enabled:true, area: Area.where(abbreviation: area).first)
      elsif (area === "RS-AA")
        return Locality.where(enabled:true, name: ["Alto Río Senguer", "Aldea Apeleg"])
      elsif (area === "RM-RR-LB-AB")
        return Locality.where(enabled:true, name: ["Río Mayo", "Doctor Ricardo Rojas", "Lago Blanco", "Aldea Beleiro"])
      elsif (area === "SM-FC-BP")
        return Locality.where(enabled:true, name: ["Sarmiento", "Facundo", "Buen Pasto"])
			else
				return Locality.where(name: area, enabled:true)
			end
  	end	
	end
end
