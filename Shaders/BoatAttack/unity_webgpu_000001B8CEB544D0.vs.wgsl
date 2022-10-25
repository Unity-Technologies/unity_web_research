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

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
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
  let x_105 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1 = x_105;
  let x_107 : vec4<f32> = x_17.x_ScreenParams;
  let x_110 : vec4<f32> = x_17.glstate_matrix_projection[1i];
  let x_112 : vec2<f32> = (vec2<f32>(x_107.y, x_107.y) * vec2<f32>(x_110.x, x_110.y));
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_116 : vec4<f32> = x_17.glstate_matrix_projection[0i];
  let x_119 : vec4<f32> = x_17.x_ScreenParams;
  let x_122 : vec4<f32> = u_xlat0;
  let x_124 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_119.x, x_119.x)) + vec2<f32>(x_122.x, x_122.y));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_125.z, x_125.w);
  let x_127 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat0;
  let x_132 : vec2<f32> = (vec2<f32>(x_127.w, x_127.w) / abs(vec2<f32>(x_129.x, x_129.y)));
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_132.x, x_132.y, x_133.z, x_133.w);
  let x_138 : f32 = x_17.x_UIMaskSoftnessX;
  let x_141 : f32 = x_17.x_UIMaskSoftnessY;
  let x_146 : vec4<f32> = u_xlat0;
  let x_149 : vec2<f32> = ((vec2<f32>(x_138, x_141) * vec2<f32>(0.25f, 0.25f)) + abs(vec2<f32>(x_146.x, x_146.y)));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_150.w);
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / vec2<f32>(x_153.x, x_153.y));
  let x_156 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_156.x, x_156.y, x_155.x, x_155.y);
  let x_160 : vec4<f32> = x_17.x_ClipRect;
  u_xlat0 = max(x_160, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_164, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_168 : vec4<f32> = in_POSITION0;
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec2<f32> = ((vec2<f32>(x_168.x, x_168.y) * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_173.x, x_173.y)));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec2<f32> = (-(vec2<f32>(x_179.z, x_179.w)) + vec2<f32>(x_182.x, x_182.y));
  let x_185 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_184.x, x_184.y, x_185.z, x_185.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0);
}

