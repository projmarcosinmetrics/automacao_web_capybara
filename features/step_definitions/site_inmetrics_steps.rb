 #encoding: utf-8
 #!/usr/bin/env ruby

Dado(/^que estou na home do site da InMetrics$/) do
	@page=InmetricsScreen.new
	@page.home_esta_visivel?
end

Quando(/^clico no link Quem Somos$/) do
	@page.clicar_link_quem_somos
end

Entao(/^sou direcionado para a página e visualizo a mensagem "([^"]*)"$/) do |mensagem|
	@page.mensagem_visivel_na_tela? mensagem
end
