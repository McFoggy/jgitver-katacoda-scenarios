### tagging
Now let's terminate this introduction with one of the main interesting feature of [jgitver](https://jgitver.github.io): _tagging_.

Let's consider that we are satisfied with the current state of our project and we want to release it using a defined `1.0.0` version. 

- create an annotated release tag:  
  `git tag -a -m "release 1.0.0" 1.0.0`{{execute}}
- verify the tag is there and that git HEAD is on the tag 
  `git lg`{{execute}}    
- now Gradle project version calculated by jgitver should be `1.0.0`:  
  `gradle version`{{execute}}  
- jgitver should have hooked in maven build and printed the following
````
~/demo-jgitver$ gradle version
> Task :version
Version: 1.0.0

BUILD SUCCESSFUL in 0s
````

Congratulations, you're now ready to publish the release `1.0.0` of your project to your preferred repository (Nexus, Maven Central, JCenter, ...).   