# shellegram

## Introduction

This application is the evaluation for the Linux/Unix seminar that took place in 2016 at ITMO University in Saint Petersburg, Russia, as part of the PERCCOM master.

A default bot is provided for communication, which you can find in [this link](https://telegram.me/sdn_evaluation_bot)

You can also use your own bot. You may do so by following these steps:
1. Send a /newbot command to [BotFather](https://telegram.me/BotFather)
2. Follow the instructions by choosing a name for your bot and a username.
3. Note the token you will receive to access the HTTP API.
4. After cloning this project, put your own token in the file called "token"
5. Install the project by following the instructions provided in this document for installation, i.e. `make install`
6. From your Telegram app, send any message to the bot you just created. 
7. You should see your ID listed when running `shellegram list` (for example, you could see the ID 160297054). Now, to send a message to yourself (or to any other ID of an account that has sent a message to your bot). In our example, you would use `shellegram msg 160297054 hello`. A more user-friendly to do this is to use the provided GUI and TUI (see the next sections of this document).

To see your ID, you should send any message from Telegram to the bot. After this you will be able to see your ID.

## Installation
 
```
make install
```

## Usage

To list the available chat IDs for our bot, type the following command:
```
shellegram list
```

To send a message to a known chat id, you can use
```
shellegram msg id text
```

A GUI is also provided, which can be executed by simply typing

```
shellegram_ui
```

The TUI can be run with

```
shellegram_tui
```

## Network service

The application supports networking with xinetd. The network service is installed by default in port 1234.

To use this feature the host and the port must be provided to the GUI or TUI

For instance,

```
shellegram_tui 127.0.0.1 1234
```

```
shellegram_ui  127.0.0.1 1234
```

## Localization support

By prepending LANGUAGE=es to set the locale, the applications will run with the Spanish locale.