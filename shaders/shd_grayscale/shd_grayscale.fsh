//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = texColor.r * 0.2125 + texColor.g * 0.7154 + texColor.b * 0.0721;
    gl_FragColor = v_vColour * vec4(gray, gray, gray, texColor.a);
}
