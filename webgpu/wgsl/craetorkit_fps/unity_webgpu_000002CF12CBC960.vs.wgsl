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

var<private> vs_TEXCOORD5 : f32;

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
  let x_81 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_81 * vec4<f32>(x_82.w, x_82.w, x_82.w, x_82.w)) + x_85);
  let x_93 : vec4<f32> = u_xlat1;
  gl_Position = x_93;
  let x_101 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_101;
  let x_105 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_105;
  let x_109 : vec4<f32> = in_TANGENT0;
  let x_112 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_114 : vec3<f32> = (vec3<f32>(x_109.y, x_109.y, x_109.y) * vec3<f32>(x_112.y, x_112.z, x_112.x));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_120 : vec4<f32> = in_TANGENT0;
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec3<f32> = ((vec3<f32>(x_118.y, x_118.z, x_118.x) * vec3<f32>(x_120.x, x_120.x, x_120.x)) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_131 : vec4<f32> = in_TANGENT0;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = ((vec3<f32>(x_129.y, x_129.z, x_129.x) * vec3<f32>(x_131.z, x_131.z, x_131.z)) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_146 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_146);
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = (vec3<f32>(x_149.x, x_149.x, x_149.x) * vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : f32 = u_xlat1.z;
  vs_TEXCOORD0.x = x_157;
  let x_161 : vec3<f32> = in_NORMAL0;
  let x_164 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_161, vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec3<f32> = in_NORMAL0;
  let x_170 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_168, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec3<f32> = in_NORMAL0;
  let x_176 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_174, vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_187 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_187);
  let x_190 : vec4<f32> = u_xlat0;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_190.x, x_190.x, x_190.x, x_190.x) * vec4<f32>(x_192.x, x_192.y, x_192.z, x_192.z));
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.w, x_199.x, x_199.y));
  let x_202 : vec4<f32> = u_xlat2;
  let x_204 : vec4<f32> = u_xlat1;
  let x_207 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_202.y, x_202.w, x_202.x) * vec3<f32>(x_204.y, x_204.z, x_204.x)) + -(x_207));
  let x_212 : f32 = in_TANGENT0.w;
  let x_216 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_212 * x_216);
  let x_219 : vec4<f32> = u_xlat0;
  let x_221 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_219.x, x_219.x, x_219.x) * x_221);
  let x_224 : f32 = u_xlat3.x;
  vs_TEXCOORD0.y = x_224;
  let x_227 : f32 = u_xlat2.x;
  vs_TEXCOORD0.z = x_227;
  let x_231 : f32 = u_xlat1.x;
  vs_TEXCOORD1.x = x_231;
  let x_235 : f32 = u_xlat1.y;
  vs_TEXCOORD2.x = x_235;
  let x_238 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_238;
  let x_241 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_241;
  let x_244 : f32 = u_xlat3.y;
  vs_TEXCOORD1.y = x_244;
  let x_247 : f32 = u_xlat3.z;
  vs_TEXCOORD2.y = x_247;
  let x_250 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_250;
  let x_253 : f32 = u_xlat2.w;
  vs_TEXCOORD2.z = x_253;
  let x_257 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_257;
  let x_263 : vec2<f32> = in_TEXCOORD0;
  let x_266 : vec4<f32> = x_17.x_MainTex_ST;
  let x_270 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_263 * vec2<f32>(x_266.x, x_266.y)) + vec2<f32>(x_270.z, x_270.w));
  let x_274 : f32 = u_xlat2.y;
  let x_276 : f32 = u_xlat2.y;
  u_xlat0.x = (x_274 * x_276);
  let x_280 : f32 = u_xlat2.x;
  let x_282 : f32 = u_xlat2.x;
  let x_285 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_280 * x_282) + -(x_285));
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_289.y, x_289.w, x_289.z, x_289.x) * x_291);
  let x_294 : vec4<f32> = x_17.unity_SHBr;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_294, x_295);
  let x_299 : vec4<f32> = x_17.unity_SHBg;
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_299, x_300);
  let x_304 : vec4<f32> = x_17.unity_SHBb;
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_304, x_305);
  let x_311 : vec4<f32> = x_17.unity_SHC;
  let x_313 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.x, x_313.x)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : f32,
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
  @location(6)
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
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

