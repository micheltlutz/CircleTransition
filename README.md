# CircleTransition - Swift 4.2


<p align="center">
  <img src="/Docs/CircleTransition.gif">
</p>



# How to use?

## Sign the protocol UIViewControllerTransitioningDelegate

```swift
extension ViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
}

```
