# Photo Portal for Photographer website

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Features

- latest API of React 16^ with HOOK API
- axios to fetching
- react-sweet-state: Global + local state combining the best of Redux and Context API
- i18n for Internationalization and localization
- formik to handle form without tears

### Development features

- jest framework and runner, enzyme, testing-library, react-test-renderer as test utilities
- lint stage, run test before push the code

## Available Scripts

In the project directory, you can run:

### `npm install`

First step to install all of the dependencies to allow `react-scripts` to run. If you get this
error:

`sh: 1: react-scripts: not found`

... then you probably need to run this step.

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

## Docker

### Build

To build the image using Docker, run this:

`docker build -t photo-portal .`

You should now have an image tagged as `photo-portal` which you can see when you list docker images:

`docker images`

### Start and Stop

To run the image and have the nginx webserver exposed on port 8080, do this:

`docker run -it --rm -d -p 8080:80 --name portal photo-portal`

Open your browser and navigate to http://localhost:8080/ to make sure that the html pages are being served correctly.

To shut down the running docker image use this:

`docker stop portal`
