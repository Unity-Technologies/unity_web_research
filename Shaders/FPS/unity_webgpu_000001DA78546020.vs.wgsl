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

type Arr_1 = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr_1,
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati1 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(15) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(16) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_184 : VGlobals;

var<private> u_xlat7 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu10 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> u_xlat27 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var x_619 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_47 : i32 = gl_InstanceIndex;
  let x_54 : i32 = x_50.unity_BaseInstanceID;
  u_xlati1 = (x_47 + x_54);
  let x_64 : i32 = u_xlati1;
  let x_68 : u32 = x_63.unity_ParticleInstanceData_buf[x_64].value[9i];
  let x_70 : i32 = u_xlati1;
  let x_73 : u32 = x_63.unity_ParticleInstanceData_buf[x_70].value[10i];
  let x_75 : i32 = u_xlati1;
  let x_78 : u32 = x_63.unity_ParticleInstanceData_buf[x_75].value[11i];
  let x_80 : i32 = u_xlati1;
  let x_83 : u32 = x_63.unity_ParticleInstanceData_buf[x_80].value[12i];
  u_xlat2 = vec4<f32>(bitcast<f32>(x_68), bitcast<f32>(x_73), bitcast<f32>(x_78), bitcast<f32>(x_83));
  let x_89 : f32 = u_xlat2.y;
  u_xlat3.w = x_89;
  let x_93 : i32 = u_xlati1;
  let x_96 : u32 = x_63.unity_ParticleInstanceData_buf[x_93].value[3i];
  let x_98 : i32 = u_xlati1;
  let x_101 : u32 = x_63.unity_ParticleInstanceData_buf[x_98].value[4i];
  let x_103 : i32 = u_xlati1;
  let x_106 : u32 = x_63.unity_ParticleInstanceData_buf[x_103].value[5i];
  u_xlat10 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat10.y;
  u_xlat3.y = x_110;
  let x_113 : i32 = u_xlati1;
  let x_116 : u32 = x_63.unity_ParticleInstanceData_buf[x_113].value[7i];
  let x_118 : i32 = u_xlati1;
  let x_121 : u32 = x_63.unity_ParticleInstanceData_buf[x_118].value[8i];
  let x_123 : i32 = u_xlati1;
  let x_126 : u32 = x_63.unity_ParticleInstanceData_buf[x_123].value[6i];
  let x_128 : vec3<f32> = vec3<f32>(bitcast<f32>(x_116), bitcast<f32>(x_121), bitcast<f32>(x_126));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_133 : f32 = u_xlat4.x;
  u_xlat3.z = x_133;
  let x_137 : i32 = u_xlati1;
  let x_140 : u32 = x_63.unity_ParticleInstanceData_buf[x_137].value[2i];
  let x_142 : i32 = u_xlati1;
  let x_144 : u32 = x_63.unity_ParticleInstanceData_buf[x_142].value[0i];
  let x_146 : i32 = u_xlati1;
  let x_149 : u32 = x_63.unity_ParticleInstanceData_buf[x_146].value[1i];
  let x_151 : vec3<f32> = vec3<f32>(bitcast<f32>(x_140), bitcast<f32>(x_144), bitcast<f32>(x_149));
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : i32 = u_xlati1;
  let x_158 : u32 = x_63.unity_ParticleInstanceData_buf[x_155].value[13i];
  u_xlat1.x = bitcast<f32>(x_158);
  let x_162 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_162);
  let x_166 : f32 = u_xlat5.z;
  u_xlat3.x = x_166;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat19 = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  u_xlat11 = dot(x_173, x_174);
  let x_177 : f32 = u_xlat19;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_177, x_177, x_177, x_177) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat10.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat10.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat10.x = dot(x_204, x_205);
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  u_xlat19 = dot(x_208, x_209);
  let x_212 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_213 : vec3<f32> = u_xlat10;
  let x_216 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_212 * vec4<f32>(x_213.x, x_213.x, x_213.x, x_213.x)) + x_216);
  let x_219 : f32 = u_xlat2.z;
  u_xlat5.w = x_219;
  let x_221 : vec4<f32> = u_xlat5;
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_221, x_222);
  let x_225 : vec4<f32> = u_xlat5;
  let x_226 : vec4<f32> = in_POSITION0;
  u_xlat0.y = dot(x_225, x_226);
  let x_230 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_231 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_230 * vec4<f32>(x_231.x, x_231.x, x_231.x, x_231.x)) + x_234);
  let x_236 : vec4<f32> = u_xlat6;
  let x_238 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat6 = (x_236 + x_238);
  let x_244 : vec4<f32> = u_xlat6;
  gl_Position = x_244;
  let x_247 : vec4<f32> = u_xlat4;
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec3<f32> = (vec3<f32>(x_247.y, x_247.z, x_247.x) * vec3<f32>(x_249.z, x_249.x, x_249.y));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_252.y, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec4<f32> = u_xlat0;
  let x_262 : vec3<f32> = ((vec3<f32>(x_254.z, x_254.x, x_254.y) * vec3<f32>(x_256.y, x_256.z, x_256.x)) + -(vec3<f32>(x_259.x, x_259.z, x_259.w)));
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_262.x, x_263.y, x_262.y, x_262.z);
  let x_266 : vec4<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat5;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.z, x_266.x, x_266.y) * vec3<f32>(x_268.y, x_268.z, x_268.x));
  let x_271 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec4<f32> = u_xlat5;
  let x_278 : vec4<f32> = u_xlat7;
  let x_281 : vec3<f32> = ((vec3<f32>(x_273.y, x_273.z, x_273.x) * vec3<f32>(x_275.z, x_275.x, x_275.y)) + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat5;
  let x_287 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = u_xlat4;
  let x_293 : vec4<f32> = u_xlat7;
  u_xlat10.x = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_298 : f32 = u_xlat10.x;
  u_xlat10.x = (1.0f / x_298);
  let x_301 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = u_xlat10;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.z, x_301.w) * vec3<f32>(x_303.x, x_303.x, x_303.x));
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_305.x, x_306.y, x_305.y, x_305.z);
  let x_311 : vec3<f32> = in_NORMAL0;
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat8.y = dot(x_311, vec3<f32>(x_312.x, x_312.z, x_312.w));
  let x_316 : vec4<f32> = u_xlat3;
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.y, x_316.z, x_316.x) * vec3<f32>(x_318.z, x_318.x, x_318.y));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_320.x, x_321.y, x_320.y, x_320.z);
  let x_323 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = u_xlat3;
  let x_328 : vec4<f32> = u_xlat0;
  let x_331 : vec3<f32> = ((vec3<f32>(x_323.y, x_323.z, x_323.x) * vec3<f32>(x_325.z, x_325.x, x_325.y)) + -(vec3<f32>(x_328.x, x_328.z, x_328.w)));
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_331.x, x_332.y, x_331.y, x_331.z);
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_346 : vec3<f32> = u_xlat10;
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.x, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_350.x, x_351.y, x_350.y, x_350.z);
  let x_353 : vec3<f32> = u_xlat10;
  let x_355 : vec4<f32> = u_xlat7;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.x, x_353.x) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec3<f32> = in_NORMAL0;
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat8.x = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec3<f32> = in_NORMAL0;
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat8.z = dot(x_365, vec3<f32>(x_366.x, x_366.z, x_366.w));
  let x_370 : vec4<f32> = u_xlat8;
  let x_372 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_377 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_377);
  let x_380 : vec4<f32> = u_xlat0;
  let x_382 : vec4<f32> = u_xlat8;
  u_xlat3 = (vec4<f32>(x_380.x, x_380.x, x_380.x, x_380.x) * vec4<f32>(x_382.x, x_382.y, x_382.z, x_382.z));
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_392);
  let x_395 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = u_xlat5;
  let x_399 : vec3<f32> = (vec3<f32>(x_395.x, x_395.x, x_395.x) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_399.x, x_400.y, x_399.y, x_399.z);
  let x_402 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = u_xlat3;
  let x_406 : vec3<f32> = (vec3<f32>(x_402.x, x_402.z, x_402.w) * vec3<f32>(x_404.w, x_404.x, x_404.y));
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat4;
  let x_417 : vec3<f32> = ((vec3<f32>(x_409.y, x_409.w, x_409.x) * vec3<f32>(x_411.z, x_411.w, x_411.x)) + -(vec3<f32>(x_414.x, x_414.y, x_414.z)));
  let x_418 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_422 : f32 = in_TANGENT0.w;
  let x_425 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat10.x = (x_422 * x_425);
  let x_428 : vec3<f32> = u_xlat10;
  let x_430 : vec4<f32> = u_xlat4;
  let x_432 : vec3<f32> = (vec3<f32>(x_428.x, x_428.x, x_428.x) * vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_437 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_437;
  let x_441 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_441;
  let x_444 : f32 = u_xlat0.w;
  vs_TEXCOORD0.x = x_444;
  let x_446 : f32 = u_xlat19;
  vs_TEXCOORD0.w = x_446;
  let x_448 : f32 = u_xlat19;
  let x_452 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_448, x_448, x_448, x_448)) + x_452);
  let x_456 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = x_456;
  let x_459 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_459;
  let x_462 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_462;
  let x_466 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_466;
  let x_468 : f32 = u_xlat11;
  vs_TEXCOORD1.w = x_468;
  let x_470 : f32 = u_xlat11;
  let x_474 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_470, x_470, x_470, x_470)) + x_474);
  let x_477 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_477;
  let x_480 : vec4<f32> = u_xlat0;
  let x_481 : vec2<f32> = vec2<f32>(x_480.z, x_480.y);
  let x_482 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_481.x, x_482.y, x_482.z, x_481.y);
  let x_484 : vec4<f32> = u_xlat0;
  let x_488 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_484.y, x_484.y, x_484.y, x_484.y)) + x_488);
  let x_491 : vec4<f32> = in_COLOR0;
  u_xlat7 = (x_491 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_496 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = ((vec4<f32>(x_496, x_496, x_496, x_496) * x_498) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_506 : f32 = u_xlat2.w;
  u_xlatu10.x = (bitcast<u32>(x_506) & 255u);
  let x_513 : u32 = u_xlatu10.x;
  u_xlat8.x = f32(x_513);
  let x_517 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_517);
  param_1 = 8i;
  param_2 = 8i;
  let x_522 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_524 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_524);
  param_4 = 16i;
  param_5 = 8i;
  let x_530 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_532 : vec2<u32> = vec2<u32>(x_522, x_530);
  let x_533 : vec3<u32> = u_xlatu10;
  u_xlatu10 = vec3<u32>(x_532.x, x_532.y, x_533.z);
  let x_536 : f32 = u_xlat2.w;
  u_xlatu10.z = (bitcast<u32>(x_536) >> 24u);
  let x_541 : vec3<u32> = u_xlatu10;
  let x_542 : vec3<f32> = vec3<f32>(x_541);
  let x_543 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_543.x, x_542.x, x_542.y, x_542.z);
  let x_545 : vec4<f32> = u_xlat7;
  let x_546 : vec4<f32> = u_xlat8;
  u_xlat2 = (x_545 * x_546);
  let x_549 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_549 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_554 : f32 = u_xlat1.x;
  let x_556 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat10.x = (x_554 / x_556);
  let x_560 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_560);
  let x_564 : f32 = u_xlat10.x;
  let x_567 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_564) * x_567) + x_570);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_574);
  let x_578 : f32 = u_xlat1.x;
  let x_580 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_578 * x_580);
  let x_584 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_584) + 1.0f);
  let x_589 : f32 = u_xlat10.x;
  let x_592 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_595 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_589) * x_592) + x_595);
  let x_600 : vec2<f32> = in_TEXCOORD0;
  let x_602 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_605 : vec4<f32> = u_xlat2;
  let x_607 : vec2<f32> = ((x_600 * vec2<f32>(x_602.z, x_602.w)) + vec2<f32>(x_605.x, x_605.y));
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
  let x_614 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb19 = !((x_614 == 0.0f));
  let x_617 : bool = u_xlatb19;
  if (x_617) {
    let x_622 : vec4<f32> = u_xlat1;
    x_619 = vec2<f32>(x_622.x, x_622.y);
  } else {
    let x_625 : vec2<f32> = in_TEXCOORD0;
    x_619 = x_625;
  }
  let x_626 : vec2<f32> = x_619;
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
  let x_631 : vec4<f32> = u_xlat1;
  let x_635 : vec4<f32> = x_184.x_MainTex_ST;
  let x_639 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_631.x, x_631.y) * vec2<f32>(x_635.x, x_635.y)) + vec2<f32>(x_639.z, x_639.w));
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_642.y, x_642.y, x_642.y, x_642.y) * x_644);
  let x_646 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_646 * x_647);
  let x_649 : vec4<f32> = u_xlat5;
  let x_650 : vec4<f32> = u_xlat5;
  let x_652 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_649 * x_650) + x_652);
  let x_654 : vec4<f32> = u_xlat5;
  let x_655 : vec4<f32> = u_xlat3;
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_654 * vec4<f32>(x_655.x, x_655.x, x_655.x, x_655.x)) + x_658);
  let x_660 : vec4<f32> = u_xlat0;
  let x_661 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_660 * vec4<f32>(x_661.w, x_661.w, x_661.z, x_661.w)) + x_664);
  let x_666 : vec4<f32> = u_xlat0;
  let x_667 : vec4<f32> = u_xlat0;
  let x_669 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_666 * x_667) + x_669);
  let x_671 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_671, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_675 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_675);
  let x_677 : vec4<f32> = u_xlat0;
  let x_679 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat0 = ((x_677 * x_679) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_682 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_682);
  let x_684 : vec4<f32> = u_xlat1;
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_684 * x_685);
  let x_687 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_687, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_690 : vec4<f32> = u_xlat0;
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_690 * x_691);
  let x_693 : vec4<f32> = u_xlat0;
  let x_696 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_698 : vec3<f32> = (vec3<f32>(x_693.y, x_693.y, x_693.y) * vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_702 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_704 : vec4<f32> = u_xlat0;
  let x_707 : vec4<f32> = u_xlat1;
  let x_709 : vec3<f32> = ((vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_704.x, x_704.x, x_704.x)) + vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_713 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_715 : vec4<f32> = u_xlat0;
  let x_718 : vec4<f32> = u_xlat1;
  let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(x_715.z, x_715.z, x_715.z)) + vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_726 : vec4<f32> = u_xlat0;
  let x_729 : vec4<f32> = u_xlat0;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.w, x_726.w, x_726.w)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_736 : f32 = u_xlat3.y;
  let x_738 : f32 = u_xlat3.y;
  u_xlat27 = (x_736 * x_738);
  let x_741 : f32 = u_xlat3.x;
  let x_743 : f32 = u_xlat3.x;
  let x_745 : f32 = u_xlat27;
  u_xlat27 = ((x_741 * x_743) + -(x_745));
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_748.y, x_748.w, x_748.z, x_748.x) * x_750);
  let x_753 : vec4<f32> = x_184.unity_SHBr;
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_753, x_754);
  let x_758 : vec4<f32> = x_184.unity_SHBg;
  let x_759 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_758, x_759);
  let x_763 : vec4<f32> = x_184.unity_SHBb;
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_763, x_764);
  let x_768 : vec4<f32> = x_184.unity_SHC;
  let x_770 : f32 = u_xlat27;
  let x_773 : vec4<f32> = u_xlat2;
  let x_775 : vec3<f32> = ((vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770, x_770, x_770)) + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_780.x, x_780.y, x_780.z) + vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_786 : f32 = u_xlat6.y;
  let x_788 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.x = (x_786 * x_788);
  let x_792 : f32 = u_xlat0.x;
  u_xlat0.w = (x_792 * 0.5f);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec2<f32> = (vec2<f32>(x_796.x, x_796.w) * vec2<f32>(0.5f, 0.5f));
  let x_800 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_799.x, x_800.y, x_799.y, x_800.w);
  let x_803 : vec4<f32> = u_xlat6;
  let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
  let x_805 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_805.x, x_805.y, x_804.x, x_804.y);
  let x_807 : vec4<f32> = u_xlat0;
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : vec2<f32> = (vec2<f32>(x_807.z, x_807.z) + vec2<f32>(x_809.x, x_809.w));
  let x_812 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
  let x_815 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_815);
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
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

