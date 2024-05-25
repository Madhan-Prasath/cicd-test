## Running Python Scripts with Package Dependencies

This repository contains a Docker image for running Python scripts with package dependencies. The image is based on the official Python image and includes all necessary tools for running Python scripts.

## Usage

1.  Clone this repository to your local machine.
    
2.  Place your Python script and the requirements.txt file in a folder on your local machine.
    
3.  Run the following command to mount the folder containing your script and dependencies to the default work directory of the Python image, which is `/scripts`:

```shell
$ docker build -t image-repo/python
$ docker run --rm -it -v {your scripts folder path}:/scripts --env-file=.env image-repo/python bash`
```

4.  Once the container is running, you can run your Python script using the `python` command:

```shell
$ python {your script name}.py
```

Example:
we have `hello.py` file inside the scripts folder
```shell
print('Hello, world!')
```

Running  `hello.py`  in the container 
```shell
$ docker run --rm --env-file=.env -v /home/madhan/scripts:/scripts image-repo/python hello.py
```

The Output is
```
Hello, world!
```
In this program, we have used the built-in `print()` function to print the string `Hello, world!` on our screen.

5.  The container will automatically install the dependencies listed in the requirements.txt file before running the script.

6.  To exit the container press `CTRL+D` or use the command `exit`.

## Notes

-   The `--rm` flag tells Docker to automatically remove the container when it exits.
-   The `-it` flag allows you to run the container in interactive mode.
-   The `-v` flag mounts a volume from your host machine to the container.
-   The `--env-file=.env` flag loads environment variables from a file named `.env` in the host.
-   The `image-repo/python` is the image name.

Please use the above command as a template and replace the `{your scripts folder path}` and `{your script name}` with the actual path and name of your script.

Also, make sure that the requirements.txt and script are in the same folder.

This is a simple example, it can be modified according to the user's needs, such as adding flags to the command or modifying the command's arguments.