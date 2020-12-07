class Unidades < SitePrism::Page
  element :filtroPorFacilidade, "#checkoox-select-facilities .fa-chevron-down"
  element :nomeUnidade, ".sc-bwzfXH div h1"

  def selecionar_facilidades(nomeFacilidade)
    #verificar se o elemento não existe na tela, para a segunda chamada não fechar a lista de facilidades
    if page.has_no_css?(".checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0", wait: 0, visible: false)
      filtroPorFacilidade.click
    end
    find(".checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0", text: nomeFacilidade).click
  end

  def ver_detalhes
    find(".buttoncomponentstyle__ButtonContentStyled-sc-11us3l0-3", text: "Ver detalhes").click
    #aguardar a tela de detalhes da unidade
    page.has_no_css?(".sc-bwzfXH", wait: 2)
  end
end
