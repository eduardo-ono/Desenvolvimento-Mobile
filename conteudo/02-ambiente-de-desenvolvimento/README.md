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

  No Terminal, digitar o comando:

  ```
  $ sudo snap install android-studio --classic
  ```

> Vídeo com o processo de instalação:
> * [Rocking Support] [How To Install Android Studio On Ubuntu 20.04](https://www.youtube.com/watch?v=I-Sxda91Yf4) (YouTube, 6:11)

<br>

## Configurando o Emulador Android (Windows e Ubuntu)

* [Tiago Aguiar] [Emulador Android Como Instalar](https://www.youtube.com/watch?v=YAkH6DcmbOY) (YouTube, 7:34, Mar/2020)

<br>

> ## Bibliografia

<br>
