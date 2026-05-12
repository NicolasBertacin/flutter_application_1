# Primeira Tela Flutter

Projeto Flutter simples com uma tela de login, cadastro e recuperação de senha.

## Descrição

Esta aplicação apresenta uma interface de usuário básica para:

- Tela de carregamento inicial com um indicador de progresso.
- Tela de login com campos de e-mail e senha.
- Navegação para telas de cadastro e recuperação de senha.
- Uso de um cabeçalho personalizado com identidade visual inspirada no SENAI.

O app foi desenvolvido em Flutter e utiliza o `device_preview` para simular diferentes dispositivos durante o desenvolvimento.

## Estrutura do projeto

- `lib/main.dart` - ponto de entrada da aplicação.
- `lib/ui/login_page.dart` - implementação das telas de carregamento, login, cadastro e recuperação de senha.
- `pubspec.yaml` - dependências do projeto.

## Como executar

1. Abra o terminal na pasta do projeto:

```powershell
cd c:\Users\Aluno\Desktop\repsitorios\mobile\primeira_tela\flutter_application_1\flutter_application_1
```

2. Execute o comando para obter as dependências:

```powershell
flutter pub get
```

3. Inicie o app em um emulador ou dispositivo conectado:

```powershell
flutter run
```

## Dependências

- `flutter`
- `device_preview`

> O `device_preview` está configurado em `lib/main.dart` para facilitar o teste em diferentes tamanhos de tela.

## Observações

- Os campos de texto exibidos são apenas visuais: os botões não realizam autenticação real.
- A navegação entre telas é feita com `Navigator.push`.
- A aplicação é um protótipo de interface e pode ser usada como base para desenvolvimento de um sistema de login completo.

## Contato

Caso queira ampliar o projeto, adicione validação de formulários, integração com backend e suporte a autenticação real.
