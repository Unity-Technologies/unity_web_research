struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(7) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_NormalMap : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_183 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_52 : vec2<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_52);
  u_xlat2 = x_53;
  let x_55 : vec4<f32> = u_xlat2;
  let x_59 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (x_55 * x_59);
  let x_67 : vec2<f32> = vs_TEXCOORD0;
  let x_68 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_67);
  let x_69 : vec2<f32> = vec2<f32>(x_68.x, x_68.w);
  let x_70 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_76 : f32 = u_xlat4.x;
  let x_80 : f32 = x_18.x_Metallic;
  u_xlat22 = (x_76 * x_80);
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_87);
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_89.x, x_90.y, x_89.y, x_89.z);
  let x_94 : f32 = u_xlat4.w;
  let x_96 : f32 = u_xlat4.x;
  u_xlat4.x = (x_94 * x_96);
  let x_100 : vec4<f32> = u_xlat4;
  let x_107 : vec2<f32> = ((vec2<f32>(x_100.x, x_100.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_108 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_107.x, x_107.y, x_108.z);
  let x_111 : vec3<f32> = u_xlat5;
  let x_113 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_111.x, x_111.y), vec2<f32>(x_113.x, x_113.y));
  let x_116 : f32 = u_xlat23;
  u_xlat23 = min(x_116, 1.0f);
  let x_119 : f32 = u_xlat23;
  u_xlat23 = (-(x_119) + 1.0f);
  let x_122 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_122);
  let x_131 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_131 == 1.0f);
  let x_133 : bool = u_xlatb23;
  if (x_133) {
    let x_138 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_138 == 1.0f);
    let x_140 : vec3<f32> = vs_TEXCOORD4;
    let x_145 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_147 : vec3<f32> = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_145.x, x_145.y, x_145.z));
    let x_148 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_147.x, x_148.y, x_147.y, x_147.z);
    let x_151 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_153 : vec3<f32> = vs_TEXCOORD4;
    let x_156 : vec4<f32> = u_xlat4;
    let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.x, x_153.x, x_153.x)) + vec3<f32>(x_156.x, x_156.z, x_156.w));
    let x_159 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_158.x, x_159.y, x_158.y, x_158.z);
    let x_163 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_165 : vec3<f32> = vs_TEXCOORD4;
    let x_168 : vec4<f32> = u_xlat4;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + vec3<f32>(x_168.x, x_168.z, x_168.w));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_171.y, x_170.y, x_170.z);
    let x_173 : vec4<f32> = u_xlat4;
    let x_177 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_179 : vec3<f32> = (vec3<f32>(x_173.x, x_173.z, x_173.w) + vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_179.x, x_180.y, x_179.y, x_179.z);
    let x_182 : bool = u_xlatb23;
    if (x_182) {
      let x_186 : vec4<f32> = u_xlat4;
      x_183 = vec3<f32>(x_186.x, x_186.z, x_186.w);
    } else {
      let x_189 : vec3<f32> = vs_TEXCOORD4;
      x_183 = x_189;
    }
    let x_190 : vec3<f32> = x_183;
    let x_191 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_190.x, x_191.y, x_190.y, x_190.z);
    let x_193 : vec4<f32> = u_xlat4;
    let x_197 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_199 : vec3<f32> = (vec3<f32>(x_193.x, x_193.z, x_193.w) + -(x_197));
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_199.x, x_200.y, x_199.y, x_199.z);
    let x_203 : vec4<f32> = u_xlat4;
    let x_207 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_208 : vec3<f32> = (vec3<f32>(x_203.x, x_203.z, x_203.w) * x_207);
    let x_209 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_209.x, x_208.x, x_208.y, x_208.z);
    let x_212 : f32 = u_xlat6.y;
    u_xlat23 = ((x_212 * 0.25f) + 0.75f);
    let x_218 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((x_218 * 0.5f) + 0.75f);
    let x_223 : f32 = u_xlat23;
    let x_225 : f32 = u_xlat4.x;
    u_xlat6.x = max(x_223, x_225);
    let x_236 : vec4<f32> = u_xlat6;
    let x_238 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_236.x, x_236.z, x_236.w));
    u_xlat6 = x_238;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_244 : vec4<f32> = u_xlat6;
  let x_246 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_244, x_246);
  let x_248 : f32 = u_xlat23;
  u_xlat23 = clamp(x_248, 0.0f, 1.0f);
  let x_252 : vec3<f32> = vs_TEXCOORD1;
  let x_253 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_252, x_253);
  let x_257 : vec3<f32> = vs_TEXCOORD2;
  let x_258 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_257, x_258);
  let x_262 : vec3<f32> = vs_TEXCOORD3;
  let x_263 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_262, x_263);
  let x_266 : vec4<f32> = u_xlat6;
  let x_268 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_273 : f32 = u_xlat4.x;
  u_xlat4.x = inverseSqrt(x_273);
  let x_276 : vec4<f32> = u_xlat4;
  let x_278 : vec4<f32> = u_xlat6;
  let x_280 : vec3<f32> = (vec3<f32>(x_276.x, x_276.x, x_276.x) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_281.y, x_280.y, x_280.z);
  let x_283 : f32 = u_xlat23;
  let x_287 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_283, x_283, x_283) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat2;
  let x_293 : vec4<f32> = x_18.x_Color;
  let x_298 : vec3<f32> = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_293.x, x_293.y, x_293.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : f32 = u_xlat22;
  let x_303 : vec4<f32> = u_xlat2;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301, x_301, x_301) * vec3<f32>(x_303.x, x_303.y, x_303.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : f32 = u_xlat22;
  u_xlat22 = ((-(x_311) * 0.959999979f) + 0.959999979f);
  let x_316 : f32 = u_xlat22;
  let x_318 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : f32 = u_xlat4.y;
  let x_328 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_324) * x_328) + 1.0f);
  let x_331 : vec3<f32> = u_xlat0;
  let x_332 : f32 = u_xlat21;
  let x_336 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_331 * vec3<f32>(x_332, x_332, x_332)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec3<f32> = u_xlat0;
  let x_340 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_339, x_340);
  let x_342 : f32 = u_xlat21;
  u_xlat21 = max(x_342, 0.001f);
  let x_345 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_345);
  let x_347 : f32 = u_xlat21;
  let x_349 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_347, x_347, x_347) * x_349);
  let x_351 : vec4<f32> = u_xlat4;
  let x_353 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(vec3<f32>(x_351.x, x_351.z, x_351.w), x_353);
  let x_355 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_355.x, x_355.z, x_355.w), vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_363 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_363, 0.0f, 1.0f);
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(vec3<f32>(x_367.x, x_367.z, x_367.w), x_369);
  let x_371 : f32 = u_xlat8;
  u_xlat8 = clamp(x_371, 0.0f, 1.0f);
  let x_374 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_376 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), x_376);
  let x_380 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_380, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat0.x;
  let x_387 : f32 = u_xlat0.x;
  u_xlat7.x = (x_385 * x_387);
  let x_390 : vec3<f32> = u_xlat7;
  let x_392 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_390.x, x_390.x), vec2<f32>(x_392, x_392));
  let x_397 : f32 = u_xlat7.x;
  u_xlat7.x = (x_397 + -0.5f);
  let x_403 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_403) + 1.0f);
  let x_407 : f32 = u_xlat14;
  let x_408 : f32 = u_xlat14;
  u_xlat15 = (x_407 * x_408);
  let x_410 : f32 = u_xlat15;
  let x_411 : f32 = u_xlat15;
  u_xlat15 = (x_410 * x_411);
  let x_413 : f32 = u_xlat14;
  let x_414 : f32 = u_xlat15;
  u_xlat14 = (x_413 * x_414);
  let x_417 : f32 = u_xlat7.x;
  let x_418 : f32 = u_xlat14;
  u_xlat14 = ((x_417 * x_418) + 1.0f);
  let x_421 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_421)) + 1.0f);
  let x_425 : f32 = u_xlat15;
  let x_426 : f32 = u_xlat15;
  u_xlat23 = (x_425 * x_426);
  let x_428 : f32 = u_xlat23;
  let x_429 : f32 = u_xlat23;
  u_xlat23 = (x_428 * x_429);
  let x_431 : f32 = u_xlat15;
  let x_432 : f32 = u_xlat23;
  u_xlat15 = (x_431 * x_432);
  let x_435 : f32 = u_xlat7.x;
  let x_436 : f32 = u_xlat15;
  u_xlat7.x = ((x_435 * x_436) + 1.0f);
  let x_441 : f32 = u_xlat7.x;
  let x_442 : f32 = u_xlat14;
  u_xlat7.x = (x_441 * x_442);
  let x_445 : f32 = u_xlat22;
  let x_446 : f32 = u_xlat22;
  u_xlat14 = (x_445 * x_446);
  let x_448 : f32 = u_xlat14;
  u_xlat14 = max(x_448, 0.002f);
  let x_451 : f32 = u_xlat14;
  u_xlat15 = (-(x_451) + 1.0f);
  let x_454 : f32 = u_xlat21;
  let x_456 : f32 = u_xlat15;
  let x_458 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_454) * x_456) + x_458);
  let x_461 : f32 = u_xlat1.x;
  let x_462 : f32 = u_xlat15;
  let x_464 : f32 = u_xlat14;
  u_xlat15 = ((x_461 * x_462) + x_464);
  let x_466 : f32 = u_xlat21;
  let x_468 : f32 = u_xlat15;
  u_xlat21 = (abs(x_466) * x_468);
  let x_471 : f32 = u_xlat1.x;
  let x_472 : f32 = u_xlat22;
  let x_474 : f32 = u_xlat21;
  u_xlat21 = ((x_471 * x_472) + x_474);
  let x_476 : f32 = u_xlat21;
  u_xlat21 = (x_476 + 0.00001f);
  let x_479 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_479);
  let x_481 : f32 = u_xlat14;
  let x_482 : f32 = u_xlat14;
  u_xlat14 = (x_481 * x_482);
  let x_484 : f32 = u_xlat8;
  let x_485 : f32 = u_xlat14;
  let x_487 : f32 = u_xlat8;
  u_xlat15 = ((x_484 * x_485) + -(x_487));
  let x_490 : f32 = u_xlat15;
  let x_491 : f32 = u_xlat8;
  u_xlat8 = ((x_490 * x_491) + 1.0f);
  let x_494 : f32 = u_xlat14;
  u_xlat14 = (x_494 * 0.318309873f);
  let x_497 : f32 = u_xlat8;
  let x_498 : f32 = u_xlat8;
  u_xlat8 = ((x_497 * x_498) + 0.0000001f);
  let x_502 : f32 = u_xlat14;
  let x_503 : f32 = u_xlat8;
  u_xlat14 = (x_502 / x_503);
  let x_505 : f32 = u_xlat14;
  let x_506 : f32 = u_xlat21;
  u_xlat7.y = (x_505 * x_506);
  let x_509 : vec3<f32> = u_xlat1;
  let x_511 : vec3<f32> = u_xlat7;
  let x_513 : vec2<f32> = (vec2<f32>(x_509.x, x_509.x) * vec2<f32>(x_511.x, x_511.y));
  let x_514 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_513.x, x_513.y, x_514.z);
  let x_517 : f32 = u_xlat7.y;
  u_xlat14 = (x_517 * 3.141592741f);
  let x_520 : f32 = u_xlat14;
  u_xlat14 = max(x_520, 0.0f);
  let x_522 : vec4<f32> = u_xlat2;
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_528 : f32 = u_xlat21;
  u_xlatb21 = !((x_528 == 0.0f));
  let x_530 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_530);
  let x_532 : f32 = u_xlat21;
  let x_533 : f32 = u_xlat14;
  u_xlat14 = (x_532 * x_533);
  let x_535 : vec3<f32> = u_xlat7;
  let x_537 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_535.x, x_535.x, x_535.x) * x_537);
  let x_539 : vec3<f32> = u_xlat5;
  let x_540 : f32 = u_xlat14;
  u_xlat7 = (x_539 * vec3<f32>(x_540, x_540, x_540));
  let x_544 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_544) + 1.0f);
  let x_549 : f32 = u_xlat0.x;
  let x_551 : f32 = u_xlat0.x;
  u_xlat22 = (x_549 * x_551);
  let x_553 : f32 = u_xlat22;
  let x_554 : f32 = u_xlat22;
  u_xlat22 = (x_553 * x_554);
  let x_557 : f32 = u_xlat0.x;
  let x_558 : f32 = u_xlat22;
  u_xlat0.x = (x_557 * x_558);
  let x_561 : vec4<f32> = u_xlat2;
  let x_565 : vec3<f32> = (-(vec3<f32>(x_561.x, x_561.y, x_561.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat4;
  let x_570 : vec3<f32> = u_xlat0;
  let x_573 : vec4<f32> = u_xlat2;
  let x_575 : vec3<f32> = ((vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_570.x, x_570.x, x_570.x)) + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec3<f32> = u_xlat7;
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_578 * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat3;
  let x_584 : vec3<f32> = u_xlat1;
  let x_586 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_582.x, x_582.y, x_582.z) * x_584) + x_586);
  let x_590 : f32 = vs_TEXCOORD6;
  let x_592 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_590 / x_592);
  let x_594 : f32 = u_xlat21;
  u_xlat21 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat21;
  let x_599 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_597 * x_599);
  let x_601 : f32 = u_xlat21;
  u_xlat21 = max(x_601, 0.0f);
  let x_603 : f32 = u_xlat21;
  let x_606 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_603 * x_606);
  let x_608 : f32 = u_xlat21;
  let x_609 : f32 = u_xlat21;
  u_xlat21 = (x_608 * -(x_609));
  let x_612 : f32 = u_xlat21;
  u_xlat21 = exp2(x_612);
  let x_616 : vec3<f32> = u_xlat0;
  let x_617 : f32 = u_xlat21;
  let x_619 : vec3<f32> = (x_616 * vec3<f32>(x_617, x_617, x_617));
  let x_620 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_623 : f32 = u_xlat3.w;
  SV_Target0.w = x_623;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

