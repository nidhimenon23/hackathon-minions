Ushur iOS
=============

Requirements
------------

The following requirements must be set up prior to installing Chargebee's iOS SDK

-   iOS 12+

-   Swift 5+

Installation
------------

Choose from the following options to install Chargeee iOS SDK.

### Github

Add the following snippet to the Podfile to install directly from Github.

```swift
pod 'ushur-mobile', :git => 'https://github.com/nidhimenon23/hackathon-minions', :tag => '1.0.28'
```


### Swift Package Manager

Follow the step to install SDK using Swift Package Manager.

-   Select File > Swift Packages > Add Package Dependency

-   Add repository URL https://github.com/nidhimenon23/hackathon-minions


Configuring SDK
---------------

There are two types of configuration.


```swift
import Ushur

Ushur.configure(portalId: "portal_id",
                    apiKey: "publishable_api_key",
                    sdkKey: "SDK Key")
}
```

Invoke App
---------------



```swift
import Ushur

Ushur.loadApplication()


```

License
-------

Chargebee is available under the [MIT license](https://opensource.org/licenses/MIT). For more information, see the LICENSE file.
