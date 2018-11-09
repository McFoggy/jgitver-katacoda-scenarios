Open a docker container with all the required tooling: gradle, git.

`docker run -it --rm gradle:4.10-jdk8 /bin/bash`{{execute}} 

Let's create a simple java gradle project.

`mkdir demo-jgitver && \
cd demo-jgitver && \
gradle init --type java-library && \
export JL_LINE=$(grep -n "id 'java-library'" build.gradle | cut -d ':' -f 1) && \
gradle build`{{execute}}

With some git history

`echo build/ > .gitignore && \
git init && \
git config user.name "Scrap Kata-Coda" && \
git config user.email "scrapbook@nowhere.com" && \
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit" && \
git add . && \
git commit -m "initial version"`{{execute}}

We now have a default buildable gradle project.  
What is the current project version?

`gradle --console=plain properties | grep -E '^version:.*'`{{execute}}

The `build.gradle` does not define the value of the `version` property provided by the `java-library` plugin, so it is reported as `undefined`.

In standard Gradle projects, you would edit the `build.gradle` file in order to set the `version` property to `1.0.0`, `2.1.1-SNAPSHOT` or something like that.

We are not going to do that, and instead we'll use the power of [jgitver](https://jgitver.github.io). 