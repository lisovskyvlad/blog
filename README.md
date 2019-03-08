# Private blog

In order to run this blog on your machine you need Docker,
or just classical ruby setup, in this guide I'll describe only Docker one

Create an image first:

```sh
$ docker-compose build
```

Start serving of blog with next command:

```sh
$ docker-compose up
```

To build a blog run

```sh
$ docker-compose run app jekyll build
```
