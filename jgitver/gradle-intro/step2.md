Now that we have a running project, let introduce [jgitver](https://jgitver.github.io) on it, and compute automatically the project `version`.   

Introducing [jgitver](https://jgitver.github.io) on a Gradle project is as simple as adding 
the [jgitver gradle plugin](https://jgitver.github.io/#_gradle_usage) by adding the line

```
plugins {
    ...
    id 'fr.brouillard.oss.gradle.jgitver' version '0.6.0'
    ...
}
```  

Let's do that automatically using `sed`:

`sed -i "$((JL_LINE+1))i\ \ \ \ id 'fr.brouillard.oss.gradle.jgitver' version '0.6.0'" build.gradle`{{execute}}

Now verify that [jgitver](https://jgitver.github.io) operates by checking again the project version  
`gradle --console=plain properties | grep -E '^version:.*'`{{execute}}  

[jgitver gradle plugin](https://jgitver.github.io/#_gradle_usage) also introduced a `version` task 

`gradle version`{{execute}}  

As you can see the project version is now overridden by jgitver to `0.0.0-0`.

As we edited the `build.gradle` file, let's commit it and check the version again.

`git add -am "introduce jgitver plugin" && \
gradle version`{{execute}}
 
Using no special configuration, project versioning starts with `0.0.0` and a distance qualifier is appended to the version.

Our project's version is now: `0.0.0-1`  
