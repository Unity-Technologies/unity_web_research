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
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(9) var<storage, read> x_62 : unity_ParticleInstanceData;

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

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  var u_xlat7 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatu7 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat14 : f32;
  var u_xlatb21 : bool;
  var x_562 : vec2<f32>;
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
  u_xlat6 = ((x_233 * vec4<f32>(x_234.x, x_234.x, x_234.x, x_234.x)) + x_237);
  let x_243 : vec4<f32> = u_xlat6;
  let x_245 : vec4<f32> = x_184.unity_MatrixVP[3i];
  gl_Position = (x_243 + x_245);
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_249.y, x_249.z, x_249.x) * vec3<f32>(x_251.z, x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_254.z, x_254.x, x_254.y) * vec3<f32>(x_256.y, x_256.z, x_256.x)) + -(x_259));
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
  u_xlat22 = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_293);
  let x_295 : vec3<f32> = u_xlat7;
  let x_296 : f32 = u_xlat22;
  u_xlat7 = (x_295 * vec3<f32>(x_296, x_296, x_296));
  let x_301 : vec3<f32> = in_NORMAL0;
  let x_302 : vec3<f32> = u_xlat7;
  u_xlat6.y = dot(x_301, x_302);
  let x_305 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_305.y, x_305.z, x_305.x) * vec3<f32>(x_307.z, x_307.x, x_307.y));
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = u_xlat3;
  let x_315 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_310.y, x_310.z, x_310.x) * vec3<f32>(x_312.z, x_312.x, x_312.y)) + -(x_315));
  let x_318 : vec4<f32> = u_xlat3;
  let x_320 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec4<f32> = u_xlat4;
  let x_326 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_330 : f32 = u_xlat22;
  let x_332 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_334 : f32 = u_xlat22;
  let x_336 : vec4<f32> = u_xlat2;
  let x_338 : vec3<f32> = (vec3<f32>(x_334, x_334, x_334) * vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec3<f32> = in_NORMAL0;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_341, vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_346 : vec3<f32> = in_NORMAL0;
  let x_347 : vec3<f32> = u_xlat7;
  u_xlat6.z = dot(x_346, x_347);
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_357 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_357);
  let x_360 : vec3<f32> = u_xlat7;
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat3 = (vec4<f32>(x_360.x, x_360.x, x_360.x, x_360.x) * vec4<f32>(x_362.x, x_362.y, x_362.z, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_372 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_372);
  let x_375 : vec3<f32> = u_xlat7;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_375.x, x_375.x, x_375.x) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec3<f32> = u_xlat7;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = (x_380 * vec3<f32>(x_381.w, x_381.x, x_381.y));
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec3<f32> = u_xlat7;
  let x_391 : vec4<f32> = u_xlat2;
  let x_394 : vec3<f32> = ((vec3<f32>(x_386.y, x_386.w, x_386.x) * vec3<f32>(x_388.y, x_388.z, x_388.x)) + -(vec3<f32>(x_391.x, x_391.y, x_391.z)));
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_399 : f32 = in_TANGENT0.w;
  let x_402 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat22 = (x_399 * x_402);
  let x_404 : f32 = u_xlat22;
  let x_406 : vec4<f32> = u_xlat2;
  let x_408 : vec3<f32> = (vec3<f32>(x_404, x_404, x_404) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_412;
  let x_415 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_415;
  let x_418 : f32 = u_xlat7.z;
  vs_TEXCOORD0.x = x_418;
  let x_421 : f32 = u_xlat7.x;
  vs_TEXCOORD1.x = x_421;
  let x_424 : f32 = u_xlat7.y;
  vs_TEXCOORD2.x = x_424;
  let x_427 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_427;
  let x_430 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_430;
  let x_433 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_433;
  let x_436 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_436;
  let x_439 : vec4<f32> = in_COLOR0;
  u_xlat4 = (x_439 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_444 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_444, x_444, x_444, x_444) * x_446) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_454 : f32 = u_xlat2.w;
  u_xlatu7.x = (bitcast<u32>(x_454) & 255u);
  let x_460 : u32 = u_xlatu7.x;
  u_xlat5.x = f32(x_460);
  let x_464 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_464);
  param_1 = 8i;
  param_2 = 8i;
  let x_469 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_471 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_471);
  param_4 = 16i;
  param_5 = 8i;
  let x_477 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_479 : vec2<u32> = vec2<u32>(x_469, x_477);
  let x_480 : vec3<u32> = u_xlatu7;
  u_xlatu7 = vec3<u32>(x_479.x, x_479.y, x_480.z);
  let x_483 : f32 = u_xlat2.w;
  u_xlatu7.z = (bitcast<u32>(x_483) >> 24u);
  let x_488 : vec3<u32> = u_xlatu7;
  let x_489 : vec3<f32> = vec3<f32>(x_488);
  let x_490 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_490.x, x_489.x, x_489.y, x_489.z);
  let x_492 : vec4<f32> = u_xlat4;
  let x_493 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_492 * x_493);
  let x_496 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_496 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_501 : f32 = u_xlat1.x;
  let x_503 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat7.x = (x_501 / x_503);
  let x_507 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_507);
  let x_512 : f32 = u_xlat7.x;
  let x_515 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_518 : f32 = u_xlat1.x;
  u_xlat14 = ((-(x_512) * x_515) + x_518);
  let x_520 : f32 = u_xlat14;
  u_xlat14 = floor(x_520);
  let x_522 : f32 = u_xlat14;
  let x_524 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_522 * x_524);
  let x_528 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat14 = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat7.x;
  let x_535 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_537 : f32 = u_xlat14;
  u_xlat2.y = ((-(x_532) * x_535) + x_537);
  let x_543 : vec2<f32> = in_TEXCOORD0;
  let x_545 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_548 : vec4<f32> = u_xlat2;
  let x_550 : vec2<f32> = ((x_543 * vec2<f32>(x_545.z, x_545.w)) + vec2<f32>(x_548.x, x_548.y));
  let x_551 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_550.x, x_550.y, x_551.z);
  let x_557 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb21 = !((x_557 == 0.0f));
  let x_560 : bool = u_xlatb21;
  if (x_560) {
    let x_565 : vec3<f32> = u_xlat7;
    x_562 = vec2<f32>(x_565.x, x_565.y);
  } else {
    let x_568 : vec2<f32> = in_TEXCOORD0;
    x_562 = x_568;
  }
  let x_569 : vec2<f32> = x_562;
  let x_570 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_569.x, x_569.y, x_570.z);
  let x_574 : vec3<f32> = u_xlat7;
  let x_577 : vec4<f32> = x_184.x_MainTex_ST;
  let x_581 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_577.x, x_577.y)) + vec2<f32>(x_581.z, x_581.w));
  let x_584 : f32 = u_xlat15;
  let x_586 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat7.x = (x_584 * x_586);
  let x_589 : f32 = u_xlat15;
  let x_592 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_594 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * vec3<f32>(x_592.x, x_592.y, x_592.w));
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_595.y, x_594.y, x_594.z);
  let x_598 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_600 : vec3<f32> = u_xlat8;
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = ((vec3<f32>(x_598.x, x_598.y, x_598.w) * vec3<f32>(x_600.x, x_600.x, x_600.x)) + vec3<f32>(x_603.x, x_603.z, x_603.w));
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_605.x, x_606.y, x_605.y, x_605.z);
  let x_609 : f32 = x_184.unity_MatrixV[0i].z;
  let x_611 : f32 = u_xlat8.x;
  let x_614 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_609 * x_611) + x_614);
  let x_618 : f32 = x_184.unity_MatrixV[2i].z;
  let x_620 : f32 = u_xlat0.x;
  let x_623 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_618 * x_620) + x_623);
  let x_627 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_629 : vec4<f32> = u_xlat0;
  let x_632 : vec4<f32> = u_xlat1;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.x, x_627.y, x_627.w) * vec3<f32>(x_629.x, x_629.x, x_629.x)) + vec3<f32>(x_632.x, x_632.z, x_632.w));
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_634.x, x_635.y, x_634.y, x_634.z);
  let x_637 : vec4<f32> = u_xlat0;
  let x_640 : vec4<f32> = x_184.unity_MatrixVP[3i];
  let x_642 : vec3<f32> = (vec3<f32>(x_637.x, x_637.z, x_637.w) + vec3<f32>(x_640.x, x_640.y, x_640.w));
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_642.x, x_643.y, x_642.y, x_642.z);
  let x_646 : f32 = u_xlat7.x;
  let x_648 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat7.x = (x_646 + x_648);
  let x_654 : f32 = u_xlat7.x;
  vs_TEXCOORD4.z = -(x_654);
  let x_659 : f32 = u_xlat0.z;
  let x_661 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.y = (x_659 * x_661);
  let x_664 : vec4<f32> = u_xlat0;
  let x_668 : vec3<f32> = (vec3<f32>(x_664.x, x_664.w, x_664.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_668.x, x_669.y, x_668.y, x_668.z);
  let x_672 : f32 = u_xlat0.w;
  vs_TEXCOORD4.w = x_672;
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : vec2<f32> = (vec2<f32>(x_674.z, x_674.z) + vec2<f32>(x_676.x, x_676.w));
  let x_679 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
  let x_682 : f32 = u_xlat3.y;
  let x_684 : f32 = u_xlat3.y;
  u_xlat0.x = (x_682 * x_684);
  let x_688 : f32 = u_xlat3.x;
  let x_690 : f32 = u_xlat3.x;
  let x_693 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_688 * x_690) + -(x_693));
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_697.y, x_697.w, x_697.z, x_697.x) * x_699);
  let x_702 : vec4<f32> = x_184.unity_SHBr;
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_702, x_703);
  let x_707 : vec4<f32> = x_184.unity_SHBg;
  let x_708 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_707, x_708);
  let x_712 : vec4<f32> = x_184.unity_SHBb;
  let x_713 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_712, x_713);
  let x_719 : vec4<f32> = x_184.unity_SHC;
  let x_721 : vec4<f32> = u_xlat0;
  let x_724 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721.x, x_721.x, x_721.x)) + vec3<f32>(x_724.x, x_724.y, x_724.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_731 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_731);
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
  vs_TEXCOORD5_1 : vec3<f32>,
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
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, gl_Position, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

