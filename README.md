# Latches-Flip-flops-and-Registers

Integrantes: 
* João Victor De Bortoli Prado - 13672071
* Samuel Sandoval Bonachela - 13686282
* Lucas Rodrigues Baptista - 15577631

Projeto 1:
Desenvolvimento de estruturas básicas de Latches, Flip-flops, e Registradores usando as ferramentas Quartus e Modelsim.

Parte 1:
Criamos um circuito de um RS latch usando um código VHDL fornecido e, com base nele, criamos um arquivo waveform e simulamo-no usando a ferramnta Quartus Simulation Waveform Editor.

Parte 2:
Criamos um novo projeto no Quartus e importamos o circuito feito na parte 1 como um bloco lógico que utilizamos para criar um D latch. Então executamos o circuito na placa FPGA DE2-115.

Parte 3:
Criamos um novo projeto no Quartus e importamos o circuito feito na parte 2 como um bloco lógico e utilizamos para criar um master-slave D flip-flop. Então executamos o circuito na placa FPGA DE2-115.

Parte 4:
Utilizamos um novo código fornecido para recriar o D latch sem a especificação "ATTRIBUTE KEEP" e refizemos a parte 3 usando esse novo circuito. Então criamos um projeto no Quartus com um D latch, um flip-flop de descida e um de subida do pulso de clock e executamos o circuito na placa FPGA DE2-115.