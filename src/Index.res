open Calculator
open Node

let expression = Process.argv->Belt.Array.sliceToEnd(2)->Js.Array2.joinWith("")
let result = Calculator.calculate(expression)

switch result {
| Ok(value) => Js.Console.log(value)
| Error(error) => Js.Console.error(error)
}
