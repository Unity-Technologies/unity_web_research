struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : f32;
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
  vs_COLOR0 = x_83;
  let x_89 : vec2<f32> = in_TEXCOORD0;
  let x_92 : vec4<f32> = x_17.x_MainTex_ST;
  let x_96 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD1 = ((x_89 * vec2<f32>(x_92.x, x_92.y)) + vec2<f32>(x_96.z, x_96.w));
  let x_103 : f32 = u_xlat1.z;
  let x_106 : f32 = x_17.x_ProjectionParams.y;
  u_xlat2 = (x_103 / x_106);
  let x_108 : f32 = u_xlat2;
  u_xlat2 = (-(x_108) + 1.0f);
  let x_112 : f32 = u_xlat2;
  let x_114 : f32 = x_17.x_ProjectionParams.z;
  u_xlat2 = (x_112 * x_114);
  let x_116 : f32 = u_xlat2;
  u_xlat2 = max(x_116, 0.0f);
  let x_119 : f32 = u_xlat2;
  let x_123 : f32 = x_17.unity_FogParams.x;
  u_xlat2 = (x_119 * x_123);
  let x_125 : f32 = u_xlat2;
  let x_126 : f32 = u_xlat2;
  u_xlat2 = (x_125 * -(x_126));
  let x_131 : f32 = u_xlat2;
  vs_TEXCOORD0 = exp2(x_131);
  let x_135 : f32 = u_xlat0.y;
  let x_137 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat3 = (x_135 * x_137);
  let x_140 : f32 = x_17.unity_MatrixV[0i].z;
  let x_142 : f32 = u_xlat0.x;
  let x_144 : f32 = u_xlat3;
  u_xlat0.x = ((x_140 * x_142) + x_144);
  let x_148 : f32 = x_17.unity_MatrixV[2i].z;
  let x_150 : f32 = u_xlat0.z;
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_148 * x_150) + x_153);
  let x_157 : f32 = x_17.unity_MatrixV[3i].z;
  let x_160 : f32 = u_xlat0.w;
  let x_163 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_157 * x_160) + x_163);
  let x_168 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_168);
  let x_172 : f32 = u_xlat1.y;
  let x_174 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_172 * x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.w = (x_178 * 0.5f);
  let x_182 : vec4<f32> = u_xlat1;
  let x_185 : vec2<f32> = (vec2<f32>(x_182.x, x_182.w) * vec2<f32>(0.5f, 0.5f));
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_185.x, x_186.y, x_185.y, x_186.w);
  let x_188 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat0;
  let x_192 : vec2<f32> = (vec2<f32>(x_188.z, x_188.z) + vec2<f32>(x_190.x, x_190.w));
  let x_193 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_192.x, x_192.y, x_193.z, x_193.w);
  let x_196 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec2<f32> = ((vec2<f32>(x_196.x, x_196.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(x_201.z, x_201.z));
  let x_204 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_203.x, x_203.y, x_204.z, x_204.w);
  let x_207 : f32 = u_xlat1.w;
  vs_TEXCOORD3.w = x_207;
  let x_209 : vec4<f32> = u_xlat1;
  let x_210 : vec2<f32> = vec2<f32>(x_209.z, x_209.w);
  let x_211 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_211.x, x_211.y, x_210.x, x_210.y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD0_1 : f32,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD4);
}

