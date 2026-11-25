# Pet Services 2026 — pacote de preparação

Aplicativo web instalável (PWA), com interface responsiva para Windows e Android. Esta edição mantém os dados localmente e prepara o projeto para a futura integração com a pasta comum do Google Drive chamada **Pet Services 2026**.

## Recursos disponíveis
- Cadastro de clientes e dados do pet.
- Atendimentos com até três itens/valores.
- Controle de pagamentos pendentes, parciais e pagos.
- Histórico de recebimentos parciais.
- Registro de custos e painel financeiro.
- Relatório mensal com seleção de ano.
- Recibo para impressão.
- **Cobrança mensal em PDF:** seleção de cliente e período, vários pedidos com serviços e valores detalhados, saldos anteriores em aberto, desconto em reais ou percentual e campo de Observações. O navegador abre a impressão para escolher “Salvar como PDF”.
- Exportação CSV e backup/restauração JSON.
- Cache do aplicativo para abrir a interface offline depois da primeira carga por HTTPS ou localhost.

## Abrir no Windows para testar
1. Extraia o arquivo ZIP para uma pasta do computador.
2. Entre na pasta `pet_services_app`.
3. Dê dois cliques em `INICIAR_NO_WINDOWS.bat`.
4. O navegador abrirá o aplicativo em `http://localhost:8000`.
5. No Edge ou Chrome, use a opção de instalar o site como aplicativo, se desejar.

É necessário ter Python 3 instalado para usar o iniciador. Alternativamente, abra um terminal nessa pasta e execute `python -m http.server 8000`, depois acesse `http://localhost:8000`.

## Android
A instalação como PWA no Android exige que o aplicativo esteja publicado em um endereço HTTPS. O pacote atual não contém hospedagem nem APK nativo. Podemos preparar essa publicação depois de validar o uso no Windows.

## Google Drive e sincronização
A pasta **Pet Services 2026** que você criou no Google Drive será o destino da futura integração. O Google Drive para computador pode sincronizar uma pasta local do Windows, mas isso, sozinho, não sincroniza os dados do navegador Android. Para a sincronização real entre os dois aparelhos será necessário implementar e testar a autorização Google Drive no próprio aplicativo, com controle de alterações e conflitos.

**Ainda não há conexão automática com o Google Drive nesta edição.** Até essa etapa ser concluída, faça backups JSON regulares e mantenha cópias em local seguro. Não limpe os dados do navegador sem antes exportar um backup.

## Observação sobre descontos na cobrança
O desconto é aplicado ao total em aberto exibido naquela cobrança e não altera os valores originais dos pedidos nem registra um lançamento de desconto no financeiro. Confirme o valor e mantenha o controle contábil correspondente no seu processo financeiro.

## Limitações conhecidas
- Os dados ficam no armazenamento local do navegador/dispositivo; limpar os dados do navegador pode apagá-los.
- A sincronização automática entre Windows e Android não está implementada.
- Não foram gerados instaladores nativos `.exe` ou `.apk`.
- Não houve migração automática da planilha Excel.
- As macros VBA e regras de negócio da planilha ainda precisam de extração e validação integral.
- Antes do uso operacional, é necessário testar os fluxos e os backups com dados reais controlados.

Nunca envie senha, token ou chave privada por chat.


## Informações do negócio e Pix

A aba **Meu negócio** permite cadastrar nome comercial, CNPJ, telefone/WhatsApp, campo de atuação, endereço, número, cidade e UF, além dos dados de recebimento Pix (tipo de chave, chave, titular, banco e instruções). Essas informações são salvas no armazenamento local do navegador e inseridas automaticamente no cabeçalho e na seção Pix das cobranças mensais em PDF. O backup JSON inclui também o cadastro do negócio.

Atenção: esses dados ainda ficam neste dispositivo até a integração Google Drive ser implementada. Faça backups regulares e evite usar um computador compartilhado para armazenar dados empresariais.
