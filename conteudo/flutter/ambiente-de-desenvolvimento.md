# Desenvolvimento Mobile > Flutter > Ambiente de Desenvolvimento

Prof. Eduardo Ono

<br>

## Requisitos de Hardware
<br>

* Consulte [aqui](../../ambiente-de-desenvolvimento/).

<br>

## Requisitos de Software
<br>

* Git
* Android Studio
* Flutter SDK
* Visual Studio Code + Extensões

<br>

## Instalação do Flutter SDK
<br>

### Windows
<br>

Baixar o arquivo .zip e descompactá-lo em um diretório de sua preferência, por exemplo, C:\flutter.

> ### Site do desenvolvedor para download
> * https://flutter.dev/docs/get-started/install/windows/ (~700 MB)

Obs.: **Não** instalar (descompactar) o flutter dentro de um diretório que requeira privilégios elevados, por exemplo, "C:\Arquivos de Programas".

<br>

* Adicionar o diretório <path>\flutter\bin nas variáveis de ambiente (Path) do Windows.

<br>

### Ubuntu
<br>

    $ sudo snap install flutter --classic

<br>

## Configurando as Dependências do Flutter
<br>

Para verificar se o flutter está corretamente configurado, na janela do terminal digitar:

    flutter

Para verificar se todos os [requisitos para execução do flutter](figuras/flutter-doctor-erros.png) estão instalados, digitar:

    flutter doctor

No Android Studio, em [plugins](figuras/android-studio-plugins.png), pesquisar por [flutter](figuras/android-studio-plugins-flutter.png) e instalar. O plugin flutter possui como dependência o plugin dart. Será [solicitado](figuras/android-studio-plugins-dart.png) para você instalar este plugin também.


## Atualizando o Flutter
<br>

No Terminal, digitar:

    flutter

Caso haja uma nova versão disponível, o flutter irá solicitar o seguinte comando:

    flutter upgrade

<br>

## Microsoft Visual Studio Code (VS Code)
<br>

> ### Extensões:
> * Flutter (Dart Code)

<br>

## Projetos em Flutter
<br>

### Criando um novo projeto

    flutter create --org <br.com.dominio> <nome_do_projeto>

* br.com.dominio é o endereço de sua empresa em ordem contrária.

<br>

## Executando um projeto Flutter no Terminal:

    flutter run

