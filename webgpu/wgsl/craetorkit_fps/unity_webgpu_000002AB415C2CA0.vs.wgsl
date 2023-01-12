struct VGlobals {
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
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
  let x_49 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.w, x_51.w, x_51.w)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + x_71);
  let x_74 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_74 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_87 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_88 : vec4<f32> = u_xlat1;
  let x_91 : vec4<f32> = u_xlat2;
  gl_Position = ((x_87 * vec4<f32>(x_88.w, x_88.w, x_88.w, x_88.w)) + x_91);
  let x_99 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_99;
  let x_104 : vec4<f32> = in_TANGENT0;
  let x_107 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_109 : vec3<f32> = (vec3<f32>(x_104.y, x_104.y, x_104.y) * vec3<f32>(x_107.y, x_107.z, x_107.x));
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_113 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_115 : vec4<f32> = in_TANGENT0;
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec3<f32> = ((vec3<f32>(x_113.y, x_113.z, x_113.x) * vec3<f32>(x_115.x, x_115.x, x_115.x)) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_126 : vec4<f32> = in_TANGENT0;
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = ((vec3<f32>(x_124.y, x_124.z, x_124.x) * vec3<f32>(x_126.z, x_126.z, x_126.z)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_144 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_153 : f32 = u_xlat1.z;
  vs_TEXCOORD0.x = x_153;
  let x_157 : vec3<f32> = in_NORMAL0;
  let x_160 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_157, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_164 : vec3<f32> = in_NORMAL0;
  let x_166 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_164, vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_170 : vec3<f32> = in_NORMAL0;
  let x_172 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_170, vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_176 : vec4<f32> = u_xlat2;
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_183 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_183);
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_186.x, x_186.x, x_186.x, x_186.x) * vec4<f32>(x_188.x, x_188.y, x_188.z, x_188.z));
  let x_193 : vec4<f32> = u_xlat1;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195.w, x_195.x, x_195.y));
  let x_198 : vec4<f32> = u_xlat2;
  let x_200 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_198.y, x_198.w, x_198.x) * vec3<f32>(x_200.y, x_200.z, x_200.x)) + -(x_203));
  let x_208 : f32 = in_TANGENT0.w;
  let x_212 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_208 * x_212);
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_215.x, x_215.x, x_215.x) * x_217);
  let x_220 : f32 = u_xlat3.x;
  vs_TEXCOORD0.y = x_220;
  let x_223 : f32 = u_xlat2.x;
  vs_TEXCOORD0.z = x_223;
  let x_227 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = x_227;
  let x_231 : f32 = u_xlat1.y;
  vs_TEXCOORD2.x = x_231;
  let x_234 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_234;
  let x_237 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_237;
  let x_240 : f32 = u_xlat3.y;
  vs_TEXCOORD1.y = x_240;
  let x_243 : f32 = u_xlat3.z;
  vs_TEXCOORD2.y = x_243;
  let x_246 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_246;
  let x_249 : f32 = u_xlat2.w;
  vs_TEXCOORD2.z = x_249;
  let x_253 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_253;
  let x_259 : vec2<f32> = in_TEXCOORD0;
  let x_262 : vec4<f32> = x_17.x_MainTex_ST;
  let x_266 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_259 * vec2<f32>(x_262.x, x_262.y)) + vec2<f32>(x_266.z, x_266.w));
  let x_270 : f32 = u_xlat2.y;
  let x_272 : f32 = u_xlat2.y;
  u_xlat0.x = (x_270 * x_272);
  let x_276 : f32 = u_xlat2.x;
  let x_278 : f32 = u_xlat2.x;
  let x_281 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_276 * x_278) + -(x_281));
  let x_285 : vec4<f32> = u_xlat2;
  let x_287 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_285.y, x_285.w, x_285.z, x_285.x) * x_287);
  let x_290 : vec4<f32> = x_17.unity_SHBr;
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_290, x_291);
  let x_295 : vec4<f32> = x_17.unity_SHBg;
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_295, x_296);
  let x_300 : vec4<f32> = x_17.unity_SHBb;
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_300, x_301);
  let x_307 : vec4<f32> = x_17.unity_SHC;
  let x_309 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

