class CovidCaseMailer < ApplicationMailer
    def new_covid_case_email
        @covid_case = params[:covid_case]
    
        mail(to: @covid_case.email, subject: "Certificado Alta Covid")
    end
end
