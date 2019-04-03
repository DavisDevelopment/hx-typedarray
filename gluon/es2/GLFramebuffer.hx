package gluon.es2;

private typedef InternalGLFramebuffer =
	#if lime
		lime.graphics.opengl.GLFramebuffer;
	#elseif js
		js.html.webgl.Framebuffer;
	#else
		GLContext.GLuint;
	#end

@:notNull enum abstract GLFramebuffer(InternalGLFramebuffer) from InternalGLFramebuffer to InternalGLFramebuffer {
	var NONE = #if js null #else 0 #end;
}