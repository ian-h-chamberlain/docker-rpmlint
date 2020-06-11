# `rpmlint` in Docker

This is a simple container which runs `rpmlint`. It provides a way to run the tool on non-CentOS systems (e.g. macOS).

## Usage

To use it, simple add `rpmlint` script in this repo to `PATH` somehow, e.g.

```bash
ln -s $PWD/rpmlint /usr/local/bin/
```

That's it! Now you can run `rpmlint $specfile` or `rpmlint -h` to lint spec files in the container!

## Building

```bash
docker build --tag ianhchamberlain/rpmlint .
```
