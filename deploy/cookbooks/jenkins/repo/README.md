# Engine Yard Managed SM Framework Jenkins stack component

This extension must be run as root as it does system management tasks
that require root privileges (such as adding Jenkins to monit for example).

Install the jenkins service, which installs to a dedicated 'jenkins' user:

    sm jenkins install

Now we configure the Jenkins service:

    sm jenkins configure

Finally, we start the Jenkins service:

    sm jenkins start

To stop the jenkins service:

    sm jenkins stop

To restart the jenkins service:

    sm jenkins stop

If the (sub)domains have not been configured in the API data payload then you
will need to change the Jenkins domains in the jenkins Nginx server config file:

    /etc/nginx/servers/jenkins.conf

