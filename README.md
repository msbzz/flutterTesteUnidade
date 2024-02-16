# Aplicando testes de unidade de widgets e mocks

Este projeto é fruto do curso de 'Flutter : Aplicando testes de unidade de widgets e mocks da plataforma ALURA


<table style="width: 100%; border-collapse: collapse;" border="0">
  <tr>
    <td style="border: none;"> <img src="info/projetoInicial.png" alt="ativando menu" style="width: 100%; display: block;"/></td>
    <td style="border: none;">
     <span>
     Este aplicativo não faz a atualização de forma automática de seus componentes em função simulação da movimentação bancária. Isso é proposital para diminuir a complexidade dos testes já que não se trata de um curso avançado.
     <span>
     </span>
     Aqui se faz necessário inicial clicando no botão 'deposit' onde sua conta sera acrescida de U$10 e em seguida necessário clicar nos demais objetos para que se veja a atualização do saldo, pontos etc.. O mesmo vale para transferências.
     </span>
     </td>
  </tr>
</table>

  ## Primerio Teste (Unidade)

   Nesse teste foi verificado se o valor recebido pela propriedade 'points' do metodo 'deposit' da classe BankModel é identico a entrada. Nesse caso o valor de entrada foi de 10 e o valor da esperdo pela varivél tambem é 10.

   No segundo caso foi feita uma simulação de alteração de codigo o que gerou o erro.


<table style="width: 100%; border-collapse: collapse;" border="0">
  <tr?>
    <td style="border: none;"> <img src="info/criando test.png" alt="criando teste" style="width: 100%; display: block;"/></td>
    </tr>
    <td style="border: none;"> <img src="info/primeiro teste.png" alt="primeiro teste sucesso" style="width: 100%; display: block;"/></td>
    </tr>
    <tr> 
     <td style="border: none;"> <img src="info/primeiro teste forcando erro.png" alt="primeiro teste erro" style="width: 100%; display: block;"/></td>
  </tr>
</table>


  ## Segundo Teste (Widget)

  Neste teste abaixo, o que está sendo verificado é a existencia do texto 'Spent' dentro de todos os widgets usados por Home()

  obs: no caso, a busca para na primeira ocorrência 'findsOne'


  <table style="width: 100%; border-collapse: collapse;" border="0">
  <tr?>
    <td style="border: none;"> <img src="info/widget_find_text_01.png" alt="teste widget" style="width: 100%; display: block;"/></td>
    </tr>
    <td style="border: none;"> <img src="info/widget_find_text_02.png" alt="teste widget sucesso" style="width: 100%; display: block;"/></td>
    </tr>
    <tr> 
     <td style="border: none;"> <img src="info/widget_find_text_err_03.png" alt="teste widget erro" style="width: 100%; display: block;"/>
     </td>
  </tr>
  <tr> 
     <td style="border: none;"> <img src="info/widget_find_text_err_04.png" alt="teste widget erro" style="width: 100%; display: block;"/>
     </td>
  </tr>
</table>