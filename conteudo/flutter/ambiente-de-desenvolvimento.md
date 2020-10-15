# Desenvolvimento Mobile > Flutter > Ambiente de Desenvolvimento

Prof. Eduardo Ono

<br>

## Requisitos de Hardware
<br>

* Consulte [aqui](../../ambiente-de-desenvolvimento/).

<br>

## Requisitos de Software
<br>

* Windows 10 64-bit
* Git
* Android Studio
* Flutter SDK
* Visual Studio Code + Extensões

<br>

## Instalação do Flutter SDK
<br>

### Windows
<br>

Baixar o arquivo .zip e descompactar em um diretório de sua preferência, por exemplo, C:\src ou C:\. Será criado um sub-diretório chamado flutter.

> ### Site do desenvolvedor para download
> * https://flutter.dev/docs/get-started/install/windows/ (~700 MB)

Obs.: **Não** instalar (descompactar) o flutter em um diretório que requeira privilégios elevados, por exemplo, "C:\Arquivos de Programas".

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

Mover para um diretório onde será criada um sub-diretório com o nome do projeto e onde os arquivos do projeto serão armazenados:

    flutter create --org <br.com.dominio> <nome_do_projeto>

* br.com.dominio é o endereço de sua empresa (pode ser fictícia) na ordem contrária.

<br>

## Executando um projeto Flutter no Terminal:

Mudar para o diretório do projeto e digitar:

    flutter run

Obs.: É preferível executar o projeto através do VS Code.
