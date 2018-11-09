Now that we have a running project, let introduce [jgitver](https://jgitver.github.io) on it, and compute automatically the project `version`.   

Introducing [jgitver](https://jgitver.github.io) on a Gradle project is as simple as adding 
the [jgitver gradle plugin](https://jgitver.github.io/#_gradle_usage) by adding the line _(adapt version number if needed)_

```
plugins {
    ...
    id 'fr.brouillard.oss.gradle.jgitver' version '0.6.0'
    ...
}
```  

Let's do that automatically using `sed`:

`sed -i "$((JL_LINE+1))i\ \ \ \ id 'fr.brouillard.oss.gradle.jgitver' version '0.6.0'" build.gradle`{{execute}}

By building the project, Gradle will now download jgitver and its dependencies:

`gradle build`{{execute}}

Now verify that [jgitver](https://jgitver.github.io) operates by checking again the project version  
`gradle --console=plain properties | grep -E '^version:.*'`{{execute}}  

[jgitver gradle plugin](https://jgitver.github.io/#_gradle_usage) also introduced a `version` task that ease to find current computed version: 

`gradle version`{{execute}}  

As you can see the project version is now overridden by jgitver to `0.0.0-0`.

As we edited the `build.gradle` file to add the plugin, let's be clean and commit it. Wel'l then check the version again.

`git commit -am "introduce jgitver plugin"
gradle version`{{execute}}
 
Using no special configuration, project versioning starts with `0.0.0` and a distance qualifier is appended to the version.

Our project's version is now: `0.0.0-1`  
