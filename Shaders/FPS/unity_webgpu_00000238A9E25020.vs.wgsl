struct VGlobals {
  x_ProjectionParams : vec4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_100 : vec4<f32> = in_TEXCOORD0;
  let x_104 : vec4<f32> = x_17.x_MainTex_ST;
  let x_108 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_100.x, x_100.y) * vec2<f32>(x_104.x, x_104.y)) + vec2<f32>(x_108.z, x_108.w));
  let x_115 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_115;
  let x_120 : vec4<f32> = in_TANGENT0;
  let x_123 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_125 : vec3<f32> = (vec3<f32>(x_120.y, x_120.y, x_120.y) * vec3<f32>(x_123.y, x_123.z, x_123.x));
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_131 : vec4<f32> = in_TANGENT0;
  let x_134 : vec4<f32> = u_xlat2;
  let x_136 : vec3<f32> = ((vec3<f32>(x_129.y, x_129.z, x_129.x) * vec3<f32>(x_131.x, x_131.x, x_131.x)) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_142 : vec4<f32> = in_TANGENT0;
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.y, x_140.z, x_140.x) * vec3<f32>(x_142.z, x_142.z, x_142.z)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_150.x, x_150.y, x_150.z), vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_157 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_157);
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec4<f32> = u_xlat2;
  let x_164 : vec3<f32> = (vec3<f32>(x_160.x, x_160.x, x_160.x) * vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_169 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_169;
  let x_174 : vec3<f32> = in_NORMAL0;
  let x_177 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_174, vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec3<f32> = in_NORMAL0;
  let x_183 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_181, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec3<f32> = in_NORMAL0;
  let x_189 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_187, vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_200);
  let x_203 : vec4<f32> = u_xlat0;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_203.x, x_203.x, x_203.x, x_203.x) * vec4<f32>(x_205.x, x_205.y, x_205.z, x_205.z));
  let x_210 : vec4<f32> = u_xlat2;
  let x_212 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.w, x_212.x, x_212.y));
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = u_xlat2;
  let x_220 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_215.y, x_215.w, x_215.x) * vec3<f32>(x_217.y, x_217.z, x_217.x)) + -(x_220));
  let x_225 : f32 = in_TANGENT0.w;
  let x_229 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_225 * x_229);
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_232.x, x_232.x, x_232.x) * x_234);
  let x_237 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_237;
  let x_240 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_240;
  let x_244 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_244;
  let x_248 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_248;
  let x_251 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_251;
  let x_254 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_254;
  let x_257 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_257;
  let x_260 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_260;
  let x_263 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_263;
  let x_266 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_266;
  let x_269 : f32 = u_xlat3.y;
  let x_271 : f32 = u_xlat3.y;
  u_xlat0.x = (x_269 * x_271);
  let x_275 : f32 = u_xlat3.x;
  let x_277 : f32 = u_xlat3.x;
  let x_280 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_275 * x_277) + -(x_280));
  let x_284 : vec4<f32> = u_xlat3;
  let x_286 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_284.y, x_284.w, x_284.z, x_284.x) * x_286);
  let x_289 : vec4<f32> = x_17.unity_SHBr;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_289, x_290);
  let x_294 : vec4<f32> = x_17.unity_SHBg;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_294, x_295);
  let x_299 : vec4<f32> = x_17.unity_SHBb;
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_299, x_300);
  let x_307 : vec4<f32> = x_17.unity_SHC;
  let x_309 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat3;
  vs_TEXCOORD4 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_316 : f32 = u_xlat1.y;
  let x_318 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_316 * x_318);
  let x_322 : f32 = u_xlat0.x;
  u_xlat0.w = (x_322 * 0.5f);
  let x_326 : vec4<f32> = u_xlat1;
  let x_329 : vec2<f32> = (vec2<f32>(x_326.x, x_326.w) * vec2<f32>(0.5f, 0.5f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_330.y, x_329.y, x_330.w);
  let x_333 : vec4<f32> = u_xlat1;
  let x_334 : vec2<f32> = vec2<f32>(x_333.z, x_333.w);
  let x_335 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_335.x, x_335.y, x_334.x, x_334.y);
  let x_337 : vec4<f32> = u_xlat0;
  let x_339 : vec4<f32> = u_xlat0;
  let x_341 : vec2<f32> = (vec2<f32>(x_337.z, x_337.z) + vec2<f32>(x_339.x, x_339.w));
  let x_342 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

