# TypeScript

[TypeScript](http://www.typescriptlang.org)
is a strict superset of ECMAScript 2015 that allows you to express type
constraints using interfaces and classes, and create
static or dynamically loadable modules.
It generates portable, and readable,
JavaScript (EC3 or EC5) code.

It can also be used with existing code to ensure type safety.
[DefinitelyTyped](http://definitelytyped.org/) maintains
definition files for many popular JavaScript packages.

Anders Hejlsberg was involved with creating TypeScript at Microsoft
so you will see C# influnences.  This short note is meant for
experienced developers and is not a substitute for the excelent
[Tutorial](http://www.typescriptlang.org/docs/tutorial.html).

## Types

Types are first class objects in TypeScript.
The expression `name:T` indicates variable `name` has type `T`.
The _primitive types_ are `number`, `string`, `boolean`,
`array`, `any`, `void`, and `enum`.

_Object types_ are syntactically similar
to JSON objects with keys being variable names and values
being types. They can be recursive, just like JSON objects.
Optional variables are denoted by `name?:T`.
Object types are compared _structurally_.  A subtype contains all the
variable names and corresponding types that are in the supertype.

## Interface and Class
An `interface` is a named object type. A `class` that `implements` an
interface must declare all the variables using the same types as the
interface. If not, this will result in a compile time error.  Note that
the generated JavaScript is still JavaScript. If you want to do runtime
type checking you must put in the usual type guards.

Prototypical inheritence occurs when a class `extends` an existing class.

## Namespace and Module
A `namespace` is a mechanism to avoid name collisions.
Variables, functions, and classes must be preceded by the key word
`export` in order to be visible outside the namespace. They
can be accessed with the namespace name using dot notation.

TypeScript also supports ECMAScript 2015 modules and the TypeScript
compiler can emit ES3 or ES5 compliant code for the usual menagerie
of module loading systems: CommonJS, AMD, and UMD.

## Generic Programming
Both functions and classes can be parameterized by types. These generic
types can be constrained to `extend` another type.

See [?](?) for an example of the power of this.

## TypeScript and RAPID
The latest versions of RDE support TypeScript and ECMAScript 6.

To install...

To use...

## Notes on Types
A _type_ is a set. The type `number` in JavaScript is the set
of all 64-bit representations of IEEE 754 floating point numbers
and the type `void` is the empty set. The `any` type is not
the set of all sets however. It is the set of all values that
can be represented in JavaScript.

Union and intersection types.
