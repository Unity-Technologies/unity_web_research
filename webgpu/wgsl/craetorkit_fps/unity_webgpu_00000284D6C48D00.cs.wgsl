struct CB0 {
  ZBufferParams : vec4<f32>,
}

struct S {
  value : array<u32, 1u>,
}

var<private> gl_WorkGroupID : vec3<u32>;

var<private> gl_LocalInvocationID : vec3<u32>;

@group(0) @binding(0) var Depth : texture_2d<f32>;

@group(1) @binding(0) var<uniform> x_108 : CB0;

@group(0) @binding(1) var LinearZ_origX0X : texture_storage_2d<r32float, write>;

var<workgroup> TGSM0 : array<S, 256u>;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(2) var DS2x_origX1X : texture_storage_2d<r32float, write>;

@group(0) @binding(3) var DS2xAtlas_origX2X : texture_storage_2d_array<r32float, write>;

var<private> gl_LocalInvocationIndex : u32;

@group(0) @binding(4) var DS4x_origX3X : texture_storage_2d<r32float, write>;

@group(0) @binding(5) var DS4xAtlas_origX4X : texture_storage_2d_array<r32float, write>;

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
  var u_xlat8 : f32;
  var u_xlatb12 : bool;
  var u_xlat12 : f32;
  var u_xlati8 : vec2<i32>;
  var u_xlatu2 : vec4<u32>;
  var u_xlatu3 : vec4<u32>;
  var u_xlat5 : f32;
  var u_xlatb9 : bool;
  var u_xlat9 : f32;
  var u_xlat1 : f32;
  var u_xlatb5 : bool;
  var u_xlatu1 : vec4<u32>;
  var u_xlat0 : f32;
  var u_xlatb4 : bool;
  var u_xlat4 : f32;
  var u_xlati0 : i32;
  var u_xlati4 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlatu4 : vec2<u32>;
  var u_xlati12 : i32;
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
  let x_84 : vec4<u32> = u_xlatu0;
  let x_89 : u32 = u_xlatu0.w;
  let x_92 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_84.x, x_84.y)), bitcast<i32>(x_89));
  u_xlat8 = x_92.x;
  let x_97 : f32 = u_xlat8;
  u_xlatb12 = (x_97 == 0.0f);
  let x_100 : bool = u_xlatb12;
  if (x_100) {
    u_xlat12 = 100000.0f;
  } else {
    let x_112 : f32 = x_108.ZBufferParams.x;
    let x_113 : f32 = u_xlat8;
    let x_116 : f32 = x_108.ZBufferParams.y;
    u_xlat8 = ((x_112 * x_113) + x_116);
    let x_119 : f32 = u_xlat8;
    u_xlat12 = (1.0f / x_119);
  }
  let x_125 : vec4<u32> = u_xlatu0;
  let x_128 : f32 = u_xlat12;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_125.x, x_125.y)), vec4<f32>(x_128, x_128, x_128, x_128));
  let x_136 : i32 = u_xlati1;
  let x_137 : f32 = u_xlat12;
  TGSM0[x_136].value[0i] = bitcast<u32>(x_137);
  let x_143 : i32 = u_xlati1;
  u_xlati8 = (vec2<i32>(x_143, x_143) + vec2<i32>(8i, 136i));
  let x_150 : vec4<u32> = u_xlatu0;
  u_xlatu2 = (vec4<u32>(x_150.x, x_150.y, x_150.x, x_150.y) + vec4<u32>(0u, 8u, 8u, 0u));
  let x_156 : vec4<u32> = u_xlatu2;
  let x_157 : vec2<u32> = vec2<u32>(x_156.z, x_156.w);
  let x_158 : vec4<u32> = u_xlatu3;
  u_xlatu3 = vec4<u32>(x_157.x, x_157.y, x_158.z, x_158.w);
  u_xlatu3.z = 0u;
  u_xlatu3.w = 0u;
  let x_164 : vec4<u32> = u_xlatu3;
  let x_168 : u32 = u_xlatu3.w;
  let x_170 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_164.x, x_164.y)), bitcast<i32>(x_168));
  u_xlat5 = x_170.x;
  let x_173 : f32 = u_xlat5;
  u_xlatb9 = (x_173 == 0.0f);
  let x_175 : bool = u_xlatb9;
  if (x_175) {
    u_xlat9 = 100000.0f;
  } else {
    let x_181 : f32 = x_108.ZBufferParams.x;
    let x_182 : f32 = u_xlat5;
    let x_185 : f32 = x_108.ZBufferParams.y;
    u_xlat5 = ((x_181 * x_182) + x_185);
    let x_187 : f32 = u_xlat5;
    u_xlat9 = (1.0f / x_187);
  }
  let x_190 : vec4<u32> = u_xlatu3;
  let x_193 : f32 = u_xlat9;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_190.x, x_190.y)), vec4<f32>(x_193, x_193, x_193, x_193));
  let x_196 : i32 = u_xlati8.x;
  let x_197 : f32 = u_xlat9;
  TGSM0[x_196].value[0i] = bitcast<u32>(x_197);
  let x_200 : i32 = u_xlati1;
  u_xlati8.x = (x_200 + 128i);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  let x_208 : vec4<u32> = u_xlatu2;
  let x_212 : u32 = u_xlatu2.w;
  let x_214 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_208.x, x_208.y)), bitcast<i32>(x_212));
  u_xlat1 = x_214.x;
  let x_217 : f32 = u_xlat1;
  u_xlatb5 = (x_217 == 0.0f);
  let x_219 : bool = u_xlatb5;
  if (x_219) {
    u_xlat5 = 100000.0f;
  } else {
    let x_224 : f32 = x_108.ZBufferParams.x;
    let x_225 : f32 = u_xlat1;
    let x_228 : f32 = x_108.ZBufferParams.y;
    u_xlat1 = ((x_224 * x_225) + x_228);
    let x_230 : f32 = u_xlat1;
    u_xlat5 = (1.0f / x_230);
  }
  let x_233 : vec4<u32> = u_xlatu2;
  let x_236 : f32 = u_xlat5;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_233.x, x_233.y)), vec4<f32>(x_236, x_236, x_236, x_236));
  let x_239 : i32 = u_xlati8.x;
  let x_240 : f32 = u_xlat5;
  TGSM0[x_239].value[0i] = bitcast<u32>(x_240);
  let x_244 : vec4<u32> = u_xlatu0;
  let x_247 : vec2<u32> = (vec2<u32>(x_244.x, x_244.y) + vec2<u32>(8u, 8u));
  let x_248 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_247.x, x_247.y, x_248.z, x_248.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_254 : vec4<u32> = u_xlatu1;
  let x_258 : u32 = u_xlatu1.w;
  let x_260 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_254.x, x_254.y)), bitcast<i32>(x_258));
  u_xlat0 = x_260.x;
  let x_263 : f32 = u_xlat0;
  u_xlatb4 = (x_263 == 0.0f);
  let x_265 : bool = u_xlatb4;
  if (x_265) {
    u_xlat4 = 100000.0f;
  } else {
    let x_271 : f32 = x_108.ZBufferParams.x;
    let x_272 : f32 = u_xlat0;
    let x_275 : f32 = x_108.ZBufferParams.y;
    u_xlat0 = ((x_271 * x_272) + x_275);
    let x_277 : f32 = u_xlat0;
    u_xlat4 = (1.0f / x_277);
  }
  let x_280 : vec4<u32> = u_xlatu1;
  let x_283 : f32 = u_xlat4;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_280.x, x_280.y)), vec4<f32>(x_283, x_283, x_283, x_283));
  let x_286 : i32 = u_xlati8.y;
  let x_287 : f32 = u_xlat4;
  TGSM0[x_286].value[0i] = bitcast<u32>(x_287);
  workgroupBarrier();
  let x_293 : u32 = gl_LocalInvocationID.x;
  u_xlati0 = (bitcast<i32>(x_293) << bitcast<u32>(1i));
  let x_298 : u32 = gl_LocalInvocationID.y;
  let x_302 : i32 = u_xlati0;
  u_xlati0 = ((bitcast<i32>(x_298) * 32i) + x_302);
  let x_304 : i32 = u_xlati0;
  let x_306 : u32 = TGSM0[x_304].value[0i];
  u_xlati0 = bitcast<i32>(x_306);
  let x_311 : u32 = gl_GlobalInvocationID.x;
  let x_314 : u32 = gl_GlobalInvocationID.y;
  param = bitcast<i32>(x_311);
  param_1 = bitcast<i32>(x_314);
  param_2 = 2i;
  param_3 = 30i;
  let x_322 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati4 = x_322;
  let x_323 : i32 = u_xlati4;
  let x_324 : u32 = bitcast<u32>(x_323);
  let x_328 : vec2<u32> = (vec2<u32>(x_324, x_324) & vec2<u32>(15u, 15u));
  let x_329 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_329.x, x_329.y, x_328.x, x_328.y);
  let x_333 : vec3<u32> = gl_GlobalInvocationID;
  let x_336 : i32 = u_xlati0;
  textureStore(DS2x_origX1X, bitcast<vec2<i32>>(vec2<u32>(x_333.x, x_333.y)), bitcast<vec4<f32>>(vec4<i32>(x_336, x_336, x_336, x_336)));
  let x_340 : vec3<u32> = gl_GlobalInvocationID;
  let x_343 : vec2<u32> = (vec2<u32>(x_340.x, x_340.y) >> vec2<u32>(2u, 2u));
  let x_344 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_343.x, x_343.y, x_344.z, x_344.w);
  let x_350 : vec4<u32> = u_xlatu1;
  let x_354 : i32 = u_xlati0;
  textureStore(DS2xAtlas_origX2X, (bitcast<vec3<i32>>(vec3<u32>(x_350.x, x_350.y, x_350.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_350.x, x_350.y, x_350.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_354, x_354, x_354, x_354)));
  let x_358 : u32 = gl_LocalInvocationIndex;
  u_xlati4 = bitcast<i32>((x_358 & 9u));
  let x_362 : i32 = u_xlati4;
  if ((x_362 == 0i)) {
    let x_368 : vec3<u32> = gl_GlobalInvocationID;
    u_xlatu4 = (vec2<u32>(x_368.x, x_368.y) >> vec2<u32>(1u, 1u));
    let x_374 : u32 = u_xlatu4.x;
    let x_377 : u32 = u_xlatu4.y;
    param_4 = bitcast<i32>(x_374);
    param_5 = bitcast<i32>(x_377);
    param_6 = 2i;
    param_7 = 30i;
    let x_383 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
    u_xlati12 = x_383;
    let x_384 : i32 = u_xlati12;
    let x_385 : u32 = bitcast<u32>(x_384);
    let x_387 : vec2<u32> = (vec2<u32>(x_385, x_385) & vec2<u32>(15u, 15u));
    let x_388 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_388.x, x_388.y, x_387.x, x_387.y);
    let x_392 : vec2<u32> = u_xlatu4;
    let x_394 : i32 = u_xlati0;
    textureStore(DS4x_origX3X, bitcast<vec2<i32>>(x_392), bitcast<vec4<f32>>(vec4<i32>(x_394, x_394, x_394, x_394)));
    let x_397 : vec2<u32> = u_xlatu4;
    let x_398 : vec2<u32> = (x_397 >> vec2<u32>(2u, 2u));
    let x_399 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_398.x, x_398.y, x_399.z, x_399.w);
    let x_403 : vec4<u32> = u_xlatu1;
    let x_406 : i32 = u_xlati0;
    textureStore(DS4xAtlas_origX4X, (bitcast<vec3<i32>>(vec3<u32>(x_403.x, x_403.y, x_403.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_403.x, x_403.y, x_403.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_406, x_406, x_406, x_406)));
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

