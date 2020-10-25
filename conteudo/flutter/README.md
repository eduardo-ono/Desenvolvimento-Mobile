# Desenvolvimento Mobile > Flutter

Prof. Eduardo Ono

<br>

## Overview
<br>

## Documentação
<br>

* [https://flutter.dev/docs](https://flutter.dev/docs)

<br>

## Ambiente de Desenvolvimento

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
$ sudo snap install flutter --classic
```

* Após a instalação, digitar o comando:

```sh
$ flutter
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

### Desenvolvendo um projeto no VS Code

> * Instalar a extensão `Flutter` (Dark Code).

> * Para executar um projeto, teclar `Ctrl+F5` (Run Without Debugging)

<br>

## Fundamentos

<br>

## Vídeos Recomendados

* [Academind] [Flutter Crash Course for Beginners 2020 - Build a Flutter App with Google's Flutter & Dart](https://www.youtube.com/watch?v=x0uinJvhNxI) (YouTube, 5:44:31, 2019)

<br>

## Bibliografia

* [WINDMILL_2020] WINDMILL, Eric. Flutter in Action, 2020.
