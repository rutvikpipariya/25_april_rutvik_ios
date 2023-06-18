var variable1 : Int? = nil
let defaultvalue: Int = 42

if variable1 == nil {
    variable1 = defaultvalue
}

print(variable1 ?? defaultvalue)
