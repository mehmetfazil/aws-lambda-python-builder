## Build AWS Lambda layers for external Python packages.

### How to use

- Clone the repo
- Edit your src/**requirements.txt** for your needs
- ```chmod +x build.sh``` and ```./build.sh```

That's it!

Now you can navigate to **build** folder and you will find **layer.zip** file there. Add this to your AWS Lambda layers, and select to use it from your AWS lambda function.


### Tips

You can use [pipreqs](https://github.com/bndr/pipreqs) to get your requirements.txt automatically from your Python code.
