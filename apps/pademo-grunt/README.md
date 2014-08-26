Asset pipeline using Grunt

NOTES:

The best way to install Grunt requires setting up the folder also as a NodeJS project, which basically means:
  - Define a package.json
  - Commit downloaded modules into repo (node_modules)

Once Grunt takes over our assets, we can no longer rely on Padrino auto
reloading feature. Since this means that now we must run the Grunt watcher
along the rack server, we use Foreman to ease starting the services. Have a look at the Procfile
