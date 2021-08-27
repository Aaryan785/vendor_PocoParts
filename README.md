# Poco Parts
Add in **device.mk** or **common.mk**:
```makefile
$(call inherit-product-if-exists, vendor/PocoParts/pocoparts.mk)

Add to the top of the **init.qcom.rc** or other **init.rc**:
import /vendor/etc/init/hw/init.pocoparts.rc
```
### Dirac/MI Sound Enhancer

Add this to your **audio_effects.xml**
```xml
     <library name="dirac" path="libdirac.so"/>
     <effect name="dirac" library="dirac" uuid="e069d9e0-8329-11df-9168-0002a5d5c51b"/>
```
### Dependencies
Add this in your **$rom.dependencies**:
```
{
   "repository":   "dotOS-Devices/vendor_PocoParts",
   "target_path":  "vendor/PocoParts",
   "remote":       "github",
   "branch":       "dot11"
}
```

# Kernel Necessary commits

[High Touch Polling Rate](https://github.com/Surya-Project/kernel_xiaomi_surya/commit/ebfe5c01f9dee1189c032d61a91ab21805cf6cf0)

[Kcal-1](https://github.com/Test-Roms/android_kernel_xiaomi_surya/commit/7f2c0571b403de4eccb16474f85ae5beb6bd52f4)
[Kcal-2](https://github.com/Test-Roms/android_kernel_xiaomi_surya/commit/2e0d80a02317c4a664d7a55d6011a113f18171e4)

[USB 2.0 FastCharge](https://github.com/redcliff-op/android_kernel_xiaomi_phoenix/commit/329a2ad65318d8adfcb17d428b809cebcf27b62f)

[Vibrator Control](https://github.com/Surya-Project/kernel_xiaomi_surya/commit/9886587fe3190e5ddf8399c63c36a4267b9a9fdf)
