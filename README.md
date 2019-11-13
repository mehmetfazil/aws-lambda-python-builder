## A guide to get external python packages running on AWS Lambda 

### TLDR

- Clone the repo
- Edit your src/**requirements.txt** for your needs
- ```chmod +x build.sh``` and ```./build.sh```

That's it!

Now you can navigate to **build** folder and you will find **layer.zip** file there. Upload it to your AWS Lambda layers, and select it from your AWS lambda function.

## Why do you need it

AWS Lambda is a great tool to run python scripts on the cloud. Considering Python has lots of packages available, AWS supports widely used ones. However, a problem arises when you want to use a package that is not installed default on AWS Lambda runtime. For that case, you have several options including installing the python packages on your local computer and building a deployment package, but you can not use aws lambda editor and uploading to s3 for any minor change is a terrible thing. Another option is using layers, which is what i recommend. In that case, you create a layer for your packages and you can use it directly by selecting use a layer option from aws lambda web gui. also you can the same layer for other lambdas and still use the aws lambda web code editor.

Building layers has its own problems since you need the same environment as amazonlinux. You can use docker but sometimes debian and pip won't get along and not install all your packages. That's why I am writing this actually. So the solution is using another amazonlinux docker image, lambcli




### Tips

You can use [pipreqs](https://github.com/bndr/pipreqs) to get your requirements.txt automatically from your Python code.
