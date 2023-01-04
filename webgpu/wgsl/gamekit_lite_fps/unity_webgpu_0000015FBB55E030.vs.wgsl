struct VGlobals {
  x_Time : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixInvV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_TreeInstanceScale : vec4<f32>,
  x_SquashPlaneNormal : vec4<f32>,
  x_SquashAmount : f32,
  @size(12)
  padding : u32,
  x_Wind : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_13 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat0.x = dot(vec3<f32>(x_20.x, x_20.y, x_20.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_30 : f32 = u_xlat0.x;
  let x_35 : f32 = in_COLOR0.x;
  u_xlat0.y = (x_30 + x_35);
  let x_41 : f32 = u_xlat0.y;
  let x_43 : f32 = in_COLOR0.y;
  u_xlat8 = (x_41 + x_43);
  let x_47 : vec4<f32> = in_POSITION0;
  let x_51 : vec4<f32> = x_13.x_TreeInstanceScale;
  let x_53 : vec3<f32> = (vec3<f32>(x_47.x, x_47.y, x_47.z) * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_56 : vec4<f32> = u_xlat1;
  let x_58 : f32 = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_56.x, x_56.y, x_56.z), vec3<f32>(x_58, x_58, x_58));
  let x_62 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = x_13.x_Time;
  u_xlat0 = (vec4<f32>(x_62.x, x_62.x, x_62.y, x_62.y) + vec4<f32>(x_66.y, x_66.y, x_66.y, x_66.y));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_69 * vec4<f32>(1.975000024f, 0.792999983f, 0.375f, 0.193000004f));
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_76);
  let x_78 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_78 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_85 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_85);
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_87 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_93 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat2 = (abs(x_93) * abs(x_95));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = ((-(abs(x_98)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_105 : vec4<f32> = u_xlat0;
  let x_106 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_105 * x_106);
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec2<f32> = (vec2<f32>(x_109.y, x_109.w) + vec2<f32>(x_111.x, x_111.z));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = x_13.x_Wind;
  let x_122 : vec3<f32> = (vec3<f32>(x_116.y, x_116.y, x_116.y) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat2;
  let x_128 : vec4<f32> = in_TEXCOORD1;
  let x_130 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_128.y, x_128.y, x_128.y));
  let x_131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_136 : f32 = u_xlat0.y;
  let x_138 : f32 = in_TEXCOORD1.y;
  u_xlat3.y = (x_136 * x_138);
  let x_143 : f32 = in_COLOR0.y;
  u_xlat4 = (x_143 * 0.100000001f);
  let x_146 : f32 = u_xlat4;
  let x_150 : vec3<f32> = in_NORMAL0;
  let x_152 : vec2<f32> = (vec2<f32>(x_146, x_146) * vec2<f32>(x_150.x, x_150.z));
  let x_153 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_152.x, x_153.y, x_152.y);
  u_xlat0.z = 0.300000012f;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = u_xlat3;
  let x_162 : vec4<f32> = u_xlat2;
  let x_164 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.z, x_158.x) * x_160) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec4<f32> = x_13.x_Wind;
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_170.w, x_170.w, x_170.w)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec4<f32> = in_TEXCOORD1;
  let x_181 : vec4<f32> = x_13.x_Wind;
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = ((vec3<f32>(x_178.x, x_178.x, x_178.x) * vec3<f32>(x_181.x, x_181.y, x_181.z)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_192 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : f32 = u_xlat12;
  let x_201 : f32 = x_13.x_SquashPlaneNormal.w;
  u_xlat12 = (x_197 + x_201);
  let x_203 : f32 = u_xlat12;
  let x_207 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_210 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = ((-(vec3<f32>(x_203, x_203, x_203)) * vec3<f32>(x_207.x, x_207.y, x_207.z)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + -(vec3<f32>(x_217.x, x_217.y, x_217.z)));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_225 : f32 = x_13.x_SquashAmount;
  let x_227 : vec4<f32> = u_xlat0;
  let x_230 : vec4<f32> = u_xlat1;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225, x_225, x_225) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = x_13.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_235.y, x_235.y, x_235.y, x_235.y) * x_239);
  let x_242 : vec4<f32> = x_13.unity_ObjectToWorld[0i];
  let x_243 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_242 * vec4<f32>(x_243.x, x_243.x, x_243.x, x_243.x)) + x_246);
  let x_249 : vec4<f32> = x_13.unity_ObjectToWorld[2i];
  let x_250 : vec4<f32> = u_xlat0;
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_249 * vec4<f32>(x_250.z, x_250.z, x_250.z, x_250.z)) + x_253);
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat0 = (x_255 + x_257);
  let x_259 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = x_13.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_259.y, x_259.y, x_259.y, x_259.y) * x_263);
  let x_266 : vec4<f32> = x_13.unity_MatrixVP[0i];
  let x_267 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_266 * vec4<f32>(x_267.x, x_267.x, x_267.x, x_267.x)) + x_270);
  let x_273 : vec4<f32> = x_13.unity_MatrixVP[2i];
  let x_274 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_273 * vec4<f32>(x_274.z, x_274.z, x_274.z, x_274.z)) + x_277);
  let x_284 : vec4<f32> = x_13.unity_MatrixVP[3i];
  let x_285 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = u_xlat1;
  gl_Position = ((x_284 * vec4<f32>(x_285.w, x_285.w, x_285.w, x_285.w)) + x_288);
  let x_295 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_295.x, x_295.y);
  let x_298 : f32 = u_xlat0.y;
  let x_301 : f32 = x_13.unity_MatrixV[1i].z;
  u_xlat4 = (x_298 * x_301);
  let x_304 : f32 = x_13.unity_MatrixV[0i].z;
  let x_306 : f32 = u_xlat0.x;
  let x_308 : f32 = u_xlat4;
  u_xlat0.x = ((x_304 * x_306) + x_308);
  let x_312 : f32 = x_13.unity_MatrixV[2i].z;
  let x_314 : f32 = u_xlat0.z;
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_312 * x_314) + x_317);
  let x_321 : f32 = x_13.unity_MatrixV[3i].z;
  let x_323 : f32 = u_xlat0.w;
  let x_326 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_321 * x_323) + x_326);
  let x_330 : f32 = u_xlat0.x;
  let x_332 : f32 = x_13.x_ProjectionParams.w;
  u_xlat0.x = (x_330 * x_332);
  let x_337 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = -(x_337);
  let x_342 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_346 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_348 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_346.y, x_346.y, x_346.y));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_355 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_355.x, x_355.x, x_355.x)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_367 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_379 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_382 : vec4<f32> = u_xlat0;
  let x_384 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_379.w, x_379.w, x_379.w)) + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec3<f32> = in_NORMAL0;
  let x_388 : vec3<f32> = in_NORMAL0;
  u_xlat12 = dot(x_387, x_388);
  let x_390 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_390);
  let x_392 : f32 = u_xlat12;
  let x_394 : vec3<f32> = in_NORMAL0;
  let x_395 : vec3<f32> = (vec3<f32>(x_392, x_392, x_392) * x_394);
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat0;
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_405 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_408 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_410 : vec3<f32> = (vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_408.y, x_408.y, x_408.y));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_417 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_420 : vec4<f32> = u_xlat2;
  let x_422 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_417.x, x_417.x, x_417.x)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_429 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_432 : vec4<f32> = u_xlat2;
  let x_434 : vec3<f32> = ((vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(x_429.z, x_429.z, x_429.z)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_441 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_444 : vec4<f32> = u_xlat2;
  let x_446 : vec3<f32> = ((vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_441.w, x_441.w, x_441.w)) + vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat2;
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_456 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_459 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_461 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(x_459.y, x_459.y, x_459.y));
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_468 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_471 : vec4<f32> = u_xlat2;
  let x_473 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(x_468.x, x_468.x, x_468.x)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_477 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_480 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_483 : vec4<f32> = u_xlat2;
  let x_485 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_480.z, x_480.z, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_492 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_492.w, x_492.w, x_492.w)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat2;
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(x_500.x, x_500.y, x_500.z), vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_506 : vec4<f32> = u_xlat0;
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_506.x, x_506.y, x_506.z), vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_511);
  let x_513 : f32 = u_xlat12;
  let x_515 : vec4<f32> = u_xlat0;
  let x_517 : vec3<f32> = (vec3<f32>(x_513, x_513, x_513) * vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(4) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1);
}

