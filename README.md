# Gluon
** This library is under active development and changing a lot, not yet ready to use in your codebase **

- Haxe OpenGL interface, enabling unified OpenGL API for haxe targets
- It currently supports the js target out of the box and C++ target via lime. The aim to support eventually support cpp and hl out of the box
- Abstracts only (so no runtime overhead)
- Abstract enums are used to improve OpenGL API typing, for example:
	`enable(cap:GLenum)`
	becomes
	`enable(cap:Capability)`
	and the compiler can autocomplete valid constants.

	Which means fewer trips to the OpenGL specification :)

### Design Goals
- Dependency free and minimalistic

### Versions
Gluon aims to execute with parity across platforms, consequently, it's usually bounded by the WebGL feature set (which tracks OpenGL ES closely)

| Gluon     | WebGL     | OpenGL |
|-----------|-----------|--------|
| es2       | WebGL 1.0 | ES 2.0 |