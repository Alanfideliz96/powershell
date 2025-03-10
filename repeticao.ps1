#criando repeticoes no powershell

#Escrever sequencia no powershell, basta escrever a sequencia desejada

#1..10

#conseguimos jogar também esses valores em uma lista

#1..10 > lista
#cat lista

# o for podemos fazer com o foreach utilizando a seguinte sintaxe:

#foreach (variavel intervalo) {O que o for vai fazer no intervalo estipulado}

foreach($var1 in 1..10){echo "192.168.0.$var1"} 
