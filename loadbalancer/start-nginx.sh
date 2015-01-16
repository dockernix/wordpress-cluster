#!/bin/bash
#!/bin/bash
IFS=:
sed -i -n '1,/# start of section/p;/# end of section/,$p' /etc/nginx/sites-available/default
line_num=$(awk '/# end of section/{ print NR; exit }' /etc/nginx/sites-available/default)

for NODE in $SLAVENODES;
do
  sed -i ${line_num}'i\server '${NODE}';'  /etc/nginx/sites-available/default
done

/usr/sbin/nginx
