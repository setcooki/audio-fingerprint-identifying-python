# Fingerprint audio files & identify what's playing

## Requirements
https://docs.docker.com/get-docker/

## How to set up 

1. Run `git clone https://github.com/setcooki/audio-fingerprint-identifying-python.git` to download repo
2. Go to project root and run `bash bin/run.sh` (provided docker engine is installed)
3. Add your mp3 files you want to run recognition test again into `mp3/` directory
4. Go again to project root and run `bash bin/import.sh`
5. Copy audio .mp3 fragements you want to get recognized against into `mic/` directory (OSX can not do microphone live listening)
6. To recognize an audio fragement against database run `bash bin/recognize.sh {file}` where `file` is a absolute file path inside the container
   `bash bin/recognize.sh /var/app/test.mp3` (e.g.) the project root in container is `/var/app/`
7. Stop your container with `bash bin/stop.sh`