#Pluggable Administration View
This package contains a plugin based administration view for any Meteor application.  This is the base package that all other admin packages are based off of.

## Configuration
The package automatically adds an `/admin` route to your application. Within this route is a two column interface. On the left are the lozenges for the installed administration views. On the right is the content area for the administration views.

Each administration package should contain code that registers the view and any other views that the package needs to fulfill its function.

For example:

```
AdminView.add
  moduleName: 'myAccountsPackage'
  displayName: 'Accounts'
  icon: 'fa-users'
  template: 'myAccounts'

```

### Methods
There are two exposed methods for the `AdminView`.

 - add
 - set


#### AdminView.add

The `AdminView.add` method takes one object that contains four(4) options.

 - moduleName
 - displayName
 - icon
 - template
 
##### moduleName
This is the name of the module you are adding to the administration view. This should be unique. The system will tell you in the server console if the module you are adding already exists.

##### displayName
This is the text you want displayed in the button that is in the column along the left side of the administration interface.

##### icon
This is the font awesome icon that is to the left of the displayName text.

##### template
This is the initial template that will be displayed when the button for the package is clicked.

#### AdminView.set
The `AdminView.set` method takes one string argument. This string is the name of the template you wish displayed in the content area of the administration interface. This allows you to have multiple template views for your package.


---
## License
The MIT License (MIT)

Copyright &copy; 2014 D. Allen Morrigan

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Donating
By donating you are supporting this package and its developer so that he may continue to bring you updates to this and other software he maintains.

[![Support us via Gittip][gittip-badge]][digilord]

[gittip-badge]: https://rawgithub.com/digilord/gittip-badge/master/dist/gittip.png
[digilord]: https://www.gittip.com/digilord/

[![endorse](https://api.coderwall.com/digilord/endorsecount.png)](https://coderwall.com/digilord)