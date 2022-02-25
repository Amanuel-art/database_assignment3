# database_assignment3
# MARS Car rental.

This NodeJS program simulates a car rental. <br />

## Getting Started

This program was created under Windows 10 (x64) Operative System using <br />
NodeJS v16.13.0 (+ ExpressJS 4.17.3), npm 8.1.0 and mysql 2.18.1.

Created to be easy to use and it is fool proof (to a degree).<br />
All user inputs return success or error messages.<br />

i) Installing NodeJS v16.13.0
It is possible that NodeJS has been already installed, to check use the following <br />
code in the command line:

    $ node --version
    [v16.13.0]

    If errors occured or NodeJS has not yet been installed please visit their
    website http://nodejs.org/en/download/ and follow the instructions there.

    1) Installing npm v8.1.0
      npm comes bundled with a successful NodeJS installation,
      to check use the following code in the command line:

      $ npm --version
      [8.1.0]

ii) MAMP webserver

    In this project MAMP webserver was used as a backend data handler, and it should be installed to get the project running.

    It is very important to run the file *./database/carrental.sql* on the server after the
    installation is complete.

iii) Testing
In order to test the program it's necessary to run the app and check if no <br />
errors were presented. The most common errors could be:

    1) NodeJS port error
      This happens when the program tries to run on a busy port,
      if that happens it is recommended to change the port number in the server.js file
      let port=8000;
      Where 8000 is the default port used by the program.

    2) MySQL database errors
      - If the file *./database/carrental.sql* was never ran against the server an error would be provided.
      - A localhost/password/port/user error could be occur if the server has different configuration
      than provided by the file *./database/databaseConnection.js*.

    3) Any possible error
      Could be on the computer's end. Bad installation or wrong configuration.

      Aside from the errors mentioned above everything should be working normally.

## Deployment (locally)

Before starting please populate the MySQL server using the file `database/carrental.sql`.

In order to link all npm dependencies:

```
database_assignment3\database_assignment3> npm i

up to date in 752ms

19 packages are looking for funding
  run `npm fund` for details
```

In order to start the NodeJS server, execute:

```
..\database_assignment3\database_assignment3>  npm start
> database_assignment3@1.0.0 start
> node server.js

Server is listening on port 8000
Connected!

Then opening the (default) website on **Google Chrome**(\*):<br />
[localhost:8000](http://localhost:8000)






 
