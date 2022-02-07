class WelcomeController < ApplicationController
	def index
		@notices = Notice.last(3)		


		hora_corte = Time.now.strftime('%H').to_f
		if hora_corte < 15
            @corte_informacion = Time.now - 1.days
        else
            @corte_informacion = Time.now
        end
        
        ultimo_parte = CovidSituation.where('part_date <=?', @corte_informacion).order('part_date').last
        @corte_informacion = ultimo_parte.part_date.to_time
		
		cs_today = CovidSituation.joins(:locality).select('covid_situations.id, covid_situations.part_date, covid_situations.new_cases,localities.short_name as locality_name').where("covid_situations.part_date": @corte_informacion).order("covid_situations.new_cases": :desc).first(5)

		g1_labels_aux = cs_today.pluck("locality_name")

		@g1_labels =  g1_labels_aux.map { |x| x == "C.Rivadavia - R.Tilly" ? ['C. Rivadavia', '/ Rada Tilly'] : x }

		@g1_values = cs_today.pluck(:new_cases)

		#-----------------------------------------------------------------------------------------------------------------------------------------

		#@curva_tags = CovidSituation.order('part_date').group(:part_date).sum(:new_cases).keys.last(15).map { |s| [s.strftime("%d-%m")] }
		@curva_tags = CovidSituation.where('part_date <=?', @corte_informacion).order('part_date').group(:part_date).sum(:new_cases).keys.last(15).map { |s| [s.strftime("%d-%m")] }

		sum = 0
		@curva_valores_nc = CovidSituation.where('part_date <=?', @corte_informacion).order('part_date').group(:part_date).sum(:new_cases).values.last(15)
		curva_valores_nc_acum = @curva_valores_nc.map{|n| sum+=n}
		sum = 0
		@curva_valores_nd = CovidSituation.where('part_date <=?', @corte_informacion).order('part_date').group(:part_date).sum(:new_deceased).values.last(15)
		curva_valores_nd_acum = @curva_valores_nd.map{|n| sum+=n}
		sum = 0
		@curva_valores_nr = CovidSituation.where('part_date <=?', @corte_informacion).order('part_date').group(:part_date).sum(:new_recovered).values.last(15)
		curva_valores_nr_acum = @curva_valores_nr.map{|n| sum+=n}
		
		first_date = CovidSituation.where('part_date <=?', @corte_informacion).order('part_date').group(:part_date).sum(:new_cases).keys.last(15).first
		tnc = CovidSituation.where('part_date <?', first_date).reduce(0) {|sum,obj| sum + obj.new_cases }
		tnr = CovidSituation.where('part_date <?', first_date).reduce(0) {|sum,obj| sum + obj.new_recovered }
		tnd = CovidSituation.where('part_date <?', first_date).reduce(0) {|sum,obj| sum + obj.new_deceased }

		@curva = []
		
		curva_valores_nc_acum.each_with_index do |nc, i|
			nd = curva_valores_nd_acum[i]
			nr = curva_valores_nr_acum[i]
			@curva[i] = (tnc + nc) - (tnd + nd) - (tnr + nr)
		end
	end
end
