class Email
  require 'gmail'



    def send_email(dados_email)
     gmail = Gmail.connect("lucasalemao.ns@gmail.com", "lucas_LOST6951_nuttertools_HUNTER")
     gmail.deliver do
      to dados_email.destinatario
      subject dados_email.subject
      text_part do
        body dados_email.body
      end
      html_part do
        content_type 'text/html; charset=UTF-8'
        body dados_email.body_html
      end
   
    end
    
  
    gmail.logout
   end
end