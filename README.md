# SwiftTUI

![swift 5.6](https://user-images.githubusercontent.com/13484323/184016525-cb42a72c-1e2e-4d8d-8777-e7481386377c.svg)
![platform macos](https://user-images.githubusercontent.com/13484323/184016156-817e14dc-24b5-4b46-a4d4-0de9391a37a4.svg)
![platform linux](https://user-images.githubusercontent.com/13484323/184016263-afa5dd0c-8d9a-4fba-91fe-23e892d64cca.svg)

An innovative, exceptionally simple way to build text-based user interfaces.

SwiftTUI brings SwiftUI to the terminal. It provides an API similar to SwiftUI to build terminal applications with a text-based user interface.

![](screenshot.png)

### What is working

SwiftTUI is still in an experimental phase and might not yet be ready to power the next big terminal app. However, there are many things that are working:

✓ Using `VStack`, `HStack`, `ForEach` and `Spacer` to build lists.<br>
✓ Dynamic view content with `if` statements.<br>
✓ Structural identity works in the same way as in SwiftUI.<br>
✓ `Button`, `TextField` and moving focus with the arrow keys.<br>
✓ Static views `Text` and `Color`<br>
✓ Modifiers `.border()`, `.padding()` and `background()`, which are applied to all views in a collection like in SwiftUI.<br>
✓ Using `@State` to store values and invalidate views.

### Getting started

To use SwiftTUI, you need to add the SwiftTUI package dependency. Import SwiftTUI in your files, and write your views like SwiftUI views with the supported features. Then, start the terminal application using one of your views as the root view. This is the easiest SwiftTUI app you can write:

```swift
import SwiftTUI

struct MyTerminalView: View {
  var body: some View {
    Text("Hello, world!)
  }
}

Application(rootView: MyTerminalView()).start()
```

Check out the Examples directory for more examples.

### More

See a screen recording of SwiftTUI [in action](https://www.reddit.com/r/SwiftUI/comments/wlabyn/im_making_a_version_of_swiftui_for_terminal/) on Reddit.
