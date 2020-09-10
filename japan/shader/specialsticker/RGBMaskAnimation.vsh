
attribute vec4 a_position;
attribute vec2 a_texCoord;
attribute vec4 a_color;

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
#ifdef GL_ES
varying highp float animationTime;
#else
varying float animationTime;
#endif

void main()
{
    v_fragmentColor = a_color;
    v_texCoord = a_texCoord;
    // animationTimeは0.0 ~ 50.0の間をループする
    animationTime = fract(0.02 * CC_Time.y) * 50.0;
    gl_Position = CC_PMatrix * a_position;
}
