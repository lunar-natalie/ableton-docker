# Ableton Live for Docker

Docker container for Ableton Live 11 using x11docker and Wine.

## Tested environment

- Live Suite 11.2.6
- System: Debian 12
- DE: Plasma (Wayland)

## Requirements

- `bash`
- `curl`
- `docker`
- `git`

Your user must have access to the Docker Engine.

For Debian 12 and other systems, add your user to the `docker` group if you haven't already and restart:

```shell
sudo usermod -aG $USER docker
```

## Installation

Clone the repo and change to the directory:

```shell
mkdir -p ~/.local/opt && \
    git clone https://github.com/lunar-natalie/ableton-docker.git ~/.local/opt/ableton-docker && \
    cd ~/.local/opt/ableton-docker
```

Copy the environment file `template.env` to `.env` and insert values as required for your setup.

To begin the installation, run

```shell
./install.sh
```

Start the setup executable via the Explorer window once the image installation has completed.

## Running

An application desktop entry is provided at `~/.local/share/applications/ableton-live.desktop`.
