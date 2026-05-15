- hosts: dev[0]
  connection: ssh
  tasks: 
    - name: install httpd
      yum: name=httpd state=present
      notify: start webserver
  handlers:
    - name: start webserver
      service: name=httpd state=started
