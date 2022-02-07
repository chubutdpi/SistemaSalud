class CovidCurrentController < ApplicationController
    def index
        hora_corte = Time.now.strftime('%H').to_f
        # Se controla < 15 que es la hora de corte en la carga de datos del día 15hs
        if hora_corte < 15
            @corte_informacion = Time.now - 1.days
        else
            @corte_informacion = Time.now
        end
        ultimo_parte = CovidSituation.where('part_date <=?', @corte_informacion).order('part_date').last
        @corte_informacion = ultimo_parte.part_date.to_time
        @cases_new_reported = CovidSituation.where(part_date:@corte_informacion).reduce(0) {|sum,obj| sum + obj.new_cases }
        @cases_new_recovered_reported = CovidSituation.where(part_date:@corte_informacion).reduce(0) {|sum,obj| sum + obj.new_recovered }
        @cases_new_deceased_reported = CovidSituation.where(part_date:@corte_informacion).reduce(0) {|sum,obj| sum + obj.new_deceased }
        @cases_confirm_acumulated = CovidSituation.where('part_date <=?', @corte_informacion).reduce(0) {|sum,obj| sum + obj.new_cases }
        @cases_recovered_acumulated = CovidSituation.where('part_date <=?', @corte_informacion).reduce(0) {|sum,obj| sum + obj.new_recovered }
        @cases_deceased_acumulated = CovidSituation.where('part_date <=?', @corte_informacion).reduce(0) {|sum,obj| sum + obj.new_deceased }
    end

    def part_locality
        hora_corte = Time.now.strftime('%H').to_f
        if hora_corte < 15
            fecha_corte = Time.now - 1.days
        else
            fecha_corte = Time.now
        end
        ultimo_parte = CovidSituation.where('part_date <=?', fecha_corte).order('part_date').last
        fecha_corte = ultimo_parte.part_date.to_time
        
        locality_id = params[:id]
        covid_situation_today = CovidSituation.where('locality_id =?',locality_id).where(part_date:fecha_corte).order(id: :desc).first
        
        if covid_situation_today.nil?
            covid_situation_today = CovidSituation.where('locality_id =?',locality_id).where('part_date <= ?', fecha_corte).order('part_date').last
            recovereds = covid_situation_today.acumulated_recovered(fecha_corte)
            deceaseds = covid_situation_today.acumulated_deceased(fecha_corte)
            totalcc = covid_situation_today.acumulated_actives(fecha_corte)
            @array_cs = [['Sin Registrar','Sin Registrar','Sin Registrar','Sin Registrar','Sin Registrar',recovereds,deceaseds,recovereds + deceaseds + totalcc]]
        else
            recovereds = covid_situation_today.acumulated_recovered
            deceaseds = covid_situation_today.acumulated_deceased
            totalcc = covid_situation_today.acumulated_actives(fecha_corte)
            @array_cs = [[covid_situation_today.new_cases,covid_situation_today.ambulatory,covid_situation_today.general_room,covid_situation_today.uti_without_arm,covid_situation_today.uti_with_arm, recovereds,deceaseds,recovereds + deceaseds + totalcc]]
        end

        respond_to do |format|
            format.json { render json: @array_cs }
        end
    end

end
