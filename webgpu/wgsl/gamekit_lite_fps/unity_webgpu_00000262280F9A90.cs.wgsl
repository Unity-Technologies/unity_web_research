struct CB0 {
  ZBufferParams : vec4<f32>,
}

struct S {
  value : array<u32, 1u>,
}

var<private> u_xlatu0 : vec4<u32>;

var<private> gl_WorkGroupID : vec3<u32>;

var<private> gl_LocalInvocationID : vec3<u32>;

var<private> u_xlati1 : i32;

var<private> u_xlat8 : f32;

@group(0) @binding(1) var Depth : texture_2d<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlat12 : f32;

@group(0) @binding(0) var<uniform> x_110 : CB0;

@group(0) @binding(2) var LinearZ_origX0X : texture_storage_2d<r32float, write>;

var<workgroup> TGSM0 : array<S, 256u>;

var<private> u_xlati8 : vec2<i32>;

var<private> u_xlatu2 : vec4<u32>;

var<private> u_xlatu3 : vec4<u32>;

var<private> u_xlat5 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlat9 : f32;

var<private> u_xlat1 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat0 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlat4 : f32;

var<private> u_xlati0 : i32;

var<private> u_xlati4 : i32;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(3) var DS2x_origX1X : texture_storage_2d<r32float, write>;

@group(0) @binding(4) var DS2xAtlas_origX2X : texture_storage_2d_array<r32float, write>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlatu4 : vec2<u32>;

var<private> u_xlati12 : i32;

@group(0) @binding(5) var DS4x_origX3X : texture_storage_2d<r32float, write>;

