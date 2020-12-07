module Helper
  def tirar_foto(nome_arquivo, resultado)
    caminho_arquivo = "report/screenshots/test_#{resultado}"
    screenshot = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(screenshot)
    attach(screenshot, "image/png")
  end
end
