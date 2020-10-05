class UserMailer < ApplicationMailer
    default from: 'oglasnik@oglasnik.com'
    def send_email(application, job)
        @application = application
        @job = job
        mail(to: @job['email'], subject: 'Prijava za posao')
    end

    def send_email2(application, job)
        @application = application
        @job = job
        mail(to: @application['email'], subject: 'Prijava za posao')
    end
end
