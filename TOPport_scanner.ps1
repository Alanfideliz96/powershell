#Esse Script é o mesmo que o port_scanner, porém levando em consideração as portas mais utilizadas

param($ip)

#tratativa caso o usuário não colocar parametros

if(!$ip ){
    echo "Desec Security"
    echo "Forma de uso: port_scanner.ps1 ip"
    echo "Exemplo: 192.168.0.1"
    }
else{
    try{
        $topports = 21,22,3303,80,443
        foreach($porta in $topports){
            if(Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
                echo "Porta $porta Aberta"
            }
            else{
                #echo "Porta $porta Fechada" COmentei só para aparecer apenas as portas abertas
            }
         }
    } catch{}
}
