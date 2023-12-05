//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 c1;
uniform vec4 c2;
uniform vec4 c3;

uniform vec4 p1;
uniform vec4 p2;
uniform vec4 p3;

void main()
{
    vec4 sampleColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = sampleColor;
	if (sampleColor == p1) {gl_FragColor = c1;}
	if (sampleColor == p2)
	{
		gl_FragColor = c2;
	}
	if (sampleColor == p3)
	{
		gl_FragColor = c3;
	}
}
