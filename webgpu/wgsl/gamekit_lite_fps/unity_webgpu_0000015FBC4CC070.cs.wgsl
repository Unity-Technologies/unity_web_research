struct CB0 {
  ZBufferParams : vec4<f32>,
}

struct S {
  value : array<u32, 2u>,
}

var<private> u_xlatu0 : vec4<u32>;

var<private> gl_WorkGroupID : vec3<u32>;

var<private> gl_LocalInvocationID : vec3<u32>;

var<private> u_xlati1 : i32;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(1) var Depth : texture_2d<f32>;

var<private> u_xlat5 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_100 : CB0;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(2) var LinearZ_origX0X : texture_storage_2d<rg32float, write>;

var<workgroup> TGSM0 : array<S, 256u>;

var<private> u_xlati8 : vec2<i32>;

var<private> u_xlatu2 : vec4<u32>;

var<private> u_xlatu3 : vec4<u32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlat1 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatb1 : vec2<bool>;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat0 : vec2<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> u_xlati0 : vec2<i32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(3) var DS2x_origX1X : texture_storage_2d<rg32float, write>;

@group(0) @binding(4) var DS2xAtlas_origX2X : texture_storage_2d_array<rg32float, write>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlatu8 : vec2<u32>;

@group(0) @binding(5) var DS4x_origX3X : texture_storage_2d<rg32float, write>;

