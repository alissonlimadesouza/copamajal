<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include './variaveisGlobais.php';
include './Conexao.php';


$tabelaJogos = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);








$consulta = "select DISTINCT idTime ,idTimeB, quantidadeGol from times_has_torneios tht INNER JOIN time_has_torneio_has_gols ththg ON ththg.idTimeHasTorneio=tht.idTimeHasTorneiro WHERE ththg.idTimeHasTorneio>0";

$contagem = $tabelaJogos->contaOcorrencias($consulta);
$idTimeA = $tabelaJogos->listaOcorrencia($consulta, "idTime");
$idTimeB = $tabelaJogos->listaOcorrencia($consulta, "idTime");
$placarA = $tabelaJogos->listaOcorrencia($consulta, "quantidadeGol");

for ($i = 0; $i < $contagem; $i++) {
    $j = 0;
    //    echo $placarA[$j];
    if ($i % 2) {
        echo "$idTimeA[$i] -> $placarA[$j] ";
    }




    if ($i % 2) {
        echo "x $idTimeB[$i] <br />";
    }










    $j++;
}