# Elastic Stack Ansible Playbook
 
This playbook is for setting up version 6.x of the Elastic Stack on a local MacOS environment   

## Notes and requirements

 - This was tested on MacOS High Sierra 10.13.5
 - You will need Ansible installed and running
 - The playbook is currently configured to install the full Elastic Stack including all the Beats
 - You can comment out what you do not want to install
 
 ## Instructions
 - Edit the site.yml and enter the correct `version` and `base_install_dir`
 - Run the playbook with the following command

 `ansible-playbook site.yml -i hosts`
 
