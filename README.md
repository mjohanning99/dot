# Dotfiles
## What are dotfiles
Dotfiles get their name from the letter they start with, which is a dot. They are files that are hidden by default and often used for config files. However, I also other config files in this repository that aren't dotfiles.

## Why are these dotfiles here?
The advantage of using Github to manage your config files is that you can go back to any change that has been made and, if needed, download the old version and replace it with a new, possibly broken, version on your computer. It can also be used to quickly download (or git clone) all config files you need to get started on a new computer. Lastly, it is a lot easier to share your always updated config files with other people.

## How can I use these files?

### Prerequisites
1. You need to have [i3-gaps](https://github.com/Airblader/i3) installed if you are planning on copying any of the files from the .i3 folder.
2. Vim is pre-installed on most Linux distributions, however I use Vim in the terminal. I am not sure if any of the configs work with gVim or neoVim or any of the other types of vim. (if you want to use my .vim configs)¹
3. Ranger is the file manager I use. I am not sure whether it comes pre-installed with most Linux distributions, so please check whether Ranger has been installed. (if you want to use my ranger configs)
4. [Pywal](https://github.com/dylanaraps/pywal) is highly recommended for changing backgrounds and colours on the fly (especially with my Ranger shortcut)
5. My main editor is Spacemacs, so if you want to use the .emacs.d and .spacemacs files, you need to install Spacemacs (and Emacs)

### ¹Vim Plugins
The .vimrc contains several plug-ins that are used with Vundle. Vundle should already be included with the configuration files. However, in order to be able to use these plug-ins you need to start vim and type
`:PluginInstall`. 
This will automatically install all the plug-ins and you don't need to worry about doing anything else.

If this doesn't work, I would recommend re-downloading Vundle by simple cloning the repository and moving it into the right place by typing `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim` into your terminal. Afterwards, please try to run `:PluginInstall` once again.

### How to get my set-up
In order to use these config files, you should firstly create a backup of your current config files (I recommend using git and Github for that as well. If that is too complicated, just rename them to something like configname.copy). After having created a backup of all important config files, you simply need to replace all all your files with the ones in this repository. Some config files have my username included, which means that if you try to run said config file you will most likely run into an error. Should you run into an error when running a config file or should something not work as intended, please check the config file and see if it includes my username and remove it.

_**DISCLAIMER! USE AT OWN RISK!** I cannot be made responsible for any harm done to your computer_

## Fonts
Fonts are not included in this repository. The font I use for my Terminal (URxvt) is Adobe's _Source Code Pro_. You will need to download that yourself using your package manager.

## Keybindings
These config files also include a large number of keybindings that have been tweaked or added to my liking. When using my configuration, please be aware that the keybindings that you are used to might have been changed.
Here is a quick overview of most of the commands that have been added 

<table>
  <tr>
    <th>Program</th>
    <th>Command</th>
    <th>Function</th>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>CC</td>
    <td>Pressing CC (change colour) when over an image file will start pywal using that image</td>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>gPc, gDd, gDc ... (more <a href="https://github.com/Jeytas/dot/blob/master/.config/ranger/rc.conf#L322">here</a>)</td>
    <td>Pressing these button combinations will take you to a specified directory (g => goto), for example gPc => goto Pictures</td>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>mvt (+directory)</td>
    <td>Pressing this button combination over any file (mvt => move to) and then specifying a directory will move said file to said directory</td>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>mvPc, mvDc, mvPw...</td>
    <td>Will move selected file(s) to either ~/Pictures (mvPc), ~/Documents (mvDc) or ~/Pictures/wallpapers (mvPw)</td>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>cpPc, cpDc, cpPw...</td>
    <td>Will copy selected file(s) to either ~/Pictures (mvPc), ~/Documents (mvDc) or ~/Pictures/wallpapers (mvPw)</td>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>dl</td>
    <td>Will delete selected files</td>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>exe mexe</td>
    <td>Start selected executeable file (exe) or make file executeable (mexe)</td>
  </tr>
  <tr>
    <td>Ranger</td>
    <td>bk</td>
    <td>Creates a backup file (filename.ending_bk) for the files selected</td>
  </tr>
  <tr>
    <td>i3-gaps</td>
    <td>Mod+Shift+P (+M)</td>
    <td>Will increase (+P) or decrease (+M) outer gap size</td>
  </tr>
  <tr>
    <td>i3-gaps</td>
    <td>Mod+CTRL+P (+M)</td>
    <td>Will increase (+P) or decrease (+M) inner gap size</td>
  </tr>
  <tr>
    <td>i3-gaps</td>
    <td>Mod+CTRL+M (+T, +S)</td>
    <td>Will start Emacs, Thunderbird and htop respectively</td>
  </tr>
</table>


## Example
Here is an example of my desktop using pywal to set the background and colours. This will change depending on what background you use. Programs used here are Ranger, htop, neofetch and vim
<p align="center">
  <img src="https://picload.org/image/dgpodoir/2017-10-16-204048_1920x1080_sc.png"/>
</p>
