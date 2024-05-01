Quando('acesso a pagina proncipal da Starbugs') do
  @home.open  #instanciando atraves de uma Page Object (ver pages/hooks.rb e home.rb)
end

Entao('eu devo ver uma lista de cafes disponíveis') do
  expect(@home.coffe_list.size).to be > 0   #instanciando atraves de uma Page Object (ver home.rb)
end

Dado('que estou na pagina principal da Starbugs') do
  @home.open
end

Dado('que desejo comprar o seguinte produto:') do |table|
# COMANDO PARA QUANDO HÁ SOENTE UM ITEM A SER TESTADO. PARA MAIS ITENS VER OUTRAS APLICACOE COM O DATATABLE
  @product = table.rows_hash
end

Quando('inicio a compra desse item') do
  @home.buy(@product[:name])  #instanciando atraves de uma Page Object (ver home.rb)
end

Entao('devo ver a pagina de Checkout com os detalhe do produto') do 
  @checkout.assert_product_details(@product)  #instanciando atraves de uma Page Object (ver checkout.rb)
end

Entao('o valor total da compra deve ser de {string}') do |total_price|
  @checkout.assert_total_price(total_price) #instanciando atraves de uma Page Object (ver checkout.rb)
end

Entao('devo ver um popup informando que o produto esta indisponível') do
  @popup.have_text('Produto indisponível')  #instanciando atraves de uma Page Object (ver components.rb)
end
