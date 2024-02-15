# Aplicando testes de unidade de widgets e mocks

Este projeto é fruto do curso de 'Flutter : Aplicando testes de unidade de widgets e mocks da plataforma ALURA




<!--<img src="info/projetoInicial.png" alt="projeto inicial" width="25%"/>-->


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

  ## Primerio Teste

   Nesse teste foi verificado se o valor recebido pela propriedade 'points' do metodo 'transfer' da classe BankModel é identico a entrada. Nesse caso o valor de entrada foi de 10 e o valor da esperdo pela varivél tambem é 10.

   No segundo caso foi feita uma simulação de alteração de codigo o que gerou o erro.


<table style="width: 100%; border-collapse: collapse;" border="0">
  <tr?>
    <td style="border: none;"> <img src="info/primeiro teste.png" alt="ativando menu" style="width: 100%; display: block;"/></td>
    </tr>
    <tr> 
     <td style="border: none;"> <img src="info/primeiro teste forcando erro.png" alt="ativando menu" style="width: 100%; display: block;"/></td>
  </tr>
</table>
