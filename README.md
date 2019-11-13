## A guide to get external python packages running on AWS Lambda 

### TLDR

- Clone the repo
- Edit your src/**requirements.txt** for your needs
- ```chmod +x build.sh``` and ```./build.sh```

That's it!

Now you can navigate to **build** folder and you will find **layer.zip** file there. Upload it to your AWS Lambda layers, and select it from your AWS lambda function.

## Why do you need it

AWS Lambda is a great tool to run python scripts on the cloud. Considering Python has lots of packages available, AWS supports widely used ones. However, a problem arises when you want to use a package that is not installed default on AWS Lambda runtime.

To use packages not installed on lambda, you have several options. One of them is installing the python packages on your local computer and building a deployment package, which might seem a good idea but actually terrible in my opinion. You need to download pip packages locally, and package your code and pip files, then upload it as a deployment package. Your pip runtime should be the same as amazonlinux, and who uses debian anyways, so you need to do it in a docker env or another build machnine. But even if you do that, you can not edit your code on aws lambda web gui. Every minor change needs to be deployed again.
 
Another option, which i'd recommend is, using lambda layers. They contains your desired packages. You upload them, and select a layer you want to use, then you can continue to use aws lambda web editor and other stuff like aws has already installed your packages. You can also use same layers for other lambda functions. For example you can build a layer for pandas, numpy, scikit-learn and you can now serve your models with lambda functions like a breeze.

Building layers has its own problems since you need the same environment as amazonlinux. You can use docker but sometimes debian and pip won't get along and not install all your packages. That's why I am writing this actually. So the solution is using another amazonlinux docker image, lambcli.


### Tips

You can use [pipreqs](https://github.com/bndr/pipreqs) to get your requirements.txt automatically from your Python code.
