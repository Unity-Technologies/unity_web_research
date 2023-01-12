type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
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
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat2;
  gl_Position = x_95;
  let x_103 : f32 = u_xlat2.z;
  vs_TEXCOORD6 = x_103;
  let x_107 : vec4<f32> = in_TEXCOORD0;
  let x_111 : vec4<f32> = x_20.x_MainTex_ST;
  let x_115 : vec4<f32> = x_20.x_MainTex_ST;
  let x_117 : vec2<f32> = ((vec2<f32>(x_107.x, x_107.y) * vec2<f32>(x_111.x, x_111.y)) + vec2<f32>(x_115.z, x_115.w));
  let x_118 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = in_TEXCOORD0;
  let x_124 : vec4<f32> = x_20.x_Normal_ST;
  let x_128 : vec4<f32> = x_20.x_Normal_ST;
  let x_130 : vec2<f32> = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(x_128.z, x_128.w));
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_131.x, x_131.y, x_130.x, x_130.y);
  let x_134 : vec4<f32> = in_TANGENT0;
  let x_137 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_139 : vec3<f32> = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.y, x_137.z, x_137.x));
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_143 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_145 : vec4<f32> = in_TANGENT0;
  let x_148 : vec4<f32> = u_xlat2;
  let x_150 : vec3<f32> = ((vec3<f32>(x_143.y, x_143.z, x_143.x) * vec3<f32>(x_145.x, x_145.x, x_145.x)) + vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_156 : vec4<f32> = in_TANGENT0;
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec3<f32> = ((vec3<f32>(x_154.y, x_154.z, x_154.x) * vec3<f32>(x_156.z, x_156.z, x_156.z)) + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_170);
  let x_172 : f32 = u_xlat15;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec3<f32> = (vec3<f32>(x_172, x_172, x_172) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_181 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_181;
  let x_187 : f32 = in_TANGENT0.w;
  let x_191 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlat15 = (x_187 * x_191);
  let x_196 : vec3<f32> = in_NORMAL0;
  let x_199 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_196, vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_203 : vec3<f32> = in_NORMAL0;
  let x_205 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_203, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_209 : vec3<f32> = in_NORMAL0;
  let x_211 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_209, vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec4<f32> = u_xlat3;
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat17 = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : f32 = u_xlat17;
  u_xlat17 = inverseSqrt(x_221);
  let x_223 : f32 = u_xlat17;
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_223, x_223, x_223, x_223) * vec4<f32>(x_225.x, x_225.y, x_225.z, x_225.z));
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat3;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.w, x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat3;
  let x_238 : vec4<f32> = u_xlat2;
  let x_241 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = ((vec3<f32>(x_236.y, x_236.w, x_236.x) * vec3<f32>(x_238.y, x_238.z, x_238.x)) + -(vec3<f32>(x_241.x, x_241.y, x_241.z)));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : f32 = u_xlat15;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_255;
  let x_258 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_258;
  let x_261 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_261;
  let x_265 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_265;
  let x_269 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_269;
  let x_272 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_272;
  let x_275 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_275;
  let x_278 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_278;
  let x_281 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_281;
  let x_284 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_284;
  let x_287 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_287;
  let x_291 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_291;
  let x_293 : f32 = u_xlat1.y;
  let x_296 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat15 = (x_293 * x_296);
  let x_299 : f32 = x_20.unity_MatrixV[0i].z;
  let x_301 : f32 = u_xlat1.x;
  let x_303 : f32 = u_xlat15;
  u_xlat15 = ((x_299 * x_301) + x_303);
  let x_306 : f32 = x_20.unity_MatrixV[2i].z;
  let x_308 : f32 = u_xlat1.z;
  let x_310 : f32 = u_xlat15;
  u_xlat15 = ((x_306 * x_308) + x_310);
  let x_313 : f32 = x_20.unity_MatrixV[3i].z;
  let x_315 : f32 = u_xlat1.w;
  let x_317 : f32 = u_xlat15;
  u_xlat15 = ((x_313 * x_315) + x_317);
  let x_321 : f32 = u_xlat15;
  vs_TEXCOORD4.z = -(x_321);
  let x_325 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = x_20.unity_MatrixVP[1i];
  let x_330 : vec3<f32> = (vec3<f32>(x_325.y, x_325.y, x_325.y) * vec3<f32>(x_328.x, x_328.y, x_328.w));
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_336 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.w) * vec3<f32>(x_336.x, x_336.x, x_336.x)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_347 : vec4<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat2;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.w) * vec3<f32>(x_347.z, x_347.z, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_358 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.w) * vec3<f32>(x_358.w, x_358.w, x_358.w)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat1;
  let x_370 : vec2<f32> = (vec2<f32>(x_366.x, x_366.z) * vec2<f32>(0.5f, 0.5f));
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_370.x, x_371.y, x_370.y, x_371.w);
  let x_374 : f32 = u_xlat1.y;
  let x_376 : f32 = x_20.x_ProjectionParams.x;
  u_xlat15 = (x_374 * x_376);
  let x_379 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_379;
  let x_381 : f32 = u_xlat15;
  u_xlat2.w = (x_381 * 0.5f);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec2<f32> = (vec2<f32>(x_384.z, x_384.z) + vec2<f32>(x_386.x, x_386.w));
  let x_389 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat0;
  let x_395 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_391.x, x_391.x, x_391.x, x_391.x)) + x_395);
  let x_397 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_397.y, x_397.y, x_397.y, x_397.y)) + x_401);
  let x_403 : vec4<f32> = u_xlat0;
  let x_407 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_403.z, x_403.z, x_403.z, x_403.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_409.y, x_409.y, x_409.y, x_409.y) * x_411);
  let x_413 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_413 * x_414);
  let x_416 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_416 * x_417) + x_419);
  let x_421 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat3;
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_421 * vec4<f32>(x_422.x, x_422.x, x_422.x, x_422.x)) + x_425);
  let x_427 : vec4<f32> = u_xlat0;
  let x_428 : vec4<f32> = u_xlat3;
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_427 * vec4<f32>(x_428.w, x_428.w, x_428.z, x_428.w)) + x_431);
  let x_433 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_433 * x_434) + x_436);
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_438, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_442);
  let x_444 : vec4<f32> = u_xlat0;
  let x_447 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_444 * x_447) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_452);
  let x_454 : vec4<f32> = u_xlat1;
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_454 * x_455);
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_457, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_461 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_461 * x_462);
  let x_464 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_470 : vec3<f32> = (vec3<f32>(x_464.y, x_464.y, x_464.y) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_476 : vec4<f32> = u_xlat0;
  let x_479 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476.x, x_476.x, x_476.x)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_487 : vec4<f32> = u_xlat0;
  let x_490 : vec4<f32> = u_xlat1;
  let x_492 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487.z, x_487.z, x_487.z)) + vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_496 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498.w, x_498.w, x_498.w)) + vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : f32 = u_xlat3.y;
  let x_509 : f32 = u_xlat3.y;
  u_xlat15 = (x_507 * x_509);
  let x_512 : f32 = u_xlat3.x;
  let x_514 : f32 = u_xlat3.x;
  let x_516 : f32 = u_xlat15;
  u_xlat15 = ((x_512 * x_514) + -(x_516));
  let x_519 : vec4<f32> = u_xlat3;
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_519.y, x_519.w, x_519.z, x_519.x) * x_521);
  let x_525 : vec4<f32> = x_20.unity_SHBr;
  let x_526 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_20.unity_SHBg;
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_531, x_532);
  let x_537 : vec4<f32> = x_20.unity_SHBb;
  let x_538 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_537, x_538);
  let x_543 : vec4<f32> = x_20.unity_SHC;
  let x_545 : f32 = u_xlat15;
  let x_548 : vec4<f32> = u_xlat2;
  let x_550 : vec3<f32> = ((vec3<f32>(x_543.x, x_543.y, x_543.z) * vec3<f32>(x_545, x_545, x_545)) + vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_555 : vec4<f32> = u_xlat0;
  let x_557 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_555.x, x_555.y, x_555.z) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(6)
  vs_TEXCOORD6_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_COLOR0_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD5);
}

