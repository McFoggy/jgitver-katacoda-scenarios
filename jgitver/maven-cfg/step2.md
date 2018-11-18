Now that we have a running project with [jgitver](https://jgitver.github.io), let's adapt it by adding some configuration.

In order to change the defaults of jgitver, we need to provide a configuration file located at `PROJECT/.mvn/jgitver.config.xml`.

`echo '<configuration xmlns="http://jgitver.github.io/maven/configuration/1.0.0"' > .mvn/jgitver.config.xml && \
echo '    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' >> .mvn/jgitver.config.xml && \
echo '    xsi:schemaLocation="http://jgitver.github.io/maven/configuration/1.0.0 https://jgitver.github.io/maven/configuration/jgitver-configuration-v1_0_0.xsd">' >> .mvn/jgitver.config.xml && \
echo '</configuration>' >> .mvn/jgitver.config.xml`{{execute}}

You can now verify the content of the config file `cat .mvn/jgitver.config.xml`{{execute}}

Let's note that as we have added a new file, our current git repository is now _dirty_ because a new file appeared.

`git status`{{execute}}

What about making our project versioning to report this dirty status in the project version.

For that we just need to set the property `useDirty` as _true_ in the config file.

`sed -i "4i\ \ <useDirty>true<\/useDirty>" .mvn/jgitver.config.xml`{{execute}}

The _useDirty_ property has been added to the `jgitver.config.xml` file, verify it here: `cat .mvn/jgitver.config.xml`{{execute}}

Now jgitver will append the qualifier `dirty` to the version each time maven will be invoked with non commited changes
(modified, deleted or new files).

As we have added the `.mvn/jgitver.config.xml` file, [jgitver](https://jgitver.github.io) should report the version as `dirty`.

`mvn validate`{{execute}}

should now output the version to `0.0.0-dirty-SNAPSHOT`
