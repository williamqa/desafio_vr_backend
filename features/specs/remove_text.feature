#language: pt

Funcionalidade: Teste do método que deve remover todo o texto que vier após qualquer um dos símbolos recebidos no array

Cenário: Remover texto após símbolos específicos 01
    Dado uma string de entrada "bananas, tomates # e ventiladores"
    E os marcadores "[#,!]"
    Então a saída esperada é "bananas, tomates"

Cenário: Remover texto após símbolos específicos 02
    Dado uma string de entrada "o rato roeu a roupa $ do rei % de roma"
    E os marcadores "[%,!]"
    Então a saída esperada é "o rato roeu a roupa $ do rei"

Cenário: Remover texto após símbolos específicos 03
    Dado uma string de entrada "the quick brown fox & jumped over * the lazy dog"
    E os marcadores "[&,*,%,!]"
    Então a saída esperada é "the quick brown fox"