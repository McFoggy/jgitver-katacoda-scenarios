terminate with one of the main interesting feature of [jgitver](http://github.com/jgitver/jgitver): _tagging_:
- create an annotated release tag: `git tag -a -m "release 1.0" 1.0`{{execute}}
- now maven project version calculated by jgitver is `1.0.0`: `mvn validate`{{execute}}  
