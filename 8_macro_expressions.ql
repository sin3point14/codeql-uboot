

import cpp

from MacroInvocation invoke
where invoke.getMacroName().regexpMatch("(ntohs|ntohl|ntohll)")
select invoke.getExpr()