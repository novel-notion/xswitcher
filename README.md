This is a quick crappy script that I made in order to automate the switching of xorg.conf files when using an eGPU with a Linux desktop. The script will generate an xorg.conf script if it detects more than one VGA controller at book, and will delete said file if it does not detect that.

It will also automattically find the pciID of your eGPU enclosure. Sorta.

At the moment this script will only work with NVIDIA graphics cards because I haven't automated a way to check which type of card you have.

Also, this script will only work if you have an pciID that looks like like: 8:00.0 and not "00:02.0" 

You can check this with the command "lspci | grep VGA"


HOW TO USE:

1. Clone Repo into temp directory
2. Make setup.sh executable with "chmod +x setup.sh"
3. Reboot and make sure everything is working correctly


Please Note: This is not a one stop shop for your xorg.conf woes. This is an attempt to streamline my situation, and I decided to make my code somewhat resuable so some more people will get use out of it.

Let me know if you found it useful or want other features. Maybe we can make this a thing. 
