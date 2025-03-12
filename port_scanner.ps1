param($ip)

#tratativa caso o usuário não colocar parametros

if(!$ip ){
    echo "Desec Security"
    echo "Forma de uso: port_scanner.ps1 ip"
    echo "Exemplo: 192.168.0.1"
    }

else{
    foreach($porta in 1..65535){
        if(Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
            echo "Porta $porta Aberta"
   
        } else {
            #echo "Porta $porta Fechada" COmentei só para aparecer apenas as portas abertas

        }
    }
}