@group(0) @binding(6) var DS4xAtlas_origX4X : texture_storage_2d_array<r32float, write>;

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
  let x_86 : vec4<u32> = u_xlatu0;
  let x_91 : u32 = u_xlatu0.w;
  let x_94 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_86.x, x_86.y)), bitcast<i32>(x_91));
  u_xlat8 = x_94.x;
  let x_99 : f32 = u_xlat8;
  u_xlatb12 = (x_99 == 0.0f);
  let x_102 : bool = u_xlatb12;
  if (x_102) {
    u_xlat12 = 100000.0f;
  } else {
    let x_114 : f32 = x_110.ZBufferParams.x;
    let x_115 : f32 = u_xlat8;
    let x_118 : f32 = x_110.ZBufferParams.y;
    u_xlat8 = ((x_114 * x_115) + x_118);
    let x_121 : f32 = u_xlat8;
    u_xlat12 = (1.0f / x_121);
  }
  let x_127 : vec4<u32> = u_xlatu0;
  let x_130 : f32 = u_xlat12;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_127.x, x_127.y)), vec4<f32>(x_130, x_130, x_130, x_130));
  let x_138 : i32 = u_xlati1;
  let x_139 : f32 = u_xlat12;
  TGSM0[x_138].value[0i] = bitcast<u32>(x_139);
  let x_145 : i32 = u_xlati1;
  u_xlati8 = (vec2<i32>(x_145, x_145) + vec2<i32>(8i, 136i));
  let x_152 : vec4<u32> = u_xlatu0;
  u_xlatu2 = (vec4<u32>(x_152.x, x_152.y, x_152.x, x_152.y) + vec4<u32>(0u, 8u, 8u, 0u));
  let x_158 : vec4<u32> = u_xlatu2;
  let x_159 : vec2<u32> = vec2<u32>(x_158.z, x_158.w);
  let x_160 : vec4<u32> = u_xlatu3;
  u_xlatu3 = vec4<u32>(x_159.x, x_159.y, x_160.z, x_160.w);
  u_xlatu3.z = 0u;
  u_xlatu3.w = 0u;
  let x_166 : vec4<u32> = u_xlatu3;
  let x_170 : u32 = u_xlatu3.w;
  let x_172 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_166.x, x_166.y)), bitcast<i32>(x_170));
  u_xlat5 = x_172.x;
  let x_175 : f32 = u_xlat5;
  u_xlatb9 = (x_175 == 0.0f);
  let x_177 : bool = u_xlatb9;
  if (x_177) {
    u_xlat9 = 100000.0f;
  } else {
    let x_183 : f32 = x_110.ZBufferParams.x;
    let x_184 : f32 = u_xlat5;
    let x_187 : f32 = x_110.ZBufferParams.y;
    u_xlat5 = ((x_183 * x_184) + x_187);
    let x_189 : f32 = u_xlat5;
    u_xlat9 = (1.0f / x_189);
  }
  let x_192 : vec4<u32> = u_xlatu3;
  let x_195 : f32 = u_xlat9;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_192.x, x_192.y)), vec4<f32>(x_195, x_195, x_195, x_195));
  let x_198 : i32 = u_xlati8.x;
  let x_199 : f32 = u_xlat9;
  TGSM0[x_198].value[0i] = bitcast<u32>(x_199);
  let x_202 : i32 = u_xlati1;
  u_xlati8.x = (x_202 + 128i);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  let x_210 : vec4<u32> = u_xlatu2;
  let x_214 : u32 = u_xlatu2.w;
  let x_216 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_210.x, x_210.y)), bitcast<i32>(x_214));
  u_xlat1 = x_216.x;
  let x_219 : f32 = u_xlat1;
  u_xlatb5 = (x_219 == 0.0f);
  let x_221 : bool = u_xlatb5;
  if (x_221) {
    u_xlat5 = 100000.0f;
  } else {
    let x_226 : f32 = x_110.ZBufferParams.x;
    let x_227 : f32 = u_xlat1;
    let x_230 : f32 = x_110.ZBufferParams.y;
    u_xlat1 = ((x_226 * x_227) + x_230);
    let x_232 : f32 = u_xlat1;
    u_xlat5 = (1.0f / x_232);
  }
  let x_235 : vec4<u32> = u_xlatu2;
  let x_238 : f32 = u_xlat5;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_235.x, x_235.y)), vec4<f32>(x_238, x_238, x_238, x_238));
  let x_241 : i32 = u_xlati8.x;
  let x_242 : f32 = u_xlat5;
  TGSM0[x_241].value[0i] = bitcast<u32>(x_242);
  let x_246 : vec4<u32> = u_xlatu0;
  let x_249 : vec2<u32> = (vec2<u32>(x_246.x, x_246.y) + vec2<u32>(8u, 8u));
  let x_250 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_249.x, x_249.y, x_250.z, x_250.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_256 : vec4<u32> = u_xlatu1;
  let x_260 : u32 = u_xlatu1.w;
  let x_262 : vec4<f32> = textureLoad(Depth, bitcast<vec2<i32>>(vec2<u32>(x_256.x, x_256.y)), bitcast<i32>(x_260));
  u_xlat0 = x_262.x;
  let x_265 : f32 = u_xlat0;
  u_xlatb4 = (x_265 == 0.0f);
  let x_267 : bool = u_xlatb4;
  if (x_267) {
    u_xlat4 = 100000.0f;
  } else {
    let x_273 : f32 = x_110.ZBufferParams.x;
    let x_274 : f32 = u_xlat0;
    let x_277 : f32 = x_110.ZBufferParams.y;
    u_xlat0 = ((x_273 * x_274) + x_277);
    let x_279 : f32 = u_xlat0;
    u_xlat4 = (1.0f / x_279);
  }
  let x_282 : vec4<u32> = u_xlatu1;
  let x_285 : f32 = u_xlat4;
  textureStore(LinearZ_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_282.x, x_282.y)), vec4<f32>(x_285, x_285, x_285, x_285));
  let x_288 : i32 = u_xlati8.y;
  let x_289 : f32 = u_xlat4;
  TGSM0[x_288].value[0i] = bitcast<u32>(x_289);
  workgroupBarrier();
  let x_295 : u32 = gl_LocalInvocationID.x;
  u_xlati0 = (bitcast<i32>(x_295) << bitcast<u32>(1i));
  let x_300 : u32 = gl_LocalInvocationID.y;
  let x_304 : i32 = u_xlati0;
  u_xlati0 = ((bitcast<i32>(x_300) * 32i) + x_304);
  let x_306 : i32 = u_xlati0;
  let x_308 : u32 = TGSM0[x_306].value[0i];
  u_xlati0 = bitcast<i32>(x_308);
  let x_313 : u32 = gl_GlobalInvocationID.x;
  let x_316 : u32 = gl_GlobalInvocationID.y;
  param = bitcast<i32>(x_313);
  param_1 = bitcast<i32>(x_316);
  param_2 = 2i;
  param_3 = 30i;
  let x_324 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati4 = x_324;
  let x_325 : i32 = u_xlati4;
  let x_326 : u32 = bitcast<u32>(x_325);
  let x_330 : vec2<u32> = (vec2<u32>(x_326, x_326) & vec2<u32>(15u, 15u));
  let x_331 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_331.x, x_331.y, x_330.x, x_330.y);
  let x_335 : vec3<u32> = gl_GlobalInvocationID;
  let x_338 : i32 = u_xlati0;
  textureStore(DS2x_origX1X, bitcast<vec2<i32>>(vec2<u32>(x_335.x, x_335.y)), bitcast<vec4<f32>>(vec4<i32>(x_338, x_338, x_338, x_338)));
  let x_342 : vec3<u32> = gl_GlobalInvocationID;
  let x_345 : vec2<u32> = (vec2<u32>(x_342.x, x_342.y) >> vec2<u32>(2u, 2u));
  let x_346 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_345.x, x_345.y, x_346.z, x_346.w);
  let x_352 : vec4<u32> = u_xlatu1;
  let x_356 : i32 = u_xlati0;
  textureStore(DS2xAtlas_origX2X, (bitcast<vec3<i32>>(vec3<u32>(x_352.x, x_352.y, x_352.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_352.x, x_352.y, x_352.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_356, x_356, x_356, x_356)));
  let x_360 : u32 = gl_LocalInvocationIndex;
  u_xlati4 = bitcast<i32>((x_360 & 9u));
  let x_364 : i32 = u_xlati4;
  if ((x_364 == 0i)) {
    let x_370 : vec3<u32> = gl_GlobalInvocationID;
    u_xlatu4 = (vec2<u32>(x_370.x, x_370.y) >> vec2<u32>(1u, 1u));
    let x_376 : u32 = u_xlatu4.x;
    let x_379 : u32 = u_xlatu4.y;
    param_4 = bitcast<i32>(x_376);
    param_5 = bitcast<i32>(x_379);
    param_6 = 2i;
    param_7 = 30i;
    let x_385 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
    u_xlati12 = x_385;
    let x_386 : i32 = u_xlati12;
    let x_387 : u32 = bitcast<u32>(x_386);
    let x_389 : vec2<u32> = (vec2<u32>(x_387, x_387) & vec2<u32>(15u, 15u));
    let x_390 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_390.x, x_390.y, x_389.x, x_389.y);
    let x_394 : vec2<u32> = u_xlatu4;
    let x_396 : i32 = u_xlati0;
    textureStore(DS4x_origX3X, bitcast<vec2<i32>>(x_394), bitcast<vec4<f32>>(vec4<i32>(x_396, x_396, x_396, x_396)));
    let x_399 : vec2<u32> = u_xlatu4;
    let x_400 : vec2<u32> = (x_399 >> vec2<u32>(2u, 2u));
    let x_401 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_400.x, x_400.y, x_401.z, x_401.w);
    let x_405 : vec4<u32> = u_xlatu1;
    let x_408 : i32 = u_xlati0;
    textureStore(DS4xAtlas_origX4X, (bitcast<vec3<i32>>(vec3<u32>(x_405.x, x_405.y, x_405.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_405.x, x_405.y, x_405.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_408, x_408, x_408, x_408)));
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

