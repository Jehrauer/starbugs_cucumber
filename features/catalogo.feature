#language: pt

Funcionalidade: Catalogo de cafe
    Como um usuario do site, eu quero ver o catalogo de cafes na pagina principal
    Para que eu popssa escolher e saber mais sobre os produtos disponíveis

Cenario: Acessar o catalogo de cafes na pagina principal

    Quando acesso a pagina proncipal da Starbugs
    Entao eu devo ver uma lista de cafes disponíveis

Cenario: Iniciar a compra de um cafe

    Dado que estou na pagina principal da Starbugs
        E que desejo comprar o seguinte produto:
        | name     | Expresso Gelado |
        | price    | R$ 9,99         |
        | delivery | R$ 10,00        |
    Quando inicio a compra desse item
    Entao devo ver a pagina de Checkout com os detalhe do produto
        E o valor total da compra deve ser de "R$ 19,99"

Cenario: Cafe indisponivel

    Dado que estou na pagina principal da Starbugs
        E que desejo comprar o seguinte produto:
        | name     | Expresso Cremoso |
    Quando inicio a compra desse item
    Entao devo ver um popup informando que o produto esta indisponível