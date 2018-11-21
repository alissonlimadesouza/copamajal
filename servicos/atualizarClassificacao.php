<?php

//include './Conexao.php';

//include './variaveisGlobais.php';

function atulizarTabelaTimes($coluna, $coluna2) {
    include './variaveisGlobais.php';
    $classificacao = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);
    $consulta = "select * from times";
    $contagem = $classificacao->contaOcorrencias($consulta);
    $idTime = $classificacao->listaOcorrencia($consulta, "idTime");
    for ($i = 0; $i < $contagem; $i++) {
        $consulta = "SELECT SUM($coluna) as $coluna from placar_partidas WHERE idTime='$idTime[$i]'";
        $atualizarDado = $classificacao->listaOcorrencia($consulta, "$coluna");
        $consulta = "UPDATE times SET $coluna2='$atualizarDado[0]' WHERE idTime='$idTime[$i]'";
        $classificacao->editarOcorrencia($consulta);
        }
        
        
        
}

atulizarTabelaTimes("totalGol", "totalGols");
atulizarTabelaTimes("pontoPositivo", "totalPonto");
atulizarTabelaTimes("vitoria", "totalVitoria");
atulizarTabelaTimes("empate", "totalEmpate");
atulizarTabelaTimes("derrota", "totalDerrota");
atulizarTabelaTimes("totalGol", "golPositivo");
atulizarTabelaTimes("golNegativo", "golContra");
atulizarTabelaTimes("saldoGol", "saldoGol");


