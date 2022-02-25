<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MInha View</title>
</head>

<body>
    {{$teste}} <!-- limpa caracteres html, impede ataque xss -->
    {!!$teste!!} <!-- nao limpa caracteres html, interpreta como veio e joga na tela -->
    {!!$alerta!!} <!-- nao limpa caracteres html, interpreta como veio e joga na tela -->
    <h1>Teste de commit</h1>

</body>

</html>
