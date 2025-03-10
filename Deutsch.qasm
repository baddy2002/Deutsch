OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];      // Solo 2 qubit: q[0] è l'input, q[1] è l'ausiliario
creg c[1];      // Solo 1 bit classico per la misura

// Applicazione della porta X (NOT) al secondo qubit
x q[0];
x q[1];

// Hadamard su entrambi i qubit
h q[0];
h q[1];

// Qui implementiamo Uf (scegli una delle 4 funzioni possibili)

//per f0(x)=0


//per f1(x)=x
//cx q[0], q[1];

//scommenta per f2(x)=1-x
//hzh = x 
h q[0];
z q[0];
h q[0];
cx q[0], q[1];

//scommenta per f3(x)=1
//x q[0];

// Hadamard sul primo qubit dopo Uf
h q[0];

// Misura il primo qubit
measure q[0] -> c[0];
