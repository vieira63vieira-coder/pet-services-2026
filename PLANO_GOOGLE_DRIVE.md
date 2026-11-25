# Próxima etapa: Google Drive

Objetivo: manter o aplicativo utilizável offline e sincronizar os mesmos registros entre Windows e Android usando a conta Google do proprietário e a pasta visível `Pet Services 2026`.

## Etapas técnicas pendentes
1. Validar o aplicativo e os dados locais no Windows.
2. Criar o fluxo de autorização Google no aplicativo, sem armazenar senha ou segredo OAuth no código público.
3. Permitir selecionar/confirmar a pasta `Pet Services 2026` na conta Google do proprietário.
4. Implementar armazenamento local robusto, fila de alterações, identificadores únicos, exclusões e controle de versões.
5. Implementar envio e recebimento incremental, tratamento de conflitos e recuperação após falha de rede.
6. Testar com a mesma conta no Windows e Android, inclusive alternando períodos offline.
7. Só então marcar a sincronização como ativa e recomendar uso com dados reais.

O cliente Google Drive para computador sincroniza arquivos e pastas do Windows com a nuvem, mas não substitui a integração do aplicativo Android nem resolve sozinho conflitos de edição entre dispositivos.
