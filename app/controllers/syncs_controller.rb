class SyncsController < ApplicationController
  def index
  end

  # Simula um POST para uma API fictícia do MEC. Em uma aplicação real,
  # o ideal seria que esse tipo de requisição a serviço externo acontecesse
  # em background, já que é uma operação sujeita a falhas e mais lenta
  # (e queremos que nossa aplicação seja capaz de servir requisições o mais rápido
  # possível, já que assim conseguimos atender mais requisições por segundo com
  # hardware menos poderoso).
  def create
    url = URI('http://www.mocky.io/v2/59bf19a326000016035261e6')
    req = Net::HTTP::Post.new(url)
    req.body = { students: Student.all }.to_json
    req['Content-Type'] = 'application/json'

    response = Net::HTTP.start(url.hostname, url.port, use_ssl: false) do |http|
      http.request(req)
    end

    if response.code == '201'
      redirect_to syncs_path, notice: 'Dados sincronizados com sucesso.'
    else
      redirect_to syncs_path, alert: 'Houve um erro ao tentar sincronizar os dados.' \
        ' Por favor, tente novamente mais tarde.'
    end
  end
end
