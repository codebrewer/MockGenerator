import Foundation
import UIKit

class MockOverloadProtocol: OverloadProtocol {

    var invokedSetValueStringForKey = false
    var invokedSetValueStringForKeyCount = 0
    var invokedSetValueStringForKeyParameters: (string: String, key: String)?
    var invokedSetValueStringForKeyParametersList = [(string: String, key: String)]()
    func setValue(_ string: String, forKey key: String) {
        invokedSetValueStringForKey = true
        invokedSetValueStringForKeyCount += 1
        invokedSetValueStringForKeyParameters = (string, key)
        invokedSetValueStringForKeyParametersList.append((string, key))
    }
    var invokedSetValueIntForKey = false
    var invokedSetValueIntForKeyCount = 0
    var invokedSetValueIntForKeyParameters: (int: Int, key: String)?
    var invokedSetValueIntForKeyParametersList = [(int: Int, key: String)]()
    func setValue(_ int: Int, forKey key: String) {
        invokedSetValueIntForKey = true
        invokedSetValueIntForKeyCount += 1
        invokedSetValueIntForKeyParameters = (int, key)
        invokedSetValueIntForKeyParametersList.append((int, key))
    }
    var invokedSetValueString = false
    var invokedSetValueStringCount = 0
    var invokedSetValueStringParameters: (value: String, Void)?
    var invokedSetValueStringParametersList = [(value: String, Void)]()
    func set(value: String) {
        invokedSetValueString = true
        invokedSetValueStringCount += 1
        invokedSetValueStringParameters = (value, ())
        invokedSetValueStringParametersList.append((value, ()))
    }
    var invokedSetValueInt = false
    var invokedSetValueIntCount = 0
    var invokedSetValueIntParameters: (value: Int, Void)?
    var invokedSetValueIntParametersList = [(value: Int, Void)]()
    func set(value: Int) {
        invokedSetValueInt = true
        invokedSetValueIntCount += 1
        invokedSetValueIntParameters = (value, ())
        invokedSetValueIntParametersList.append((value, ()))
    }
    var invokedAnimate = false
    var invokedAnimateCount = 0
    var stubbedAnimateResult: Bool!
    func animate() -> Bool {
        invokedAnimate = true
        invokedAnimateCount += 1
        return stubbedAnimateResult
    }
    var invokedAnimateWithDuration = false
    var invokedAnimateWithDurationCount = 0
    var invokedAnimateWithDurationParameters: (duration: TimeInterval, Void)?
    var invokedAnimateWithDurationParametersList = [(duration: TimeInterval, Void)]()
    func animate(withDuration duration: TimeInterval) {
        invokedAnimateWithDuration = true
        invokedAnimateWithDurationCount += 1
        invokedAnimateWithDurationParameters = (duration, ())
        invokedAnimateWithDurationParametersList.append((duration, ()))
    }
    var invokedAnimateWithDurationDelay = false
    var invokedAnimateWithDurationDelayCount = 0
    var invokedAnimateWithDurationDelayParameters: (duration: TimeInterval, delay: TimeInterval)?
    var invokedAnimateWithDurationDelayParametersList = [(duration: TimeInterval, delay: TimeInterval)]()
    func animate(withDuration duration: TimeInterval, delay: TimeInterval) {
        invokedAnimateWithDurationDelay = true
        invokedAnimateWithDurationDelayCount += 1
        invokedAnimateWithDurationDelayParameters = (duration, delay)
        invokedAnimateWithDurationDelayParametersList.append((duration, delay))
    }
    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (viewControllerToPresent: UIViewController, Void)?
    var invokedPresentParametersList = [(viewControllerToPresent: UIViewController, Void)]()
    func present(_ viewControllerToPresent: UIViewController) {
        invokedPresent = true
        invokedPresentCount += 1
        invokedPresentParameters = (viewControllerToPresent, ())
        invokedPresentParametersList.append((viewControllerToPresent, ()))
    }
    var invokedPresentAnimated = false
    var invokedPresentAnimatedCount = 0
    var invokedPresentAnimatedParameters: (viewControllerToPresent: UIViewController, animated: Bool)?
    var invokedPresentAnimatedParametersList = [(viewControllerToPresent: UIViewController, animated: Bool)]()
    func present(_ viewControllerToPresent: UIViewController, animated: Bool) {
        invokedPresentAnimated = true
        invokedPresentAnimatedCount += 1
        invokedPresentAnimatedParameters = (viewControllerToPresent, animated)
        invokedPresentAnimatedParametersList.append((viewControllerToPresent, animated))
    }
    var invokedPresentFromUIViewController = false
    var invokedPresentFromUIViewControllerCount = 0
    var invokedPresentFromUIViewControllerParameters: (viewControllerToPresent: UIViewController, Void)?
    var invokedPresentFromUIViewControllerParametersList = [(viewControllerToPresent: UIViewController, Void)]()
    func present(from viewControllerToPresent: UIViewController) {
        invokedPresentFromUIViewController = true
        invokedPresentFromUIViewControllerCount += 1
        invokedPresentFromUIViewControllerParameters = (viewControllerToPresent, ())
        invokedPresentFromUIViewControllerParametersList.append((viewControllerToPresent, ()))
    }
    var invokedPresentFromUINavigationController = false
    var invokedPresentFromUINavigationControllerCount = 0
    var invokedPresentFromUINavigationControllerParameters: (viewControllerToPresent: UINavigationController, Void)?
    var invokedPresentFromUINavigationControllerParametersList = [(viewControllerToPresent: UINavigationController, Void)]()
    func present(from viewControllerToPresent: UINavigationController) {
        invokedPresentFromUINavigationController = true
        invokedPresentFromUINavigationControllerCount += 1
        invokedPresentFromUINavigationControllerParameters = (viewControllerToPresent, ())
        invokedPresentFromUINavigationControllerParametersList.append((viewControllerToPresent, ()))
    }
}
