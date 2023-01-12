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

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_100 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_100;
  let x_107 : vec4<f32> = in_TANGENT0;
  let x_110 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_107.y, x_107.y, x_107.y) * vec3<f32>(x_110.y, x_110.z, x_110.x));
  let x_114 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_116 : vec4<f32> = in_TANGENT0;
  let x_119 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.x, x_116.x, x_116.x)) + x_119);
  let x_122 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_124 : vec4<f32> = in_TANGENT0;
  let x_127 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_122.y, x_122.z, x_122.x) * vec3<f32>(x_124.z, x_124.z, x_124.z)) + x_127);
  let x_129 : vec3<f32> = u_xlat3;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_129, x_130);
  let x_134 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_134);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_143 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_143;
  let x_148 : vec3<f32> = in_NORMAL0;
  let x_151 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat4.x = dot(x_148, vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_155 : vec3<f32> = in_NORMAL0;
  let x_157 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat4.y = dot(x_155, vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_161 : vec3<f32> = in_NORMAL0;
  let x_163 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat4.z = dot(x_161, vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_167 : vec4<f32> = u_xlat4;
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_174 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_174);
  let x_177 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_177.x, x_177.x, x_177.x, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_183 : vec3<f32> = u_xlat3;
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_183 * vec3<f32>(x_184.w, x_184.x, x_184.y));
  let x_187 : vec4<f32> = u_xlat4;
  let x_189 : vec3<f32> = u_xlat3;
  let x_192 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_187.y, x_187.w, x_187.x) * vec3<f32>(x_189.y, x_189.z, x_189.x)) + -(x_192));
  let x_197 : f32 = in_TANGENT0.w;
  let x_201 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_197 * x_201);
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_209 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_209;
  let x_212 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_212;
  let x_216 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_216;
  let x_220 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_220;
  let x_223 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_223;
  let x_226 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_226;
  let x_229 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_229;
  let x_232 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_232;
  let x_235 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_235;
  let x_238 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_238;
  let x_242 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_242;
  let x_248 : vec2<f32> = in_TEXCOORD0;
  let x_251 : vec4<f32> = x_17.x_MainTex_ST;
  let x_255 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_248 * vec2<f32>(x_251.x, x_251.y)) + vec2<f32>(x_255.z, x_255.w));
  let x_260 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_260;
  let x_262 : vec4<f32> = u_xlat2;
  let x_263 : vec2<f32> = vec2<f32>(x_262.z, x_262.w);
  let x_264 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_264.x, x_264.y, x_263.x, x_263.y);
  let x_267 : f32 = u_xlat1.y;
  let x_270 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_267 * x_270);
  let x_274 : f32 = x_17.unity_MatrixV[0i].z;
  let x_276 : f32 = u_xlat1.x;
  let x_279 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_274 * x_276) + x_279);
  let x_283 : f32 = x_17.unity_MatrixV[2i].z;
  let x_285 : f32 = u_xlat1.z;
  let x_288 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_283 * x_285) + x_288);
  let x_292 : f32 = x_17.unity_MatrixV[3i].z;
  let x_294 : f32 = u_xlat1.w;
  let x_297 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_292 * x_294) + x_297);
  let x_303 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_303);
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.w));
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_318 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.w) * vec3<f32>(x_318.x, x_318.x, x_318.x)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_329 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat0;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.w) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_340 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.w) * vec3<f32>(x_340.w, x_340.w, x_340.w)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_349 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_349;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_355 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.y = x_355;
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec4<f32> = u_xlat2;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.y, x_366.w));
  let x_369 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : f32 = u_xlat0.y;
  u_xlat0.w = (x_372 * 0.5f);
  let x_375 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : vec2<f32> = (vec2<f32>(x_375.z, x_375.z) + vec2<f32>(x_377.x, x_377.w));
  let x_380 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_383 : f32 = u_xlat4.y;
  let x_385 : f32 = u_xlat4.y;
  u_xlat0.x = (x_383 * x_385);
  let x_389 : f32 = u_xlat4.x;
  let x_391 : f32 = u_xlat4.x;
  let x_394 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_389 * x_391) + -(x_394));
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_398.y, x_398.w, x_398.z, x_398.x) * x_400);
  let x_403 : vec4<f32> = x_17.unity_SHBr;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_403, x_404);
  let x_408 : vec4<f32> = x_17.unity_SHBg;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_408, x_409);
  let x_413 : vec4<f32> = x_17.unity_SHBb;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_413, x_414);
  let x_421 : vec4<f32> = x_17.unity_SHC;
  let x_423 : vec4<f32> = u_xlat0;
  let x_426 : vec3<f32> = u_xlat3;
  vs_TEXCOORD5 = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.x, x_423.x, x_423.x)) + x_426);
  let x_429 : f32 = u_xlat1.y;
  u_xlat1.w = (x_429 * 0.5f);
  let x_432 : vec4<f32> = u_xlat1;
  let x_434 : vec4<f32> = u_xlat1;
  let x_436 : vec2<f32> = (vec2<f32>(x_432.z, x_432.z) + vec2<f32>(x_434.x, x_434.w));
  let x_437 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
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
  vs_TEXCOORD6_1 : f32,
  @location(7)
  vs_TEXCOORD7_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD6, vs_TEXCOORD7, vs_TEXCOORD5);
}

