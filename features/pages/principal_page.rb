class Principal < SitePrism::Page
  def acessar_menu(nomeMenu)
    click_link(nomeMenu)
  end
end
