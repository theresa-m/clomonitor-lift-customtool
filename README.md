Add CNCF [CLOMonitor](https://clomonitor.io) Security tests to [Sonatype Lift](https://help.sonatype.com/lift).


# Installing

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