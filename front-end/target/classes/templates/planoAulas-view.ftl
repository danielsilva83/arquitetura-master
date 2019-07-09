<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Plano de Aulas</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <div class="jumbotron">
            <h1>Plano de Aulas</h1>
        </div>
        <div class="row">
            <div class="col">
                <form action="/aula-plano-servico/alterar" method="post">
                    <div class="form-group">
                        <label for="dataDaAulaSubstituida">Data da Aula a ser Substituida:</label>
                        <input value="${(planoAulaAtual.dataDaAulaSubstituida)!}" name="dataDaAulaSubstituida" type="text" class="form-control" id="dataDaAulaSubstituida">
                    </div>
                    <div class="form-group">
                        <label for="quantidadeDeAulas">Quantidade de aulas:</label>
                        <input value="${(planoAulaAtual.quantidadeDeAulas)!}"  name="quantidadeDeAulas" type="text" class="form-control" id="codigo">
                    </div>

                    <input type="hidden" name="id" value="${(idAulaPlanoSubstituicao.id)!}"></input>

                    <button type="submit" class="btn btn-warning">Alterar</button>
                </form>

            </div>
        </div>
        <div class="row">
            <div class="col">
                <table class="table table-striped table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th>Nome</th>
                            <th>Sigla</th>
                            <th>Código Telefone</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <#list paises as pais>
                            <tr>
                                <td>${pais.nome}</td>
                                <td>${pais.sigla}</td>
                                <td>${pais.codigoTelefone}</td>
                                <td>
                                    <a href="/aula-plano-servico/prepara-alterar?id=${pais.id}">Alterar</a>
                                    <a href="/aula-plano-servico/excluir?id=${pais.id}">Excluir</a>
                                </td>
                            </tr>        
                        </#list>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>