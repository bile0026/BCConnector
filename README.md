# BCConnector
Rajant BCConnector 

This docker container will install the Rajant BCConnector software. It is currently on version 11.20.0.10. 

You will need to create a directory on your host for each instance of BCConnector you would like to run. 
We will attach these as persistent storage for your docker container. Otherwise all your config file 
changes will be overwritten when you re-build your docker container. 

There are 2 ports we will need to enable as well. Port 23000 is used to connect BCCommander to BCConnector.
35057 is for BCConnector auto-discovery. If you will be running BCCommander on the same subnet as your
BCConnector instance, you can use auto-discovery. If they are on separate subnets, you'll have to use the
--proxy option in a shortcut to bcc11.exe. (i.e. bcc11.exe --proxy=<host_ip>). 

Run docker with:
docker run -d --name <your_name_here> -v <host_path>:/opt/rajant-bcconnector -p 23000:23000 -p 35057:35057 --restart unless-stopped zbiles/bcconnector

Once it's up and runing, you'll need to edit the config by logging into the BCConnector. It should show up in the list in BCCommander if you are on the same subnet, otherwise, use the --proxy option (see above). You might have to go into View>Show BCConnectors tab. Then right-click on the Connector you wish to configure and select configure. Note: configuration requires CO permissions. 
