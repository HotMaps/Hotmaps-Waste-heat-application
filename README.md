# HotMaps Toolbox
The toolbox will facilitate the following tasks on a spatially disaggregated level: 

1. Mapping heating and cooling energy situation including renewable and waste heat potentials in GIS layers,
2. Model the energy system, considering hourly matching of supply and demand, demand response etc.,
3. Supporting the comprehensive assessment of efficient heating and cooling according to the Energy Efficiency Directive,
4. Comparative assessment of supply and demand options and of given scenarios until 2050 regarding e.g. CO2-emissions, costs, share of renewables.


## HotMaps-res-potential web service
### Description
[description]

### Docker installation procedure
#### On Windows 10
Get Docker from [https://store.docker.com/editions/community/docker-ce-desktop-windows?tab=description](https://store.docker.com/editions/community/docker-ce-desktop-windows?tab=description)

Make sure Hyper-V is enabled.

#### On Mac OSX Yosemite 10.10.3+
Get Docker from [https://store.docker.com/editions/community/docker-ce-desktop-mac?tab=description](https://store.docker.com/editions/community/docker-ce-desktop-mac?tab=description)
#### On Windows 7 or Mac below OS X Yosemite 10.10.3
Get Docker Toolbox from [https://docs.docker.com/toolbox/overview/#whats-in-the-box](https://docs.docker.com/toolbox/overview/#whats-in-the-box)

Make sure you have VT-X/AMD-v enabled.

#### On Ubuntu 14.04+
Get Docker from [https://store.docker.com/editions/community/docker-ce-server-ubuntu?tab=description](https://store.docker.com/editions/community/docker-ce-server-ubuntu?tab=description)
#### On other systems or distributions
Get the installation procedure from [https://www.docker.com/get-docker](https://www.docker.com/get-docker)
### Running Docker image
#### For docker toolbox (win7 / OS X below Yosemite)
Open a terminal (Docker Quickstart Terminal for Docker toolbox).

Check that everything is working by running the following command:

`docker-machine ip`

This should return the IP of your active Docker machine that we will use later to connect to our web service (e.g. 192.168.99.100).

Change directory to the *docker* directory on this repository:

`cd my-git-directory/docker`

Then run `./run-docker-toolbox.sh`

That's it! Now the web service should be up and running.

To check that everything is working, open a web browser and enter the IP of the Docker machine we retrieved above, **using port 8181**: http://*{your-docker-machine-ip}***:8181**

This should display a simple message with Python version.

Now you can put your own code in the "code" directory of this repository. Note that wgsi.py is the entrypoint of your web service.

#### For Docker on Ubuntu or other UNIX
Open your terminal

Change directory to the *docker* directory on this repository:

`cd my-git-directory/docker`

Then run `sudo ./run-ubuntu.sh`

That's it! Now the web service should be up and running.

To check that everything is working, open a web browser and enter the IP of the Docker machine we retrieved above, **using port 8181**: http://localhost:8181

This should display a simple message with Python version.

Now you can put your own code in the "code" directory of this repository. Note that wgsi.py is the entrypoint of your web service.

#### For any other system
On any other system, just open your terminal where you have access to "docker".

Change directory to the *docker* directory on this repository:

`cd my-git-directory/docker`

Then run `docker run -d -v "/absolute/path/to/repository/code:/data" -p 8181:80 -it hotmaps/waste-heat-application`

To check that everything is working, open a web browser and enter the IP of the Docker machine we retrieved above, **using port 8181**: http://localhost:8181