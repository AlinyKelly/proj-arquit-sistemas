package atividade1;

public aspect ContaLogger {
	pointcut logCredito() : call (* Conta*.creditar(double));
	
	before() : logCredito() {
		System.out.println("Vai creditar");
	}
	
	after() : logCredito() {
		System.out.println("Creditou");
	}
	
	pointcut logDebito() : call (* Conta*.debitar(double));
	before() : logDebito() {
		System.out.println("Vai debitar");
	}
	
	after() : logDebito() {
		System.out.println("Debitou");
	}
}
