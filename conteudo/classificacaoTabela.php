
<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$quadroClassificacao = new ConexaoProjeto($_local, $_senha, $_usuario, $_banco);


$consulta = "SELECT * from times WHERE idTime>0   ORDER BY totalPonto DESC";


$contagem = $quadroClassificacao->contaOcorrencias($consulta);

$nomeTime = $quadroClassificacao->listaOcorrencia($consulta, "nomeTime");
$totalGols = $quadroClassificacao->listaOcorrencia($consulta, "totalGols");
$totalPonto = $quadroClassificacao->listaOcorrencia($consulta, "totalPonto");
$totalVitoria = $quadroClassificacao->listaOcorrencia($consulta, "totalVitoria");
$totalEmpate = $quadroClassificacao->listaOcorrencia($consulta, "totalEmpate");
$totalDerrota = $quadroClassificacao->listaOcorrencia($consulta, "totalDerrota");
$golPositivo = $quadroClassificacao->listaOcorrencia($consulta, "golPositivo");
$golContra = $quadroClassificacao->listaOcorrencia($consulta, "golContra");
$saldoGol = $quadroClassificacao->listaOcorrencia($consulta, "saldoGol");
?>

<table border="1">
    <thead>
        <tr>
            <th>Time</th>
            <th>Pontos</th>
            <th>Vitorias</th>
            <th>Empates</th>
            <th>Derrotas</th>
            <th>Gols positivos</th>
            <th>Gols contra </th>
            <th>Saldo de gols </th>

        </tr>
    </thead>
    <tbody>
<?php
for ($i = 0; $i < $contagem; $i++) {
    ?>
            <tr>
                <td><?php echo "$nomeTime[$i]"; ?></td>
                <td><?php echo "$totalPonto[$i]"; ?></td>
                <td><?php echo "$totalVitoria[$i]"; ?></td>
                <td><?php echo "$totalEmpate[$i]"; ?></td>
                <td><?php echo "$totalDerrota[$i]"; ?></td>
                <td><?php echo "$golPositivo[$i]"; ?></td>
                <td><?php echo "$golContra[$i]"; ?></td>
                <td><?php echo "$saldoGol[$i]"; ?></td>

            </tr>


    <?php
}
?>
    </tbody>
</table>



<?php
