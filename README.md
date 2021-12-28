# React-Static Project Generator
This is a tool that you can use to quickly generate new [React-Static](https://github.com/react-static/react-static) projects, with a Dockerized workflow. This tool relies heavily on the `react-static create` command, from the official React-Static project. Please see their official repo for documentation and general info.

The main script:

- uses Docker to create new React-Static projects using react-static create.

- requires Docker to already be installed.

- will navigate one level up and create a new directory to generate the project.

E.g. if you are in `~/projects/react-static-project-generator`, this script generates the project in `~/projects/[name]`.

## Example

Here is an example for how you might use this tool:
```
cd ~/projects # go to your projects directory
git clone https://github.com/djiang9001/react-static-project-generator.git
cd react-static-project-generator
./react-static-generate -n my-website -t basic
```
This generates a new directory `~/projects/my-website` with a blank react-static template.

## Usage
```
usage: ./react-static-generate [-h] [-n name] [-t template]
  -n name (default value "website") is the name of the directory the project will be generated in.
  -t template (default value "basic") is the name of the template to be used.
```

## Using Docker to Develop Your New Project

The Makefile is copied over to the new project. Running `make dev` in your new project will start up a Docker container and shell. Inside the shell, you can run various make targets to build and deploy the page locally. You can thus make changes on your host, and run the make targets to test and iterate. You can customize the Docker file and Makefile to fit your needs.

The script automatically removes the docker image and container after it is done. Likewise, once the docker container started by `make dev` finishes, the image and container are deleted.
