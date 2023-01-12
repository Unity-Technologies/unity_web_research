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

@group(1) @binding(1) var<uniform> x_13 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat26 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_22 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  u_xlat0 = (x_19 * vec4<f32>(x_22.y, x_22.y, x_22.y, x_22.y));
  let x_27 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_29 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_36 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_38 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_38.z, x_38.z, x_38.z, x_38.z)) + x_41);
  let x_44 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_46 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_44 * vec4<f32>(x_46.w, x_46.w, x_46.w, x_46.w)) + x_49);
  let x_52 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = in_NORMAL0;
  u_xlat1 = (x_52 * vec4<f32>(x_56.y, x_56.y, x_56.y, x_56.y));
  let x_61 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_63 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  u_xlat2 = (x_61 * vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y));
  let x_67 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_69 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_69.x, x_69.x, x_69.x, x_69.x)) + x_72);
  let x_75 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_77 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_75 * vec4<f32>(x_77.z, x_77.z, x_77.z, x_77.z)) + x_80);
  let x_83 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_85 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_83 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_90 : vec3<f32> = in_NORMAL0;
  let x_92 : vec4<f32> = u_xlat2;
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_90.x, x_90.x, x_90.x, x_90.x) * x_92) + x_94);
  let x_104 : f32 = in_TANGENT0.w;
  u_xlat24 = (-(abs(x_104)) + 1.0f);
  let x_110 : vec4<f32> = u_xlat1;
  let x_112 : f32 = u_xlat24;
  let x_116 : vec4<f32> = in_POSITION0;
  let x_118 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112, x_112, x_112)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat3;
  let x_125 : vec4<f32> = x_13.x_TreeInstanceScale;
  let x_127 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat26 = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_137 : f32 = u_xlat26;
  let x_141 : f32 = in_COLOR0.x;
  u_xlat4.y = (x_137 + x_141);
  let x_146 : f32 = u_xlat4.y;
  let x_148 : f32 = in_COLOR0.y;
  u_xlat26 = (x_146 + x_148);
  let x_150 : vec4<f32> = u_xlat3;
  let x_152 : f32 = u_xlat26;
  u_xlat4.x = dot(vec3<f32>(x_150.x, x_150.y, x_150.z), vec3<f32>(x_152, x_152, x_152));
  let x_156 : vec4<f32> = u_xlat4;
  let x_159 : vec4<f32> = x_13.x_Time;
  u_xlat4 = (vec4<f32>(x_156.x, x_156.x, x_156.y, x_156.y) + vec4<f32>(x_159.y, x_159.y, x_159.y, x_159.y));
  let x_162 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_162 * vec4<f32>(1.975000024f, 0.792999983f, 0.375f, 0.193000004f));
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = fract(x_169);
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_171 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = fract(x_178);
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_180 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_186 : vec4<f32> = u_xlat4;
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat5 = (abs(x_186) * abs(x_188));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = ((-(abs(x_191)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_198 : vec4<f32> = u_xlat4;
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_198 * x_199);
  let x_202 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat4;
  let x_206 : vec2<f32> = (vec2<f32>(x_202.y, x_202.w) + vec2<f32>(x_204.x, x_204.z));
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_207.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = x_13.x_Wind;
  let x_215 : vec3<f32> = (vec3<f32>(x_209.y, x_209.y, x_209.y) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat5;
  let x_221 : vec4<f32> = in_TEXCOORD1;
  let x_223 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_221.y, x_221.y, x_221.y));
  let x_224 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_229 : f32 = u_xlat4.y;
  let x_231 : f32 = in_TEXCOORD1.y;
  u_xlat6.y = (x_229 * x_231);
  let x_236 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_238 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  u_xlat7 = (x_236 * vec4<f32>(x_238.y, x_238.y, x_238.y, x_238.y));
  let x_242 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_244 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_247 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_242 * vec4<f32>(x_244.x, x_244.x, x_244.x, x_244.x)) + x_247);
  let x_250 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_252 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_255 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_250 * vec4<f32>(x_252.z, x_252.z, x_252.z, x_252.z)) + x_255);
  let x_258 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_260 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_263 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_258 * vec4<f32>(x_260.w, x_260.w, x_260.w, x_260.w)) + x_263);
  let x_265 : vec3<f32> = in_NORMAL0;
  let x_267 : vec4<f32> = u_xlat7;
  let x_269 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_265.z, x_265.z, x_265.z, x_265.z) * x_267) + x_269);
  let x_272 : vec4<f32> = u_xlat1;
  let x_273 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_272, x_273);
  let x_275 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_275);
  let x_277 : vec4<f32> = u_xlat1;
  let x_279 : f32 = u_xlat25;
  let x_282 : vec3<f32> = in_NORMAL0;
  let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279, x_279, x_279)) + -(x_282));
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : f32 = u_xlat24;
  let x_289 : vec4<f32> = u_xlat1;
  let x_292 : vec3<f32> = in_NORMAL0;
  let x_293 : vec3<f32> = ((vec3<f32>(x_287, x_287, x_287) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : f32 = in_COLOR0.y;
  u_xlat24 = (x_297 * 0.100000001f);
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : f32 = u_xlat24;
  let x_304 : vec2<f32> = (vec2<f32>(x_300.x, x_300.z) * vec2<f32>(x_302, x_302));
  let x_305 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_304.x, x_305.y, x_304.y);
  u_xlat4.z = 0.300000012f;
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : vec3<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat5;
  let x_316 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.z, x_310.x) * x_312) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_13.x_Wind;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_322.w, x_322.w, x_322.w)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = in_TEXCOORD1;
  let x_333 : vec4<f32> = x_13.x_Wind;
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.x, x_330.x) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_343 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : f32 = u_xlat24;
  let x_351 : f32 = x_13.x_SquashPlaneNormal.w;
  u_xlat24 = (x_348 + x_351);
  let x_353 : f32 = u_xlat24;
  let x_357 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : vec3<f32> = ((-(vec3<f32>(x_353, x_353, x_353)) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec4<f32> = u_xlat3;
  let x_367 : vec4<f32> = u_xlat4;
  let x_370 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) + -(vec3<f32>(x_367.x, x_367.y, x_367.z)));
  let x_371 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_375 : f32 = x_13.x_SquashAmount;
  let x_377 : vec4<f32> = u_xlat3;
  let x_380 : vec4<f32> = u_xlat4;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375, x_375, x_375) * vec3<f32>(x_377.x, x_377.y, x_377.z)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = x_13.unity_ObjectToWorld[1i];
  u_xlat4 = (vec4<f32>(x_385.y, x_385.y, x_385.y, x_385.y) * x_388);
  let x_391 : vec4<f32> = x_13.unity_ObjectToWorld[0i];
  let x_392 : vec4<f32> = u_xlat3;
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_391 * vec4<f32>(x_392.x, x_392.x, x_392.x, x_392.x)) + x_395);
  let x_398 : vec4<f32> = x_13.unity_ObjectToWorld[2i];
  let x_399 : vec4<f32> = u_xlat3;
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_398 * vec4<f32>(x_399.z, x_399.z, x_399.z, x_399.z)) + x_402);
  let x_404 : vec4<f32> = u_xlat3;
  let x_406 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat3 = (x_404 + x_406);
  let x_408 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = x_13.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_408.y, x_408.y, x_408.y, x_408.y) * x_412);
  let x_415 : vec4<f32> = x_13.unity_MatrixVP[0i];
  let x_416 : vec4<f32> = u_xlat3;
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_415 * vec4<f32>(x_416.x, x_416.x, x_416.x, x_416.x)) + x_419);
  let x_422 : vec4<f32> = x_13.unity_MatrixVP[2i];
  let x_423 : vec4<f32> = u_xlat3;
  let x_426 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_422 * vec4<f32>(x_423.z, x_423.z, x_423.z, x_423.z)) + x_426);
  let x_433 : vec4<f32> = x_13.unity_MatrixVP[3i];
  let x_434 : vec4<f32> = u_xlat3;
  let x_437 : vec4<f32> = u_xlat4;
  gl_Position = ((x_433 * vec4<f32>(x_434.w, x_434.w, x_434.w, x_434.w)) + x_437);
  let x_444 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_444.x, x_444.y);
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_451);
  let x_453 : f32 = u_xlat24;
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat2;
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(vec3<f32>(x_466.x, x_466.y, x_466.z), vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_472 : vec4<f32> = u_xlat7;
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(vec3<f32>(x_472.x, x_472.y, x_472.z), vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_478 : vec4<f32> = u_xlat2;
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_485 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_485);
  let x_489 : vec4<f32> = u_xlat0;
  let x_491 : vec4<f32> = u_xlat2;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.x, x_489.x) * vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : f32 = u_xlat3.y;
  let x_500 : f32 = x_13.unity_MatrixV[1i].z;
  u_xlat0.x = (x_497 * x_500);
  let x_504 : f32 = x_13.unity_MatrixV[0i].z;
  let x_506 : f32 = u_xlat3.x;
  let x_509 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_504 * x_506) + x_509);
  let x_513 : f32 = x_13.unity_MatrixV[2i].z;
  let x_515 : f32 = u_xlat3.z;
  let x_518 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_513 * x_515) + x_518);
  let x_522 : f32 = x_13.unity_MatrixV[3i].z;
  let x_524 : f32 = u_xlat3.w;
  let x_527 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_522 * x_524) + x_527);
  let x_531 : f32 = u_xlat0.x;
  let x_533 : f32 = x_13.x_ProjectionParams.w;
  u_xlat0.x = (x_531 * x_533);
  let x_537 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = -(x_537);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(5) in_COLOR0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}

