class ApplicationMailer < ActionMailer::Base
  default from: 'rodrigo@codepolaris.com'
  layout 'mailer'

  def order_created(order)
    @order = order
    mail(to: ['rodrigo@codepolaris.com', 'raquel@inventosdigitais.com.br'], subject: '[Rodrigo Assis] Nova Reserva de Minions!')
  end
end
