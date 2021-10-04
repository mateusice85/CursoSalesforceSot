@IsTest
 public class TesteHelper {

//     public static Aluno__c criarAluno(Id classe, Id escola) {

//             Aluno__c aluno = new Aluno__c();
//             aluno.Name = ('Aluno');
//             aluno.Ativo__c = true;
//             aluno.Classe__c = classe;
//             aluno.CPF__C = gerarCPF();
//             aluno.Data_de_Nascimento__c = Date.newInstance(2020, 01, 03);
//             aluno.Escola__c = escola;
//             aluno.Sobrenome__c = 'Sobrenome';
//             return aluno;
//     }

//     public static Classe__c criarClasse(Id escola) {
         
//         Classe__c classe = new Classe__c();
//         classe.Name = 'Classe';
//         classe.Escola__c = escola;
//         classe.Status__c = 'Criado';
//         return classe;

//     } 

//     public static Escola__c criarEscola() {
         
//         Escola__c escola = new Escola__c();
//         escola.Name = ('Escola');
//         escola.Cidade__c = ('Cidade');
//         escola.CNPJ__C = gerarCNPJ();
//         escola.Estado__c = ('SP');
//         escola.Pais__c = ('Brasil');
//         return escola; 
//     }
   
//     private static String gerarCNPJ() {
//         Integer digito1 = 0; 
//         Integer digito2 = 0;
//         Integer resto = 0;
//         String nDigResult;
//         String numerosContatenados;
//         String numeroGerado;

//         //numeros gerados
//         Integer n1 = Integer.valueof((Math.random() * 10));
//         Integer n2 = Integer.valueof((Math.random() * 10));
//         Integer n3 = Integer.valueof((Math.random() * 10));
//         Integer n4 = Integer.valueof((Math.random() * 10));
//         Integer n5 = Integer.valueof((Math.random() * 10));
//         Integer n6 = Integer.valueof((Math.random() * 10));
//         Integer n7 = Integer.valueof((Math.random() * 10));
//         Integer n8 = Integer.valueof((Math.random() * 10));
//         Integer n9 = Integer.valueof((Math.random() * 10));
//         Integer n10 = Integer.valueof((Math.random() * 10)); 
//         Integer n11 = Integer.valueof((Math.random() * 10)); 
//         Integer n12 = Integer.valueof((Math.random() * 10)); 

//         Integer soma = n12*2 + n11*3 + n10*4 + n9*5 + n8*6 + n7*7 + n6*8 + n5*9 + n4*2 + n3*3 + n2*4 + n1*5;

//         Integer valor = (soma / 11) * 11;

//         digito1 = soma - valor;

//         //Primeiro resto da divisão por 11.
//         resto = Math.mod(digito1, 11);

//         if(digito1 < 2){
//             digito1 = 0;
//         }
//         else {
//             digito1 = 11 - resto;
//         }

//         Integer soma2 =  digito1*2 + n12*3 + n11*4 + n10*5 + n9*6 + n8*7 + n7*8 + n6*9 + n5*2 + n4*3 + n3*4 + n2*5 + n1*6 ;

//         Integer valor2 = (soma2 / 11)*11;

//         digito2 = soma2-valor2;

//         //Primeiro resto da divisão por 11.
//         resto = Math.mod(digito2, 11);

//         if(digito2 < 2){
//             digito2 = 0;
//         }
//         else {
//             digito2 = 11-resto;
//         }

//         //Conctenando os numeros
//         numerosContatenados = String.valueOf(n1) + String.valueOf(n2) + '.' + String.valueOf(n3) + String.valueOf(n4) +
//                             String.valueOf(n5) + '.' + String.valueOf(n6) + String.valueOf(n7) +String.valueOf(n8) + '/' +
//                             String.valueOf(n9) + String.valueOf(n10) + String.valueOf(n11) +
//                             String.valueOf(n12) + '-';

//         //Concatenando o primeiro resto com o segundo.
//         nDigResult = String.valueOf(digito1) + String.valueOf(digito2);

//         numeroGerado = numerosContatenados+nDigResult;

//         return numeroGerado;
//     }

//     private static String gerarCPF() {
//         Integer digito1 = 0; 
//         Integer digito2 = 0; 
//         Integer resto = 0;
//         String  nDigResult;
//         String numerosContatenados;
//         String numeroGerado;

//         //numeros gerados
//         Integer n1 = Integer.valueof((Math.random() * 10));
//         Integer n2 = Integer.valueof((Math.random() * 10));
//         Integer n3 = Integer.valueof((Math.random() * 10));
//         Integer n4 = Integer.valueof((Math.random() * 10));
//         Integer n5 = Integer.valueof((Math.random() * 10));
//         Integer n6 = Integer.valueof((Math.random() * 10));
//         Integer n7 = Integer.valueof((Math.random() * 10));
//         Integer n8 = Integer.valueof((Math.random() * 10));
//         Integer n9 = Integer.valueof((Math.random() * 10));

//         Integer soma = n9*2 + n8*3 + n7*4 + n6*5 + n5*6 + n4*7 + n3*8 + n2*9 + n1*10;

//         Integer valor = (soma / 11)*11;

//         digito1 = soma-valor;

//         //Primeiro resto da divisão por 11.
//         resto = Math.mod(digito1, 11);

//         if(digito1 < 2) {
//             digito1 = 0;
//         }
//         else {
//             digito1 = 11 - resto;
//         }

//         Integer soma2 = digito1 * 2 + n9*3 + n8*4 + n7*5 + n6*6 + n5*7 + n4*8 + n3*9 + n2*10 + n1*11;

//         Integer valor2 = (soma2 / 11)*11;

//         digito2 = soma2 - valor2;

//         //Primeiro resto da divisão por 11.
//         resto = Math.mod(digito2, 11);

//         if(digito2 < 2) {
//             digito2 = 0;
//         }
//         else {
//             digito2 = 11-resto;
//         }

//         //Conctenando os numeros
//         numerosContatenados = String.valueOf(n1) + String.valueOf(n2) + String.valueOf(n3) + '.' + String.valueOf(n4) +
//                             String.valueOf(n5) + String.valueOf(n6) + '.' + String.valueOf(n7) + String.valueOf(n8)  +
//                             String.valueOf(n9) + '-';

//         //Concatenando o primeiro resto com o segundo.
//         nDigResult = String.valueOf(digito1) + String.valueOf(digito2);

//         numeroGerado = numerosContatenados + nDigResult;

//         return numeroGerado;
//     }

 }