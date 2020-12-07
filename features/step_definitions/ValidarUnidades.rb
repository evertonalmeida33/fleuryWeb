Dado("que estou no site {string}") do |urlSite|
  visit(urlSite)
end

Quando("eu acessar o menu {string}") do |menuUnidades|
  principal_page.acessar_menu(menuUnidades)
end

Quando("filtrar por {string}") do |nomeFacilidade|
  unidades_page.selecionar_facilidades(nomeFacilidade)
end

Quando("selecionar Ver detalhes") do
  unidades_page.ver_detalhes
end

Então("devo ver o nome da unidade {string}") do |nomeUnidade|
  expect(unidades_page.nomeUnidade.text).to eql nomeUnidade
end
