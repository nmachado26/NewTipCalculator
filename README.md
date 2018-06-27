Project 1 - TipCalculator
TipCalculator is a tip calculator application for iOS.

Submitted by: Nicolas Machado

Time spent: 6 hours spent in total

User Stories
The following required functionality is complete:

[ YES] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
The following optional features are implemented:

[YES] Settings page to change the default tip percentage.
[YES] UI animations
Remembering the bill amount across app restarts (if <10mins)
Using locale-specific currency and currency thousands separators.
[YES] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
The following additional features are implemented:

List anything else that you can get done to improve the app functionality!
[YES] Animation and motion of labels
[YES] Unecessary information disappears when typing in bill, then appears again.
Video Walkthrough
Here's a walkthrough of implemented user stories:

Video Walkthrough


<img src='https://i.imgur.com/kaHZPLX.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />


GIF created with [LiceCap](http://www.cockos.com/licecap/).
https://imgur.com/a/MLEgHXg

GIF created with LiceCap.

Notes
Describe any challenges encountered while building the app. I had a challenge using NSDefault and retaining the value in the key. Also, working with the timeline of the app was difficult. I need to study viewdidappear, viewdidload, etc, to see how the app works and which of these methods are ran at what point. I was not able to set a default value, but did create the settings screen. I am not sure why the value was not retained, as my code seems logical to me. I will review this and ask instructors tomorrow about this.

Credits
List an 3rd party libraries, icons, graphics, or other assets you used in your app.

AFNetworking - networking task library
License
Copyright [2018] [Nicolas Machado]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
