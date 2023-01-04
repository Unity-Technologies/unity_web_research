struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat0;
  gl_Position = x_92;
  let x_97 : vec3<f32> = in_NORMAL0;
  let x_100 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_97, vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_106, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_112 : vec3<f32> = in_NORMAL0;
  let x_114 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_112, vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_125);
  let x_127 : f32 = u_xlat10;
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = (vec3<f32>(x_127, x_127, x_127) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_135.x, x_135.y, x_135.z);
  let x_139 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_139;
  let x_145 : vec2<f32> = in_TEXCOORD0;
  let x_148 : vec4<f32> = x_17.x_MainTex_ST;
  let x_152 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_145 * vec2<f32>(x_148.x, x_148.y)) + vec2<f32>(x_152.z, x_152.w));
  let x_156 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.y;
  u_xlat10 = (x_156 * x_158);
  let x_161 : f32 = u_xlat1.x;
  let x_163 : f32 = u_xlat1.x;
  let x_165 : f32 = u_xlat10;
  u_xlat10 = ((x_161 * x_163) + -(x_165));
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_169.y, x_169.z, x_169.z, x_169.x) * vec4<f32>(x_171.x, x_171.y, x_171.z, x_171.z));
  let x_175 : vec4<f32> = x_17.unity_SHBr;
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_175, x_176);
  let x_180 : vec4<f32> = x_17.unity_SHBg;
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_180, x_181);
  let x_185 : vec4<f32> = x_17.unity_SHBb;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_185, x_186);
  let x_192 : vec4<f32> = x_17.unity_SHC;
  let x_194 : f32 = u_xlat10;
  let x_197 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_194, x_194, x_194)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : f32 = u_xlat0.y;
  let x_204 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.y = (x_201 * x_204);
  let x_207 : vec4<f32> = u_xlat0;
  let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.w, x_207.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_212.y, x_211.y, x_211.z);
  let x_215 : vec4<f32> = u_xlat0;
  let x_216 : vec2<f32> = vec2<f32>(x_215.z, x_215.w);
  let x_217 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_217.x, x_217.y, x_216.x, x_216.y);
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : vec2<f32> = (vec2<f32>(x_219.z, x_219.z) + vec2<f32>(x_221.x, x_221.w));
  let x_224 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_223.x, x_223.y, x_224.z, x_224.w);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

