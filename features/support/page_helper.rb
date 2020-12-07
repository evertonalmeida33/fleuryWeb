Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each { |file| require file }

module Pages
  def principal_page
    @principal_page ||= Principal.new
  end

  def unidades_page
    @unidades_page ||= Unidades.new
  end
end
