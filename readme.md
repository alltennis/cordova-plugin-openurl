# Cordova OpenURL Plugin
This plugin allows you to open a URL.

## Installation ##
```javascript
  cordova plugin add https://github.com/alltennis/cordova-plugin-openurl.git --variable URL_SCHEME=abc123
```


## Usage ##
```javascript
  window.openURL.open(successCallback, errorCallback, 'prefs:root=General');
  window.openURL.open(successCallback, errorCallback, 'UIApplicationOpenSettingsURLString');
```


## More information ##
* Author: Rand Dusing
* Website: http://www.randdusing.com/
* Email: <randdusing@gmail.com>
* Facebook: https://www.facebook.com/randdusing
* LinkedIn: https://www.linkedin.com/in/randdusing
* Twitter: https://twitter.com/randdusing

## License ##
The MIT License (MIT)

Copyright (c) 2016 Rand Dusing and contributors.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
