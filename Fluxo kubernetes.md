# Passos criação de um POD

1º - Criação de uma imagem do container do aplicativo que precisa ser implantado no cluster
2º - Quando a imagem estiver pronta, ela será enviada para o repositório do container (Docker Hub/ACR)
3º - Gravar a configuração do objeto, da forma declarativa ou imperativa
    * Imperativo = ``` kubectl run --image=nginx web-imperativo ```
    * Declarativa = É aplicada em um arquivo .yaml ou .json
4º - Após pronto, é enviado ao servidor da API kubernetes através do comando kubectl (é a forma que nos comunicamos com a  ```API ``` do kubernetes)
5º - API do Kubernetes valida a configuração do objeto verificando as credenciais do usuário, validando se ele tem as permissões necessárias para realziar os procedimentos
6º - Após isso, todas as configurações serão salvas no banco de dados ``` ETCD ``` 
7º - O servidor da API irá notificar o ``` SCHEDULER```, o agendador que irá verificar a saúde do node (memória, cpu e etc)
8º - O servidor da API informa o kubelet do worker node e o ```` kubelet``` informa o ```container runtime interface``` iniciando o download da imagem
9º - Implanta o ```POD ``` no ```NODE ```