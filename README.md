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
4. Set enviromental varibale 'TELE_TOKEN' for your bot
5. Build an application
6. Execute

Eaxmple run:
1. Install Go if it is not already isntalled
2. Clone the repository
3. Craete a bot - https://t.me/fjzbnklbvjkasdfbhaobo_bot
4. Obtai token via interraction with https://t.me/botfather
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
The code was downloaded, the aplication built and executed on the Windows 11
