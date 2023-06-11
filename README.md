

基于[Snapdrop](https://github.com/RobinLinus/snapdrop/tree/eac780092626761602bfe978c8082908c99c3067)的修改版本，主要是加了支持自定义设备名称的功能，方便区分连入同一网络的不同设备。

效果如下图所示
<br>
<img src="images/image1.png" height="500" />
<br>

当您第一次打开页面的时候，会要求您输入设备名称，并且会将您输入的设备名称保存到浏览器的Cookies中。如果您想修改设备名称，点击上图中红框标出的当前名称即可修改。

您可以直接访问下面URL访问已经搭建的SnapDrop示例。

[https://drop.lixf.cc/](https://drop.lixf.cc/)

SnapDrop的原理是同一局域网(具备同一个公网IP)的设备打开网页后，在初始阶段通过SnapDrop服务器进行互相发现，然后各个设备通过WebRTC协议建立连接以后，后续的文件、文本传输就会通过局域网进行传输(即不再经过公网服务器)。因此通常您不要自己搭建SnapDrop实例，直接访问别人搭建好的实例即可。

如果您想要搭建自己的SnapDrop示例，可以使用Docker镜像[mrlee326/snapdrop](https://hub.docker.com/r/mrlee326/snapdrop)，用下面命令搭建一个HTTP协议的自托管示例。由于部分浏览器会限制只能在HTTPS协议下使用WEBRTC协议，可能你需要使用Nginx进行代理或者自行修改Dockerfile重新构建Docker镜像来达到此目的。

```
docker run --detach --restart=always --name snap_drop -p 8080:80  mrlee326/snapdrop
```



-----------  分割线 ------------

下面是原仓库的README

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


 
