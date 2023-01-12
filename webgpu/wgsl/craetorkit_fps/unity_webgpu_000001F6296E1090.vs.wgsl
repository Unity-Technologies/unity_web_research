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

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_144 : vec2<f32>;
  var u_xlat19 : f32;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
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
  u_xlat19 = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_238);
  let x_240 : f32 = u_xlat19;
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = (vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  u_xlat0.w = 0.0f;
  let x_249 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_249.w, x_249.w, x_249.w, x_249.x);
  let x_252 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_252.w, x_252.w, x_252.w, x_252.y);
  let x_256 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_256;
  let x_260 : vec3<f32> = in_NORMAL0;
  let x_263 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_260, vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_267 : vec3<f32> = in_NORMAL0;
  let x_269 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_267, vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_273 : vec3<f32> = in_NORMAL0;
  let x_275 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_273, vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_285);
  let x_287 : f32 = u_xlat18;
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = (vec3<f32>(x_287, x_287, x_287) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat1;
  let x_295 : vec3<f32> = vec3<f32>(x_294.x, x_294.y, x_294.z);
  let x_296 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : f32 = u_xlat1.y;
  let x_301 : f32 = u_xlat1.y;
  u_xlat18 = (x_299 * x_301);
  let x_304 : f32 = u_xlat1.x;
  let x_306 : f32 = u_xlat1.x;
  let x_308 : f32 = u_xlat18;
  u_xlat18 = ((x_304 * x_306) + -(x_308));
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_312.y, x_312.z, x_312.z, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_320 : vec4<f32> = x_21.unity_SHBr;
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_320, x_321);
  let x_326 : vec4<f32> = x_21.unity_SHBg;
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_326, x_327);
  let x_332 : vec4<f32> = x_21.unity_SHBb;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_332, x_333);
  let x_338 : vec4<f32> = x_21.unity_SHC;
  let x_340 : f32 = u_xlat18;
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340, x_340, x_340)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  u_xlat1.w = 1.0f;
  let x_351 : vec4<f32> = x_21.unity_SHAr;
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_351, x_352);
  let x_357 : vec4<f32> = x_21.unity_SHAg;
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_357, x_358);
  let x_363 : vec4<f32> = x_21.unity_SHAb;
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_363, x_364);
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = max(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_378 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat0;
  let x_384 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_380.y, x_380.y, x_380.y, x_380.y)) + x_384);
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_387.y, x_387.y, x_387.y, x_387.y) * x_389);
  let x_391 : vec4<f32> = u_xlat3;
  let x_392 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_391 * x_392);
  let x_395 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_395.x, x_395.x, x_395.x, x_395.x)) + x_399);
  let x_401 : vec4<f32> = u_xlat0;
  let x_406 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_401.z, x_401.z, x_401.z, x_401.z)) + x_406);
  let x_408 : vec4<f32> = u_xlat5;
  let x_409 : vec4<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_408 * vec4<f32>(x_409.x, x_409.x, x_409.x, x_409.x)) + x_412);
  let x_414 : vec4<f32> = u_xlat0;
  let x_415 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_414 * vec4<f32>(x_415.z, x_415.z, x_415.z, x_415.z)) + x_418);
  let x_420 : vec4<f32> = u_xlat5;
  let x_421 : vec4<f32> = u_xlat5;
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_420 * x_421) + x_423);
  let x_425 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_425 * x_426) + x_428);
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_430, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_434);
  let x_436 : vec4<f32> = u_xlat0;
  let x_439 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_436 * x_439) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_443);
  let x_445 : vec4<f32> = u_xlat1;
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_445 * x_446);
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_448, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_451 : vec4<f32> = u_xlat0;
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_451 * x_452);
  let x_454 : vec4<f32> = u_xlat0;
  let x_458 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_460 : vec3<f32> = (vec3<f32>(x_454.y, x_454.y, x_454.y) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_466 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466.x, x_466.x, x_466.x)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_477 : vec4<f32> = u_xlat0;
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.z, x_477.z, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_488 : vec4<f32> = u_xlat0;
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488.w, x_488.w, x_488.w)) + vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : vec4<f32> = u_xlat2;
  let x_499 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = (vec3<f32>(x_497.x, x_497.y, x_497.z) + vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

