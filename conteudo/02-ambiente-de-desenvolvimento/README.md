> ### Desenvolvimento Mobile

# Ambiente de Desenvolvimento

Prof. Eduardo Ono

<br>

## Descrição

Tutorial para a instalação do Android Studio e configuração do Emulador Android nos ambientes Microsoft Windows 10 e Linux (Ubuntu).

<br>

## Requisitos de Hardware

* Processador com tecnologia de virtualização

  * Intel: VT-X
  * AMD: AMD-V

  Obs.: A tecnologia de virtualização deve estar habilitada na BIOS. Para verificar se está habilitada, verifique no Gerenciador de Tarefas. No Windows Terminal, digitar:

  ```
  systeminfo
  ```

  Verifique se as opções em "Requisitos do Hyper-V" estão todas com "Sim/Yes".

  Na BIOS, a opção para ativar/desativar a tecnologia de virtualização pode ter vários nomes diferentes: 'Virtualization', etc...


<br>

## Instalação do Android Studio no Windows

  > Site do desenvolvedor:
  > * https://developer.android.com/studio

  > Vídeo com o processo de instalação:
  > * [Área Tech Brasil] [Android Studio 4.0 - Como Instalar Corretamente (Abr/2020)](https://www.youtube.com/watch?v=_Uqf5_kN6Rw) (YouTube, 14:32)

  > Erros/problemas que podem ocorrer na instalação:
  > * [Como corrigir erros no Android Studio?](https://areatechbrasil.com.br/como-corrigir-erros-no-android-studio/)
  > * [Área Tech Brasil] [Como Corrigir Erros no Android Studio?](https://www.youtube.com/watch?v=ECIz_FnwuoI) (YouTube, 1:08:30, Out/2020)

<br>

## Instalação do Android Studio no Ubuntu 20.04

* Verificar se a tecnologia de virtualização KVM (Kernel-based Virtual Machine) está instalada, tanto para processadores Intel quanto AMD:

* https://linuxize.com/post/how-to-install-kvm-on-ubuntu-20-04/

  No Terminal, digite o comando:

  ```bash
  sudo snap install android-studio --classic
  ```

* Vídeos de Apoio

  | [![](https://img.youtube.com/vi/x3nVHXv3oyw/default.jpg)](https://www.youtube.com/watch?v=x3nVHXv3oyw "[Rocking Support] How to Install Android Studio on Ubuntu 20.04 LTS \|\| 13:02, YouTube, Fev/2021")
  | :-: |

<br>

## Configurando o Android SDK no Android Studio

* Na janela de abertura do Android Studio, clicar em 'Configure' e selecionar 'SDK Manager'. Configurar o Android SDK conforme figuras:

  <img src="./figuras/android-sdk-01.png" alt="" width="240px">
  <img src="./figuras/android-sdk-02.png" alt="" width="240px">

## Configurando um Emulador Android no Android Studio

* Na janela de abertura do Android Studio, clicar em 'Configure' e selecionar 'AVD Manager'. Configurar o Android Virtual Devices conforme figura:

  <img src="./figuras/avd-manager.png" alt="" width="240px">

* Vídeos de Apoio

  | [![](https://img.youtube.com/vi/YAkH6DcmbOY/default.jpg)](https://www.youtube.com/watch?v=YAkH6DcmbOY "[Tiago Aguiar] Emulador Android Como Instalar \|\| 7:34, YouTube, Mar/2020")
  | :-: |

<br>

> ## Bibliografia

<br>