@group(0) @binding(6) var DS4xAtlas_origX4X : texture_storage_2d_array<rg32float, write>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<u32> = gl_WorkGroupID;
  let x_55 : vec3<u32> = gl_LocalInvocationID;
  let x_57 : vec2<u32> = ((vec2<u32>(x_49.x, x_49.y) * vec2<u32>(16u, 16u)) + vec2<u32>(x_55.x, x_55.y));
  let x_58 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_57.x, x_57.y, x_58.z, x_58.w);
  let x_65 : u32 = gl_LocalInvocationID.y;
  let x_71 : u32 = gl_LocalInvocationID.x;
  u_xlati1 = ((bitcast<i32>(x_65) * 16i) + bitcast<i32>(x_71));
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_87 : vec4<u32> = u_xlatu0;
  let x_92 : u32 = u_xlatu0.w;
  let x_95 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_87.x, x_87.y)), bitcast<i32>(x_92));
  u_xlat8 = vec2<f32>(x_95.x, x_95.y);
  let x_104 : vec4<f32> = x_100.ZBufferParams;
  let x_106 : vec2<f32> = u_xlat8;
  let x_110 : vec4<f32> = x_100.ZBufferParams;
  u_xlat5 = ((vec2<f32>(x_104.x, x_104.x) * vec2<f32>(x_106.y, x_106.x)) + vec2<f32>(x_110.y, x_110.y));
  let x_115 : vec2<f32> = u_xlat5;
  u_xlat5 = (vec2<f32>(1.0f, 1.0f) / x_115);
  let x_121 : vec2<f32> = u_xlat8;
  let x_126 : vec4<bool> = (vec4<f32>(x_121.y, x_121.x, x_121.y, x_121.x) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_126.x, x_126.y);
  let x_130 : bool = u_xlatb8.x;
  if (x_130) {
    u_xlat5.x = 100000.0f;
  }
  let x_137 : bool = u_xlatb8.y;
  if (x_137) {
    u_xlat5.y = 100000.0f;
  }
  let x_145 : vec4<u32> = u_xlatu0;
  let x_148 : vec2<f32> = u_xlat5;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_145.x, x_145.y)), vec4<f32>(x_148.x, x_148.y, x_148.x, x_148.x));
  let x_156 : i32 = u_xlati1;
  let x_158 : f32 = u_xlat5.x;
  TGSM0[x_156].value[0i] = bitcast<u32>(x_158);
  let x_162 : i32 = u_xlati1;
  let x_165 : f32 = u_xlat5.y;
  TGSM0[x_162].value[1i] = bitcast<u32>(x_165);
  let x_170 : i32 = u_xlati1;
  u_xlati8 = (vec2<i32>(x_170, x_170) + vec2<i32>(8i, 136i));
  let x_177 : vec4<u32> = u_xlatu0;
  u_xlatu2 = (vec4<u32>(x_177.x, x_177.y, x_177.x, x_177.y) + vec4<u32>(0u, 8u, 8u, 0u));
  let x_183 : vec4<u32> = u_xlatu2;
  let x_184 : vec2<u32> = vec2<u32>(x_183.z, x_183.w);
  let x_185 : vec4<u32> = u_xlatu3;
  u_xlatu3 = vec4<u32>(x_184.x, x_184.y, x_185.z, x_185.w);
  u_xlatu3.z = 0u;
  u_xlatu3.w = 0u;
  let x_190 : vec4<u32> = u_xlatu3;
  let x_194 : u32 = u_xlatu3.w;
  let x_196 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_190.x, x_190.y)), bitcast<i32>(x_194));
  u_xlat5 = vec2<f32>(x_196.x, x_196.y);
  let x_200 : vec4<f32> = x_100.ZBufferParams;
  let x_202 : vec2<f32> = u_xlat5;
  let x_206 : vec4<f32> = x_100.ZBufferParams;
  u_xlat11 = ((vec2<f32>(x_200.x, x_200.x) * vec2<f32>(x_202.y, x_202.x)) + vec2<f32>(x_206.y, x_206.y));
  let x_209 : vec2<f32> = u_xlat11;
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / x_209);
  let x_212 : vec2<f32> = u_xlat5;
  let x_214 : vec4<bool> = (vec4<f32>(x_212.y, x_212.x, x_212.y, x_212.y) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_214.x, x_214.y);
  let x_217 : bool = u_xlatb5.x;
  if (x_217) {
    u_xlat11.x = 100000.0f;
  }
  let x_222 : bool = u_xlatb5.y;
  if (x_222) {
    u_xlat11.y = 100000.0f;
  }
  let x_227 : vec4<u32> = u_xlatu3;
  let x_230 : vec2<f32> = u_xlat11;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_227.x, x_227.y)), vec4<f32>(x_230.x, x_230.y, x_230.x, x_230.x));
  let x_233 : i32 = u_xlati8.x;
  let x_235 : f32 = u_xlat11.x;
  TGSM0[x_233].value[0i] = bitcast<u32>(x_235);
  let x_239 : i32 = u_xlati8.x;
  let x_241 : f32 = u_xlat11.y;
  TGSM0[x_239].value[1i] = bitcast<u32>(x_241);
  let x_244 : i32 = u_xlati1;
  u_xlati8.x = (x_244 + 128i);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  let x_252 : vec4<u32> = u_xlatu2;
  let x_256 : u32 = u_xlatu2.w;
  let x_258 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_252.x, x_252.y)), bitcast<i32>(x_256));
  u_xlat1 = vec2<f32>(x_258.x, x_258.y);
  let x_262 : vec4<f32> = x_100.ZBufferParams;
  let x_264 : vec2<f32> = u_xlat1;
  let x_268 : vec4<f32> = x_100.ZBufferParams;
  u_xlat9 = ((vec2<f32>(x_262.x, x_262.x) * vec2<f32>(x_264.y, x_264.x)) + vec2<f32>(x_268.y, x_268.y));
  let x_271 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(1.0f, 1.0f) / x_271);
  let x_274 : vec2<f32> = u_xlat1;
  let x_276 : vec4<bool> = (vec4<f32>(x_274.y, x_274.x, x_274.y, x_274.y) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb1 = vec2<bool>(x_276.x, x_276.y);
  let x_279 : bool = u_xlatb1.x;
  if (x_279) {
    u_xlat9.x = 100000.0f;
  }
  let x_284 : bool = u_xlatb1.y;
  if (x_284) {
    u_xlat9.y = 100000.0f;
  }
  let x_289 : vec4<u32> = u_xlatu2;
  let x_292 : vec2<f32> = u_xlat9;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_289.x, x_289.y)), vec4<f32>(x_292.x, x_292.y, x_292.x, x_292.x));
  let x_295 : i32 = u_xlati8.x;
  let x_297 : f32 = u_xlat9.x;
  TGSM0[x_295].value[0i] = bitcast<u32>(x_297);
  let x_301 : i32 = u_xlati8.x;
  let x_303 : f32 = u_xlat9.y;
  TGSM0[x_301].value[1i] = bitcast<u32>(x_303);
  let x_307 : vec4<u32> = u_xlatu0;
  let x_310 : vec2<u32> = (vec2<u32>(x_307.x, x_307.y) + vec2<u32>(8u, 8u));
  let x_311 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_310.x, x_310.y, x_311.z, x_311.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_317 : vec4<u32> = u_xlatu1;
  let x_321 : u32 = u_xlatu1.w;
  let x_323 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_317.x, x_317.y)), bitcast<i32>(x_321));
  u_xlat0 = vec2<f32>(x_323.x, x_323.y);
  let x_326 : vec4<f32> = x_100.ZBufferParams;
  let x_328 : vec2<f32> = u_xlat0;
  let x_332 : vec4<f32> = x_100.ZBufferParams;
  u_xlat9 = ((vec2<f32>(x_326.x, x_326.x) * vec2<f32>(x_328.y, x_328.x)) + vec2<f32>(x_332.y, x_332.y));
  let x_335 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(1.0f, 1.0f) / x_335);
  let x_338 : vec2<f32> = u_xlat0;
  let x_340 : vec4<bool> = (vec4<f32>(x_338.y, x_338.x, x_338.y, x_338.y) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb0 = vec2<bool>(x_340.x, x_340.y);
  let x_343 : bool = u_xlatb0.x;
  if (x_343) {
    u_xlat9.x = 100000.0f;
  }
  let x_348 : bool = u_xlatb0.y;
  if (x_348) {
    u_xlat9.y = 100000.0f;
  }
  let x_353 : vec4<u32> = u_xlatu1;
  let x_356 : vec2<f32> = u_xlat9;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_353.x, x_353.y)), vec4<f32>(x_356.x, x_356.y, x_356.x, x_356.x));
  let x_359 : i32 = u_xlati8.y;
  let x_361 : f32 = u_xlat9.x;
  TGSM0[x_359].value[0i] = bitcast<u32>(x_361);
  let x_365 : i32 = u_xlati8.y;
  let x_367 : f32 = u_xlat9.y;
  TGSM0[x_365].value[1i] = bitcast<u32>(x_367);
  workgroupBarrier();
  let x_373 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = (bitcast<i32>(x_373) << bitcast<u32>(1i));
  let x_378 : u32 = gl_LocalInvocationID.y;
  let x_383 : i32 = u_xlati0.x;
  u_xlati0.x = ((bitcast<i32>(x_378) * 32i) + x_383);
  let x_387 : i32 = u_xlati0.x;
  let x_389 : u32 = TGSM0[x_387].value[0i];
  let x_392 : i32 = u_xlati0.x;
  let x_394 : u32 = TGSM0[x_392].value[1i];
  u_xlati0 = vec2<i32>(bitcast<i32>(x_389), bitcast<i32>(x_394));
  let x_399 : u32 = gl_GlobalInvocationID.x;
  let x_402 : u32 = gl_GlobalInvocationID.y;
  param = bitcast<i32>(x_399);
  param_1 = bitcast<i32>(x_402);
  param_2 = 2i;
  param_3 = 30i;
  let x_410 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati8.x = x_410;
  let x_412 : vec2<i32> = u_xlati8;
  let x_417 : vec2<u32> = (bitcast<vec2<u32>>(vec2<i32>(x_412.x, x_412.x)) & vec2<u32>(15u, 15u));
  let x_418 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_418.x, x_418.y, x_417.x, x_417.y);
  let x_422 : vec3<u32> = gl_GlobalInvocationID;
  let x_426 : vec2<i32> = u_xlati0;
  textureStore(DS2x_origX1X, bitcast<vec2<i32>>(vec2<u32>(x_422.x, x_422.y)), bitcast<vec4<f32>>(vec4<i32>(x_426.x, x_426.y, x_426.x, x_426.x)));
  let x_429 : vec3<u32> = gl_GlobalInvocationID;
  let x_432 : vec2<u32> = (vec2<u32>(x_429.x, x_429.y) >> vec2<u32>(2u, 2u));
  let x_433 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_432.x, x_432.y, x_433.z, x_433.w);
  let x_439 : vec4<u32> = u_xlatu1;
  let x_443 : vec2<i32> = u_xlati0;
  textureStore(DS2xAtlas_origX2X, (bitcast<vec3<i32>>(vec3<u32>(x_439.x, x_439.y, x_439.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_439.x, x_439.y, x_439.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_443.x, x_443.y, x_443.x, x_443.x)));
  let x_447 : u32 = gl_LocalInvocationIndex;
  u_xlati8.x = bitcast<i32>((x_447 & 9u));
  let x_453 : i32 = u_xlati8.x;
  if ((x_453 == 0i)) {
    let x_459 : vec3<u32> = gl_GlobalInvocationID;
    u_xlatu8 = (vec2<u32>(x_459.x, x_459.y) >> vec2<u32>(1u, 1u));
    let x_464 : u32 = u_xlatu8.x;
    let x_467 : u32 = u_xlatu8.y;
    param_4 = bitcast<i32>(x_464);
    param_5 = bitcast<i32>(x_467);
    param_6 = 2i;
    param_7 = 30i;
    let x_473 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
    u_xlati1 = x_473;
    let x_474 : i32 = u_xlati1;
    let x_475 : u32 = bitcast<u32>(x_474);
    let x_477 : vec2<u32> = (vec2<u32>(x_475, x_475) & vec2<u32>(15u, 15u));
    let x_478 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_478.x, x_478.y, x_477.x, x_477.y);
    let x_482 : vec2<u32> = u_xlatu8;
    let x_484 : vec2<i32> = u_xlati0;
    textureStore(DS4x_origX3X, bitcast<vec2<i32>>(x_482), bitcast<vec4<f32>>(vec4<i32>(x_484.x, x_484.y, x_484.x, x_484.x)));
    let x_487 : vec2<u32> = u_xlatu8;
    let x_488 : vec2<u32> = (x_487 >> vec2<u32>(2u, 2u));
    let x_489 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_488.x, x_488.y, x_489.z, x_489.w);
    let x_493 : vec4<u32> = u_xlatu1;
    let x_496 : vec2<i32> = u_xlati0;
    textureStore(DS4xAtlas_origX4X, (bitcast<vec3<i32>>(vec3<u32>(x_493.x, x_493.y, x_493.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_493.x, x_493.y, x_493.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_496.x, x_496.y, x_496.x, x_496.x)));
  }
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(workgroup_id) gl_WorkGroupID_param : vec3<u32>, @builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_WorkGroupID = gl_WorkGroupID_param;
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

