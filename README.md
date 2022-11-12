
# shared-services

The Compose file for a shared services.

## Infrastructure

DigitalOcean droplet with installed Doppler CLI. Compose file location is configured as described in the [Doppler's docs](https://docs.doppler.com/docs/digitalocean#configure-droplet).

## Usage

Create `shared_services` network:

```
~ make network-create
```

Remove `shared_services` network:

```
~ make network-rm
```

Run services:

```
~ make up
```

Stop services:

```
~ make down
```

Last two commands assumes using [Doppler](https://www.doppler.com) for secrets management.
