# Running Ignition Vision Client on balena

This is a prototype project to run Inductive Automation Ignition Vision Client Java application on balena.

### Deploy the project

#### Hardware

* Intel NUC or similar (x86 - amd64)
* USB Mouse and USB Keyboard
* USB stick to flash the balenaOS image on the Intel device

#### Software

* A balenaCloud account (sign up here) and get the first 10 devices free.

* [balenaEtcher](https://etcher.balena.io/) to flash the USB stick with the balenaOS image.


As usual, you have three options here. Click the “Deploy with balena” button or use the balena CLI. You can do it in just one click by using the button below:

[![](https://www.balena.io/deploy.png)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/mpous/ignition-visionclient-launcher-balena)

Follow instructions, click Add a Device and flash an SD card with that OS image dowloaded from balenaCloud. Enjoy the magic 🌟Over-The-Air🌟!



### Run Ignition Vision Client on the balena device

Get into the device on balenaCloud. Go to the Terminal and access to the service `xserver`. In order to start the xserver server, type 

```
startx
``` 

![Start x11 on the xserver service](https://github.com/mpous/ignition-visionclient-launcher-balena/assets/173156/9fdc7d27-9c24-412f-a84c-c088a1af42f5)

Now, open a new tab on the Terminal and open the service `ignition-vision-client` and type 

```
startx ./visionclientlauncher.sh
```

![Start x11 with the local bash script](https://github.com/mpous/ignition-visionclient-launcher-balena/assets/173156/291dc52e-d3b3-4dd6-a088-28e34df401a8)

At this moment you should be able to see the Ignition Vision Client application on your display.

![Ignition Vision Client running on a balena x86 device](https://github.com/mpous/ignition-visionclient-launcher-balena/assets/173156/b2d72203-b5fc-4c2f-b84d-b98e0ef27c4e)


## Disclaimer

This project is for educational purposes only. Do not deploy it into your premises without understanding what you are doing. USE THE SOFTWARE AT YOUR OWN RISK. THE AUTHORS AND ALL AFFILIATES ASSUME NO RESPONSIBILITY FOR YOUR SECURITY.

We strongly recommend you to have some coding, security and networking knowledge. Do not hesitate to read the source code and understand the mechanism of this project or contact the authors.


## Troubleshoothing

It's possible that this project does not work. Feel free to write me through the https://forums.balena.io 

In the other hand, feel free to introduce issues on this repo and contribute with solutions.

