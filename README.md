## 关于

- 颜色扩展类，用于16进制字符串转颜色color

## 需求

- iOS 8.0+
- Xcode 9.0+
- Swift 4.0+

## 安装

### CocoaPods

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
pod 'ColorClass'
end
```
## 用法

```swift
import UIColor+ColorChange

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.colorWithHexString("FFFFFF")
    }

}
```
