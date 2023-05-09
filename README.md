Hi 👋, I'm Andrii.
A support engineer.
I'm currently working on acquiring skills to become a DevOps engineer.
This is my first attempt in creating a Telegram bot.

This application communicates via the telegram bot.
The application was created using GO.
The application has only educational purposes.
Only several simple commands are supported.

How to use it:
1. Create a Telegram via 'https://t.me/botfather'
2. Collect a token for your bot
3. Clone the repository
4. Set environmental variable TELE_TOKEN for your bot
5. Build an application
6. Execute

Example run:
1. Install Go if it is not already installed
2. Clone the repository
3. Create a bot - https://t.me/fjzbnklbvjkasdfbhaobo_bot
4. Obtain token via interaction with https://t.me/botfather
5. Build and run application:


C:\Temp\kbot>go build
C:\Temp\kbot>kbot.exe
kbot is a very simple telebot

Usage:
  kbot [command]

Available Commands:
  completion  Generate the autocompletion script for the specified shell
  help        This is help command
  start       This is start command
  version     This is version command

Flags:
  -h, --help      help for kbot
  -v, --version   version for kbot

Use "kbot [command] --help" for more information about a command.


6. Execute the application with "start" command to start interactions with Telegram bot:


C:\Temp\kbot>kbot.exe start
Telegram bot 'kbot' started!
2023/04/30 09:56:23 Someone enetered: /help
2023/04/30 09:56:26 Someone enetered: /hello
2023/04/30 09:56:27 Someone enetered: /version
2023/04/30 09:56:38 Someone enetered: /ji


Compatibility:
The application was developed using Go on the Linux (Fedora38).
The application was successfully built and executed on Linux;
<<<<<<< HEAD
The code was downloaded, the application built and executed on the Windows 11
=======
The code was downloaded, the aplication built and executed on the Windows 11

=======================================================================================================

The kbot application can be wrapped into docker container.
The kbot binary can be built for various platforms.
Please use proper keys and targets specified in the Makefile.
The supported platforms: linux, windows, darwin (MacOS)
The supported architectures: amd64 and arm

The binary file can be built independently for various combinations of the platform/architecture targets.
Makefile includes several targets to cover these combinations.
For example:

Windows/x86_amd64:

windows

Windows/x86_arm:

make winarm

Please read Makefile for understanding available sets of the platform/architecture .

Thus, for building a container with the binary for various platforms/architecture usage of variables should be employed.
The variable "OS" is responsible for setting the platform value.
By default, it is 'linux'.

The examples, of building a docker container with binary for various platforms:

Linux:

make image OS=darwin

Windows:

make image OS=windows

MacOS:

make image OS=darwin

The variable "ARCH"  is responsible for setting the architecture value.
By default, it is 'amd64'.

The examples, of building a docker container with binary for various platforms for 'arm' architecture:

Linux ARM:

make image OS=darwin ARCH=arm

Windows ARM:

make image OS=windows ARCH=arm

MacOS ARM:

make image OS=darwin ARCH=arm
>>>>>>> container
