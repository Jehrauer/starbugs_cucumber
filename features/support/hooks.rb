
require_relative './pages/home.rb'  #importação relativa
require_relative './pages/checkout.rb' 
require_relative './pages/order.rb'
require_relative './pages/components.rb'  

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @order = OrderPage.new
    @popup = Popup.new
end

After do |scenario|

    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    attach(screenshot, "image/png", "Screenshot")

# CASO TENHA UM TESTE QUE FALHOU E PRECISA DA EVIDENCIA
    #if (scenario.failed?)
    #screenshot = page.save_screenshot("logs/screenshots/report.png")
    #attach(screenshot, "image/png", "Screenshot")
    #end
end