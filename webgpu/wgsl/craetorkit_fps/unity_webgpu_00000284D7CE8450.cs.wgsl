struct CB0 {
  ZBufferParams : vec4<f32>,
}

struct S {
  value : array<u32, 2u>,
}

var<private> gl_WorkGroupID : vec3<u32>;

var<private> gl_LocalInvocationID : vec3<u32>;

@group(0) @binding(0) var Depth : texture_2d<f32>;

@group(1) @binding(0) var<uniform> x_98 : CB0;

@group(0) @binding(1) var LinearZ_origX0X : texture_storage_2d<rg32float, write>;

var<workgroup> TGSM0 : array<S, 256u>;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(2) var DS2x_origX1X : texture_storage_2d<rg32float, write>;

@group(0) @binding(3) var DS2xAtlas_origX2X : texture_storage_2d_array<rg32float, write>;

var<private> gl_LocalInvocationIndex : u32;

@group(0) @binding(4) var DS4x_origX3X : texture_storage_2d<rg32float, write>;

@group(0) @binding(5) var DS4xAtlas_origX4X : texture_storage_2d_array<rg32float, write>;

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
  var u_xlatu0 : vec4<u32>;
  var u_xlati1 : i32;
  var u_xlat8 : vec2<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlatb8 : vec2<bool>;
  var u_xlati8 : vec2<i32>;
  var u_xlatu2 : vec4<u32>;
  var u_xlatu3 : vec4<u32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb5 : vec2<bool>;
  var u_xlat1 : vec2<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatb1 : vec2<bool>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat0 : vec2<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlati0 : vec2<i32>;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlatu8 : vec2<u32>;
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
  let x_64 : u32 = gl_LocalInvocationID.y;
  let x_70 : u32 = gl_LocalInvocationID.x;
  u_xlati1 = ((bitcast<i32>(x_64) * 16i) + bitcast<i32>(x_70));
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_85 : vec4<u32> = u_xlatu0;
  let x_90 : u32 = u_xlatu0.w;
  let x_93 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_85.x, x_85.y)), bitcast<i32>(x_90));
  u_xlat8 = vec2<f32>(x_93.x, x_93.y);
  let x_102 : vec4<f32> = x_98.ZBufferParams;
  let x_104 : vec2<f32> = u_xlat8;
  let x_108 : vec4<f32> = x_98.ZBufferParams;
  u_xlat5 = ((vec2<f32>(x_102.x, x_102.x) * vec2<f32>(x_104.y, x_104.x)) + vec2<f32>(x_108.y, x_108.y));
  let x_113 : vec2<f32> = u_xlat5;
  u_xlat5 = (vec2<f32>(1.0f, 1.0f) / x_113);
  let x_119 : vec2<f32> = u_xlat8;
  let x_124 : vec4<bool> = (vec4<f32>(x_119.y, x_119.x, x_119.y, x_119.x) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_124.x, x_124.y);
  let x_128 : bool = u_xlatb8.x;
  if (x_128) {
    u_xlat5.x = 100000.0f;
  }
  let x_135 : bool = u_xlatb8.y;
  if (x_135) {
    u_xlat5.y = 100000.0f;
  }
  let x_143 : vec4<u32> = u_xlatu0;
  let x_146 : vec2<f32> = u_xlat5;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_143.x, x_143.y)), vec4<f32>(x_146.x, x_146.y, x_146.x, x_146.x));
  let x_154 : i32 = u_xlati1;
  let x_156 : f32 = u_xlat5.x;
  TGSM0[x_154].value[0i] = bitcast<u32>(x_156);
  let x_160 : i32 = u_xlati1;
  let x_163 : f32 = u_xlat5.y;
  TGSM0[x_160].value[1i] = bitcast<u32>(x_163);
  let x_168 : i32 = u_xlati1;
  u_xlati8 = (vec2<i32>(x_168, x_168) + vec2<i32>(8i, 136i));
  let x_175 : vec4<u32> = u_xlatu0;
  u_xlatu2 = (vec4<u32>(x_175.x, x_175.y, x_175.x, x_175.y) + vec4<u32>(0u, 8u, 8u, 0u));
  let x_181 : vec4<u32> = u_xlatu2;
  let x_182 : vec2<u32> = vec2<u32>(x_181.z, x_181.w);
  let x_183 : vec4<u32> = u_xlatu3;
  u_xlatu3 = vec4<u32>(x_182.x, x_182.y, x_183.z, x_183.w);
  u_xlatu3.z = 0u;
  u_xlatu3.w = 0u;
  let x_188 : vec4<u32> = u_xlatu3;
  let x_192 : u32 = u_xlatu3.w;
  let x_194 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_188.x, x_188.y)), bitcast<i32>(x_192));
  u_xlat5 = vec2<f32>(x_194.x, x_194.y);
  let x_198 : vec4<f32> = x_98.ZBufferParams;
  let x_200 : vec2<f32> = u_xlat5;
  let x_204 : vec4<f32> = x_98.ZBufferParams;
  u_xlat11 = ((vec2<f32>(x_198.x, x_198.x) * vec2<f32>(x_200.y, x_200.x)) + vec2<f32>(x_204.y, x_204.y));
  let x_207 : vec2<f32> = u_xlat11;
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / x_207);
  let x_210 : vec2<f32> = u_xlat5;
  let x_212 : vec4<bool> = (vec4<f32>(x_210.y, x_210.x, x_210.y, x_210.y) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_212.x, x_212.y);
  let x_215 : bool = u_xlatb5.x;
  if (x_215) {
    u_xlat11.x = 100000.0f;
  }
  let x_220 : bool = u_xlatb5.y;
  if (x_220) {
    u_xlat11.y = 100000.0f;
  }
  let x_225 : vec4<u32> = u_xlatu3;
  let x_228 : vec2<f32> = u_xlat11;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_225.x, x_225.y)), vec4<f32>(x_228.x, x_228.y, x_228.x, x_228.x));
  let x_231 : i32 = u_xlati8.x;
  let x_233 : f32 = u_xlat11.x;
  TGSM0[x_231].value[0i] = bitcast<u32>(x_233);
  let x_237 : i32 = u_xlati8.x;
  let x_239 : f32 = u_xlat11.y;
  TGSM0[x_237].value[1i] = bitcast<u32>(x_239);
  let x_242 : i32 = u_xlati1;
  u_xlati8.x = (x_242 + 128i);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  let x_250 : vec4<u32> = u_xlatu2;
  let x_254 : u32 = u_xlatu2.w;
  let x_256 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_250.x, x_250.y)), bitcast<i32>(x_254));
  u_xlat1 = vec2<f32>(x_256.x, x_256.y);
  let x_260 : vec4<f32> = x_98.ZBufferParams;
  let x_262 : vec2<f32> = u_xlat1;
  let x_266 : vec4<f32> = x_98.ZBufferParams;
  u_xlat9 = ((vec2<f32>(x_260.x, x_260.x) * vec2<f32>(x_262.y, x_262.x)) + vec2<f32>(x_266.y, x_266.y));
  let x_269 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(1.0f, 1.0f) / x_269);
  let x_272 : vec2<f32> = u_xlat1;
  let x_274 : vec4<bool> = (vec4<f32>(x_272.y, x_272.x, x_272.y, x_272.y) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb1 = vec2<bool>(x_274.x, x_274.y);
  let x_277 : bool = u_xlatb1.x;
  if (x_277) {
    u_xlat9.x = 100000.0f;
  }
  let x_282 : bool = u_xlatb1.y;
  if (x_282) {
    u_xlat9.y = 100000.0f;
  }
  let x_287 : vec4<u32> = u_xlatu2;
  let x_290 : vec2<f32> = u_xlat9;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_287.x, x_287.y)), vec4<f32>(x_290.x, x_290.y, x_290.x, x_290.x));
  let x_293 : i32 = u_xlati8.x;
  let x_295 : f32 = u_xlat9.x;
  TGSM0[x_293].value[0i] = bitcast<u32>(x_295);
  let x_299 : i32 = u_xlati8.x;
  let x_301 : f32 = u_xlat9.y;
  TGSM0[x_299].value[1i] = bitcast<u32>(x_301);
  let x_305 : vec4<u32> = u_xlatu0;
  let x_308 : vec2<u32> = (vec2<u32>(x_305.x, x_305.y) + vec2<u32>(8u, 8u));
  let x_309 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_308.x, x_308.y, x_309.z, x_309.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_315 : vec4<u32> = u_xlatu1;
  let x_319 : u32 = u_xlatu1.w;
  let x_321 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_315.x, x_315.y)), bitcast<i32>(x_319));
  u_xlat0 = vec2<f32>(x_321.x, x_321.y);
  let x_324 : vec4<f32> = x_98.ZBufferParams;
  let x_326 : vec2<f32> = u_xlat0;
  let x_330 : vec4<f32> = x_98.ZBufferParams;
  u_xlat9 = ((vec2<f32>(x_324.x, x_324.x) * vec2<f32>(x_326.y, x_326.x)) + vec2<f32>(x_330.y, x_330.y));
  let x_333 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(1.0f, 1.0f) / x_333);
  let x_336 : vec2<f32> = u_xlat0;
  let x_338 : vec4<bool> = (vec4<f32>(x_336.y, x_336.x, x_336.y, x_336.y) == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb0 = vec2<bool>(x_338.x, x_338.y);
  let x_341 : bool = u_xlatb0.x;
  if (x_341) {
    u_xlat9.x = 100000.0f;
  }
  let x_346 : bool = u_xlatb0.y;
  if (x_346) {
    u_xlat9.y = 100000.0f;
  }
  let x_351 : vec4<u32> = u_xlatu1;
  let x_354 : vec2<f32> = u_xlat9;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_351.x, x_351.y)), vec4<f32>(x_354.x, x_354.y, x_354.x, x_354.x));
  let x_357 : i32 = u_xlati8.y;
  let x_359 : f32 = u_xlat9.x;
  TGSM0[x_357].value[0i] = bitcast<u32>(x_359);
  let x_363 : i32 = u_xlati8.y;
  let x_365 : f32 = u_xlat9.y;
  TGSM0[x_363].value[1i] = bitcast<u32>(x_365);
  workgroupBarrier();
  let x_371 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = (bitcast<i32>(x_371) << bitcast<u32>(1i));
  let x_376 : u32 = gl_LocalInvocationID.y;
  let x_381 : i32 = u_xlati0.x;
  u_xlati0.x = ((bitcast<i32>(x_376) * 32i) + x_381);
  let x_385 : i32 = u_xlati0.x;
  let x_387 : u32 = TGSM0[x_385].value[0i];
  let x_390 : i32 = u_xlati0.x;
  let x_392 : u32 = TGSM0[x_390].value[1i];
  u_xlati0 = vec2<i32>(bitcast<i32>(x_387), bitcast<i32>(x_392));
  let x_397 : u32 = gl_GlobalInvocationID.x;
  let x_400 : u32 = gl_GlobalInvocationID.y;
  param = bitcast<i32>(x_397);
  param_1 = bitcast<i32>(x_400);
  param_2 = 2i;
  param_3 = 30i;
  let x_408 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati8.x = x_408;
  let x_410 : vec2<i32> = u_xlati8;
  let x_415 : vec2<u32> = (bitcast<vec2<u32>>(vec2<i32>(x_410.x, x_410.x)) & vec2<u32>(15u, 15u));
  let x_416 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_416.x, x_416.y, x_415.x, x_415.y);
  let x_420 : vec3<u32> = gl_GlobalInvocationID;
  let x_424 : vec2<i32> = u_xlati0;
  textureStore(DS2x_origX1X, bitcast<vec2<i32>>(vec2<u32>(x_420.x, x_420.y)), bitcast<vec4<f32>>(vec4<i32>(x_424.x, x_424.y, x_424.x, x_424.x)));
  let x_427 : vec3<u32> = gl_GlobalInvocationID;
  let x_430 : vec2<u32> = (vec2<u32>(x_427.x, x_427.y) >> vec2<u32>(2u, 2u));
  let x_431 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_430.x, x_430.y, x_431.z, x_431.w);
  let x_437 : vec4<u32> = u_xlatu1;
  let x_441 : vec2<i32> = u_xlati0;
  textureStore(DS2xAtlas_origX2X, (bitcast<vec3<i32>>(vec3<u32>(x_437.x, x_437.y, x_437.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_437.x, x_437.y, x_437.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_441.x, x_441.y, x_441.x, x_441.x)));
  let x_445 : u32 = gl_LocalInvocationIndex;
  u_xlati8.x = bitcast<i32>((x_445 & 9u));
  let x_451 : i32 = u_xlati8.x;
  if ((x_451 == 0i)) {
    let x_457 : vec3<u32> = gl_GlobalInvocationID;
    u_xlatu8 = (vec2<u32>(x_457.x, x_457.y) >> vec2<u32>(1u, 1u));
    let x_462 : u32 = u_xlatu8.x;
    let x_465 : u32 = u_xlatu8.y;
    param_4 = bitcast<i32>(x_462);
    param_5 = bitcast<i32>(x_465);
    param_6 = 2i;
    param_7 = 30i;
    let x_471 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
    u_xlati1 = x_471;
    let x_472 : i32 = u_xlati1;
    let x_473 : u32 = bitcast<u32>(x_472);
    let x_475 : vec2<u32> = (vec2<u32>(x_473, x_473) & vec2<u32>(15u, 15u));
    let x_476 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_476.x, x_476.y, x_475.x, x_475.y);
    let x_480 : vec2<u32> = u_xlatu8;
    let x_482 : vec2<i32> = u_xlati0;
    textureStore(DS4x_origX3X, bitcast<vec2<i32>>(x_480), bitcast<vec4<f32>>(vec4<i32>(x_482.x, x_482.y, x_482.x, x_482.x)));
    let x_485 : vec2<u32> = u_xlatu8;
    let x_486 : vec2<u32> = (x_485 >> vec2<u32>(2u, 2u));
    let x_487 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_486.x, x_486.y, x_487.z, x_487.w);
    let x_491 : vec4<u32> = u_xlatu1;
    let x_494 : vec2<i32> = u_xlati0;
    textureStore(DS4xAtlas_origX4X, (bitcast<vec3<i32>>(vec3<u32>(x_491.x, x_491.y, x_491.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_491.x, x_491.y, x_491.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_494.x, x_494.y, x_494.x, x_494.x)));
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

