abstract class Expr {
    def simplifyAll(): Expr = simplifyAll(this)
    def simplifyAll(expr: Expr): Expr =
        expr match {
            case UnOp("-", UnOp("-", e)) =>
                simplifyAll(e)
            case UnOp("abs", e @ UnOp("abs", _)) =>
                simplifyAll(e)
            case BinOp("+", e, Number(0)) =>
                simplifyAll(e)
            case BinOp("*", e, Number(1)) =>
                simplifyAll(e)
            case BinOp("+", x, y) if x == y =>
                simplifyAll(BinOp("*", Number(2), x))
            case UnOp(op, e) =>
                UnOp(op, simplifyAll(e))
            case BinOp(op, l, r) =>
                BinOp(op, simplifyAll(l), simplifyAll(r))
            case _ => expr
        }
}
case class Var(name: String) extends Expr
case class Number(num: Double) extends Expr
case class UnOp(operator: String, arg: Expr) extends Expr
case class BinOp(operator: String, left: Expr, right: Expr) extends Expr
