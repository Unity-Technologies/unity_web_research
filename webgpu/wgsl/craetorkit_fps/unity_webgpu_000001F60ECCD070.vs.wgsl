struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

type Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  value : Arr,
}

type RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  unity_ParticleInstanceData_buf : RTArr,
}

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
  @size(12)
  padding : u32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(11) var<storage, read> x_62 : unity_ParticleInstanceData;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlati1 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlatu8 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb15 : bool;
  var x_568 : vec2<f32>;
  var u_xlat14 : f32;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_46 : i32 = gl_InstanceIndex;
  let x_53 : i32 = x_49.unity_BaseInstanceID;
  u_xlati1 = (x_46 + x_53);
  let x_63 : i32 = u_xlati1;
  let x_67 : u32 = x_62.unity_ParticleInstanceData_buf[x_63].value[9i];
  let x_69 : i32 = u_xlati1;
  let x_72 : u32 = x_62.unity_ParticleInstanceData_buf[x_69].value[10i];
  let x_74 : i32 = u_xlati1;
  let x_77 : u32 = x_62.unity_ParticleInstanceData_buf[x_74].value[11i];
  let x_79 : i32 = u_xlati1;
  let x_82 : u32 = x_62.unity_ParticleInstanceData_buf[x_79].value[12i];
  u_xlat2 = vec4<f32>(bitcast<f32>(x_67), bitcast<f32>(x_72), bitcast<f32>(x_77), bitcast<f32>(x_82));
  let x_88 : f32 = u_xlat2.y;
  u_xlat3.w = x_88;
  let x_92 : i32 = u_xlati1;
  let x_95 : u32 = x_62.unity_ParticleInstanceData_buf[x_92].value[3i];
  let x_97 : i32 = u_xlati1;
  let x_100 : u32 = x_62.unity_ParticleInstanceData_buf[x_97].value[4i];
  let x_102 : i32 = u_xlati1;
  let x_105 : u32 = x_62.unity_ParticleInstanceData_buf[x_102].value[5i];
  u_xlat8 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat8.y;
  u_xlat3.y = x_109;
  let x_112 : i32 = u_xlati1;
  let x_115 : u32 = x_62.unity_ParticleInstanceData_buf[x_112].value[7i];
  let x_117 : i32 = u_xlati1;
  let x_120 : u32 = x_62.unity_ParticleInstanceData_buf[x_117].value[8i];
  let x_122 : i32 = u_xlati1;
  let x_125 : u32 = x_62.unity_ParticleInstanceData_buf[x_122].value[6i];
  let x_127 : vec3<f32> = vec3<f32>(bitcast<f32>(x_115), bitcast<f32>(x_120), bitcast<f32>(x_125));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : f32 = u_xlat4.x;
  u_xlat3.z = x_132;
  let x_136 : i32 = u_xlati1;
  let x_139 : u32 = x_62.unity_ParticleInstanceData_buf[x_136].value[2i];
  let x_141 : i32 = u_xlati1;
  let x_143 : u32 = x_62.unity_ParticleInstanceData_buf[x_141].value[0i];
  let x_145 : i32 = u_xlati1;
  let x_148 : u32 = x_62.unity_ParticleInstanceData_buf[x_145].value[1i];
  let x_150 : vec3<f32> = vec3<f32>(bitcast<f32>(x_139), bitcast<f32>(x_143), bitcast<f32>(x_148));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : i32 = u_xlati1;
  let x_157 : u32 = x_62.unity_ParticleInstanceData_buf[x_154].value[13i];
  u_xlat1.x = bitcast<f32>(x_157);
  let x_161 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_161);
  let x_165 : f32 = u_xlat5.z;
  u_xlat3.x = x_165;
  let x_168 : vec4<f32> = u_xlat3;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(x_168, x_169);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.w = dot(x_173, x_174);
  let x_179 : f32 = u_xlat15;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_179, x_179, x_179, x_179) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat8.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat8.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(x_204, x_205);
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0.w = dot(x_209, x_210);
  let x_214 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_215 : vec3<f32> = u_xlat8;
  let x_218 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_214 * vec4<f32>(x_215.x, x_215.x, x_215.x, x_215.x)) + x_218);
  let x_221 : f32 = u_xlat2.z;
  u_xlat5.w = x_221;
  let x_223 : vec4<f32> = u_xlat5;
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_223, x_224);
  let x_228 : vec4<f32> = u_xlat5;
  let x_229 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD2.w = dot(x_228, x_229);
  let x_233 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_234 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_233 * vec4<f32>(x_234.x, x_234.x, x_234.x, x_234.x)) + x_237);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat0 = (x_239 + x_241);
  let x_247 : vec4<f32> = u_xlat0;
  gl_Position = x_247;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_249.y, x_249.z, x_249.x) * vec3<f32>(x_251.z, x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_254.z, x_254.x, x_254.y) * vec3<f32>(x_256.y, x_256.z, x_256.x)) + -(x_259));
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.z, x_262.x, x_262.y) * vec3<f32>(x_264.y, x_264.z, x_264.x));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_271 : vec4<f32> = u_xlat5;
  let x_274 : vec4<f32> = u_xlat2;
  let x_277 : vec3<f32> = ((vec3<f32>(x_269.y, x_269.z, x_269.x) * vec3<f32>(x_271.z, x_271.x, x_271.y)) + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat5;
  let x_283 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_293);
  let x_295 : vec3<f32> = u_xlat8;
  let x_296 : f32 = u_xlat24;
  u_xlat8 = (x_295 * vec3<f32>(x_296, x_296, x_296));
  let x_301 : vec3<f32> = in_NORMAL0;
  let x_302 : vec3<f32> = u_xlat8;
  u_xlat6.y = dot(x_301, x_302);
  let x_305 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec3<f32>(x_305.y, x_305.z, x_305.x) * vec3<f32>(x_307.z, x_307.x, x_307.y));
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = u_xlat3;
  let x_315 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_310.y, x_310.z, x_310.x) * vec3<f32>(x_312.z, x_312.x, x_312.y)) + -(x_315));
  let x_318 : vec4<f32> = u_xlat3;
  let x_320 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec4<f32> = u_xlat4;
  let x_326 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_330 : f32 = u_xlat24;
  let x_332 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_334 : vec4<f32> = u_xlat2;
  let x_336 : f32 = u_xlat24;
  let x_338 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336, x_336, x_336));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec3<f32> = in_NORMAL0;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_341, vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_346 : vec3<f32> = in_NORMAL0;
  let x_347 : vec3<f32> = u_xlat8;
  u_xlat6.z = dot(x_346, x_347);
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_357 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_357);
  let x_360 : vec3<f32> = u_xlat8;
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat3 = (vec4<f32>(x_360.x, x_360.x, x_360.x, x_360.x) * vec4<f32>(x_362.x, x_362.y, x_362.z, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_372 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_372);
  let x_375 : vec3<f32> = u_xlat8;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_375.x, x_375.x, x_375.x) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec3<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = (x_380 * vec3<f32>(x_381.w, x_381.x, x_381.y));
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec3<f32> = u_xlat8;
  let x_391 : vec4<f32> = u_xlat2;
  let x_394 : vec3<f32> = ((vec3<f32>(x_386.y, x_386.w, x_386.x) * vec3<f32>(x_388.y, x_388.z, x_388.x)) + -(vec3<f32>(x_391.x, x_391.y, x_391.z)));
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_399 : f32 = in_TANGENT0.w;
  let x_402 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat4.x = (x_399 * x_402);
  let x_405 : vec4<f32> = u_xlat2;
  let x_407 : vec4<f32> = u_xlat4;
  let x_409 : vec3<f32> = (vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407.x, x_407.x, x_407.x));
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_413 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_413;
  let x_416 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_416;
  let x_419 : f32 = u_xlat8.z;
  vs_TEXCOORD0.x = x_419;
  let x_422 : f32 = u_xlat8.x;
  vs_TEXCOORD1.x = x_422;
  let x_425 : f32 = u_xlat8.y;
  vs_TEXCOORD2.x = x_425;
  let x_428 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_428;
  let x_431 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_431;
  let x_434 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_434;
  let x_437 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_437;
  let x_440 : vec4<f32> = in_COLOR0;
  u_xlat4 = (x_440 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_445 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_445, x_445, x_445, x_445) * x_447) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_455 : f32 = u_xlat2.w;
  u_xlatu8.x = (bitcast<u32>(x_455) & 255u);
  let x_461 : u32 = u_xlatu8.x;
  u_xlat5.x = f32(x_461);
  let x_465 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_465);
  param_1 = 8i;
  param_2 = 8i;
  let x_470 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_472 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_472);
  param_4 = 16i;
  param_5 = 8i;
  let x_478 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_480 : vec2<u32> = vec2<u32>(x_470, x_478);
  let x_481 : vec3<u32> = u_xlatu8;
  u_xlatu8 = vec3<u32>(x_480.x, x_480.y, x_481.z);
  let x_484 : f32 = u_xlat2.w;
  u_xlatu8.z = (bitcast<u32>(x_484) >> 24u);
  let x_489 : vec3<u32> = u_xlatu8;
  let x_490 : vec3<f32> = vec3<f32>(x_489);
  let x_491 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_491.x, x_490.x, x_490.y, x_490.z);
  let x_493 : vec4<f32> = u_xlat4;
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_493 * x_494);
  let x_497 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_497 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_502 : f32 = u_xlat1.x;
  let x_504 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat8.x = (x_502 / x_504);
  let x_508 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_508);
  let x_512 : f32 = u_xlat8.x;
  let x_515 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_518 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_512) * x_515) + x_518);
  let x_522 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_522);
  let x_526 : f32 = u_xlat1.x;
  let x_528 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_526 * x_528);
  let x_532 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_532) + 1.0f);
  let x_537 : f32 = u_xlat8.x;
  let x_540 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_543 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_537) * x_540) + x_543);
  let x_549 : vec2<f32> = in_TEXCOORD0;
  let x_551 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_554 : vec4<f32> = u_xlat2;
  let x_556 : vec2<f32> = ((x_549 * vec2<f32>(x_551.z, x_551.w)) + vec2<f32>(x_554.x, x_554.y));
  let x_557 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
  let x_563 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb15 = !((x_563 == 0.0f));
  let x_566 : bool = u_xlatb15;
  if (x_566) {
    let x_571 : vec4<f32> = u_xlat1;
    x_568 = vec2<f32>(x_571.x, x_571.y);
  } else {
    let x_574 : vec2<f32> = in_TEXCOORD0;
    x_568 = x_574;
  }
  let x_575 : vec2<f32> = x_568;
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
  let x_580 : vec4<f32> = u_xlat1;
  let x_583 : vec4<f32> = x_184.x_MainTex_ST;
  let x_587 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_583.x, x_583.y)) + vec2<f32>(x_587.z, x_587.w));
  let x_592 : f32 = u_xlat0.z;
  vs_TEXCOORD5 = x_592;
  let x_594 : vec4<f32> = u_xlat0;
  let x_595 : vec2<f32> = vec2<f32>(x_594.z, x_594.w);
  let x_596 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_596.x, x_596.y, x_595.x, x_595.y);
  let x_600 : f32 = u_xlat3.y;
  let x_602 : f32 = u_xlat3.y;
  u_xlat14 = (x_600 * x_602);
  let x_605 : f32 = u_xlat3.x;
  let x_607 : f32 = u_xlat3.x;
  let x_609 : f32 = u_xlat14;
  u_xlat14 = ((x_605 * x_607) + -(x_609));
  let x_612 : vec4<f32> = u_xlat3;
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_612.y, x_612.w, x_612.z, x_612.x) * x_614);
  let x_617 : vec4<f32> = x_184.unity_SHBr;
  let x_618 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_617, x_618);
  let x_622 : vec4<f32> = x_184.unity_SHBg;
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_622, x_623);
  let x_627 : vec4<f32> = x_184.unity_SHBb;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_627, x_628);
  let x_634 : vec4<f32> = x_184.unity_SHC;
  let x_636 : f32 = u_xlat14;
  let x_639 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(x_636, x_636, x_636)) + vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_644 : f32 = u_xlat0.y;
  let x_646 : f32 = x_184.x_ProjectionParams.x;
  u_xlat7 = (x_644 * x_646);
  let x_648 : vec4<f32> = u_xlat0;
  let x_652 : vec2<f32> = (vec2<f32>(x_648.x, x_648.w) * vec2<f32>(0.5f, 0.5f));
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_653.y, x_652.y, x_653.w);
  let x_655 : f32 = u_xlat7;
  u_xlat0.w = (x_655 * 0.5f);
  let x_658 : vec4<f32> = u_xlat0;
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec2<f32> = (vec2<f32>(x_658.z, x_658.z) + vec2<f32>(x_660.x, x_660.w));
  let x_663 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
  let x_667 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_667);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD5_1 : f32,
  @location(7)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, gl_Position, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD4);
}

