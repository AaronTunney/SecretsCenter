# SecretsCenter

This sample project demonstrates how to keep secrets secret when using GitHub and Microsoft Visual Studio App Center.

## The Project

This project consists of four parts:

**SecretsCenter**: A single-view app that displays two secrets: one generated through code, one read from a JSON file.

**SecretsCenter Tests**: Two tests to validate whether the found secrets match the expected values.

**App Center scripts**: A script that is automatically detected by Microsoft Visual Studio App Center and is run as part of the build process.

**Cocoapods-Keys configuration**: Cocoapods-Keys is the glue that allows the GitHub repository to remain secret-free while allowing developers and the CI system to specify the required secrets.

## Running the project

### Running the project on a local machine

**Prerequisites:**

* A functioning Ruby environment
* [jq](https://stedolan.github.io/jq/) installed
* Cocoapods installed
* XCode’s command line tools installed

**Steps:**

#### 1. Clone/fork repository

```
$ git clone https://github.com/AaronTunney/SecretsCenter.git`
```

#### 2. Install gems

```
$ cd PROJECT_SOURCE_DIR
$ bundle install
```

This will install the Cocoapods-Keys plugin.

#### 3. Install Pods

```
$ bundle exec pod install
```

At this point, you will be asked for the secrets defined in the Podfile. The secrets will be stored in your keychain.

#### 4. Run in XCode

The app will load and show the secret saved in your keychain during the previous step.

### Building and Testing the project in App Center

#### 1. Add project to App Center

See: https://docs.microsoft.com/en-us/appcenter/sdk/getting-started/ios

#### 2. Add secret to project settings

See: https://docs.microsoft.com/en-us/appcenter/build/custom/variables/

The environment variables used for this project are named `APITestSecret` and `JSONSecret`. 

#### 4. Save and build

If all of the above steps were followed, it should result in green build.

**Note!**
Newly created App Center scripts will not run until the project's settings have been saved. 

## Useful Links

* [Cocoapods-Keys](https://github.com/orta/cocoapods-keys)
* [App Center Build Scripts](https://docs.microsoft.com/en-us/appcenter/build/custom/scripts/)
* [App Center Environment Variables](https://docs.microsoft.com/en-us/appcenter/build/custom/variables/)
* [Secret variables in Xcode AND your CI for fun and profit](https://medium.com/flawless-app-stories/secret-variables-in-xcode-and-your-ci-for-fun-and-profit-d387a50475d7)
* [Continuous Integration Environment Variables in iOS projects using Swift](https://medium.com/@lucianoalmeida1/continuous-integration-environment-variables-in-ios-projects-using-swift-f72e50176a91)