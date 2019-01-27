<p align="center">
  <img alt="logo" src="https://hsto.org/webt/x9/2l/_g/x92l_ghsud0eavfxf9niqd7z978.png" width="70" height="70" />
</p>

# Docker image `laravel-dusk-docker`

[![Build][badge_build]][link_build]
[![Stars][badge_pulls]][link_pulls]
[![License][badge_license]][link_license]
[![Issues][badge_issues]][link_issues]

### What is this?

This is docker image, built for running `unit` and `browser` tests, using `v5.6.*` and above with package `laravel/dusk`.

Optimized for running with CI _(tested with **GitLab CI**)_.

Supported tags:

Tag name | Details | Full image name | Dockerfile
:------: | :-----: | :-------------: | :--------:
`latest` | ![Size][badge_size_latest] | `tarampampam/laravel-dusk-docker:latest` | [link][dockerfile_latest]
`php72`  | ![Size][badge_size_php7_2] | `tarampampam/laravel-dusk-docker:php72`  | [link][dockerfile_php7_2]

[badge_size_latest]:https://images.microbadger.com/badges/image/tarampampam/laravel-dusk-docker.svg
[badge_size_php7_2]:https://images.microbadger.com/badges/image/tarampampam/laravel-dusk-docker:php72.svg

[dockerfile_latest]:https://github.com/tarampampam/laravel-dusk-docker/blob/master/Dockerfile
[dockerfile_php7_2]:https://github.com/tarampampam/laravel-dusk-docker/blob/master/Dockerfile.php72

### How can I use this shit?

Very simple - just setup to use `docker` executor with image `tarampampam/laravel-dusk-docker` in your CI configuration. For more details read the `Dockerfile`.

Supported ENV variables declared in the `./docker-compose.yml`.

#### License

MIT. Use anywhere for your pleasure.

[badge_build]:https://img.shields.io/docker/build/tarampampam/laravel-dusk-docker.svg?style=flat&maxAge=30
[badge_pulls]:https://img.shields.io/docker/pulls/tarampampam/laravel-dusk-docker.svg?style=flat&maxAge=30
[badge_license]:https://img.shields.io/badge/license-MIT-blue.svg?style=flat&maxAge=30
[badge_issues]:https://img.shields.io/github/issues/tarampampam/laravel-dusk-docker.svg?style=flat&maxAge=30
[link_build]:https://hub.docker.com/r/tarampampam/laravel-dusk-docker/builds/
[link_pulls]:https://hub.docker.com/r/tarampampam/laravel-dusk-docker/
[link_license]:https://github.com/tarampampam/laravel-dusk-docker/blob/master/LICENSE
[link_issues]:https://github.com/tarampampam/laravel-dusk-docker/issues
[docker_hub]:https://hub.docker.com/r/tarampampam/laravel-dusk-docker/
