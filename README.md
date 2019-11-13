## A guide to get external python packages running on AWS Lambda 

### TLDR

- Clone the repo
- Edit your src/**requirements.txt** for your needs
- ```chmod +x build.sh``` and ```./build.sh```

That's it!

Now you can navigate to **build** folder and you will find **layer.zip** file there. Upload it to your AWS Lambda layers, and select it from your AWS lambda function.

### Why do you need it



### Tips

You can use [pipreqs](https://github.com/bndr/pipreqs) to get your requirements.txt automatically from your Python code.
