# PyBot

## Installation

First, create the .env file in the root directory.

Paste then the variable in it as follow :

```bash
# .env
DISCORD_TOKEN={your-bot-token}
DISCORD_GUILD={your-guild-name}
```

To build the docker image, run this command :

```bash
docker image build -t python:0.0.1 path/to/file
```

You can then control if the image was correctly build:

```bash
docker images
```

## Use

then, run the container :

```bash
docker run python:0.0.1
```

To let the container run in background, use this :

```bash
docker run -t -d python:0.0.1
```

To stop it, simply type :

```bash
docker stop python:0.0.1
```
