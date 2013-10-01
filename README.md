Projeto 01 - Sistemas operacionais, professora: Islene C. Garcia.

Grupo :
Bruno Vargas    ra 116330
Jonatan Valongo ra 117424
Rafael Erthal   ra 121286 

Problema abordado : The Dining Savages 

Detalhes importantes. Ao rodar o problema, é necessário escolher um número de selvagens na animação. Este número deve estar compreendido entre 2 e 10.
após isso, deverá ser escolhido o número de refeições que o conzinheiro deverá abastecer o Pot, este número deve ser entre 2 e 9. 

Fizemos estas limitações para manter os desenhos intendíveis e não desformatar a tela.

O tamanho mínimo da tela para ser bem visualizado deve ser de 50x35, não á tamanho máximo da tela.

O problema basea-se em uma quantidade de selvagens, no nosso caso entre 2 e 10, jantando. enquanto um selvagem esta indo pegar comida ou voltando, nenhum outro pode se dirigir à panela, ou seja, somente quando o selvagem volta com a comida é que esta liberado a ida de outro selvagem à panela. Eventualmente a comida se esgota e nessa hora o cozinheiro é acordado e reabastece o Pot. 

Cada selvagem, inclusive o cozinheiro é uma thread diferente, de maneira que tivemos que controlar a movimentação e acesso à panela atraves de mutexes, fazendo da seguinte maneira. Enquanto um selvagem se dirigia para pegar a comida, bloqueávamos o acesso dos outros à panela, fazendo com que somente um se movimentasse em direção ao Pot, por vez.

Já a animação foi feita através de uma matriz, onde vamos a atualizando de maneira que não temos que redesenhar toda a tela, somente as partes que foram mudadas, para dar ideia de movimento, a tela é impressa varias veses seguidas, com o selvagem que esta em movimento em local diferente do quadro anterior, sendo apagado a posição anterior do mesmo.  