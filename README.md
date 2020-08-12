# alpha-workstation

This is basic setup required to work wih repo behing load balancer. 

Checkout this project and run:

```
./setup.sh
```


To login to git you need to run

```
~/alpha/user-login.sh
```

## Background

User-login.sh script will prompt for username and password. Then it will login you to load balancer and collect cookies into ~/alpha/gitcookie file. 

It will also update your ~/.gitconfig to use this cookie file. 

After that you can checkout any project by using https url 


## Git checkout

After you did user login you will have to go to your user profile (Click you username on top right corner). 

Go to HTTPS password and generate one. You can safely save this one to your .gitconfig. 

When prompted for username on checkout put in same username you used for load balancer login

