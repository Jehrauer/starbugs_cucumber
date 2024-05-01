#language:pt

Funcionalidade: Pedidos

    Como um usuario do site Starbugs, eu quero selecioanr e comprar cafes
    Para que eu possa receber os produtos em meu endereco e efetuar o pagamento na entrega

    Cenario: Compra bem sucedida

        Dado que estou na pagina principal da Starbugs
            E que iniciei a compra do item "Expresso Tradicional"
        Quando faco a busca do seguinte CEP: "04534011"
            E informo os demais dados do endereco:
                | Number      | 1000    |
                | Details     | Apto 22 |
            E escolho a forma de pagamennto "Cartão de Débito"
            E por fim finalizo a compra

        Entao sou redirecionado para a pagina de confirmacao de Pedidos
            E deve ser informado oseguinte prazo e entrega: "20 min - 30 min"