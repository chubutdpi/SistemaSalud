class CovidCase < ApplicationRecord
	belongs_to :state, optional: true
	belongs_to :locality
	belongs_to :vaccination_scheme

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :dni, presence: true
	validates :email, presence: true
	validates :address_street, presence: true
	validates :address_number, presence: true
	validates :reason, presence: true
	
	validate :check_presence
	validate :check_dates
	validate :check_pending, :on => :create

	private

		def check_presence
			unless reason.nil?
				if reason === 'Caso sospechoso de COVID19 y descartado por resultado negativo de laboratorio.'
					if institution.blank?
						errors.add(:institution, "Debe especificar el establecimiento donde se practico el hisopado.")
					end
				elsif reason === 'Contacto Estrecho de caso confirmado de COVID19'
					if c_firstname.blank?
						errors.add(:c_firstname, "Debe especificar los nombres del contacto estrecho.")
					end
					if c_lastname.blank?
						errors.add(:c_lastname, "Debe especificar los apellidos del contacto estrecho.")
					end
				end
			end
		end

		def check_dates
			unless vaccination_scheme.nil?
				if vaccination_scheme.name != 'Sin vacuna'
					if last_dose_date.nil?
						errors.add(:last_dose_date, "Debe especificar fecha de última dosis.")
					end
				end
			end

			if c_is_cohabiting
				if c_cohabiting_symptom_date.nil?
					errors.add(:c_cohabiting_symptom_date, "Debe especificar fecha de síntomas del contacto.")
				end
			end
		end

		def check_pending
			estado = State.where(name:'pendiente')
			covid_case = CovidCase.where(dni: dni).where(state_id:estado)
			unless covid_case.empty?
				errors.add(:dni, "El DNI ya cuenta con un alta COVID19 en estado pendiente.")
			end
		end
end
