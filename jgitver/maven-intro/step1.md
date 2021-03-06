Open a docker container with all the required tooling: maven, git.

`docker run -it --rm maven:3.5 /bin/bash`{{execute}} 

Let's create a default maven project.

`mvn archetype:generate \
  -DgroupId=fr.brouillard.jgitver.demos \
  -DartifactId=simple-maven-demo \
  -Dversion=1.0.0-SNAPSHOT \
  -Dpackage=fr.brouillard.jgitver.demos \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false \
  -DarchetypeCatalog=local`{{execute}}

With some git history

`
cd simple-maven-demo && \
git init && \
git config user.name "Scrap Kata-Coda" && \
git config user.email "scrapbook@nowhere.com" && \
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit" && \
echo target/ > .gitignore && \
git add . && \
git commit -m "initial version"`{{execute}}

We now have a default running maven project

`mvn validate`{{execute}}

which version is defined by the pom version node as `1.0.0-SNAPSHOT`

`grep -E --color=auto '^.*1.0.0-SNAPSHOT.*$|$' pom.xml`{{execute}}