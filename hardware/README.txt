Esquemático para o projeto final.

Foi decidido modularizar o projeto em três PCIs:

- Driver Motor(NMOS Full bridge): controle do motor por onda PWM.
- Encoder Counters: leitura e contagem de ticks do encoder a leitura
	pela galileo é realizado pelo protocolo SPI.
- Galileo pins: shield para conexão com a placa.

Modularizando podemos dividir melhor as tarefas além de facilitar
os testes e debug do sistema como também diminui a complexidade do
roteamento no layout do circuito.

Os sensores de efeito Hall não foi encontrado exatamente em quais
pinos do cabo ICSI estão conectados e por isso foram colocados 
provisoriamente em dois pinos quaisquer.

Integrantes: Béuren Bechlin, Gabriel Ammes
