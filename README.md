# Lista de Tarefas Flutter

Este é um projeto Flutter para gerenciar uma lista de tarefas utilizando o Firebase Cloud Firestore e o Provider para gerenciamento de estado. A aplicação permite listar, adicionar e atualizar tarefas de forma reativa.

## Funcionalidades

- **Listar Tarefas**: Exibe uma lista de tarefas armazenadas no Firebase Cloud Firestore.
- **Marcar como Concluída**: Permite marcar uma tarefa como concluída.
- **Adicionar Tarefa**: Adiciona novas tarefas à lista (funcionalidade a ser implementada).
- **Atualizar Tarefa**: Atualiza o status de conclusão de uma tarefa existente.

## Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento de aplicativos móveis.
- **Firebase Cloud Firestore**: Banco de dados NoSQL para armazenamento das tarefas.
- **Provider**: Gerenciamento de estado para atualizar a interface de usuário de forma reativa.

## Pré-requisitos

Antes de iniciar o projeto, certifique-se de ter os seguintes itens instalados:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Firebase CLI](https://firebase.google.com/docs/cli)

## Configuração do Projeto

### 1. Configurar o Firebase

1. **Crie um novo projeto no [Firebase Console](https://console.firebase.google.com/).**
2. **Adicione um novo aplicativo Android:**
   - Siga as instruções para adicionar o Firebase ao seu projeto Android.
   - Baixe o arquivo `google-services.json` e adicione-o à pasta `android/app`.

3. **Configure o Firebase no seu projeto Flutter:**
   - No arquivo `android/build.gradle`, adicione o classpath do Google Services:
     ```gradle
     buildscript {
       dependencies {
         classpath 'com.google.gms:google-services:4.3.15'
       }
     }
     ```

   - No arquivo `android/app/build.gradle`, adicione o plugin do Google Services no final:
     ```gradle
     apply plugin: 'com.google.gms.google-services'
     ```

### 2. Configurar o Projeto Flutter

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/tarefa_app.git
   cd tarefa_app

2. **Instale as dependências:**
   
     flutter pub get
   
4. **Execute o aplicativo em um dispositivo ou emulador:**
   
     flutter run
   
### Estrutura do Projeto

lib/models/task.dart: Define o modelo de dados da tarefa.
lib/providers/task_provider.dart: Gerencia o estado das tarefas e interage com o Firestore.
lib/screens/task_list_screen.dart: Tela principal que exibe a lista de tarefas.
lib/main.dart: Ponto de entrada do aplicativo, configura o Provider e a tela inicial.

