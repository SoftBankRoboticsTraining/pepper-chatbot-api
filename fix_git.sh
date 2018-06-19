 find .git -type d | xargs sudo chmod 755
 find .git/objects -type f | xargs sudo chmod 444
 find .git -type f | grep -v /objects/ | xargs sudo chmod 644
