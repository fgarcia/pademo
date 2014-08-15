Padrino gemified app mounted as root of your webpage '/' 

## Must explore:

- [Main site template](https://github.com/zenbits/pademo/blob/master/vendors/pademo-base/app/views/layouts/application.slim)
- Common [javascript](https://github.com/zenbits/pademo/tree/master/vendors/pademo-base/app/javascripts) and [stylesheet](https://github.com/zenbits/pademo/tree/master/vendors/pademo-base/app/stylesheets) assets 
- Bower to install external assets

## Bower

Bower is a generic package manager to fetch different assets from the web for your project. It is normally installed with the NodeJS package manager:

    npm install -g bower

Don't be confused, you just have to use your system package manager to install
the NodeJS package manager which can install the Bower package manager that
finally install the packages of your assets. Piece of cake!

The unique aspect in using Bower is that you are supposed to [commit into your
repository](http://stackoverflow.com/questions/22327758/should-bower-components-be-gitignored)
the assets that it downloads for you. In this case it is configured to download
into the [vendors
folder](https://github.com/zenbits/pademo/tree/master/vendors/pademo-base/vendors). 

Assets managed by Bower will have a `bower.json` providing all the information
you need.

Since this is the central gem, it is the most logic place to use Bower and
fetch the assets you will provide to your other gems.
