class SiteController < ApplicationController
   skip_before_filter :verify_authenticity_token
  def index
       @nucleos = Nucleo.all
       @provas = Prova.all
     @sliders = Slider.all
     @slider=Slider.first
     @news = News.order(id: :desc)
     @cont_news=0
     
  end

  def equipe
       @nucleos = Nucleo.all
       @provas = Prova.all
    @teams= Equipe.first
    @colaboradors = Coladoradore.all
  end

  def historia
       @nucleos = Nucleo.all
       @provas = Prova.all
     @historico = Acontecimento.first
  end

  def estrutura
       @nucleos = Nucleo.all
       @provas = Prova.all
       @estruturas = Estrutura.paginate(:page => params[:page])
       @estrutura = Estrutura.first
       @cont_estruturas=0
  end

  def infantil
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def fundamental_I
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def fundamental_II
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def medio   
   @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def projetos
       @nucleos = Nucleo.all
       @provas = Prova.all
      @projetos = Projeto.paginate(:page => params[:page])
  end

  def egressos
       @nucleos = Nucleo.all
       @provas = Prova.all
     @egressos = Egresso.all
  end

  def calendario
       @nucleos = Nucleo.all
       @provas = Prova.all
       @calendario = Calendario.last
  end

  def provas
       @nucleos = Nucleo.all
       @provas = Prova.all
       @id=params[:prova_id]
       @prova=Prova.find(@id)
       
  end

  def humanas
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def linguas
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def matematica
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def biologicas
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def natureza
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def redacao
       @nucleos = Nucleo.all
       @provas = Prova.all
  end

  def noticias 
   @nucleos = Nucleo.all
   
       @provas = Prova.all
       @news = News.order(id: :desc).paginate(:page => params[:page])
     
  end
  def noticia_show
       @nucleos = Nucleo.all
       @provas = Prova.all
      @id=params[:noticia_id]
      @noticia= News.find(@id)
      
      
      
  end
  
  def galeria
       @nucleos = Nucleo.all
       @provas = Prova.all
        @galeries = Galery.order(id: :desc).paginate(:page => params[:page])

  end
  def galeria_show
       @nucleos = Nucleo.all
       @provas = Prova.all
      @id=params[:galeria_id]
      @galery=Galery.find(@id)
      @photos = @galery.photos.paginate(:page => params[:page])
      @photo = @galery.photos.build
      @foto=@galery.photos.first
       @cont_photos=0
  end
  def contato
       @nucleos = Nucleo.all
       @provas = Prova.all
      @nome=params[:nome]
      @email_contato=params[:email]
      @texto=params[:texto]
      @email=Email.new
      @dados_email=DadosEmail.new
      @dados_email.destinatario="col.anglodecampinas@gmail.com"
      @dados_email.subject="Formulario de contato"
      @dados_email.body="Contato via formulario "
      @dados_email.body_html= "<h1> nome do contato: #{@nome}</h1><br> email: #{@email_contato}<br> <h1>conteudo da mensagem</h1> <br> #{@texto} "
      @email.send_email @dados_email
  end

  def pre_matricula
       @nucleos = Nucleo.all
       @provas = Prova.all
  
  
  end
  def pre_matricula_post
        @nucleos = Nucleo.all
        @provas = Prova.all
  
    #dados do aluno
    @serie=params[:serie]
    @turno=params[:turno]
    @ano=params[:ano]
    @nome_aluno=params[:nome_aluno]
    @naturalidade_aluno=params[:naturalidade_aluno]
    @nacionalidade_aluno=params[:nacionalidade_aluno]
    @data_nascimento_aluno=params[:data_nascimento_aluno]
    @sexo_aluno=params[:sexo_aluno]
    @cpf_aluno=params[:cpf_aluno]
    @endereco_aluno=params[:endereco_aluno]
    @complemento_aluno=params[:complemento_aluno]
    @bairro_aluno=params[:bairro_aluno]
    @cidade_aluno=params[:bairro_aluno]
    @cep_aluno=params[:cep_aluno]
    @telefone_aluno=params[:telefone_aluno]
    @celular_aluno=params[:celular_aluno]
    #dados do pai
    @nomepai=params[:nomepai]
    @rgpai=params[:rgpai]
    @endepai=params[:endepai]
    @bairropai=params[:bairropai]
    @terespai=params[:terespai]
    @wppai=params[:wppai]
    #dados mae
   @nomemae=params[:nomemae]
   @rgmae=params[:rgmae]
   @endemae=params[:endemae]
   @bairromae=params[:bairromae]
   @teresmae=params[:teresmae]
   @wpmae=params[:wpmae]
   #dados do aluno mobile
   @serie_mobile  =params[:serie_mobile]
   @turno_mobile  =params[:turno_mobile]
   @ano_mobile  =params[:ano_mobile]
   @nome_aluno_mobile  =params[:nome_aluno_mobile]
   @nacionalidade_aluno_mobile  =params[:nacionalidade_aluno_mobile]
   @naturalidade_aluno_mobile  =params[:naturalidade_aluno_mobile]
   @data_nascimento_aluno_mobile  =params[:data_nascimento_aluno_mobile]
   @sexo_aluno_mobile  =params[:sexo_aluno_mobile]
   @endereco_aluno_mobile  =params[:endereco_aluno_mobile]
   @complemento_aluno_mobile  =params[:complemento_aluno_mobile]
   @bairro_aluno_mobile  =params[:bairro_aluno_mobile]
   @cep_aluno_mobile  =params[:cep_aluno_mobile]
    @cpf_aluno_mobile  =params[:cpf_aluno_mobile]
   @cidade_aluno_mobile  =params[:cidade_aluno_mobile]
   @telefone_aluno_mobile =params[:telefone_aluno_mobile]
   @celular_aluno_mobile =params[:celular_aluno_mobile]
    @email=Email.new
    @dados_email=DadosEmail.new
    @dados_email.destinatario="lucasalemao.ns@gmail.com"
    @dados_email.subject="pré_matricula"
    @dados_email.body="dados de nome dados de sobrenome "
    @dados_email.body_html= render 'dashboard/template_contato'
    @email.send_email @dados_email
  end
 
  def projetos_show
       @nucleos = Nucleo.all
       @provas = Prova.all
    @id=params["id_projeto"]
    @projeto=Projeto.find(@id)
  end
  def professores
       @nucleos = Nucleo.all
       @provas = Prova.all
       @id=params[:nucleo_id]
       @nucleo=Nucleo.find(@id)
       @professores = @nucleo.professores.all
       @professore = @nucleo.professores.build
  end
  def arquivos
       @nucleos = Nucleo.all
       @provas = Prova.all
       @id=params[:professor_id]
       @professore=Professore.find(@id)
       @arquivos = @professore.arquivos.order(data_prioridade: :desc)
       @arquivo =@professore.arquivos.build
       
  end
  def testes
       @nucleos = Nucleo.all
       @provas = Prova.all
  
  end
end
