Ushur iOS
=============

Requirements
------------

The following requirements must be set up prior to installing Ushur's iOS SDK

-   iOS 12+

-   Swift 5+

Installation
------------

Choose from the following options to install Ushur iOS SDK.

### Github


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

Ushur.render()

}
```

