uniform mat4	ciModelViewProjection;
uniform mat3	ciNormalMatrix;

attribute vec4		ciPosition;
attribute vec3		ciNormal;
attribute vec4		ciColor;
varying lowp vec4	Color;
varying highp vec3	Normal;

void main( void )
{
	gl_Position	= ciModelViewProjection * ciPosition;
	Color 		= ciColor;
	Normal		= ciNormalMatrix * ciNormal;
}
