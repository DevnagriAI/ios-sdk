# iOS SDK Installation Instructions
Learn how to install the Devnagri SDK for iOS.

# Introduction
Devnagri Over the Air for iOS lets you update translations in your iOS app without having to release it every single time.

By including our SDK, your app will check for updated translations in Devnagri regularly and download them in the background.

You can install the SDK manually.

**Do note**: The language selection screen needs to be designed by the client. We only empower localisation of the app.

# Manual Installation
Download the latest framework from https://github.com/DevnagriAI/ios-sdk
Add DevnagriSdk.xcframework in Xcode as linked binary to your target.

# Sign the framework

Select project target and click general select in framework,libraries,and Embedded Content and select *DevnagriSdk.xcframwork* if not selected 
than choose **Embed -> Embed & Sign.**


**Optional for development**

The Apple store will reject your app if it includes simulator binaries. Therefore, a script to strip the extra binaries needs to be run before you upload the app. To do this, go to Build Phases and add a Run Script section by clicking the + symbol. Copy and paste the following script:

      FRAMEWORK="DevnagriSDK"
      FRAMEWORK_EXECUTABLE_PATH="${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/$FRAMEWORK.framework/$FRAMEWORK"
      EXTRACTED_ARCHS=()
      for ARCH in $ARCHS
      do
         lipo -extract "$ARCH" "$FRAMEWORK_EXECUTABLE_PATH" -o "$FRAMEWORK_EXECUTABLE_PATH-$ARCH"
         EXTRACTED_ARCHS+=("$FRAMEWORK_EXECUTABLE_PATH-$ARCH")
      done
      lipo -o "$FRAMEWORK_EXECUTABLE_PATH-merged" -create "${EXTRACTED_ARCHS[@]}"
      rm "${EXTRACTED_ARCHS[@]}"
      rm "$FRAMEWORK_EXECUTABLE_PATH"
      mv "$FRAMEWORK_EXECUTABLE_PATH-merged" "$FRAMEWORK_EXECUTABLE_PATH"

# Compatibility
This SDK requires base language as english. Other base language will not supported by this SDK

- **iOS 15.0+** (Primary SDK functionality)
- **Swift 5.0 or later**
- Compatible with **Xcode 15.0+**

## Import Requirements

To use DevNagri SDK in your Swift files, you must import the framework:

```swift
import DevnagriSdk
```

**Note**: This import is **required** when using `NSLocalizedString` method replacement functionality, as the SDK extends the localization system to work with SDK's dynamic translation features.

The SDK override the functionality of NSLocalisedString by default. You just need to import the DevnagriSdk to the file where you want NSLocalisedString to be override by the SDK.

---

## Public Methods & APIs
Initialize the SDK by calling the following code in your `didFinishLaunchingWithOptions` Method and you can get `API_KEY` from devnagri.

```swift
import DevnagriSdk

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
   
    DevnagriSDK.shared.initSdk( 
         apiKey: "YOUR_API_KEY",
        updateStringsTime: 30, // Minutes (minimum 10)
        completionHandler: { isInitialized, message in
          if isInitialized {
                print("SDK initialized successfully")
          } else {
                print("Initialization failed: \(message ?? "")")
        }
    }

)}
```
- `apiKey`: Your DevNagri API key (required)
- `updateStringsTime`: Automatic translation update interval in minutes (optional, minimum 10)
- `completionHandler`: Callback with initialization status and message


# Language Management
### **Change Language**   
In case you don't want to use the system language, you can set a different language in the `updateAppLocale` method. The language code (locale) needs to be present in a release from Devnagri.

```swift
import DevnagriSdk

DevnagriSDK.shared.updateAppLocale(code: "es") { isUpdated, message in
    //You can stop loader here...
    //Reload or update UI here...
    
}
```   
  Please note that you will see the english text back if your device language is english and you have not set any specific language for the SDK. To get the translation in Hindi, Please update app locale to Hindi as per above method.
   
### **Get Current language code** ###
In case you want to know which language code currently used by application.

```swift
import DevnagriSdk

let currentLang = DevnagriSDK.shared.getCurrentApplicationLanguageCode()
print("Current language: \(currentLang)") // e.g., "en", "es", "fr"
```  
   
### **Get Supported Languages** ###
You can get supported languages for the SDK using this method. This will return hashmap of language name and language code

```swift
import DevnagriSdk

DevnagriSDK.shared.getAllSupportableLanguages { languages in
    for language in languages {
        print("\(language.language) - \(language.languageCode)")
        // Example output: "Spanish - es", "French - fr"
    }
}
```
    
---
   
# Translation Methods 
### **Get Translation of a Specific String** ###
You can use these methods anywhere in your project and these will provide translation for current active locale in callback method.


```swift
import DevnagriSdk

DevnagriSDK.shared.getTranslationOfString(sentence: "Hello World") { translatedText in
    print("Translated: \(translatedText)")
}
```

### **Get Translations of an Array of Strings.** ###

```swift
import DevnagriSdk

let sentences = ["Hello", "Goodbye", "Welcome"]
DevnagriSDK.shared.getTranslationOfStrings(sentences: sentences) { translatedArray in
    // Returns array of translated strings in same order
    print("Translated: \(translatedArray)")
}
```

### **Get Translations Of Dictionary** ###

```swift
import DevnagriSdk

let dict = ["title": "Hello", "subtitle": "Welcome"]
DevnagriSDK.shared.getTranslationsOfDictionary(dictionary: dict) { translatedDict in
    // Returns dictionary with translated values, same keys
    print("Translated dictionary: \(translatedDict)")
}
```

### **Get Translations of Json Object** ###
```swift
import DevnagriSdk

let jsonDict = ["user": ["name": "John", "id": "123"], "message": "Hello"]
DevnagriSDK.shared.getTranslationOfDictionary(
    dict: jsonDict,
    ignoreKeys: ["id", "userId"], // Don't translate these keys
    callback: { translatedResponse in
        print("Translated JSON: \(translatedResponse)")
    }
)
```

 
### **Refreshes subscription status and configuration from server.** ###

```swift
import DevnagriSdk

DevnagriSDK.shared.refreshSubscriptionDetail()
```

### **Performance tuning methods** ###

```swift
import DevnagriSdk

DevnagriSDK.shared.setMaxRecursionCount(count: 10) //Number of attempt to get the translations if not received.
DevnagriSDK.shared.setRecursionDurationInSeconds(seconds: 30)
```

**How It Works:**
- **setMaxRecursionCount**: Controls maximum retry attempts for API calls
- **setRecursionDurationInSeconds**: Sets delay between retry attempts

