# Engine Yard Managed SM Framework Engine Yard API stack component

A module api for inclusion within other Engine Yard SM Components.

If you need to access the eyapi in your components then first make sure that the
eyapi component is installed:

    sm ext install eyapi https://github.com/eystacks/sm_eyapi

Then in order to use the eyapi you have two options. First you can call it from
the command line:

    sm eyapi get "nginx/workers" "/etc/ey/api.json"

This option is good when grabbing configurations from a language other than sm
framework shell actions.

If you are using an action file written using SM framework shell scripting,
we first include the eyapi module api. To do this enter the following
string on it's own line in the shell/includes file:

    eyapi

This will import the eyapi functions file which exposes the eyapi() command api.
You then use it as follows from within your shell scripts, for example:

    eyapi get \
      string "nginx/workers" default "4" \
      array "applications"

Which will query the Engine Yard API and return the configuration values by
assigning them into either a string or array varable as was requested:

    > log $nginx_workers
    4

    > array print applications
    todo jenkins

You may also assign the target variable name that the entry will be stored in.
By default it is stored in a variable that is the same name as the path with the
'/' replaced by '\_'. In order to override this you use one of the keywords 'as'
or 'variable' as follows:

    eyapi get \
      string "applications/${application}/memory/cycles" default "2" as "memory_cycles" \
      string "applications/${application}/server" default "thin" variable "server" \
      string "applications/${application}/thin/port" default "5000" as "base_port" \

    > log "${memory_cycles}"
    2

    > log "${server}"
    thin

    > log "${base_port}"
    5000

