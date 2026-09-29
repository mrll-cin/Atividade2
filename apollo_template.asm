.data        # dados
pergunta_altitude: .asciiz "Qual a altitude? "
pergunta_velocidade: .asciiz "Qual a velocidade? "

.text        # codigo
.globl main

main:

                # Logica Altitude
li $v0, 4                        # syscall mostra mensagem
la $a0, pergunta_altitude        # armazena a mensagem em $a0
syscall                          # execução da chamada

li $v0, 5                        # syscall le mensagem
syscall                          # espera resposta

move $t0, $v0                    # move resposta de v0 para t0

                # Logica Velocidade
li $v0, 4                        # syscall mostra mensagem
la $a0, pergunta_velocidade      # armazena a mensagem em $a0
syscall                          # execução da chamada

li $v0, 5                        # syscall le mensagem
syscall                          # espera resposta

move $t1, $v0                    # move resposta de v0 para t0

              # Encerra o programa
li $v0, 10 
syscall
