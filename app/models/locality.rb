class Locality < ApplicationRecord
  belongs_to :area
  has_many :covid_cases

  def to_s
  	if short_name.blank?
      name
    else 
      short_name
    end        
  end
end
