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

@group(0) @binding(13) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(14) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(12) var<uniform> x_184 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu9 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb17 : bool;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> u_xlat24 : f32;

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
  var x_617 : vec2<f32>;
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
  u_xlat9 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat9.y;
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
  u_xlat17 = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  u_xlat10 = dot(x_173, x_174);
  let x_177 : f32 = u_xlat17;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_177, x_177, x_177, x_177) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat9.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat9.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat9.x = dot(x_204, x_205);
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  u_xlat17 = dot(x_208, x_209);
  let x_212 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_213 : vec3<f32> = u_xlat9;
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
  let x_240 : vec4<f32> = u_xlat6;
  let x_242 : vec4<f32> = x_184.unity_MatrixVP[3i];
  gl_Position = (x_240 + x_242);
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = u_xlat5;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.y, x_246.z, x_246.x) * vec3<f32>(x_248.z, x_248.x, x_248.y));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_251.y, x_250.y, x_250.z);
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = ((vec3<f32>(x_253.z, x_253.x, x_253.y) * vec3<f32>(x_255.y, x_255.z, x_255.x)) + -(vec3<f32>(x_258.x, x_258.z, x_258.w)));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_262.y, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat3;
  let x_266 : vec4<f32> = u_xlat5;
  let x_268 : vec3<f32> = (vec3<f32>(x_264.z, x_264.x, x_264.y) * vec3<f32>(x_266.y, x_266.z, x_266.x));
  let x_269 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = u_xlat5;
  let x_276 : vec4<f32> = u_xlat6;
  let x_279 : vec3<f32> = ((vec3<f32>(x_271.y, x_271.z, x_271.x) * vec3<f32>(x_273.z, x_273.x, x_273.y)) + -(vec3<f32>(x_276.x, x_276.y, x_276.z)));
  let x_280 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat5;
  let x_285 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_282.x, x_282.y, x_282.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : f32 = u_xlat9.x;
  u_xlat9.x = (1.0f / x_296);
  let x_299 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = u_xlat9;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.z, x_299.w) * vec3<f32>(x_301.x, x_301.x, x_301.x));
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_303.x, x_304.y, x_303.y, x_303.z);
  let x_309 : vec3<f32> = in_NORMAL0;
  let x_310 : vec4<f32> = u_xlat0;
  u_xlat7.y = dot(x_309, vec3<f32>(x_310.x, x_310.z, x_310.w));
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.y, x_314.z, x_314.x) * vec3<f32>(x_316.z, x_316.x, x_316.y));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_319.y, x_318.y, x_318.z);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = u_xlat3;
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = ((vec3<f32>(x_321.y, x_321.z, x_321.x) * vec3<f32>(x_323.z, x_323.x, x_323.y)) + -(vec3<f32>(x_326.x, x_326.z, x_326.w)));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_330.y, x_329.y, x_329.z);
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_338 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_344 : vec3<f32> = u_xlat9;
  let x_346 : vec4<f32> = u_xlat0;
  let x_348 : vec3<f32> = (vec3<f32>(x_344.x, x_344.x, x_344.x) * vec3<f32>(x_346.x, x_346.z, x_346.w));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_349.y, x_348.y, x_348.z);
  let x_351 : vec3<f32> = u_xlat9;
  let x_353 : vec4<f32> = u_xlat6;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.x, x_351.x) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec3<f32> = in_NORMAL0;
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_358, vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_363 : vec3<f32> = in_NORMAL0;
  let x_364 : vec4<f32> = u_xlat0;
  u_xlat7.z = dot(x_363, vec3<f32>(x_364.x, x_364.z, x_364.w));
  let x_368 : vec4<f32> = u_xlat7;
  let x_370 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_375 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_375);
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = u_xlat7;
  u_xlat3 = (vec4<f32>(x_378.x, x_378.x, x_378.x, x_378.x) * vec4<f32>(x_380.x, x_380.y, x_380.z, x_380.z));
  let x_383 : vec4<f32> = u_xlat5;
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_390 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_390);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : vec4<f32> = u_xlat5;
  let x_397 : vec3<f32> = (vec3<f32>(x_393.x, x_393.x, x_393.x) * vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_397.x, x_398.y, x_397.y, x_397.z);
  let x_400 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.z, x_400.w) * vec3<f32>(x_402.w, x_402.x, x_402.y));
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat3;
  let x_409 : vec4<f32> = u_xlat0;
  let x_412 : vec4<f32> = u_xlat4;
  let x_415 : vec3<f32> = ((vec3<f32>(x_407.y, x_407.w, x_407.x) * vec3<f32>(x_409.z, x_409.w, x_409.x)) + -(vec3<f32>(x_412.x, x_412.y, x_412.z)));
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_420 : f32 = in_TANGENT0.w;
  let x_423 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat9.x = (x_420 * x_423);
  let x_426 : vec3<f32> = u_xlat9;
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec3<f32> = (vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_435 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_435;
  let x_439 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_439;
  let x_442 : f32 = u_xlat0.w;
  vs_TEXCOORD0.x = x_442;
  let x_444 : f32 = u_xlat17;
  vs_TEXCOORD0.w = x_444;
  let x_446 : f32 = u_xlat17;
  let x_450 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_446, x_446, x_446, x_446)) + x_450);
  let x_454 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = x_454;
  let x_457 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_457;
  let x_460 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_460;
  let x_464 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_464;
  let x_466 : f32 = u_xlat10;
  vs_TEXCOORD1.w = x_466;
  let x_468 : f32 = u_xlat10;
  let x_472 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_468, x_468, x_468, x_468)) + x_472);
  let x_475 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_475;
  let x_478 : vec4<f32> = u_xlat0;
  let x_479 : vec2<f32> = vec2<f32>(x_478.z, x_478.y);
  let x_480 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_479.x, x_480.y, x_480.z, x_479.y);
  let x_482 : vec4<f32> = u_xlat0;
  let x_486 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_482.y, x_482.y, x_482.y, x_482.y)) + x_486);
  let x_489 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_489 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_494 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_494, x_494, x_494, x_494) * x_496) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_504 : f32 = u_xlat2.w;
  u_xlatu9.x = (bitcast<u32>(x_504) & 255u);
  let x_511 : u32 = u_xlatu9.x;
  u_xlat7.x = f32(x_511);
  let x_515 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_515);
  param_1 = 8i;
  param_2 = 8i;
  let x_520 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_522 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_522);
  param_4 = 16i;
  param_5 = 8i;
  let x_528 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_530 : vec2<u32> = vec2<u32>(x_520, x_528);
  let x_531 : vec3<u32> = u_xlatu9;
  u_xlatu9 = vec3<u32>(x_530.x, x_530.y, x_531.z);
  let x_534 : f32 = u_xlat2.w;
  u_xlatu9.z = (bitcast<u32>(x_534) >> 24u);
  let x_539 : vec3<u32> = u_xlatu9;
  let x_540 : vec3<f32> = vec3<f32>(x_539);
  let x_541 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_541.x, x_540.x, x_540.y, x_540.z);
  let x_543 : vec4<f32> = u_xlat6;
  let x_544 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_543 * x_544);
  let x_547 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_547 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_552 : f32 = u_xlat1.x;
  let x_554 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat9.x = (x_552 / x_554);
  let x_558 : f32 = u_xlat9.x;
  u_xlat9.x = floor(x_558);
  let x_562 : f32 = u_xlat9.x;
  let x_565 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_562) * x_565) + x_568);
  let x_572 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_572);
  let x_576 : f32 = u_xlat1.x;
  let x_578 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_576 * x_578);
  let x_582 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_582) + 1.0f);
  let x_587 : f32 = u_xlat9.x;
  let x_590 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_593 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_587) * x_590) + x_593);
  let x_598 : vec2<f32> = in_TEXCOORD0;
  let x_600 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_603 : vec4<f32> = u_xlat2;
  let x_605 : vec2<f32> = ((x_598 * vec2<f32>(x_600.z, x_600.w)) + vec2<f32>(x_603.x, x_603.y));
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_612 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb17 = !((x_612 == 0.0f));
  let x_615 : bool = u_xlatb17;
  if (x_615) {
    let x_620 : vec4<f32> = u_xlat1;
    x_617 = vec2<f32>(x_620.x, x_620.y);
  } else {
    let x_623 : vec2<f32> = in_TEXCOORD0;
    x_617 = x_623;
  }
  let x_624 : vec2<f32> = x_617;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_629 : vec4<f32> = u_xlat1;
  let x_632 : vec4<f32> = x_184.x_MainTex_ST;
  let x_636 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_629.x, x_629.y) * vec2<f32>(x_632.x, x_632.y)) + vec2<f32>(x_636.z, x_636.w));
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_639.y, x_639.y, x_639.y, x_639.y) * x_641);
  let x_643 : vec4<f32> = u_xlat4;
  let x_644 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_643 * x_644);
  let x_646 : vec4<f32> = u_xlat5;
  let x_647 : vec4<f32> = u_xlat5;
  let x_649 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_646 * x_647) + x_649);
  let x_651 : vec4<f32> = u_xlat5;
  let x_652 : vec4<f32> = u_xlat3;
  let x_655 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_651 * vec4<f32>(x_652.x, x_652.x, x_652.x, x_652.x)) + x_655);
  let x_657 : vec4<f32> = u_xlat0;
  let x_658 : vec4<f32> = u_xlat3;
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_657 * vec4<f32>(x_658.w, x_658.w, x_658.z, x_658.w)) + x_661);
  let x_663 : vec4<f32> = u_xlat0;
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_663 * x_664) + x_666);
  let x_668 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_668, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_672);
  let x_674 : vec4<f32> = u_xlat0;
  let x_676 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat0 = ((x_674 * x_676) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_679);
  let x_681 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_681 * x_682);
  let x_684 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_684, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_687 : vec4<f32> = u_xlat0;
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_687 * x_688);
  let x_690 : vec4<f32> = u_xlat0;
  let x_693 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_695 : vec3<f32> = (vec3<f32>(x_690.y, x_690.y, x_690.y) * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_699 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_701 : vec4<f32> = u_xlat0;
  let x_704 : vec4<f32> = u_xlat1;
  let x_706 : vec3<f32> = ((vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(x_701.x, x_701.x, x_701.x)) + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_710 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_712 : vec4<f32> = u_xlat0;
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec3<f32> = ((vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_712.z, x_712.z, x_712.z)) + vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_721 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_723 : vec4<f32> = u_xlat0;
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723.w, x_723.w, x_723.w)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_733 : f32 = u_xlat3.y;
  let x_735 : f32 = u_xlat3.y;
  u_xlat24 = (x_733 * x_735);
  let x_738 : f32 = u_xlat3.x;
  let x_740 : f32 = u_xlat3.x;
  let x_742 : f32 = u_xlat24;
  u_xlat24 = ((x_738 * x_740) + -(x_742));
  let x_745 : vec4<f32> = u_xlat3;
  let x_747 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_745.y, x_745.w, x_745.z, x_745.x) * x_747);
  let x_750 : vec4<f32> = x_184.unity_SHBr;
  let x_751 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_750, x_751);
  let x_755 : vec4<f32> = x_184.unity_SHBg;
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_755, x_756);
  let x_760 : vec4<f32> = x_184.unity_SHBb;
  let x_761 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_760, x_761);
  let x_765 : vec4<f32> = x_184.unity_SHC;
  let x_767 : f32 = u_xlat24;
  let x_770 : vec4<f32> = u_xlat2;
  let x_772 : vec3<f32> = ((vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_767, x_767, x_767)) + vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_777.x, x_777.y, x_777.z) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_784 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_784);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

