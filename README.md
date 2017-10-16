# Dotfiles
## What are dotfiles
Dotfiles get their name from the letter they start with, which is a dot. They are files that are hidden by default and often used for config files.

## Why are these dotfiles here?
The advantage of using Github to manage your config files is that you can go back to any change that has been made and, if needed, download the old version and replace it with a new, possibly broken, version on your computer. It can also be used to quickly download (or git clone) all config files you need to get started on a new computer. Lastly, it is a lot easier to share your always updated config files with other people.

## How can I use these files?
In order to use these config files, you should firstly create a backup of your current config files (I recommend using git and Github for that as well. If that is too complicated, just rename them to something like configname.copy). After having created a backup of all important config files, you simply need to replace all all your files with the ones in this repository.
_**DISCLAIMER! USE AT OWN RISK!** I cannot be made responsible for any harm done to your computer_

## Fonts
Fonts are not included in this repository. The font I use for my Terminal (URxvt) is Adobe's _Source Code Pro_. You will need to download that yourself using your file manager.

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
    <td>mvP, mvDc, mvPw</td>
    <td>Will move selected file(s) to either ~/Pictures (mvP), ~/Documents (mvDc) or ~/Pictures/wallpapers (mvPw)</td>
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
    <td>Vim</td>
    <td>\' \" \( \[</td>
    <td>Will create (in insert mode) two of the symbol behind \ and place user inside of them</td>
  </tr>
  <tr>
    <td>Vim</td>
    <td>CTRL+A</td>
    <td>Will yank entire file (normal mode)</td>
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
</table>


## Example
Here is an example of my desktop using pywal to set the background and colours. This will change depending on what background you use. Programs used here are Ranger, htop, neofetch and vim
<p align="center">
  <img src="https://picload.org/image/dgpodoir/2017-10-16-204048_1920x1080_sc.png"/>
</p>
