# Elastic Stack Ansible Playbook for MacOS
 
This playbook is for setting up version 6.x of the Elastic Stack on a local MacOS environment   

## Notes and requirements

 - This was tested on MacOS Mojave 10.14.1 (18B75)
 - You will need Ansible installed and running
 - The playbook is currently configured to install the full Elastic Stack including all the Beats
 - You can comment out what you do not want to install
 
 ## Instructions
 - Run the playbook with the following command

 `ansible-playbook site.yml -i hosts --extra-vars "version=6.6.0"`
 
