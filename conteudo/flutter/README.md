### Desenvolvimento Mobile

# Flutter

Prof. Eduardo Ono

<br>

## Overview

<br>

## Documentação

* [https://flutter.dev/docs](https://flutter.dev/docs)
* [https://api.flutter.dev](https://api.flutter.dev)
* Icons: [https://api.flutter.dev/flutter/material/Icons-class.html](https://api.flutter.dev/flutter/material/Icons-class.html)

<br>

## Ambiente de Desenvolvimento

### Ambiente Online

* [https://dartpad.dev/flutter](https://dartpad.dev/flutter)

<br>

### Requisitos de Hardware

* Consulte [aqui](../../ambiente-de-desenvolvimento/).

### Requisitos de Software

* Windows 10 64-bit
* Git
* Android Studio
* Visual Studio Code + Extensões

### Instalação do Flutter

<details>
  <summary>Instalando o Flutter SDK no Windows 10</summary>

> Site do desenvolvedor:
> * https://flutter.dev/docs/get-started/install/windows/

> * Baixar o arquivo .zip (~700 MB) e descompactá-lo em um diretório de sua preferência, por exemplo, C:\src ou C:\. Será criado um sub-diretório chamado flutter.
>
> Obs.: **Não** instalar (descompactar) o flutter em um diretório que requeira privilégios elevados, por exemplo, "C:\Arquivos de Programas".

> * Adicionar o diretório `<path>\flutter\bin` na variável de ambiente `Path` do Windows.

</details>

<details>
  <summary>Instalando o Flutter SDK no Ubuntu 20.04+</summary>

* No Terminal, digitar o comando:

```sh
sudo snap install flutter --classic
```

* Após a instalação, digitar o comando:

```sh
flutter
```

Aguardar a instalação do Flutter.

</details>

### Configuração do Flutter (Windows e Ubuntu)

#### Configurando as Dependências do Flutter

> * Para verificar se o flutter está corretamente configurado, na janela do terminal digitar:
>
> ```
> flutter
> ```

> * Para verificar se todos os [requisitos para execução do flutter](figuras/flutter-doctor-erros.png) estão instalados, digitar:
>
> ```
> flutter doctor
> ```

> * No Android Studio, em [plugins](figuras/android-studio-plugins.png), pesquisar por [flutter](figuras/android-studio-plugins-flutter.png) e instalar. O plugin flutter possui como dependência o plugin dart. Será [solicitado](figuras/android-studio-plugins-dart.png) para você instalar este plugin também.

<br>

### Atualizando o Flutter

> * No Terminal, digitar:
>
>  ```
>  flutter
>  ```

> * Caso haja uma nova versão disponível, o flutter irá solicitar o seguinte comando:
>
>  ```
>  flutter upgrade
>  ```

<br>


## Utilizando o Flutter

> * Para criar um novo projeto, mudar para o diretório onde será criado o projeto e digitar:
>
> ```
> flutter create [--org <br.com.dominio>] <nome_do_projeto>
> ```
>
> `br.com.dominio` é o endereço de sua empresa (pode ser fictícia) na ordem contrária.
>
> Exemplo:
>
> ```
> flutter create --org br.com.meudominio projeto_01
> ```
>
> Será criado um sub-diretório com o nome `nome_do_projeto`.
> Caso não seja utilizado o parâmetro `--org`, será utilizado um nome de domínio padrão.

### Desenvolvendo um projeto Flutter no VS Code

> * Instalar a extensão `Flutter` (Dark Code).

> * Para executar um projeto, teclar `Ctrl+F5` (Run Without Debugging)

<br>

## Fundamentos

* [RetroPortal Studio] [Top 10 Must Know Widgets In Detail for Flutter Developers - Flutter Tutorial](https://www.youtube.com/watch?v=x1LHDKLDT38) (YouTube, 1:09:12, Abr/2020)

<br>

## Vídeos Recomendados

* [Academind] [Flutter Crash Course for Beginners 2020 - Build a Flutter App with Google's Flutter & Dart](https://www.youtube.com/watch?v=x0uinJvhNxI) (YouTube, 5:44:31, 2019)

<br>

## Canais do YouTube Recomendados

* [Rodrigo Rahman](https://www.youtube.com/channel/UC5hvPObwya8kzWWB-wmVlXg)
* [Renato Mota](https://www.youtube.com/channel/UCd-vLa_qcKve3CsDFlYiygA)

<br>

## Bibliografia

* [ZAMMETTI_2019] ZAMMETTI, Frank. Practical Flutter, 2019.
* [WINDMILL_2020] WINDMILL, Eric. Flutter in Action, 2020.
