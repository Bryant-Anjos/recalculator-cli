@genType
let operations = {
  "+": ((num1, num2)) => Ok(num1 +. num2),
  "-": ((num1, num2)) => Ok(num1 -. num2),
  "*": ((num1, num2)) => Ok(num1 *. num2),
  "^": ((num1, num2)) => Ok(num1 ** num2),
  "/": numbers =>
    switch numbers {
    | (_, 0.0) => Error("Cannot divide a number by 0")
    | (num1, num2) => Ok(num1 /. num2)
    },
}
