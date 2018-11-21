<?php
include './servicos/variaveisGlobais.php';

$raking = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);
$consulta = "select * from torneios";
$campeonato = $raking->listaOcorrencia($consulta, "nomeTorneio");
$consulta = "SELECT sum(quantidadeGol) as goals FROM time_has_torneio_has_gols";
$totalGeralGoals = $raking->listaOcorrencia($consulta, "goals");
?>


<table class="gols" border="1">
    <thead>
        <tr>
            <th>Torneios</th>
            <th>Informações gerais</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Campeonato</td>
            <td><?php
                foreach ($campeonato as $key => $value) {

                    echo "$value";
                }
                ?></td>
        </tr>
        <tr>
            <td>Total Goals</td>
            <td class="gols"><?php
                foreach ($totalGeralGoals as $key => $value) {

                    echo "$value";
                }
                ?></td>
        </tr>
    </tbody>
</table>





<?php

           
                
                




$consulta = "select * from jogadores where idJogador>0 ORDER by  totalGol DESC";

$contagem = $raking->contaOcorrencias($consulta);


$totaGoal = $raking->listaOcorrencia($consulta, "totalGol");
$nomeJogador = $raking->listaOcorrencia($consulta, "nomeJogador");
$idJogador = $raking->listaOcorrencia($consulta, "idJogador");
?>
<table border="1">
    <thead>
        <tr>
            <th>Nome do Jogador</th>
            <th colspan="2">Gols</th>
        </tr>
    </thead>
    <tbody>



        <?php
        for ($j = 0; $j < $contagem; $j++) {
            
               
              
            
            
            if ($j == 0) {
                ?>
                <tr>
                    <td style="background: greenyellow;"><?php echo $nomeJogador[$j]; ?></td>
                    <td style="background: greenyellow;"><?php echo $totaGoal[$j] ?></td>
                      <td style="background: greenyellow;">ARTILHEIRO</td>
                </tr>
                <?php
            } else {
                ?>
                <tr>
                    <td><?php echo $nomeJogador[$j]; ?></td>
                    <td class="gols" colspan="2"><?php echo $totaGoal[$j] ?></td>
                </tr>

                <?php
            }
        }
        ?>
    </tbody>
</table>


<?php

           
                
                




$consulta = "select * from times where idTime>0 ORDER by  totalGols DESC";

$contagem = $raking->contaOcorrencias($consulta);


$totalGolTimes = $raking->listaOcorrencia($consulta, "totalGols");
$nomeTime = $raking->listaOcorrencia($consulta, "nomeTime");
$idTime = $raking->listaOcorrencia($consulta, "idTime");
?>
<table border="1">
    <thead>
        <tr>
            <th>Nome do Time</th>
            <th colspan="2">Gols</th>
        </tr>
    </thead>
    <tbody>



        <?php
        for ($j = 0; $j < $contagem; $j++) {
            
               
              
            
            
            if ($j == 0) {
                ?>
                <tr>
                    <td style="background: greenyellow;"><?php echo $nomeTime[$j]; ?></td>
                    <td style="background: greenyellow;"><?php echo $totalGolTimes[$j] ?></td>
                      <td style="background: greenyellow;">ARTILHEIRO</td>
                </tr>
                <?php
            } else {
                ?>
                <tr>
                    <td><?php echo $nomeTime[$j]; ?></td>
                    <td class="gols" colspan="2"><?php echo $totalGolTimes[$j] ?></td>
                </tr>

                <?php
            }
        }
        ?>
    </tbody>
</table>