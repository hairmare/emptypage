## Empty Page as a Go binary

An empty HTML page in a Go binary with just enough features to create a nice container experience.

## Features
* Hosts an embedded copy of the `public/` on port 8080
* Available as minimal container image (`FROM scratch`)
* Prometheus Endpoint availabe (`/metrics`)
* Supports Tracing

## Usage

Run the `emptypage` binary or use the container available at `hairmare/emptypage`.

## Development

### Statik
Regenerate `statik/` dir after changing `public/` dir.

```bash
go generate
```

Build a local copy of the server.

```bash
go build
```

### Release Process

Create a git tag and push it to this repo or use the git web ui.

## License

This application is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, version 3 of the License.

It is heavily based on [enricofoltran/simple-go-server](https://github.com/enricofoltran/simple-go-server) which is licensed under the MIT license.
