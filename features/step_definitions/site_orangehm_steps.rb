 #encoding: utf-8
 #!/usr/bin/env ruby
Dado(/^que acesso o site do OrageHRM$/) do
  @page=SiteOrangeHmScreen.new
  @page.ir_ao_site
end

Dado(/^efetuo login utilizando credenciais válidas$/) do
  login= CREDENCIAIS[:login_valido]
  @page.efetuar_login login[:usuario],login[:senha],@page.id_campo_usuario, @page.id_campo_senha, @page.id_botao_login
end


Dado(/^clico em Discipline$/) do
  @page.clicar_em_disciplinary @page.id_botao_discipline
  sleep(3)
end

Quando(/^preencho os campos "([^"]*)", "([^"]*)" e "([^"]*)"$/) do |arg1, arg2, arg3|
  @page.preencher_campos arg1, arg2, arg3, @page.id_name, @page.case, @page.descricao
end

Quando(/^clico em ADD$/) do
  @page.clicar_botao_add @page.id_botao_add
  sleep(3)
end


Quando(/^clico no botão save$/) do
  @page.clicar_botao_save @page.id_botao_save
end

Então(/^visualizo a mensagem de sucesso$/) do
  @page.mensagem_de_sucesso_carregou? @page.id_mensagem_sucesso
end


Dado(/^tento efetuar login utilizando credenciais inválidas$/) do
  login= CREDENCIAIS[:login_invalido]
  @page.efetuar_login login[:usuario],login[:senha],@page.id_campo_usuario, @page.id_campo_senha, @page.id_botao_login
end

Então(/^visualizo a mensagem de erro$/) do
  @page.tela_login_visivel? @page.tela_login
end
