protocol SimpleProtocol {
    func simpleMethod()
    func anotherMethod(var1: String, var2: Int, var3: Double)
    func returnMethod(_ hello: String) -> String
    func duplicateParam(var1: String)
}

class Mock: SimpleProtocol {
<caret>
}