This project isn't really meant to be built upon. Rather, it is a terribly incomplete and ill-considered clone of Apache Cordova (nee PhoneGap) to demonstrate the mechanism by which Cordova allows communication between an ios application and a html-based webapp running in a UIWebView.

PhoneGap is a lot more sophisticated, of course, and it brings a lot more to the table than the communication channel that is demonstrated here. For example, it uses an event queue to pass stuff back and forth rather than just stuffing everything into an URL. More importantly, it provides the same Javascript API across a wide range of mobile platforms, so that your app can be, at least on the happy path, easily ported to all of those platforms.

My aims here are purely educational...a way to show that at the bottom of everything, the Cordova strategy is really a wrapper for two API calls, at least on iOS. I hope this will serve to make it easier for my colleagues and clients to understand what is going on behind the curtain.

Please keep in mind that when you open up the cocoa stuff to your webapp, you are opening it up to *all* of the code that runs in your webapp, even code from the innerwebs that you download and run, if your application happens to do that. So be careful! Objective-C allows dynamic invocation, so if you are not careful, malicious code can do whatever it wants with your user's data in a sandbox that has your digital signature on it. 
