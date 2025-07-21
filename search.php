<?php
// Pesquisa dos nomes dos produtos
$sql = mysqli_connect("localhost", "root", "", "produtos");
if (!$sql) {
    die("Conexão falhou: " . mysqli_connect_error());
}

$query = $_GET['q'];
$query = '%' . $query . '%';

$stmt = $sql->prepare("SELECT * FROM produtos WHERE nome_produto LIKE ?");
$stmt->bind_param("s", $query);
$stmt->execute();
$resultado = $stmt->get_result();

if ($resultado->num_rows > 0) {
    echo "<center><table><tr><th>Nome do Produto</th><th>Marca</th><th>Quantidade</th><th>Preço</th><th>Tipo</th><th>Descrição</th></tr>";
    while ($linha = $resultado->fetch_assoc()) {
        echo "<tr><td>{$linha['nome_produto']}</td><td>{$linha['marca']}</td><td>{$linha['qtd_estoque']}</td><td>{$linha['preco']}</td><td>{$linha['tipo']}</td><td>{$linha['descricao']}</td></tr>";
    }
    echo "</table></center>";
} else {
    echo "<center><p style='color: white;'>Nenhum produto encontrado.</p></center>";
}

$stmt->close();
mysqli_close($sql);
?>
