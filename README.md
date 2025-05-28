# Curso FreeRTOS Essencial com STM32

Este repositório contém minhas anotações, exercícios e códigos de exemplo do treinamento **FreeRTOS Essencial com STM32**, ministrado pelo instrutor **Pablo Jean Rozario**. O curso está disponível na Udemy no seguinte [link](https://www.udemy.com/course/freertos-essencial/?couponCode=ST6MT60525G3).

Aqui, você encontrará recursos úteis para entender melhor o funcionamento do FreeRTOS em conjunto com microcontroladores STM32, incluindo a documentação oficial, exemplos práticos e referências externas.

---

## Índice

1. [Documentação e Ferramentas](#documentação-e-ferramentas)
2. [Módulos do Curso](#módulos)
3. [Exercícios e Códigos de Exemplo](#exercícios-e-códigos-de-exemplo)

---

## Documentação e Ferramentas

Aqui estão algumas das principais ferramentas e documentos necessários para o desenvolvimento com STM32 e FreeRTOS:

- **HAL (Hardware Abstraction Layer) disponibilizado pela ST**: [Documentação HAL](https://www.st.com/content/st_com/en/search.html#q=hardware%20abstraction%20layer%20-t=resources-page=1)
- Opções de placas da ST: [NUCLEO-G474RE](https://www.st.com/en/evaluation-tools/nucleo-g474re.html), [NUCLEO-L476RG](https://www.st.com/en/evaluation-tools/nucleo-l476rg.html#overview), [NUCLEO-H755ZI-Q](https://www.st.com/en/evaluation-tools/nucleo-h755zi-q.html#overview), etc.
- **Site Oficial do FreeRTOS**: https://www.freertos.org/

### Ferramentas de Desenvolvimento

- **[STM32Cube GitHub](https://github.com/STMicroelectronics)**: Repositório oficial com diversas ferramentas e bibliotecas.
- **[STM32CubeIDE - Portal de Recursos](https://wiki.st.com/stm32mcu/index.php?title=STM32CubeIDE:Introduction_to_STM32CubeIDE&sfr=stm32mcu)**: Portal de recursos para o STM32CubeIDE.

---

## Módulos

Este curso é dividido em 10 módulos principais, que cobrem desde a introdução ao FreeRTOS até conceitos mais avançados de sincronização e comunicação entre tarefas.

### 1. [Introdução ao Curso FreeRTOS Essencial](#1-introdução-ao-curso-freertos-essencial)

### 2. [Introdução ao FreeRTOS](#2-introdução-ao-freertos)
 - **Principais Características:**
    - Core em tempo real
    - Kernel leve
    - Gerenciamento (sincronização e comunicação) de Tasks
    - Times
    - Gerenciamento de Memoria
    - Multiplataforma

### 3. [Documentação e Padronização do FreeRTOS](#3-documentação-e-padronização-do-freertos)

- [FreeRTOS Documentation](https://www.freertos.org/Documentation/00-Overview)

- [Books and manual](https://www.freertos.org/Documentation/02-Kernel/07-Books-and-manual/01-RTOS_book)

- [Supported Devices](https://www.freertos.org/Documentation/02-Kernel/03-Supported-devices/00-Supported-devices)

- **Convenções**
 
    - Para variáveis:

        ![alt text](docs/imgs/def_variables.png)

        ![alt text](docs/imgs/variables_prefix.png)

    - Para funções:

        ![alt text](docs/imgs/convencao_fun.png)

    - Para macros: Sempre escrita em *upper case*, exceto o seu prefixo.

        ![alt text](docs/imgs/convencao_macro.png)

- **Estrutura dos diretórios**
    ```bash
    ├── Root
    │   ├── examples
    │   ├── include
    │   └── portable
    |       ├── MenMang
    |       └── {Compiler}/{Core}
    ```

### 4. [Instalando o FreeRTOS no Microcontrolador](#4-instalando-o-freertos-no-microcontrolador)

- **Método 1 (Easy):** através no STMCubeIDE (CMSIS-RTOS)

    ![alt text](docs/imgs/cmsis.png)

    - Habilitar:

        ![alt text](docs/imgs/config_freertos_cubeide.png)
    
        **Importante:** Em ``SYS Mode Configuration``, utilize um ``Timebase Source`` diferente do ``SysTick``, pois esse será exclusivo do FreeRTOS. E em ``Advanced settings``, deixe o ``USE_NEWLIB_REENTRANT`` habilitado.

- **Método 2 (Hard):** importando do projeto no Github e instalando manualmente. 

    1. **Criar o projeto e configurar o ``SysTick``:**

        Crie um novo projeto no STMCubeIDE, e em ``SYS Mode Configuration``, utilize um ``Timebase Source`` diferente do ``SysTick``. 

    2. **Download do FreeRTOS:**

        No repositório do [GitHub do FreeRTOS](https://github.com/FreeRTOS/FreeRTOS-Kernel), baixei/clone o kernel no diretório do projeto.

        **Obs.:** Delete os arquivos ``cmake_example`` e ``coverity`` do diretório ``/examples``, caso existam, para evitar erros de compilação.

    3. **Remover os arquivos desnecessários do diretório `/portable`**

        O diretório `/portable` contém diversos compiladores, porém **devemos manter apenas o compilador `GCC`**, pois é o utilizado pelo **STM32CubeIDE**. Também devemos manter o diretório `MemMang`, que contém os arquivos responsáveis pelo gerenciamento de **memória dinâmica e estática** do microcontrolador. **Todos os demais diretórios dentro de `/portable` devem ser removidos**.

        Para confirmar qual compilador está sendo usado no STM32CubeIDE, acesse as **Propriedades do Projeto**, vá até **`C/C++ Build` > `Settings`** e verifique os campos correspondentes:

        ![alt text](docs/imgs/verificar_compilador_stmcubeide.png)

        Dentro de `/portable/GCC`, há suporte para várias arquiteturas de microcontroladores. Como o projeto utiliza a placa **NUCLEO-L476RG**, que possui um microcontrolador **ARM Cortex-M4 de 32 bits com FPU (suporte a ponto flutuante)**, devemos **manter apenas o diretório `ARM_CM4F`** e remover os demais.

        No diretório `/portable/MemMang`, **mantenha apenas o arquivo `heap_4.c`**, que é o gerenciador de heap recomendado para a maioria dos casos. Os outros arquivos podem ser excluídos.

        Ao final, a estrutura do diretório `/portable` deve ficar da seguinte forma:

        ```bash
        ├── portable
        │   ├── GCC
        │   │   └── ARM_CM4F
        │   ├── MemMang
        │   │   ├── heap_4.c
        │   │   └── ReadMe           
        │   ├── CMakeLists.txt
        │   └── readme.txt
        ```

    4. **Copiar a template ``FreeRTOSConfig.h``.**
    5. **Importar os arquivos do diretório ``/portable`` e indicar os caminhos de compilação.**
    6. **Configurar as interrupções (``SysTick``, ``SVC``, ``PendSV``) e o ``FreeRTOSConfig.h``.**

### 5. [Entendendo as Tarefas (Tasks)](#5-entendendo-as-tarefas-tasks)

### 6. [Entendendo as Filas (Queues)](#6-entendendo-as-filas-queues)

### 7. [Entendendo os Semáforos (Semaphores)](#7-entendendo-os-semaforos-semaphores)

### 8. [Entendendo as Gatekeeper Tasks](#8-entendendo-as-gatekeeper-tasks)

### 9. [Entendendo as Notificações de Tarefas (TaskNotify)](#9-entendendo-as-notificações-de-tarefas-tasknotify)

### 10. [Entendendo os Eventos (Event Groups)](#10-entendendo-os-eventos-event-groups)

---

## Exercícios e Códigos de Exemplo

Neste repositório, você também encontrará códigos de exemplo e atividades práticas para consolidar o aprendizado. Para visualizar os códigos e exercícios realizados durante o curso, acesse a pasta correspondentes nos seguinte diretório:

- `projetos/`: Exemplos práticos e atividades do curso.

