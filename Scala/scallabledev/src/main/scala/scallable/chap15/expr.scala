abstract class Expr {
    def simplifyTop(expr: Expr) =
        expr match {
            case UnOp("-", UnOp("-", e)) => e
            case UnOp("abs", e @ UnOp("abs", _)) => e
            case BinOp("+", e, Number(0)) => e
            case BinOp("*", e, Number(1)) => e
            case BinOp("+", x, y) if x == y => BinOp("*", Number(2), x)
            case _ => expr
        }
}
case class Var(name: String) extends Expr
case class Number(num: Double) extends Expr
case class UnOp(operator: String, arg: Expr) extends Expr
case class BinOp(operator: String, left: Expr, right: Expr) extends Expr
