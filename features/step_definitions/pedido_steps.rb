Dado('que iniciei a compra do item {string}') do |product_name|
    @home.buy(product_name)
end
  
Quando('faco a busca do seguinte CEP: {string}') do |zipcode|
    @checkout.find_zipcode(zipcode)
end

Quando('informo os demais dados do endereco:') do |table|
    @checkout.fill_address(table.rows_hash)
end

Quando('escolho a forma de pagamennto {string}') do |payment_type|
    @checkout.choise_payment(payment_type)
end

Quando('por fim finalizo a compra') do
    @checkout.submit
end

Entao('sou redirecionado para a pagina de confirmacao de Pedidos') do
    @order.assert_order
end

Entao('deve ser informado oseguinte prazo e entrega: {string}') do |delivery_time|
    @order.assert_delivery_time(delivery_time)
end
  