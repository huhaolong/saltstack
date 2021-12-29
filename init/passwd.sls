change-passwd:
  cmd.run:
    - names:
      - echo 'aST%^NF4Z7tI1cOE' | tee /root/root_pwd.txt | passwd --stdin root
  file.absent:
    - name: /root/root_pwd.txt
    - quire:
      - cmd: change-passwd   
