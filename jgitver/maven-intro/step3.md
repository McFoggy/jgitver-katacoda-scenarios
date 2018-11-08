In order to be clean, we first need to commit the created maven extension file   
  `git add . && git commit -m "add jgitver maven extension"`{{execute}}
  
Our project now has 2 commits 
  `git lg`{{execute}}    

And its version is still calculated by [jgitver](http://github.com/jgitver/jgitver) to `0.0.0-SNAPSHOT` 
  `mvn validate`{{execute}}

### tagging
Now let's terminate with one of the main interesting feature of [jgitver](http://github.com/jgitver/jgitver): _tagging_:
- create an annotated release tag:  
  `git tag -a -m "release 1.0" 1.0`{{execute}}
- verify the tag is there and that git HEAD is on the tag 
  `git lg`{{execute}}    
- now maven project version calculated by jgitver should be `1.0.0`:  
  `mvn validate`{{execute}}  
- jgitver should have hooked in maven build and printed the following
````
...
[INFO] jgitver-maven-plugin is about to change project(s) version(s)
[INFO]     fr.brouillard.jgitver.demos::simple-maven-demo::1.0.0-SNAPSHOT -> 1.0.0
...
````

