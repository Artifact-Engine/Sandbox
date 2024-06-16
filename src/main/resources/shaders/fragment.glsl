#version 330 core

layout(location = 0) out vec4 a_Color;

in vec3 v_Position;
in vec3 v_Color;
in vec3 v_Normal;
in vec2 v_TexCoord;

uniform vec3 u_Light_Pos;
uniform vec3 u_Light_Color;

uniform sampler2D sampler;

void main() {
    vec3 texColor = texture(sampler, v_TexCoord).rgb;

    /*
    float ambientStrength = 0.1;
    vec3 ambient = ambientStrength * u_Light_Color;

    vec3 norm = normalize(v_Normal);
    vec3 lightDir = normalize(u_Light_Pos - v_Position);

    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * u_Light_Color;

    vec3 result = (ambient + diffuse) * texColor;
    a_Color = vec4(result * v_Color, 1.0);
    */
    a_Color = vec4(texColor, 1.0);
}
