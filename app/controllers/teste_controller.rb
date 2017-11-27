class TesteController < ApplicationController
  def home
    @email=Email.new
    @dados_email=DadosEmail.new
    @dados_email.destinatario="lucasalemao.ns@gmail.com"
    @dados_email.subject="testando o envio de email em ruby"
    @dados_email.body="esse eh um email de teste"
    @dados_email.body_html="<h1>Esse é um <span> Teste </spna> de envio de email em ruby</h1>"
    @tela=@email.send_email(@dados_email)
  end
end
