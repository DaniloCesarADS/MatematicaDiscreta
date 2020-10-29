/* Exercicio 2 - Lista 9 - Keynes Augusto de Deus */

#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

void validaN (); // prototipo da funcao
float fatorial(); // prototipo da funcao
long double fracao(); // prototipo da funcao
            

string valorN; // Variavel que recebe o valor do numero inteiro do usuario
int parametro; // essa bagaca é global pra ficar igual pudim....

int main ()
{
    validaN();
    cout << setprecision(20), fixed;
    cout << fracao() << endl;
    system("pause");
    
} // fim da main

//*****************************************************************************           
           void  validaN () 
           {         
                 bool valida = true;
                 int testa = 0;
                 
                 while (valida) 
                     {
                           cout << "Entre o valor N: ";
                           cin >> valorN;
                           testa = atoi(valorN.c_str());
                           
                           if(testa <= 0)
                           {
                                cout << "Valor invalido..." << endl;
                           }
                           else
                           {
                               system("cls");
                               parametro = testa;
                               valida = false;
                           }
                      } // fim while
             }// fim do metodo validaN
//*****************************************************************************  

     float fatorial ()
             {
                   float valor = 1.0;
                   int vezes = parametro;
                   
                   for(; vezes > 0; vezes--)
                   {
                   valor *= vezes ;
                   }
                   return valor;
              } //fim metodo fatorial   
//*****************************************************************************  
     long double fracao()
             {
                   long double valor = 0;
                   
                   for(; parametro >= 0; parametro--)
                   {
                   valor += ( 1.0 /fatorial()) ;
                   }
                   return valor;
              } //fim metodo fracao   

