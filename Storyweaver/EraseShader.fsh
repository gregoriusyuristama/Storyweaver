uniform vec2 u_erasePosition;

void main() {
    vec4 color = texture2D(u_texture, v_tex_coord);
    float distance = distance(u_erasePosition, v_tex_coord);
    float alpha = smoothstep(0.0, 0.03, distance);
    gl_FragColor = vec4(color.rgb, color.a * (1.0 - alpha));
}
