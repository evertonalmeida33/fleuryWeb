#language: pt

Funcionalidade: Validar o Nome da unidade
    - Eu como usuario do do site da Fleury
    - Quero filtrar o nome das unidades pelas facilidades:
    - Próximo ao metrô 
    - Atendimento noturno
    - e ver o nome da unidade filtrada

Cenario: Validar o Nome da unidade
 Dado que estou no site "https://www.fleury.com.br/"
 Quando eu acessar o menu "Unidades"
 E filtrar por "Próximo ao metrô"
 E filtrar por "Atendimento noturno"
 E selecionar Ver detalhes
 Então devo ver o nome da unidade "Paraíso"










    