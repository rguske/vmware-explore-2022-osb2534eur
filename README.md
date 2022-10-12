# VMware Explore Demo App

This is the repository used for the Demo App in the VMware Explore 2022 talk: Get Started with Containers and Kubernetes using vSphere with Tanzu

The talk consists of two parts:

* Building the Container
* Running the container in a Kubernetes environment

## The App

This is a very simple static HTML side showing the VMware Explore content and some additional links with more information around the topics. The site is based on [HTML5 UP](https://html5up.net/). If you would like to learn more about containers follow these links:

* [Containers 101](https://kube.academy/courses/containers-101)
* [Building Applications for Kubernetes](https://kube.academy/courses/building-applications-for-kubernetes)
* [Building Images](https://kube.academy/courses/building-images)

### Build the App

We use the docker daemon to build the container and run it afterwards.

```bash
docker build . -t your-docker-hub-account/vmware-explore:1.0
```

### Use the App

We run the container localy and exposite to the local port ```5000```:

```bash
docker run -d -p 5000:80 --rm --name vmware-explore your-docker-hub-account/vmware-explore:1.0
```

## Deployment

We're using a simple deployment file to start the application in our Kubernetes cluster. For more advanced techniques like helm or carvel please have a look at the following content:

* [Helm 101](https://kube.academy/courses/helm-101)
* [Carvel on the Tanzu Developer Portal](https://tanzu.vmware.com/developer/guides/kubernetes/carvel/)

We have two files to match the steps in the Demo. First we create the deployment and afterwards we create the Load Balancer. If you want to use your own image, please update the deployment file to reference your image. The default setting is to pull the image from github.

```bash
kubectl apply -f deployment/01-vmware-explore-deployment.yaml
kubectl apply -f deployment/02-vmware-explore-service.yaml
```

## Credit

Here are the sources for the HTML and images used in the app: 

* [HTML5 UP](https://html5up.net/)
* Photo by [Cameron Venti](https://unsplash.com/@ventiviews?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/container?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
* Photo by [ThisisEngineering RAEng](https://unsplash.com/@thisisengineering?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/code-female?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
* Photo by [AbsolutVision](https://unsplash.com/@freegraphictoday?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/post-it?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
