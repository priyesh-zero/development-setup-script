# Setup

<img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F57%2FCode.svg%2F1200px-Code.svg.png&f=1&nofb=1" width="500px" />

## What is this?

This is a bash script to install all necessary tools on a new machine running any deravative of arch

## How to use

I would prefer to use the curl command but one can also download the file and run the script

```bash
curl -o- https://raw.githubusercontent.com/priyesh-zero/development-setup-script/main/init.sh | bash
```

# Caveats

- It will ask for your sudo password
- You need to launch tmux after the file has run and press `Ctrl+b I` to fetch plugins
- nvm script uses v0.38.0 which if and when changed should be changed in the script and updated on the system

# Future

I would update the scrip as I go along
