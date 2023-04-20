diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(144) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(208) */
  x_TintColor : vec4<f32>,
  /* @offset(224) */
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : f32;

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
  u_xlat1 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_78 : vec4<f32> = u_xlat1;
  gl_Position = x_78;
  let x_83 : vec4<f32> = in_COLOR0;
  let x_86 : vec4<f32> = x_17.x_TintColor;
  vs_COLOR0 = (x_83 * x_86);
  let x_93 : vec2<f32> = in_TEXCOORD0;
  let x_96 : vec4<f32> = x_17.x_MainTex_ST;
  let x_100 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_93 * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(x_100.z, x_100.w));
  let x_106 : f32 = u_xlat0.y;
  let x_110 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2 = (x_106 * x_110);
  let x_113 : f32 = x_17.unity_MatrixV[0i].z;
  let x_116 : f32 = u_xlat0.x;
  let x_118 : f32 = u_xlat2;
  u_xlat0.x = ((x_113 * x_116) + x_118);
  let x_122 : f32 = x_17.unity_MatrixV[2i].z;
  let x_124 : f32 = u_xlat0.z;
  let x_127 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_122 * x_124) + x_127);
  let x_131 : f32 = x_17.unity_MatrixV[3i].z;
  let x_134 : f32 = u_xlat0.w;
  let x_137 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_131 * x_134) + x_137);
  let x_142 : f32 = u_xlat0.x;
  vs_TEXCOORD2.z = -(x_142);
  let x_147 : f32 = u_xlat1.y;
  let x_149 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_147 * x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.w = (x_153 * 0.5f);
  let x_157 : vec4<f32> = u_xlat1;
  let x_160 : vec2<f32> = (vec2<f32>(x_157.x, x_157.w) * vec2<f32>(0.5f, 0.5f));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_161.y, x_160.y, x_161.w);
  let x_164 : f32 = u_xlat1.w;
  vs_TEXCOORD2.w = x_164;
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec2<f32> = (vec2<f32>(x_166.z, x_166.z) + vec2<f32>(x_168.x, x_168.w));
  let x_171 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
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


