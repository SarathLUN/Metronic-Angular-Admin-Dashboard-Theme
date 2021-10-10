# Demo1

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 12.1.2.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

# with Docker

```shell
docker build -t tonysarath/sample-angular-app-image:latest  .
```

output:

```shell
[+] Building 322.7s (16/16) FINISHED                                                                                                                                                     
 => [internal] load build definition from Dockerfile                                                                                                                                0.0s
 => => transferring dockerfile: 933B                                                                                                                                                0.0s
 => [internal] load .dockerignore                                                                                                                                                   0.0s
 => => transferring context: 171B                                                                                                                                                   0.0s
 => [internal] load metadata for docker.io/library/nginx:alpine                                                                                                                     2.6s
 => [internal] load metadata for docker.io/library/node:14-alpine                                                                                                                   2.6s
 => [auth] library/nginx:pull token for registry-1.docker.io                                                                                                                        0.0s
 => [auth] library/node:pull token for registry-1.docker.io                                                                                                                         0.0s
 => [build 1/6] FROM docker.io/library/node:14-alpine@sha256:6e52e0b3bedfb494496488514d18bee7fd503fd4e44289ea012ad02f8f41a312                                                       0.0s
 => CACHED [stage-1 1/2] FROM docker.io/library/nginx:alpine@sha256:686aac2769fd6e7bab67663fd38750c135b72d993d0bb0a942ab02ef647fc9c3                                                0.0s
 => [internal] load build context                                                                                                                                                   0.2s
 => => transferring context: 340.02kB                                                                                                                                               0.2s
 => CACHED [build 2/6] WORKDIR /usr/local/app                                                                                                                                       0.0s
 => [build 3/6] COPY ./ /usr/local/app/                                                                                                                                             0.3s
 => [build 4/6] RUN npm cache clean --force                                                                                                                                         0.9s
 => [build 5/6] RUN npm install                                                                                                                                                   217.3s
 => [build 6/6] RUN npm run build                                                                                                                                                 100.3s
 => [stage-1 2/2] COPY --from=build /usr/local/app/dist/demo1 /usr/share/nginx/html                                                                                                 0.3s 
 => exporting to image                                                                                                                                                              0.4s
 => => exporting layers                                                                                                                                                             0.3s
 => => writing image sha256:1ec4f58dfaa5d8cd2e1a042a6098287e1cf51b9f50338d92ef17ac78ff6ba3fb                                                                                        0.0s
 => => naming to docker.io/tonysarath/sample-angular-app-image:latest                                                                                                               0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
```

- list out docker images

```shell
docker images
```

output:

```shell
REPOSITORY                                                        TAG       IMAGE ID       CREATED         SIZE
tonysarath/sample-angular-app-image                               latest    1ec4f58dfaa5   3 minutes ago   62.8MB
```

- now run the docker container:

```shell
docker run -d -p 80:80 --name sample-angular-app tonysarath/sample-angular-app-image
```
