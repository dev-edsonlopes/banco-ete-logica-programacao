programa {
//BIBLIOTECAS
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> tx
	funcao inicio() {
	// VARIVEIS ------------------
		logico
			menu = verdadeiro
			
		cadeia 
			nome_titular,
			senha,
			confirmar_senha,
			agencia = "", 
			numero_conta = "",
			digito_verificador = "",
			resposta = ""

		inteiro
			opcao

		real
			valor,
			saldo_corrente = 0.0,
			saldo_poupanca = 0.0

// ENTRADA DE DADOS -------------------
			// QUESTÃO 1
			escreva("╔════════════════════════════════════════════╗\n")
			escreva("║          BANCO ETE - CRIAR CONTA           ║\n")
			escreva("╠════════════════════════════════════════════╣\n")
			
			// Solicitando o nome completo do titular da conta
			escreva("  NOME COMPLETO: ")
			leia(nome_titular) // Guardando na variável
			
			// Solicitando a criação de uma senha
			escreva("\n  CRIE UMA SENHA: ")
			leia(senha) // Guardando na variável
			
			// Solicitando a confirmação da senha
			escreva("\n  CONFIRME A SUA SENHA: ")
			leia(confirmar_senha) // Guardadndo na variável
			escreva("\n")
			escreva("╚════════════════════════════════════════════╝\n")
			
			u.aguarde(2000) //Aguardando 2 segundos
			limpa() // Limpando a tela
			
			faca {
				//Verifica se a senha é igual à confirmação da senha
				se(senha == confirmar_senha) {
					escreva("╔════════════════════════════════════════════╗\n")
					escreva("║                 BANCO ETE                  ║\n")
					escreva("╠════════════════════════════════════════════╣\n")
					escreva("          SENHA CRIADA COM SUCESSO !!         \n")
					escreva("╚════════════════════════════════════════════╝\n")
					u.aguarde(3000)// Aguardadndo 3 segundos
					limpa() // limpando tela
				} senao {
					// Caso as senhas não sejam iguais, exibe a moldura de senhas não correspondentes
					escreva("╔════════════════════════════════════════════╗\n")
					escreva("║                 BANCO ETE                  ║\n")
					escreva("╠════════════════════════════════════════════╣\n")
					escreva("   SENHAS NÃO CORRESPONDEM. TENTE NOVAMENTE.  \n")
					escreva("╚════════════════════════════════════════════╝\n")
					u.aguarde(3000)// Aguardadndo 3 segundos
					limpa()// limpando tela
						// Solicita a confirmação da senha novamente
						escreva("╔════════════════════════════════════════════╗\n")
						escreva("║          BANCO ETE - CRIAR CONTA           ║\n")
						escreva("╠════════════════════════════════════════════╣\n")
						escreva("  CONFIRME A SUA SENHA: ")
						leia(confirmar_senha)
						escreva("╚════════════════════════════════════════════╝\n")
						u.aguarde(2000) // Aguardadndo 2 segundos
						limpa() // Limpando tela
						se(senha == confirmar_senha) {
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("          SENHA CRIADA COM SUCESSO !!         \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000) //Aguardadndo 3 segundos
							limpa() // Limpando tela
						}
				}
			} enquanto(senha != confirmar_senha)
			
			// QUESTÃO 4 - Solicita ao usuário o número da agência, número da conta e dígito verificador		
			escreva("╔═════════════════════════════════════════════╗\n")
			escreva("║                 BANCO ETE                   ║\n")
			escreva("╠═════════════════════════════════════════════╣\n")
			escreva("  Informe o número de Agencia: ")
			leia(agencia)
			escreva("  Informe o número da conta: ")
			leia(numero_conta)
			escreva("  Informe o digito verificador: ")
			leia(digito_verificador)
			escreva("╚═════════════════════════════════════════════╝\n")
			limpa()
			
			// Questão 2 - Verifica se o usuário deseja realizar um depósito na conta poupança
			escreva("╔═════════════════════════════════════════════╗\n")
			escreva("║                 BANCO ETE                   ║\n")
			escreva("╠═════════════════════════════════════════════╣\n")
			escreva("  DESEJA REALIZAR DEPÓSITO NA CONTA POUPANÇA.  \n")
			escreva("\n")
			escreva("                     S/N                       \n")
			escreva("╚═════════════════════════════════════════════╝\n")
			leia(resposta)
			limpa()

			// Processamento dos dados conforme a resposta do usuário
			se(tx.caixa_alta(resposta) == "S") {
				//Solicita o valor do depósito
				escreva("╔════════════════════════════════════════════╗\n")
				escreva("║                 BANCO ETE                  ║\n")
				escreva("╠════════════════════════════════════════════╣\n")
				escreva("  Informe o valor do depósito: R$")
				leia(valor)
				//Realiza o depósito na conta poupança
				saldo_corrente += valor
				escreva("╚════════════════════════════════════════════╝\n")
				limpa()
				escreva("╔════════════════════════════════════════════╗\n")
				escreva("║                 BANCO ETE                  ║\n")
				escreva("╠════════════════════════════════════════════╣\n")
				escreva("         DEPOSITO REALIZADO COM SUCESSO!      \n")
				escreva("╚════════════════════════════════════════════╝\n")
				u.aguarde(3000)
				limpa()
				//Exibe mensagem de sucesso
				escreva("╔════════════════════════════════════════════╗\n")
				escreva("║                 BANCO ETE                  ║\n")
				escreva("╠════════════════════════════════════════════╣\n")
				escreva("          CONTA CRIADA COM SUCESSO !!         \n")
				escreva("╚════════════════════════════════════════════╝\n")
				u.aguarde(3000)
				limpa()
			} senao se (tx.caixa_alta(resposta) == "N") {
				//Exibe mensagem de conta criada com sucesso
				escreva("╔════════════════════════════════════════════╗\n")
				escreva("║                 BANCO ETE                  ║\n")
				escreva("╠════════════════════════════════════════════╣\n")
				escreva("          CONTA CRIADA COM SUCESSO !!         \n")
				escreva("╚════════════════════════════════════════════╝\n")
				u.aguarde(3000)
				limpa()
			}
				//Exibe informações da conta
				escreva("╔═════════════════════════════════════════════╗\n")
				escreva("║                  BANCO ETE                  ║\n")
				escreva("╠═════════════════════════════════════════════╣\n")
				escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
				escreva("  Agência: ",agencia,
				"     Número da Conta: ",numero_conta,"-"
								,digito_verificador," \n")
				escreva("╠═════════════════════════════════════════════╣\n")
				escreva("   SALDO CONTA CORRENTE: R$", saldo_corrente, "\n")
				escreva("   SALDO CONTA POUPANÇA: R$", saldo_poupanca, "\n")
				escreva("╠═════════════════════════════════════════════╣\n")
				escreva("║                                             ║\n")
				escreva("║  ENTER - Para abrir a tela de Operação      ║\n")
				escreva("╚═════════════════════════════════════════════╝\n")
				leia(resposta)
				limpa()
// MENU DE OPERAÇÕES
		faca {
				//Exibindo o layout do menu para operações bancárias
				escreva("╔═════════════════════════════════════════════╗\n")
				escreva("║              OPERAÇÕES BANCÁRIAS            ║\n")
				escreva("╠═════════════════════════════════════════════╣\n")
				escreva("║ 1 - Exibir conta corrente                   ║\n")
				escreva("║ 2 - Exibir conta poupança                   ║\n")
				escreva("║ 3 - Realizar saque na conta corrente        ║\n")
				escreva("║ 4 - Realizar depósito na conta corrente     ║\n")
				escreva("║ 5 - Realizar aplicação na conta poupança    ║\n")
				escreva("║ 6 - Realizar resgate na conta poupança      ║\n")
				escreva("║ 0 - Sair do sistema                         ║\n")
				escreva("╠═════════════════════════════════════════════╣\n")
				escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
				escreva("  Agência: ",agencia,
				"     Número da Conta: ",numero_conta,"-"
								,digito_verificador,		    " \n")
				escreva("╚═════════════════════════════════════════════╝\n")
				// Solicita ao usuário a opção do menu
				leia(opcao)
				limpa()
				//Verifica a opção escolhida pelo usuário
				escolha(opcao) {
					caso 1: 
					// Mostra o saldo e exibe a conta corrente do usuário
						escreva("╔═════════════════════════════════════════════╗\n")
						escreva("║               CONTA CORRENTE                ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("║                                             ║\n")
						escreva("  SALDO: R$", saldo_corrente, "\n")
						escreva("║                                             ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("║                                             ║\n")
						escreva("║ ENTER - Voltar para tela de Operação        ║\n")
						escreva("║                                             ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
						escreva("  Agência: ",agencia,
						"     Número da Conta: ",numero_conta,"-"
										,digito_verificador,		    " \n")
						escreva("╚═════════════════════════════════════════════╝\n")
						leia(resposta)
						limpa()
						pare
					caso 2:
					// Mostra o saldo e exibe a conta poupança do usuário
						escreva("╔═════════════════════════════════════════════╗\n")
						escreva("║               CONTA POUPANÇA                ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("║                                             ║\n")
						escreva("  SALDO: R$", saldo_poupanca, "\n")
						escreva("║                                             ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("║                                             ║\n")
						escreva("║ ENTER - Voltar para tela de Operação        ║\n")
						escreva("║                                             ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
						escreva("  Agência: ",agencia,
						"     Número da Conta: ",numero_conta,"-"
										,digito_verificador,		    " \n")
						escreva("╚═════════════════════════════════════════════╝\n")
						leia(resposta)
						limpa()
						pare
					caso 3:
					//Realiza o saque na conta corrente do usuário
						escreva("╔═════════════════════════════════════════════╗\n")
						escreva("║            CONTA CORRENTE - SAQUE           ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("   SALDO: R$", saldo_corrente, "\n")			
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("   Digite o valor do saque: R$")
						leia(valor)
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
						escreva("  Agência: ",agencia,
						"     Número da Conta: ",numero_conta,
							"-",digito_verificador," \n")
						escreva("╚═════════════════════════════════════════════╝\n")
						limpa()
						u.aguarde(1500)
						//Verifica se o saldo é insuficiente para o saque
						se(valor > saldo_corrente) {
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("              SALDO INSUFICIENTE.             \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000)	
							limpa()
						//Realiza o saque e atualiza o saldo corrente
						} senao {
							saldo_corrente -= valor
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("           SAQUE REALIZADO COM SUCESSO!       \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000)
							limpa()
						}
						pare
						caso 4:
						// Realiza o depósito na conta corrente do usuário
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║            CONTA CORRENTE - DEPÓSITO       ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("  Informe o valor do depósito: R$")
							leia(valor)
							saldo_corrente += valor
							escreva("╚════════════════════════════════════════════╝\n")
							limpa()
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("         DEPOSITO REALIZADO COM SUCESSO!      \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000)
							limpa()
						 	pare
					caso 5:
					//Realiza a aplicação na conta poupança do usuário
						escreva("╔═════════════════════════════════════════════╗\n")
						escreva("║         CONTA POUPANÇA - APLICAÇÃO          ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("  CONTA CORRENTE - SALDO: R$", saldo_corrente,"\n")			
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("   Digite o valor da Aplicação: ")
						leia(valor)
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
						escreva("  Agência: ",agencia,
								"     Número da Conta: ",numero_conta,
								"-",digito_verificador," \n")
						escreva("╚═════════════════════════════════════════════╝\n")
						u.aguarde(1500)
						limpa()
						se(valor > saldo_corrente) {
							//Caso o valor da aplicação seja maior que o saldo disponível na conta corrente
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("              SALDO INSUFICIENTE.             \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000)	
							limpa()
						} senao {
							//Realiza a aplicação na conta poupança e subtrai o valor da conta corrente
							saldo_poupanca += valor
							saldo_corrente -= valor
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("         APLICAÇÃO REALIZADO COM SUCESSO!     \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000)
							limpa()
							//Mostra o saldo atualizado da conta corrente e poupança
							escreva("╔═════════════════════════════════════════════╗\n")
							escreva("║                SALDO DA CONTA               ║\n")
							escreva("╠═════════════════════════════════════════════╣\n")
							escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
							escreva("  Agência: ",agencia,
									"     Número da Conta: ",numero_conta,
									"-",digito_verificador," \n")
							escreva("╠═════════════════════════════════════════════╣\n")
							escreva("   SALDO CONTA CORRENTE: R$", saldo_corrente, "\n")
							escreva("   SALDO CONTA POUPANÇA: R$", saldo_poupanca, "\n")			
							escreva("╠═════════════════════════════════════════════╣\n")
							escreva("║                                             ║\n")
							escreva("║  ENTER - Voltar para tela de Operação       ║\n")
							escreva("╚═════════════════════════════════════════════╝\n")
							leia(resposta)
							limpa()
							u.aguarde(1500)
						}
						pare
					caso 6:
						// Realiza o resgate da conta poupança do usuário
						escreva("╔═════════════════════════════════════════════╗\n")
						escreva("║         CONTA POUPANÇA - RESGATE            ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("   SALDO: R$", saldo_poupanca, "\n")			
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("   Digite o valor do Resgate: ")
						leia(valor)
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
						escreva("  Agência: ",agencia,
								"     Número da Conta: ",numero_conta,
								"-",digito_verificador," \n")
						escreva("╚═════════════════════════════════════════════╝\n")
						u.aguarde(1500)
						limpa()
						se(valor > saldo_poupanca) {
							//Caso o valor do resgate seja maior que o saldo disponível na conta poupança
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("              SALDO INSUFICIENTE.             \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000)	
							limpa()
						} senao {
							//Realiza o resgate na conta poupança e adiciona o valor à conta corrente
							saldo_poupanca -= valor
							saldo_corrente += valor
							escreva("╔════════════════════════════════════════════╗\n")
							escreva("║                 BANCO ETE                  ║\n")
							escreva("╠════════════════════════════════════════════╣\n")
							escreva("          RESGATE REALIZADO COM SUCESSO!      \n")
							escreva("╚════════════════════════════════════════════╝\n")
							u.aguarde(3000)
							limpa()
							//Mostra o saldo atualizado da conta corrente e poupança
							escreva("╔═════════════════════════════════════════════╗\n")
							escreva("║                SALDO DA CONTA               ║\n")
							escreva("╠═════════════════════════════════════════════╣\n")
							escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
							escreva("  Agência: ",agencia,
							"     Número da Conta: ",numero_conta,"-"
													,digito_verificador,"\n")
							escreva("╠═════════════════════════════════════════════╣\n")
							escreva("   SALDO CONTA CORRENTE: R$", saldo_corrente, "\n")
							escreva("   SALDO CONTA POUPANÇA: R$", saldo_poupanca, "\n")			
							escreva("╠═════════════════════════════════════════════╣\n")
							escreva("║                                             ║\n")
							escreva("║  ENTER - Voltar para tela de Operação       ║\n")
							escreva("╚═════════════════════════════════════════════╝\n")
							leia(resposta)
							limpa()
							u.aguarde(1500)
						}
						pare
					caso 0:
					//Este trecho de código apresenta a tela de entrada na conta do banco. 
					//O usuário precisa pressionar a tecla ENTER para prosseguir.
						escreva("╔═════════════════════════════════════════════╗\n")
						escreva("║                   BANCO ETE                 ║\n")
						escreva("╠═════════════════════════════════════════════╣\n")	
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("  Nome: ",tx.caixa_alta(nome_titular),"        \n")
						escreva("  Agência: ",agencia,
						"     Número da Conta: ",numero_conta,"-"
										,digito_verificador," \n")
						escreva("╠═════════════════════════════════════════════╣\n")
						escreva("║                                             ║\n")
						escreva("║        ENTER - PARA ENTRAR NA CONTA         ║\n")
						escreva("║                                             ║\n")
						escreva("╚═════════════════════════════════════════════╝\n")
						leia(resposta)
						limpa()
						u.aguarde(1500)
						pare
				}
			}enquanto(menu == verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 18742; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
