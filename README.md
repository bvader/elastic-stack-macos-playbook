# Elastic Stack Ansible Playbook for MacOS

This playbook is for setting up version 6.x of the Elastic Stack on a local MacOS environment   

## Notes and requirements

 - This was tested on MacOS Mojave 10.14.1 (18B75)
 - You will need Ansible installed and running
 - The playbook is currently configured to install the full Elastic Stack including all the Beats
 - You can comment out what you do not want to install
 - Currently ElkUp starts Elasticsearch with a 2gb JVM, Kibana and APM Server with RUM enabled
 - You can change the Elasticsearch JVM size by editing ES_JVM_SIZE in ELKup

 ## Instructions
 - Export or set ES_BASE_HOME to the base directory where you want to install

 `export ES_BASE_HOME=/Users/sbrown/workspace/elastic-install`

 - Run the playbook with the following command, this installs version 6.6.0

 `ansible-playbook site.yml -i hosts --extra-vars "tag=6.6.0 run_option=install"`

  - Run ELKup start to start the stack
s
  `TAG=6.6.0 ./ELKup start`

  - Run ELKup start to start the stack

  `TAG=6.6.0 ./ELKup stop`

  - Run the playbook with the following command, this removes version 6.6.0
  - **CAUTION** This forceably removes the installation

  `ansible-playbook site.yml -i hosts --extra-vars "tag=6.6.0 run_option=remove"`
