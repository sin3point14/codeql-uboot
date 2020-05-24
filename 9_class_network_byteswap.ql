
import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation invoke |
      invoke.getMacroName().regexpMatch("(ntohs|ntohl|ntohll)") | invoke.getExpr() = this
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 