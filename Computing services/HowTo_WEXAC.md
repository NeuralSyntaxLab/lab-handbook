### First Connection
> ❕ In order to connect to Wexac servers, you should be connected to weizmann's inner network, either by being in the institute, or using the [VPN](https://www.weizmann.ac.il/WIT/network-services-campus-internet/remote-access/vpn).
1. Download and install [MobaXterm](https://mobaxterm.mobatek.net/download-home-edition.html)
	- This programs allow to connect to remote servers (using ssh or other protocols).
2. After installing, open it and click on the "Session" button:

![image](https://user-images.githubusercontent.com/19908942/209854676-74feed0d-2ce5-4177-9c4c-d23f2af5868e.png)

4. Choose "SSH".
5. For remote host fill `gaccess03.wexac.weizmann.ac.il`, tick the 'specify username' checkbox and specify your username.
6. Click 'OK, and your'e connected!
7. Your home folder should be created automatically under `/home/labs/yardenc/<your_username>`
### Workflow
> ❕ In order to connect to Wexac servers, you should be connected to weizmann's inner network, either by being in the institute, or using the [VPN](https://www.weizmann.ac.il/WIT/network-services-campus-internet/remote-access/vpn).

Because we have our own private server, there is no need to use LSF (the task scheduling system). Instead, we can use our server directly (like running on a normal unix machine).
It is still possible to use LSF throught the bsub command for the public queues. For guides on using it I recommend [this paper](https://paper.dropbox.com/doc/Working-in-WAIC--BvuZ80vJqWyd3u_8zD2rBuk_Ag-ab6XDkhtm2V2zqt42ykmA#:uid=587511013478669504938403&h2=Jobs-Scheduler-(LSF)).

### Jupyter
To run a jupyter server on the cluster, just run:
`jupyter notebook --no-browser --ip "0.0.0.0" --port "$(shuf -i 30000-59999 -n 1)"`
This line should start the jupyter server on the machine, and output something that looks like this:
![image](https://user-images.githubusercontent.com/19908942/209867137-e8e572b1-000c-43d4-9683-e05da9f2f88e.png)
To access the notebooks, just follow one of the links given in the output (here - http://gaccess03.wexac.weizmann.ac.il:56915/?token=... or http://127.0.0.1:56915/?token=...)


#### VS Code
It is possible to connect an IDE to the remote server and write, run and even debug from the comfort of your GUI. 
1. Open visual studio code (or install it first).
2.  You should see a side panel on the left of the window with the Extensions button, click it  (or  Ctrl+Shift+X by default)
3.  Search & Install the following extentions:
	- Python 
	- Remote Development
	- Remote - SSH: Editing Configuration Files
	- Remote Explorer
4.  Open the command palette by pressing Ctrl+Shift+P, search for the command Remote-SSH: Open SSH Configuration File..., press enter to execute, select the top-most option from the prompted list  (should be C:\Users\$PC_user$\.ssh) and paste the contents of the following (replacing `<username>` with your username):
```
Host cohenLabServer
	HostName gaccess03.wexac.weizmann.ac.il
	User <username>
```
> ❗ From this point you will need to be connected to the weizmann network or the VPN.
5. Open the command palette by pressing Ctrl+Shift+P, search for the command  Remote-SSH: Connect Current Window to Host... press enter to execute, select the the server you wish to connect to from the prompted list.
>If it is the first time you connect to the specific server, you will need to choose linux as the server's OS and to ok a trust prompt.
6. Enter your password  (twice) and you are connected, congrats!
7.  You can now choose the explorer on the left panel, press the open a folder button and select the folder in the server containing the code to debug  (you might need to enter your password again).
8.  Open the command palette by pressing Ctrl+Shift+P, search for the command Python: Select Interpreter press enter to execute.
9.  Create a python file in your server directory, paste the following contents:
```
# Check if conda env is loaded by importing torch
import torch
# Check if gpu is available
print("Yay") if torch.cuda.is_available() else print("Nay")
p = 0
np = p
# Generate exception to trigger the debugger
exp = p / np
```
10.  Open it in VSCode through SSH, with the Explorer  (in the side panel). Click on Debug and Run  (side panel…) and on create a launch.json file, choose the top-most option from the list.
![](https://paper-attachments.dropboxusercontent.com/s_039E9F37E2012DD0D38B767B63D3A81987013B8F48B0A85E9D5CF3951F79BF11_1650730633214_debug1.png)
The new json should look like:
```
{
	// Use IntelliSense to learn about possible attributes.
	// Hover to view descriptions of existing attributes.
	// For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
	"version": "0.2.0",
	"configurations": [
		{
			"name": "Python: Current File",
			"type": "python",
			"request": "launch",
			"program": "${file}",
			"console": "integratedTerminal",
			"justMyCode": true,
			"args": [] // Command line arguments (leave [] if none).
		}
	]
}
```
11.  Finally, go back to your python file and click the little green play button in the top-left portion of the screen, you should be able to see that the conda environment was activated, the args were sent and that you have access to a GPU. Most importantly, you debugger will stop when the program divides by zero:

![](https://paper-attachments.dropboxusercontent.com/s_4E1F293CB99E22616BFDBE31816C177E6E041C1A376ED13650D413A07BFA94AE_1650732014401_debug2.png)

I recommend VS code. For pycharm and others - [this link](https://paper.dropbox.com/doc/Working-in-WAIC--BvuZ80vJqWyd3u_8zD2rBuk_Ag-ab6XDkhtm2V2zqt42ykmA#:uid=780812085531233133160523&h2=IDEs) is very usefull. 
