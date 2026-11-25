# Análise inicial da planilha Pet modelo1 Services 2026

## Estrutura encontrada

O arquivo é um Excel habilitado para macros (`.xlsm`) e contém 12 abas:

1. Clientes
2. Serviços
3. Cobrança
4. RECIBOS
5. Recibo Cliente
6. PDF Cobrança
7. Copia mensal
8. filtro pagos
9. filtro Recibos
10. Meses
11. Custos
12. pagos atual

## Campos e regras observáveis

- **Clientes:** identificação, nome, endereço, número, telefone, telefone residencial, observações, cidade, raça, nome do pet, sexo, tipo, período, preferência de pagamento e data de cadastro.
- **Serviços:** pedido, cliente, data, pet, raça, até três descrições de serviço e respectivos valores, total, status e forma de pagamento.
- **Cobrança:** consolida pedido, cliente, data, pet, até três itens e valores, total e forma de pagamento. Há fórmula de soma dos três valores (`SUM(K7+I7+G7)`) em algumas linhas.
- **RECIBOS:** registra pedido, cliente, pet, status, forma de pagamento, data/valor do pedido, data/valor pago, diferença, mês e número do pedido.
- **Recibo Cliente:** modelo de recibo com linhas de serviços e total calculado.
- **PDF Cobrança:** modelo de relatório mensal de serviços prestados, com fórmulas de totalização.
- **Meses:** quadro anual com faturado, pagos no ato, mensalista e não recebidos.
- **Custos:** aba sem registros ou cabeçalhos visíveis na cópia analisada.

## Conteúdo efetivamente encontrado

As abas Clientes, Serviços e RECIBOS contêm somente os cabeçalhos. As abas de apoio também estão essencialmente vazias, exceto por alguns textos/valores isolados em modelos e filtros. Não foi encontrada uma lista de clientes ou histórico de serviços a migrar.

## VBA

O pacote contém `xl/vbaProject.bin`. A inspeção de strings do projeto revela nomes de planilhas/objetos e formulários, além de referências a rotinas como `Workbook_Open`, `LBRecebiveis_Change` e `btCadastrar_Click`. Isso confirma que a planilha possui automações e formulários próprios. Porém, o código-fonte integral dos módulos não foi descompactado nesta etapa; os trechos visíveis não são suficientes para declarar as regras VBA integralmente mapeadas ou convertidas.

## Pontos de atenção para a conversão

- A planilha modela até três itens de serviço por pedido; o protótipo mantém esse limite por enquanto.
- A aba RECIBOS separa data/valor do pedido e data/valor pago, então o histórico de pagamentos precisa ser preservado como lançamentos, não apenas como um total agregado.
- Foram encontradas fórmulas ausentes em algumas linhas e pelo menos uma célula com `#VALUE!` no relatório PDF. As fórmulas precisam ser validadas antes de reproduzir os totais.
- Os formulários VBA e os botões da planilha precisam de mapeamento individual antes de substituir o fluxo de trabalho antigo.

## Alterações recentes no protótipo

- O relatório mensal agora escolhe o ano com base nos anos dos atendimentos cadastrados e no ano atual, em vez de ficar preso a 2026.
- Ao selecionar um cliente no formulário de atendimento, o nome do pet e a raça são preenchidos automaticamente com os dados do cadastro (e podem ser ajustados no atendimento).
- O recebimento parcial agora permite registrar data, valor e forma de pagamento em uma lista de pagamentos vinculada ao pedido, e impede receber acima do saldo.

## Limitações atuais

O protótipo ainda é local, sem sincronização real entre dispositivos, sem importação automática do `.xlsm`, e não é um instalador Windows (`.exe`) nem Android (`.apk`). O projeto de nuvem é apenas um esqueleto e precisa de autenticação, políticas de acesso e testes antes de receber dados reais.
