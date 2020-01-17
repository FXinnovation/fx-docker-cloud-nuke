# cloud-nuke
[![](https://images.microbadger.com/badges/version/fxinnovation/cloud-nuke.svg)](https://microbadger.com/images/fxinnovation/cloud-nuke "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/fxinnovation/cloud-nuke.svg)](https://microbadger.com/images/fxinnovation/cloud-nuke "Get your own image badge on microbadger.com")
## Description
This image contains cloud-nuke. The image is based on the official alpine image. It should be more lightweight this way.

## Tags
We push a `latest` tag on this repository, to run an older version please checkout the different tags.
We do not follow the cloud-nuke release tags in the docker image tags. You can always find the cloud-nuke version in the Dockerfile that was used to create the image or you can use the labels.

## Usage
`docker run --rm -v $(pwd):/data fxinnovation/cloud-nuke --help`

## Labels
We set labels on our images with additional information on the image. we follow the guidelines defined at http://label-schema.org/. Visit their website for more information about those labels.

## Comments & Issues
If you have comments or detect an issue, please be advised we don't check the docker hub comments. You can always contact us through the repository.

## Contributions
Contributions are welcome.

### CHANGELOG.md
Our changelog file is maintained by the `git changelog` command. This command is made available when installing `git-extras`.
