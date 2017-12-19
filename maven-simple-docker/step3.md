terminate with one of the main interesting feature of [jgitver](http://github.com/jgitver/jgitver): _tagging_:  
- create an annotated release tag:  
  `git tag -a -m "release 1.0" 1.0`{{execute}}
- now maven project version calculated by jgitver should be `1.0.0`:  
  `mvn validate`{{execute}}  
- jgitver should have hooked in maven build and printed the following
````
...
[INFO] jgitver-maven-plugin is about to change project(s) version(s)
[INFO]     fr.brouillard.jgitver.demos::simple-maven-demo::1.0.0-SNAPSHOT -> 1.0.0
...
````

