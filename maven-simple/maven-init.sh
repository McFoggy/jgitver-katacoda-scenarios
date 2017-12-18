mvn archetype:generate \
  -DgroupId=fr.brouillard.jgitver.demos \
  -DartifactId=simple-maven-demo \
  -Dversion=0 \
  -Dpackage=fr.brouillard.jgitver.demos \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false \
  -DarchetypeCatalog=local
cd simple-maven-demo

echo waiting for git installation to finish...
sleep 3
echo.
echo done.

git init
git config user.name "Scrap Kata-Coda"
git config user.email "scrapbook@nowhere.com"
echo target/ > .gitignore
git add .
git commit -m "initial version"