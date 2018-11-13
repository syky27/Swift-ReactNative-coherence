# Swift iOS project with React Native Components

This is just a prototype how you can integrate React Native code to your existing iOS app.

The instuctions are here: https://facebook.github.io/react-native/docs/integration-with-existing-apps.html

## What I dont like

React pod has 43 issues (warning)... :-/

![warnings](react_warnings.png)

## What I like

I personally hate coding views in swift, it is boring and time consuming, the need to build the project everytime you make a change drives me NUTZ! With React you just edit the js file and than, force the app by input to rerender, I wonder if it is possible to make it rereder every time I save .js file. Just like when you use React Native without integrating it into existing project.


## What can go horribly wrong...

I believe that Apple has the power to kill any other dev tools then the ones they approve Apple for iOS development, not sure how much probable it is, but they can do it anytime they want.

## How Can I run this example?

#### Get your self `yarn`

```
brew install yarn
```

#### Get React native deps and run server
In root of this project perform

```
yarn install
npm start
```

#### Install pods
```
cd ios/
pod install
```

#### Open Xcode build and run the app
```
open [*]i.xcworkspace
```



