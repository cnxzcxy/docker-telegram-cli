# How to use this image

## Quickstart

```sh
docker run --rm -i -t cremuzzi/telegram-cli
```

## Volumes

telegram-cli saves its configurations in the user's **$HOME** as `.telegram-cli`.

To keep your configurations you need to mount a volume to the `/root/.telegram-cli` of the container:

```sh
docker run --rm -i -t -v your-volume:/root/.telegram-cli cremuzzi/telegram-cli
```
