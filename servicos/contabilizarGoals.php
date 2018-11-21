<?php

include './Conexao.php';
include './variaveisGlobais.php';
$atulizaGoals = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);

function atualizaGol($idJogador) {
include './variaveisGlobais.php';

echo 'O codigo do jogador é '.$idJogador."<br />";
$atulizaGoals = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);
    $consulta = "select * from jogadores where idJogador='$idJogador'";

    $contagem = $atulizaGoals->contaOcorrencias($consulta);
    $codJogador = $atulizaGoals->listaOcorrencia($consulta,"idJogador");

    for ($j = 0; $j < $contagem; $j++) {

        $consuta1 = "select  j.idJogador as cod , sum(quantidadeGol) as quantidadeGoals from time_has_torneio_has_gols ththg 
inner JOIN jogadores j 
on
ththg.IdJogador=j.idJogador
where 
j.idJogador='$codJogador[$j]';";

        $g = $atulizaGoals->listaOcorrencia($consuta1, "quantidadeGoals");

        foreach ($g as $key => $value) {
       //     echo "----->$value";

            $consulta = "UPDATE jogadores SET totalGol='$value' WHERE idJogador=$codJogador[$j]";
            $atulizaGoals->editarOcorrencia($consulta);
        }
    }
}

$consulta = "select * from jogadores";
$contagem = $atulizaGoals->contaOcorrencias($consulta);
$idJogador = $atulizaGoals->listaOcorrencia($consulta, "idJogador");

for($i=0;$i<$contagem;$i++){
    
   
    atualizaGol($idJogador[$i]);
}




include './atualizaGolsTimes.php';

include './atualizarClassificacao.php';




if($_GET['pagina'] == 5 ){
   header("Location: ../index.php?pagina=5"); 
}