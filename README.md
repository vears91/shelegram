# shellegram

## Introduction

This application is the evaluation for the Linux/Unix seminar that took place in 2016 at ITMO University in Saint Petersburg, Russia, as part of the PERCCOM master.

You can add the bot with [this link](https://telegram.me/sdn_evaluation_bot)

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