# webDepPSW

<p>[cadastrodesistema.jsp](./webDepPSW/src/main/webapp/cadastrodesistema.jsp) está ligado à controller/CadastroSistema.java que vai receber a entrada do usuário da pág .jsp e de acordo com model/Sistema.java vai preencher essa entidade e guardá-la no banco com dao/CadastroSistemaDAO.java</p>
========================================================================================================
<p>gerenciadorsistema.jsp vai realizar a listagem/alteração/remoção de sistemas que está no banco. Essa página está ligada à controller/GerenciadorSistema.java que vai assim que a página for iniciada preencher a tabela baseada nos valores tirados do banco. Essa mesma página contém dois links (Alterar e Excluir) que vão apontar novamente para controller/GerenciadorSistema.java(ou podemos criar outro controlador pra cada ação, sem problema, só acho que dá pra fazer em um só) e para cada uma das ações temos dois flows diferentes:</p>
<ul>
      <li>Alterar: vamos ter que reabrir a página de cadastro, preencher todos os campos de acordo com o que está na row do link que foi clickado. A partir disso vai ser só um recadastro de sistema (no SQL vai mudar pra UPDATE).</li>
      
      <li>Excluir: vamos ter que identificar o registro que está na mesma row do link que foi clickado e apaga-lo do banco.</li>
</ul>
========================================================================================================
<p>Aquela pop-up de padrões de URL está na página gerenciadorsistema.jsp, só porque a página em que ela vai ficar não é trabalho nosso, teremos que passá-la pra outro grupo adicionar na página deles.</p>

<p>Mas essa pop-up realiza uma busca e um cadastro, na verdade é o cadastro de uma busca e vamos testar o comando da busca e entregar pro usuario o feedback pra ele ter certeza de que está salvando o comando certo. Primeiro o usuário coloca o nome lá, e depois ele vai utilizar um expressão regular e vai clickar buscar. Essa String da expressão regular vai ter que dar match nessa classe java.util.regex.Pattern(ainda não sei como usar isso direito) mas acho que essa classe só verifica se a expressão existe e é correta, aí agente vai jogar essa expressão no SQL pra filtrar as URL (essas URL estão no log de registro de acesso, que é trabalho de outro grupo). o resultado da query SQL vai ter que ser mostrado na tabela da janela pop-up. Quando o usuário estiver satisfeito com a busca dele, ele vai clickar salvar e aí agente vai salvar a String do nome do padrão de busca que ele escolheu e a String da expressão regular que foi validada e testada.</p>

<p>Temos essa 3 partes do projeto. Pelo tamanho do texto de explicação da pra ver a dificuldade de cada uma. Agora é só ver como cada um tá confiante com cada parte, escolher uma, e ser feliz pelo resto da semana =)</p>
      
