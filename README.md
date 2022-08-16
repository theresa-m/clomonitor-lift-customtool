Add CNCF [CLOMonitor](https://clomonitor.io) Security tests to [Sonatype Lift](https://help.sonatype.com/lift).

TODO this is a work in progress, adding current limitations as I go along.

# Installing

Github personal access token will need to be set as an environment variable.

# limitations
currently the script finds the github URL by calling `git remote` in the repository. It only works with https and not ssh at this time.

# Contributing
## Local Development
Github personal access token

See https://help.sonatype.com/lift/extending-lift#ExtendingLift-DevelopmentProcessSteps

```
docker run --rm -it -v $(pwd):/code ubuntu:20.04 bash
cd /code
apt update && apt install -y curl jq git
```

setup option only installs necessary libraries and does not run
test-run option will not run setup code