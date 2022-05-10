# iOS SDK Installation Instructions
Learn how to install the Devnagri SDK for iOS.

# Introduction
Devnagri Over the Air for iOS lets you update translations in your iOS app without having to release it every single time.

By including our SDK, your app will check for updated translations in Devnagri regularly and download them in the background.

You can install the SDK manually.

# Manual Installation
Download the latest release from https://github.com/DevnagriAI/dota-sdk-ios/releases 
Add DevnagriSdk.xcframework in Xcode as linked binary to your target.

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
We support latest Xcode 13+ and swift 5 (5.5) Version. This SDK requires base language as english. Other base language will not supported by this SDK

# Configuration

        import DevnagriSdk

Initialize the SDK by calling the following code in your didFinishLaunchingWithOptions Method and you can get API_KEY from devnagri

*updateStringTime* is an optional parameter 
For auto update strings translations you can set time in minutes.

     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         DevnagriSDK.shared.initSdk(apiKey:String, updateStringsTime:Int)
     }
     
# Default Localisation Override
   The SDK override the functionality of NSLocalisedString by default. You just need to import the DevnagriSdk to the file where you want NSLocalisedString to be override by the SDK.
   
# Change Language
In case you don't want to use the system language, you can set a different language in the updateAppLocale method. The language code (locale) needs to be present in a release from Devnagri.

      DevnagriSDK.shared.updateAppLocale(code: "hi")
      
  Please note that you will see the english text back if your device language is english and you have not set any specific language for the SDK. To get the translation in Hindi, Please update app locale to Hindi as per above method.
  
# Get Current language code
In case you want to know which language code currently used by application.

     let currentLanguageCode = DevnagriSDK.shared.getCurrentApplicationLanguageCode()

# Update Translations
In case you want to update all english localisation strings translations to supported language.  

    DevnagriSDK.shared.updateTranslations()

# Refresh Subscription Details
if you want to refresh sdk subscription details. 

    DevnagriSDK.shared.refreshSubscriptionDetail()
    
# Get Supported Languages
You can get supported languages for the SDK using this method. This will return hashmap of language name and language code

      DevnagriSDK.shared.getAllSupportableLanguage{ arrOfLanguage in
            //do your stuff here ...
      } 
 
# Translate String, List and Dictionary on runtime
You can use these methods anywhere in your project and these will provide translation for current active locale in callback method.

    Get Translation of a Specific String

      DevnagriSDK.shared.getTranslationOfString(sentence : "Hello"){ translatedString in
        //Do your stuff at here....
      }

Get Translations of an Array of Strings.

      let arrayOfStrings:[String] = ["SampleText1","SampleText2","SampleText3"];
      DevnagriSDK.shared.getTranslationsOfStrings(sentences : arrayOfStrings){translatedStrings
        //Do your stuff at here....
      }

Get Translations Of Dictionary

       let dicOfStrings:[String:String] = ["A":"SampleText1", "B":"SampleText2", "C":"SampleText3"];
       DevnagriSDK.shared.getTranslationOfDictionary(dictionary:[“Key1”:”Value1”, “Key2”:”Value 2”]){translatedDictionary in
        //Do your stuff at here....
        }

# Usage

Select project target and click general select in framework,libraries,and Embedded Content and select *DevnagriSdk.xcframwork* if not selected 
than choose **Embed -> Embed & Sign.**

