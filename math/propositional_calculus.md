# Propositional Calculus

The _propositional calculus_ defines the rules for manipulating
_propositions_.  A proposition is a statement that is either _true_
or _false_.  We use capital Roman letters (_propositional variables_)
to represent propositions.

New propositions can be formed using the _logical connectives_: _not_,
_and_, _or_, _implies_.  

## Connectives

If _P_ is a proposition then _not_ _P_, written &Not; _P_, is true
when _P_ is false and false when _P_ is true.

If _P_ and _Q_ are propositions then _P_ and _Q_, written _P_ &and; _Q_, is true when both _P_ 
and _Q_ are true, otherwise it is false.

These, and the connecitves 'or' and 'implies', can be summarized by a _truth table_:

| _P_ | _Q_ | &Not; _P_ | _P_ &and; _Q_ | _P_ &or; _Q_ | _P_ &rArr; _Q_ |
| :---: | :---:| :---:| :---:| :---:| :---: |
| T | T | F | T | T | T |
| T | F | F | F | T | F |
| F | T | T | T | T | T |
| F | F | T | F | F | T |

<!-- redundancy -->

<!-- oddness of 'implies' -->

Truth tables can be used to show the equivalence of propositions.

## Well-Formed Formula

 1. Propositional variables are well-formed.
 2. If '_P_' is well-formed then '(&Not; _P_)' is well-formed
 3. If '_P_' and '_Q_' are well-formed then '(_P_ &and; _Q_)', '(_P_
 &or; _Q_)',(_P_ &implies; _Q_), are well formed
 4. There are no other well-formed propositions.

<!-- write a program to detect wffs? -->

<!-- notes about parentheses -->

<!-- notes about rpn -->

<!-- notes about functions -->

## Boolean Algebra

Propositional logic can be reduced to Boolean algebra.
