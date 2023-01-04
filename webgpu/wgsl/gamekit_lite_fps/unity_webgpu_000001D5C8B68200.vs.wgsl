struct VGlobals {
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Color : vec4<f32>,
  x_ClipRect : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_UIMaskSoftnessX : f32,
  x_UIMaskSoftnessY : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(3) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_78 : vec4<f32> = u_xlat0;
  gl_Position = x_78;
  let x_83 : vec4<f32> = in_COLOR0;
  let x_86 : vec4<f32> = x_17.x_Color;
  vs_COLOR0 = (x_83 * x_86);
  let x_93 : vec2<f32> = in_TEXCOORD0;
  let x_96 : vec4<f32> = x_17.x_MainTex_ST;
  let x_100 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_93 * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(x_100.z, x_100.w));
  let x_104 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1 = x_104;
  let x_106 : vec4<f32> = x_17.x_ScreenParams;
  let x_109 : vec4<f32> = x_17.glstate_matrix_projection[1i];
  let x_111 : vec2<f32> = (vec2<f32>(x_106.y, x_106.y) * vec2<f32>(x_109.x, x_109.y));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_115 : vec4<f32> = x_17.glstate_matrix_projection[0i];
  let x_118 : vec4<f32> = x_17.x_ScreenParams;
  let x_121 : vec4<f32> = u_xlat0;
  let x_123 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(x_118.x, x_118.x)) + vec2<f32>(x_121.x, x_121.y));
  let x_124 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat0;
  let x_131 : vec2<f32> = (vec2<f32>(x_126.w, x_126.w) / abs(vec2<f32>(x_128.x, x_128.y)));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_137 : f32 = x_17.x_UIMaskSoftnessX;
  let x_140 : f32 = x_17.x_UIMaskSoftnessY;
  let x_145 : vec4<f32> = u_xlat0;
  let x_148 : vec2<f32> = ((vec2<f32>(x_137, x_140) * vec2<f32>(0.25f, 0.25f)) + abs(vec2<f32>(x_145.x, x_145.y)));
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_148.x, x_148.y, x_149.z, x_149.w);
  let x_152 : vec4<f32> = u_xlat0;
  let x_154 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / vec2<f32>(x_152.x, x_152.y));
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_155.x, x_155.y, x_154.x, x_154.y);
  let x_159 : vec4<f32> = x_17.x_ClipRect;
  u_xlat0 = max(x_159, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_163, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_167 : vec4<f32> = in_POSITION0;
  let x_172 : vec4<f32> = u_xlat0;
  let x_175 : vec2<f32> = ((vec2<f32>(x_167.x, x_167.y) * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_172.x, x_172.y)));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
  let x_178 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = u_xlat0;
  let x_183 : vec2<f32> = (-(vec2<f32>(x_178.z, x_178.w)) + vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD2);
}

