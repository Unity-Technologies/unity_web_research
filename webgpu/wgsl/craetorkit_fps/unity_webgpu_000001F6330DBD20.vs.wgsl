type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_144 : vec2<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_32 : vec4<f32> = in_POSITION0;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_40 : vec4<f32> = in_POSITION0;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_45 + x_48);
  let x_51 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_51.y, x_51.y, x_51.y, x_51.y) * x_55);
  let x_58 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_65 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_65 * vec4<f32>(x_66.z, x_66.z, x_66.z, x_66.z)) + x_69);
  let x_72 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_73 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_72 * vec4<f32>(x_73.w, x_73.w, x_73.w, x_73.w)) + x_76);
  let x_83 : vec4<f32> = u_xlat0;
  gl_Position = x_83;
  let x_89 : f32 = u_xlat0.z;
  let x_92 : f32 = x_21.x_ProjectionParams.y;
  u_xlat0.x = (x_89 / x_92);
  let x_97 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_97) + 1.0f);
  let x_103 : f32 = u_xlat0.x;
  let x_105 : f32 = x_21.x_ProjectionParams.z;
  u_xlat0.x = (x_103 * x_105);
  let x_109 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_109, 0.0f);
  let x_114 : f32 = u_xlat0.x;
  let x_117 : f32 = x_21.unity_FogParams.x;
  u_xlat0.x = (x_114 * x_117);
  let x_121 : f32 = u_xlat0.x;
  let x_123 : f32 = u_xlat0.x;
  u_xlat0.x = (x_121 * -(x_123));
  let x_129 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = exp2(x_129);
  let x_139 : f32 = x_21.x_UVSec;
  u_xlatb0 = (x_139 == 0.0f);
  let x_141 : bool = u_xlatb0;
  if (x_141) {
    let x_149 : vec2<f32> = in_TEXCOORD0;
    x_144 = x_149;
  } else {
    let x_152 : vec2<f32> = in_TEXCOORD1;
    x_144 = x_152;
  }
  let x_153 : vec2<f32> = x_144;
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_154.z, x_154.w);
  let x_157 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_165 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_167 : vec2<f32> = ((vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161.x, x_161.y)) + vec2<f32>(x_165.z, x_165.w));
  let x_168 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_168.x, x_168.y, x_167.x, x_167.y);
  let x_170 : vec2<f32> = in_TEXCOORD0;
  let x_173 : vec4<f32> = x_21.x_MainTex_ST;
  let x_177 : vec4<f32> = x_21.x_MainTex_ST;
  let x_179 : vec2<f32> = ((x_170 * vec2<f32>(x_173.x, x_173.y)) + vec2<f32>(x_177.z, x_177.w));
  let x_180 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_179.x, x_179.y, x_180.z, x_180.w);
  let x_182 : vec4<f32> = in_POSITION0;
  let x_185 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_187 : vec3<f32> = (vec3<f32>(x_182.y, x_182.y, x_182.y) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_193 : vec4<f32> = in_POSITION0;
  let x_196 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.x, x_193.x, x_193.x)) + vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_204 : vec4<f32> = in_POSITION0;
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.z, x_204.z, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_215 : vec4<f32> = in_POSITION0;
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.w, x_215.w, x_215.w)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_229 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + -(x_227));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_238);
  let x_240 : f32 = u_xlat18;
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = (vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec4<f32> = in_TANGENT0;
  let x_251 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_253 : vec3<f32> = (vec3<f32>(x_248.y, x_248.y, x_248.y) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_259 : vec4<f32> = in_TANGENT0;
  let x_262 : vec4<f32> = u_xlat1;
  let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_270 : vec4<f32> = in_TANGENT0;
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_283);
  let x_285 : f32 = u_xlat18;
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : vec3<f32> = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_293 : vec4<f32> = u_xlat1;
  let x_294 : vec3<f32> = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_298 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_298;
  let x_302 : f32 = in_TANGENT0.w;
  let x_305 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat18 = (x_302 * x_305);
  let x_310 : vec3<f32> = in_NORMAL0;
  let x_313 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_310, vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = in_NORMAL0;
  let x_319 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_317, vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec3<f32> = in_NORMAL0;
  let x_325 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_323, vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_330 : vec4<f32> = u_xlat2;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat19;
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : vec4<f32> = u_xlat1;
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec3<f32> = (vec3<f32>(x_345.y, x_345.z, x_345.x) * vec3<f32>(x_347.z, x_347.x, x_347.y));
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat2;
  let x_354 : vec4<f32> = u_xlat1;
  let x_357 : vec4<f32> = u_xlat3;
  let x_360 : vec3<f32> = ((vec3<f32>(x_352.y, x_352.z, x_352.x) * vec3<f32>(x_354.z, x_354.x, x_354.y)) + -(vec3<f32>(x_357.x, x_357.y, x_357.z)));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : f32 = u_xlat18;
  let x_366 : vec4<f32> = u_xlat1;
  let x_368 : vec3<f32> = (vec3<f32>(x_364, x_364, x_364) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_372;
  let x_376 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_376;
  let x_378 : vec4<f32> = u_xlat2;
  let x_379 : vec3<f32> = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_383 : f32 = u_xlat2.y;
  let x_385 : f32 = u_xlat2.y;
  u_xlat18 = (x_383 * x_385);
  let x_388 : f32 = u_xlat2.x;
  let x_390 : f32 = u_xlat2.x;
  let x_392 : f32 = u_xlat18;
  u_xlat18 = ((x_388 * x_390) + -(x_392));
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_395.y, x_395.z, x_395.z, x_395.x) * vec4<f32>(x_397.x, x_397.y, x_397.z, x_397.z));
  let x_402 : vec4<f32> = x_21.unity_SHBr;
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_402, x_403);
  let x_408 : vec4<f32> = x_21.unity_SHBg;
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_408, x_409);
  let x_414 : vec4<f32> = x_21.unity_SHBb;
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_21.unity_SHC;
  let x_422 : f32 = u_xlat18;
  let x_425 : vec4<f32> = u_xlat3;
  let x_427 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422, x_422, x_422)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  u_xlat2.w = 1.0f;
  let x_433 : vec4<f32> = x_21.unity_SHAr;
  let x_434 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_433, x_434);
  let x_439 : vec4<f32> = x_21.unity_SHAg;
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_439, x_440);
  let x_445 : vec4<f32> = x_21.unity_SHAb;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_445, x_446);
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec4<f32> = u_xlat3;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) + vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_459 : vec3<f32> = max(vec3<f32>(x_456.x, x_456.y, x_456.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_462.y, x_462.y, x_462.y, x_462.y)) + x_466);
  let x_469 : vec4<f32> = u_xlat2;
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_469.y, x_469.y, x_469.y, x_469.y) * x_471);
  let x_473 : vec4<f32> = u_xlat3;
  let x_474 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_473 * x_474);
  let x_477 : vec4<f32> = u_xlat0;
  let x_481 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_477.x, x_477.x, x_477.x, x_477.x)) + x_481);
  let x_483 : vec4<f32> = u_xlat0;
  let x_488 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_483.z, x_483.z, x_483.z, x_483.z)) + x_488);
  let x_490 : vec4<f32> = u_xlat5;
  let x_491 : vec4<f32> = u_xlat2;
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_490 * vec4<f32>(x_491.x, x_491.x, x_491.x, x_491.x)) + x_494);
  let x_496 : vec4<f32> = u_xlat0;
  let x_497 : vec4<f32> = u_xlat2;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_496 * vec4<f32>(x_497.z, x_497.z, x_497.z, x_497.z)) + x_500);
  let x_502 : vec4<f32> = u_xlat5;
  let x_503 : vec4<f32> = u_xlat5;
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_502 * x_503) + x_505);
  let x_507 : vec4<f32> = u_xlat0;
  let x_508 : vec4<f32> = u_xlat0;
  let x_510 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_507 * x_508) + x_510);
  let x_512 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_512, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_516);
  let x_518 : vec4<f32> = u_xlat0;
  let x_521 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_518 * x_521) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_525 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_525);
  let x_527 : vec4<f32> = u_xlat2;
  let x_528 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_527 * x_528);
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_530, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_533 : vec4<f32> = u_xlat0;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_533 * x_534);
  let x_536 : vec4<f32> = u_xlat0;
  let x_540 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_542 : vec3<f32> = (vec3<f32>(x_536.y, x_536.y, x_536.y) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_546 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_548 : vec4<f32> = u_xlat0;
  let x_551 : vec4<f32> = u_xlat2;
  let x_553 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548.x, x_548.x, x_548.x)) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_557 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_559 : vec4<f32> = u_xlat0;
  let x_562 : vec4<f32> = u_xlat2;
  let x_564 : vec3<f32> = ((vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_559.z, x_559.z, x_559.z)) + vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_568 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_570 : vec4<f32> = u_xlat0;
  let x_573 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = ((vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_570.w, x_570.w, x_570.w)) + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : vec4<f32> = u_xlat1;
  let x_581 : vec4<f32> = u_xlat0;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

