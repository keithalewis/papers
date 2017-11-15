# Object Conversion

The purpose of this note is to describe a data driven approach to
describing object conversion. (Various approaches at Bloomberg:
Object Converter? bcimsgcnv, Gnet).

In _The Wealth of Nations_ Adam Smith pointed out how division of labor
can increase efficiency:

> The greatest improvement in the productive powers of labour, and the greater part of the skill, dexterity, and judgment with which it is any where directed, or applied, seem to have been the effects of the division of labour. 

> This great increase of the quantity of work which, in consequence of the division of labour, the same number of people are capable of performing, is owing to three different circumstances; first to the increase of dexterity in every particular workman; secondly, to the saving of the time which is commonly lost in passing from one species of work to another; and lastly, to the invention of a great number of machines which facilitate and abridge labour, and enable one man to do the work of many.

He lived long before Fred Brooks, but the same general principles still
hold in software production. Provide training on how to use tools,
minimize distractions, and automate.

Fortunately, most of the data we work with has a uniform format.
This makes it possible to provide domain experts with a simple way of
describing their knowledge that can be converted to executable code.

## Values, Scalars, Arrays, Objects

A _value_ is either a _scalar type_, _array_, or an _object_.

A scalar type is any of a fixed list of primitive value types such as
`int`, `double`, `Datetime`, etc.

An array is a vector/list of values.

An object is a set/container of key-value pairs, where keys are strings.

Mathematically, a value is $V = S + A + O$ where $S$ is a sum/variant
type $S = S_1 + \dots$ and the $S_j$ are primitive value types, $A =
V^*$ is 0 or more values, and $O$ is a set of elements from the Cartesian
product $K\times V$.

Objects can also be considered as partial functions from $K$ to $V$.

_Object conversion_ is simply a function from one type of object
to another.



