# IOS Feedback

Feedback is a package that requests the user feedback on the AppStore.

Simple library for asking the user to rate your App on AppStore. Here is a short demo of how it can be used:

- Request Rating

```swift
ManagerRating.requestRating()
```

- Request Rating

```swift
ManagerRating.requestRatingIfNeeded(event: "requestRating", times: [1, 3]) {
    // completion
}
```

In this example, the parameter *times* is set with *[1,3]*, so the App is going request rating on the first and third time the App launches. 

It will call the optional completion everytime it requests rating. 

This method also have a *event* parameter thar is going to be the name used to store local info about how many times the App opened.
