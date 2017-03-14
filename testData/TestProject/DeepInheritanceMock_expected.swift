protocol DeepestCousinProtocol {
    func deepestCousin()
}

protocol DeepestSiblingProtocol {
    func deepestSibling()
}

protocol DeepestProtocol {
    func deepest()
}

protocol MiddleProtocolSibling1: DeepestCousinProtocol {
    func middleSibling1()
}

protocol MiddleProtocolSibling2 {
    func middleSibling2()
}

protocol MiddleProtocol: DeepestProtocol, DeepestSiblingProtocol {
    func middle()
}

protocol TopMostSiblingProtocol {
    func topSibling()
}

protocol TopMostProtocol: MiddleProtocol, MiddleProtocolSibling1, MiddleProtocolSibling2 {
    func topMost()
}

class Mock: TopMostProtocol, TopMostSiblingProtocol {

    var invokedTopMost = false
    func topMost() {
        invokedTopMost = true
    }
    var invokedTopSibling = false
    func topSibling() {
        invokedTopSibling = true
    }
    var invokedMiddle = false
    func middle() {
        invokedMiddle = true
    }
    var invokedMiddleSibling1 = false
    func middleSibling1() {
        invokedMiddleSibling1 = true
    }
    var invokedMiddleSibling2 = false
    func middleSibling2() {
        invokedMiddleSibling2 = true
    }
    var invokedDeepest = false
    func deepest() {
        invokedDeepest = true
    }
    var invokedDeepestSibling = false
    func deepestSibling() {
        invokedDeepestSibling = true
    }
    var invokedDeepestCousin = false
    func deepestCousin() {
        invokedDeepestCousin = true
    }
}