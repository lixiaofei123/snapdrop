English | [中文](README_zh.md)

Modified Version Based on [Snapdrop](https://github.com/RobinLinus/snapdrop/tree/eac780092626761602bfe978c8082908c99c3067)

The modified version of Snapdrop includes the functionality to customize device names, making it easier to distinguish between different devices connected to the same network.

The effect is shown in the following image:

<br>
<img src="images/image1.png" height="500" />
<br>

When you first open the page, you will be prompted to enter a device name, and the entered device name will be saved in the browser's cookies. If you want to modify the device name, simply click on the current name highlighted in the red box in the above image.

You can directly access the following URL to visit the Snapdrop that has been set up:
[https://drop.lixf.ink/](https://drop.lixf.ink/])

中国用户请使用此汉化网址 [https://drop.lixf.cc/](https://drop.lixf.cc/])

The principle of Snapdrop is that devices within the same local network (with the same public IP address) open the web page and initially discover each other through the Snapdrop server. After establishing a connection through the WebRTC protocol, subsequent file and text transfers will be done through the local network (i.e., no longer going through the public server). Therefore, you generally do not need to set up your own instance of Snapdrop but can directly access instances set up by others.

If you want to set up your own Snapdrop example, you can use the Docker image [mrlee326/snapdrop](https://hub.docker.com/r/mrlee326/snapdrop) and deploy a self-hosted instance using the following command for an HTTP-based instance. However, please note that some browsers restrict the usage of the WebRTC protocol to the HTTPS protocol. Therefore, you may need to use Nginx as a proxy or modify the Dockerfile and rebuild the Docker image to achieve this purpose.


```
docker run --detach --restart=always --name snap_drop -p 8080:80  mrlee326/snapdrop
```



----------- Separator Line ------------

Below is the original README of the repository:


# Snapdrop 

[Snapdrop](https://snapdrop.net): local file sharing in your browser. Inspired by Apple's Airdrop.


#### Snapdrop is built with the following awesome technologies:
* Vanilla HTML5 / ES6 / CSS3 frontend
* [WebRTC](http://webrtc.org/) / [WebSockets](http://www.websocket.org/)
* [NodeJS](https://nodejs.org/en/) backend
* [Progressive Web App](https://wikipedia.org/wiki/Progressive_Web_App)


Have any questions? Read our [FAQ](/docs/faq.md).

You can [host your own instance with Docker](/docs/local-dev.md).


## Support the Snapdrop Community
Snapdrop is free. Still, we have to pay for the server. If you want to contribute, please use PayPal:

[<img src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif">](https://www.paypal.com/donate/?hosted_button_id=MG8GV7YCYT352)

or Bitcoin:

[<img src="https://coins.github.io/thx/logo-color-large-pill-320px.png" alt="CoinThx" width="200"/>](https://coins.github.io/thx/#1K9zQ8f4iTyhKyHWmiDKt21cYX2QSDckWB?label=Snapdrop&message=Thanks!%20Your%20contribution%20helps%20to%20keep%20Snapdrop%20free%20for%20everybody!) 

[Bitcoin Lighting](https://tippin.me/@robin_linus)

Alternatively, you can become a [Github Sponsor](https://github.com/sponsors/RobinLinus).

Thanks a lot for supporting free and open software!


 
