open Jest
open Expect

describe("Operations", () => {
  open Operations

  test("should add 7 and 3 to return 10", () => {
    let operation = operations["+"]
    (7.0, 3.0) |> operation |> expect |> toEqual(Ok(10.0))
  })

  test("should subtract 7 and 3 to return 4", () => {
    let operation = operations["-"]
    (7.0, 3.0) |> operation |> expect |> toEqual(Ok(4.0))
  })

  test("should multiply 7 and 3 to return 21", () => {
    let operation = operations["*"]
    (7.0, 3.0) |> operation |> expect |> toEqual(Ok(21.0))
  })

  test("should power 7 and 3 to return 21", () => {
    let operation = operations["^"]
    (7.0, 3.0) |> operation |> expect |> toEqual(Ok(343.0))
  })

  test("should divide 15 and 3 to return 5", () => {
    let operation = operations["/"]
    (15.0, 3.0) |> operation |> expect |> toEqual(Ok(5.0))
  })

  test("should return an error dividing a number by 0", () => {
    let operation = operations["/"]
    (15.0, 0.0) |> operation |> expect |> toEqual(Error("Cannot divide a number by 0"))
  })
})
