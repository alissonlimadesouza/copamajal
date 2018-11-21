<?php


function atualizaGolsTime($idTime) {
    include './variaveisGlobais.php';


    $consulta = "SELECT sum(totalGol) as Gols FROM times_has_jogadores thj 
INNER JOIN times t 
ON
thj.idTime=t.idTime
INNER JOIN jogadores j 
ON
thj.idJogador=j.idJogador
WHERE
t.idTime='$idTime'";



    $totalGoals = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);



    return $totalGoals->listaOcorrencia($consulta, "Gols");
}

$classificacao = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);

$consulta = "select * from times";
$codTimes = $classificacao->listaOcorrencia($consulta, "idTime");





foreach ($codTimes as $key => $value) {
    echo "$value";
    $idTime = $value;
   
    foreach (atualizaGolsTime($value) as $value) {

        echo "----->$value<br />";
        
        
         $consulta = "UPDATE times SET totalGols='$value' WHERE idTime=$idTime";
            $classificacao->editarOcorrencia($consulta);
        
        
        
}
    
    
}



