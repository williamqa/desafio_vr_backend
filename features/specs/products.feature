#language: pt

Funcionalidade: Validando resposta JSON do portal VR

  Cenário: Verificar presença da chave "typeOfEstablishment" e imprimir um tipo de estabelecimento aleatório
    Dado que eu faço uma requisição GET para "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
    Então a resposta deve conter a chave "typeOfEstablishment"
    E eu imprimo um valor aleatório da chave "typeOfEstablishment"