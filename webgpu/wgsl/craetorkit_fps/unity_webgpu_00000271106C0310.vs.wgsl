struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
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
  u_xlat2 = ((x_81 * vec4<f32>(x_82.w, x_82.w, x_82.w, x_82.w)) + x_85);
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = x_93;
  let x_101 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_101;
  let x_105 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_105;
  let x_109 : vec4<f32> = in_TANGENT0;
  let x_112 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_114 : vec3<f32> = (vec3<f32>(x_109.y, x_109.y, x_109.y) * vec3<f32>(x_112.y, x_112.z, x_112.x));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_120 : vec4<f32> = in_TANGENT0;
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec3<f32> = ((vec3<f32>(x_118.y, x_118.z, x_118.x) * vec3<f32>(x_120.x, x_120.x, x_120.x)) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_131 : vec4<f32> = in_TANGENT0;
  let x_134 : vec4<f32> = u_xlat2;
  let x_136 : vec3<f32> = ((vec3<f32>(x_129.y, x_129.z, x_129.x) * vec3<f32>(x_131.z, x_131.z, x_131.z)) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_146 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_146);
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = (vec3<f32>(x_149.x, x_149.x, x_149.x) * vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_157;
  let x_162 : vec3<f32> = in_NORMAL0;
  let x_165 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_162, vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec3<f32> = in_NORMAL0;
  let x_171 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_169, vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec3<f32> = in_NORMAL0;
  let x_177 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_175, vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec4<f32> = u_xlat3;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_188);
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_191.x, x_191.x, x_191.x, x_191.x) * vec4<f32>(x_193.x, x_193.y, x_193.z, x_193.z));
  let x_198 : vec4<f32> = u_xlat2;
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.w, x_200.x, x_200.y));
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_203.y, x_203.w, x_203.x) * vec3<f32>(x_205.y, x_205.z, x_205.x)) + -(x_208));
  let x_213 : f32 = in_TANGENT0.w;
  let x_217 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_213 * x_217);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_220.x, x_220.x, x_220.x) * x_222);
  let x_225 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_225;
  let x_228 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_228;
  let x_232 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_232;
  let x_236 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_236;
  let x_239 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_239;
  let x_242 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_242;
  let x_245 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_245;
  let x_248 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_248;
  let x_251 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_251;
  let x_254 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_254;
  let x_258 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_258;
  let x_264 : vec2<f32> = in_TEXCOORD0;
  let x_267 : vec4<f32> = x_17.x_MainTex_ST;
  let x_271 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_264 * vec2<f32>(x_267.x, x_267.y)) + vec2<f32>(x_271.z, x_271.w));
  let x_275 : f32 = u_xlat1.y;
  let x_278 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_275 * x_278);
  let x_282 : f32 = x_17.unity_MatrixV[0i].z;
  let x_284 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_282 * x_284) + x_287);
  let x_291 : f32 = x_17.unity_MatrixV[2i].z;
  let x_293 : f32 = u_xlat1.z;
  let x_296 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_291 * x_293) + x_296);
  let x_300 : f32 = x_17.unity_MatrixV[3i].z;
  let x_302 : f32 = u_xlat1.w;
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_300 * x_302) + x_305);
  let x_311 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_311);
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_320 : vec3<f32> = (vec3<f32>(x_315.y, x_315.y, x_315.y) * vec3<f32>(x_318.x, x_318.y, x_318.w));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_326 : vec4<f32> = u_xlat1;
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.w) * vec3<f32>(x_326.x, x_326.x, x_326.x)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_337 : vec4<f32> = u_xlat1;
  let x_340 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.w) * vec3<f32>(x_337.z, x_337.z, x_337.z)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_348 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.w) * vec3<f32>(x_348.w, x_348.w, x_348.w)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat0;
  let x_360 : vec2<f32> = (vec2<f32>(x_356.x, x_356.z) * vec2<f32>(0.5f, 0.5f));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_360.x, x_361.y, x_360.y, x_361.w);
  let x_364 : f32 = u_xlat0.y;
  let x_366 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_364 * x_366);
  let x_370 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_370;
  let x_373 : f32 = u_xlat0.x;
  u_xlat1.w = (x_373 * 0.5f);
  let x_376 : vec4<f32> = u_xlat1;
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec2<f32> = (vec2<f32>(x_376.z, x_376.z) + vec2<f32>(x_378.x, x_378.w));
  let x_381 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
  let x_384 : f32 = u_xlat3.y;
  let x_386 : f32 = u_xlat3.y;
  u_xlat0.x = (x_384 * x_386);
  let x_390 : f32 = u_xlat3.x;
  let x_392 : f32 = u_xlat3.x;
  let x_395 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_390 * x_392) + -(x_395));
  let x_399 : vec4<f32> = u_xlat3;
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_399.y, x_399.w, x_399.z, x_399.x) * x_401);
  let x_404 : vec4<f32> = x_17.unity_SHBr;
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_404, x_405);
  let x_409 : vec4<f32> = x_17.unity_SHBg;
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_409, x_410);
  let x_414 : vec4<f32> = x_17.unity_SHBb;
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_414, x_415);
  let x_422 : vec4<f32> = x_17.unity_SHC;
  let x_424 : vec4<f32> = u_xlat0;
  let x_427 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_424.x, x_424.x, x_424.x)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
  vs_TEXCOORD6_1 : f32,
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
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

