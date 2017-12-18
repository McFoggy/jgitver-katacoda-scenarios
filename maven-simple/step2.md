Now that we have a running project, let's use [jgitver](http://github.com/jgitver/jgitver) on it.  

The [jgitver-maven-plugin](http://github.com/jgitver/jgitver) is a core maven extension that needs to be declared inside a file `.mvn/extensions.xml`.  

Do not bother on the syntax, we've prepared some automatic scripts for you that you can also retrieve on [jgitver-maven-plugin](http://github.com/jgitver/jgitver) main page.  

Let's install it.  

`sh -c "$(wget https://raw.githubusercontent.com/jgitver/jgitver-maven-plugin/master/src/doc/scripts/install.sh -O -)"`{{execute}}

Now verify that [jgitver](http://github.com/jgitver/jgitver) operates by checking with maven the calculated project version  
`mvn validate`{{execute}}  

Version is now overrided by jgitver to `0.0.0-SNAPSHOT` using the history of the project.  
`git lg`{{execute}}
Using no special configuration, project versioning starts with `0.0.0` and uses `SNAPSHOT qualifier`.  

Now let's terminate with one of the main interest of [jgitver](http://github.com/jgitver/jgitver): _tagging_:
- create an annotated release tag: `git tag -a -m "release 1.0" 1.0`{{execute}}
- now maven project version calculated by jgitver is `1.0.0`: `mvn validate`{{execute}}  

Feel free now to:
- follow the other [training scenarios](https://www.katacoda.com/mcfoggy/scenarios)
- consult the [jgitver](http://github.com/jgitver/jgitver) and [jgitver-maven-plugin](http://github.com/jgitver/jgitver) documentations
- ask questions and chat on [gitter](https://gitter.im/jgitver/Lobby)

