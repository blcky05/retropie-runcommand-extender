# retropie-runcommand-extender
Collection of some scripts for the runcommand module of Retropie, which allow the execution of multiple scripts with runcommand-onstart, runcommand-onend and runcommand-onlaunch.

## Idea
### Identified Problem
Retropie runcommand allows the user to execute a custom script located in `/opt/retropie/configs/all/` for some events. But, if several tasks shall be fulfilled, the respective commands must be manually combined in one single script file. As most functionality is already provided by some developers in some git repository, it would instead be very useful if the script files could simply be symlinked and accordingly updates can be processed by pulling the repository. For this, the scripts must be separated.

### Solution
The runcommand scripts provided in this repository execute all scripts in the directory `/opt/retropie/configs/all/`, which match a specific pattern. I.e. the original runcommand scripts are extended with some suffix. This way, an arbitrary number of script files can be placed in the configs directory, which are all executed automatically.

## Installation
After cloning the repo, just execute the install script. This will symlink the runcommand scripts of this repo to `/opt/retropie/configs/all/`. If you already have some existing runcommand scritps, these will be renamed (a suffix is appended), s.t. the functionality keeps maintained.

## Usage
You can put an arbitrary number of runcommand scripts in `/opt/retropie/configs/all/` by applying the following naming convention. The original script name (e.g. `runcommand-onend.sh`) is extended with the symbol `- ` followed by an arbitrary suffix before the file extension (e.g. `runcommand-onend-*.sh`). The scripts are then executed in alphabetical order.
This way, you can simply symlink your runcommand scripts to `/opt/retropie/configs/all/` and maintain them in their original repository directory.

## Update
Simply pull the repo to get the latest updates. As all files are symlinked, you don't need to run the install script again.