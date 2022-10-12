# VMware Explore Demo App

This is the repository used for the Demo App in the VMware Explore 2022 session `#OSB2534EUR - VMware Event Broker Appliance - Unlocking the Hidden Potential of Event-Driven Automation for VMware Partners`

Link to the recording will be available HERE soon.

## Customization

It's pretty simple to adjust the content which will be displayed on the page. Simply replace the images used in folder `images` with your own and make the appropriate adjustments on text, links and images in the `index.html` file.

## Build and run the App

After you finished your adjustments, build the container image and give a first test run locally:

```shell
docker build . -t your-docker-hub-account/webapp:v1 && docker run -it --rm -p 8080:80 --name webapp your-docker-hub-account/webpage:v1
```

You'll reach the website on `127.0.0.1:8080`

## Deployment

I'm using a simple deployment file to start the application in a Kubernetes cluster. For more advanced techniques like helm or carvel please have a look at the following content:

* [Helm 101](https://kube.academy/courses/helm-101)
* [Carvel on the Tanzu Developer Portal](https://tanzu.vmware.com/developer/guides/kubernetes/carvel/)

Deploy the application with a Kubernetes Service Type `LoadBalancer`:

```shell
kubectl apply -f .
```

## Credit

Credits are going out to [Alexander Ullah](https://github.com/beyondelastic) who raised my attention for the webapp during his VMware Explore session [#KUBB1941USD](https://www.vmware.com/explore/video-library/video-landing.html?sessionid=1652910378821001NMRa&videoId=6311393838112).

Here are the sources for the HTML and images used in the app:

* [HTML5 UP](https://html5up.net/)
