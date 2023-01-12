struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_OcclusionMap : sampler;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb39 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var x_217 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_407 : f32;
  var x_419 : f32;
  var x_431 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_593 : f32;
  var x_605 : f32;
  var x_617 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat39 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat39;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = vs_TEXCOORD4;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_89.x, x_89.y, x_89.z), vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_98);
  let x_101 : vec3<f32> = u_xlat2;
  let x_103 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_101.x, x_101.x, x_101.x) * vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_108 : vec4<f32> = vs_TEXCOORD1;
  let x_110 : vec4<f32> = vs_TEXCOORD1;
  u_xlat41 = dot(vec3<f32>(x_108.x, x_108.y, x_108.z), vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_113);
  let x_116 : f32 = u_xlat41;
  let x_118 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_116, x_116, x_116) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec3<f32> = (vec3<f32>(x_121.w, x_121.w, x_121.w) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : f32 = u_xlat39;
  u_xlat42 = (-(x_129) + 1.0f);
  let x_137 : f32 = u_xlat1.w;
  let x_138 : f32 = u_xlat39;
  let x_140 : f32 = u_xlat42;
  SV_Target0.w = ((x_137 * x_138) + x_140);
  let x_149 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb39 = (x_149 == 1.0f);
  let x_151 : bool = u_xlatb39;
  if (x_151) {
    let x_156 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb39 = (x_156 == 1.0f);
    let x_160 : vec4<f32> = vs_TEXCOORD3;
    let x_165 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_167 : vec3<f32> = (vec3<f32>(x_160.w, x_160.w, x_160.w) * vec3<f32>(x_165.x, x_165.y, x_165.z));
    let x_168 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
    let x_172 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_175 : vec4<f32> = vs_TEXCOORD2;
    let x_178 : vec4<f32> = u_xlat4;
    let x_180 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_175.w, x_175.w, x_175.w)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_185 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_187 : vec4<f32> = vs_TEXCOORD4;
    let x_190 : vec4<f32> = u_xlat4;
    let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.w, x_187.w, x_187.w)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat4;
    let x_199 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + vec3<f32>(x_199.x, x_199.y, x_199.z));
    let x_202 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_207 : f32 = vs_TEXCOORD2.w;
    u_xlat18.x = x_207;
    let x_210 : f32 = vs_TEXCOORD3.w;
    u_xlat18.y = x_210;
    let x_213 : f32 = vs_TEXCOORD4.w;
    u_xlat18.z = x_213;
    let x_216 : bool = u_xlatb39;
    if (x_216) {
      let x_220 : vec4<f32> = u_xlat4;
      x_217 = vec3<f32>(x_220.x, x_220.y, x_220.z);
    } else {
      let x_223 : vec3<f32> = u_xlat18;
      x_217 = x_223;
    }
    let x_224 : vec3<f32> = x_217;
    let x_225 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat4;
    let x_232 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_234 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) + -(x_232));
    let x_235 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat4;
    let x_241 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_242 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) * x_241);
    let x_243 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_243.x, x_242.x, x_242.y, x_242.z);
    let x_246 : f32 = u_xlat4.y;
    u_xlat39 = ((x_246 * 0.25f) + 0.75f);
    let x_253 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat40 = ((x_253 * 0.5f) + 0.75f);
    let x_257 : f32 = u_xlat39;
    let x_258 : f32 = u_xlat40;
    u_xlat4.x = max(x_257, x_258);
    let x_269 : vec4<f32> = u_xlat4;
    let x_271 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_269.x, x_269.z, x_269.w));
    u_xlat4 = x_271;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_277 : vec4<f32> = u_xlat4;
  let x_279 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat39 = dot(x_277, x_279);
  let x_281 : f32 = u_xlat39;
  u_xlat39 = clamp(x_281, 0.0f, 1.0f);
  let x_289 : vec4<f32> = vs_TEXCOORD0;
  let x_291 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_289.x, x_289.y));
  u_xlat40 = x_291.y;
  let x_295 : f32 = x_32.x_OcclusionStrength;
  u_xlat4.x = (-(x_295) + 1.0f);
  let x_299 : f32 = u_xlat40;
  let x_301 : f32 = x_32.x_OcclusionStrength;
  let x_304 : f32 = u_xlat4.x;
  u_xlat40 = ((x_299 * x_301) + x_304);
  let x_308 : f32 = x_32.x_Glossiness;
  u_xlat4.x = (-(x_308) + 1.0f);
  let x_313 : vec3<f32> = u_xlat3;
  let x_314 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(x_313, x_314);
  let x_318 : f32 = u_xlat17.x;
  let x_320 : f32 = u_xlat17.x;
  u_xlat17.x = (x_318 + x_320);
  let x_323 : vec3<f32> = u_xlat2;
  let x_324 : vec3<f32> = u_xlat17;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat17 = ((x_323 * -(vec3<f32>(x_324.x, x_324.x, x_324.x))) + x_328);
  let x_331 : f32 = u_xlat39;
  let x_335 : vec4<f32> = x_32.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_331, x_331, x_331) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_340 : f32 = x_32.unity_SpecCube0_ProbePosition.w;
  u_xlatb39 = (0.0f < x_340);
  let x_342 : bool = u_xlatb39;
  if (x_342) {
    let x_345 : vec3<f32> = u_xlat17;
    let x_346 : vec3<f32> = u_xlat17;
    u_xlat39 = dot(x_345, x_346);
    let x_348 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_348);
    let x_351 : f32 = u_xlat39;
    let x_353 : vec3<f32> = u_xlat17;
    let x_354 : vec3<f32> = (vec3<f32>(x_351, x_351, x_351) * x_353);
    let x_355 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_359 : f32 = vs_TEXCOORD2.w;
    u_xlat7.x = x_359;
    let x_362 : f32 = vs_TEXCOORD3.w;
    u_xlat7.y = x_362;
    let x_365 : f32 = vs_TEXCOORD4.w;
    u_xlat7.z = x_365;
    let x_368 : vec3<f32> = u_xlat7;
    let x_371 : vec4<f32> = x_32.unity_SpecCube0_BoxMax;
    let x_373 : vec3<f32> = (-(x_368) + vec3<f32>(x_371.x, x_371.y, x_371.z));
    let x_374 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
    let x_376 : vec4<f32> = u_xlat8;
    let x_378 : vec4<f32> = u_xlat6;
    let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) / vec3<f32>(x_378.x, x_378.y, x_378.z));
    let x_381 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
    let x_384 : vec3<f32> = u_xlat7;
    let x_387 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    u_xlat9 = (-(x_384) + vec3<f32>(x_387.x, x_387.y, x_387.z));
    let x_390 : vec3<f32> = u_xlat9;
    let x_391 : vec4<f32> = u_xlat6;
    u_xlat9 = (x_390 / vec3<f32>(x_391.x, x_391.y, x_391.z));
    let x_398 : vec4<f32> = u_xlat6;
    let x_401 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_398.x, x_398.y, x_398.z, x_398.x));
    u_xlatb10 = vec3<bool>(x_401.x, x_401.y, x_401.z);
    let x_404 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_404;
    let x_406 : bool = u_xlatb10.x;
    if (x_406) {
      let x_411 : f32 = u_xlat8.x;
      x_407 = x_411;
    } else {
      let x_414 : f32 = u_xlat9.x;
      x_407 = x_414;
    }
    let x_415 : f32 = x_407;
    hlslcc_movcTemp.x = x_415;
    let x_418 : bool = u_xlatb10.y;
    if (x_418) {
      let x_423 : f32 = u_xlat8.y;
      x_419 = x_423;
    } else {
      let x_426 : f32 = u_xlat9.y;
      x_419 = x_426;
    }
    let x_427 : f32 = x_419;
    hlslcc_movcTemp.y = x_427;
    let x_430 : bool = u_xlatb10.z;
    if (x_430) {
      let x_435 : f32 = u_xlat8.z;
      x_431 = x_435;
    } else {
      let x_438 : f32 = u_xlat9.z;
      x_431 = x_438;
    }
    let x_439 : f32 = x_431;
    hlslcc_movcTemp.z = x_439;
    let x_441 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_441;
    let x_443 : f32 = u_xlat8.y;
    let x_445 : f32 = u_xlat8.x;
    u_xlat39 = min(x_443, x_445);
    let x_448 : f32 = u_xlat8.z;
    let x_449 : f32 = u_xlat39;
    u_xlat39 = min(x_448, x_449);
    let x_451 : vec3<f32> = u_xlat7;
    let x_453 : vec4<f32> = x_32.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_451 + -(vec3<f32>(x_453.x, x_453.y, x_453.z)));
    let x_457 : vec4<f32> = u_xlat6;
    let x_459 : f32 = u_xlat39;
    let x_462 : vec3<f32> = u_xlat7;
    let x_463 : vec3<f32> = ((vec3<f32>(x_457.x, x_457.y, x_457.z) * vec3<f32>(x_459, x_459, x_459)) + x_462);
    let x_464 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  } else {
    let x_467 : vec3<f32> = u_xlat17;
    let x_468 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  }
  let x_471 : f32 = u_xlat4.x;
  u_xlat39 = ((-(x_471) * 0.699999988f) + 1.700000048f);
  let x_477 : f32 = u_xlat39;
  let x_479 : f32 = u_xlat4.x;
  u_xlat39 = (x_477 * x_479);
  let x_481 : f32 = u_xlat39;
  u_xlat39 = (x_481 * 6.0f);
  let x_492 : vec4<f32> = u_xlat6;
  let x_494 : f32 = u_xlat39;
  let x_495 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_492.x, x_492.y, x_492.z), x_494);
  u_xlat6 = x_495;
  let x_498 : f32 = u_xlat6.w;
  u_xlat44 = (x_498 + -1.0f);
  let x_503 : f32 = x_32.unity_SpecCube0_HDR.w;
  let x_504 : f32 = u_xlat44;
  u_xlat44 = ((x_503 * x_504) + 1.0f);
  let x_507 : f32 = u_xlat44;
  u_xlat44 = log2(x_507);
  let x_509 : f32 = u_xlat44;
  let x_511 : f32 = x_32.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_509 * x_511);
  let x_513 : f32 = u_xlat44;
  u_xlat44 = exp2(x_513);
  let x_515 : f32 = u_xlat44;
  let x_517 : f32 = x_32.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_515 * x_517);
  let x_519 : vec4<f32> = u_xlat6;
  let x_521 : f32 = u_xlat44;
  u_xlat7 = (vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521, x_521, x_521));
  let x_526 : f32 = x_32.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_526 < 0.999989986f);
  let x_529 : bool = u_xlatb45;
  if (x_529) {
    let x_534 : f32 = x_32.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_534);
    let x_536 : bool = u_xlatb45;
    if (x_536) {
      let x_540 : vec3<f32> = u_xlat17;
      let x_541 : vec3<f32> = u_xlat17;
      u_xlat45 = dot(x_540, x_541);
      let x_543 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_543);
      let x_545 : vec3<f32> = u_xlat17;
      let x_546 : f32 = u_xlat45;
      let x_548 : vec3<f32> = (x_545 * vec3<f32>(x_546, x_546, x_546));
      let x_549 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
      let x_552 : f32 = vs_TEXCOORD2.w;
      u_xlat9.x = x_552;
      let x_555 : f32 = vs_TEXCOORD3.w;
      u_xlat9.y = x_555;
      let x_558 : f32 = vs_TEXCOORD4.w;
      u_xlat9.z = x_558;
      let x_561 : vec3<f32> = u_xlat9;
      let x_565 : vec4<f32> = x_32.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_561) + vec3<f32>(x_565.x, x_565.y, x_565.z));
      let x_568 : vec3<f32> = u_xlat10;
      let x_569 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_568 / vec3<f32>(x_569.x, x_569.y, x_569.z));
      let x_573 : vec3<f32> = u_xlat9;
      let x_577 : vec4<f32> = x_32.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_573) + vec3<f32>(x_577.x, x_577.y, x_577.z));
      let x_580 : vec3<f32> = u_xlat11;
      let x_581 : vec4<f32> = u_xlat8;
      u_xlat11 = (x_580 / vec3<f32>(x_581.x, x_581.y, x_581.z));
      let x_585 : vec4<f32> = u_xlat8;
      let x_587 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_585.x, x_585.y, x_585.z, x_585.x));
      u_xlatb12 = vec3<bool>(x_587.x, x_587.y, x_587.z);
      let x_590 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_590;
      let x_592 : bool = u_xlatb12.x;
      if (x_592) {
        let x_597 : f32 = u_xlat10.x;
        x_593 = x_597;
      } else {
        let x_600 : f32 = u_xlat11.x;
        x_593 = x_600;
      }
      let x_601 : f32 = x_593;
      hlslcc_movcTemp_1.x = x_601;
      let x_604 : bool = u_xlatb12.y;
      if (x_604) {
        let x_609 : f32 = u_xlat10.y;
        x_605 = x_609;
      } else {
        let x_612 : f32 = u_xlat11.y;
        x_605 = x_612;
      }
      let x_613 : f32 = x_605;
      hlslcc_movcTemp_1.y = x_613;
      let x_616 : bool = u_xlatb12.z;
      if (x_616) {
        let x_621 : f32 = u_xlat10.z;
        x_617 = x_621;
      } else {
        let x_624 : f32 = u_xlat11.z;
        x_617 = x_624;
      }
      let x_625 : f32 = x_617;
      hlslcc_movcTemp_1.z = x_625;
      let x_627 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_627;
      let x_629 : f32 = u_xlat10.y;
      let x_631 : f32 = u_xlat10.x;
      u_xlat45 = min(x_629, x_631);
      let x_634 : f32 = u_xlat10.z;
      let x_635 : f32 = u_xlat45;
      u_xlat45 = min(x_634, x_635);
      let x_637 : vec3<f32> = u_xlat9;
      let x_639 : vec4<f32> = x_32.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_637 + -(vec3<f32>(x_639.x, x_639.y, x_639.z)));
      let x_643 : vec4<f32> = u_xlat8;
      let x_645 : f32 = u_xlat45;
      let x_648 : vec3<f32> = u_xlat9;
      u_xlat17 = ((vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645, x_645, x_645)) + x_648);
    }
    let x_654 : vec3<f32> = u_xlat17;
    let x_655 : f32 = u_xlat39;
    let x_656 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_654, x_655);
    u_xlat8 = x_656;
    let x_658 : f32 = u_xlat8.w;
    u_xlat39 = (x_658 + -1.0f);
    let x_662 : f32 = x_32.unity_SpecCube1_HDR.w;
    let x_663 : f32 = u_xlat39;
    u_xlat39 = ((x_662 * x_663) + 1.0f);
    let x_666 : f32 = u_xlat39;
    u_xlat39 = log2(x_666);
    let x_668 : f32 = u_xlat39;
    let x_670 : f32 = x_32.unity_SpecCube1_HDR.y;
    u_xlat39 = (x_668 * x_670);
    let x_672 : f32 = u_xlat39;
    u_xlat39 = exp2(x_672);
    let x_674 : f32 = u_xlat39;
    let x_676 : f32 = x_32.unity_SpecCube1_HDR.x;
    u_xlat39 = (x_674 * x_676);
    let x_678 : vec4<f32> = u_xlat8;
    let x_680 : f32 = u_xlat39;
    u_xlat17 = (vec3<f32>(x_678.x, x_678.y, x_678.z) * vec3<f32>(x_680, x_680, x_680));
    let x_683 : f32 = u_xlat44;
    let x_685 : vec4<f32> = u_xlat6;
    let x_688 : vec3<f32> = u_xlat17;
    let x_690 : vec3<f32> = ((vec3<f32>(x_683, x_683, x_683) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + -(x_688));
    let x_691 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
    let x_694 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_696 : vec4<f32> = u_xlat6;
    let x_699 : vec3<f32> = u_xlat17;
    u_xlat7 = ((vec3<f32>(x_694.w, x_694.w, x_694.w) * vec3<f32>(x_696.x, x_696.y, x_696.z)) + x_699);
  }
  let x_701 : f32 = u_xlat40;
  let x_703 : vec3<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_701, x_701, x_701) * x_703);
  let x_705 : vec4<f32> = vs_TEXCOORD1;
  let x_708 : f32 = u_xlat41;
  let x_712 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_714 : vec3<f32> = ((-(vec3<f32>(x_705.x, x_705.y, x_705.z)) * vec3<f32>(x_708, x_708, x_708)) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat6;
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat39 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : f32 = u_xlat39;
  u_xlat39 = max(x_722, 0.001f);
  let x_725 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_725);
  let x_727 : f32 = u_xlat39;
  let x_729 : vec4<f32> = u_xlat6;
  let x_731 : vec3<f32> = (vec3<f32>(x_727, x_727, x_727) * vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec3<f32> = u_xlat2;
  let x_735 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_734, -(x_735));
  let x_738 : vec3<f32> = u_xlat2;
  let x_740 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  u_xlat40 = dot(x_738, vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : f32 = u_xlat40;
  u_xlat40 = clamp(x_743, 0.0f, 1.0f);
  let x_745 : vec3<f32> = u_xlat2;
  let x_746 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(x_745, vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_751 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_751, 0.0f, 1.0f);
  let x_756 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_758 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_756.x, x_756.y, x_756.z), vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_763 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_763, 0.0f, 1.0f);
  let x_768 : f32 = u_xlat15.x;
  let x_770 : f32 = u_xlat15.x;
  u_xlat28 = (x_768 * x_770);
  let x_772 : f32 = u_xlat28;
  let x_774 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec2<f32>(x_772, x_772), vec2<f32>(x_774.x, x_774.x));
  let x_777 : f32 = u_xlat28;
  u_xlat28 = (x_777 + -0.5f);
  let x_780 : f32 = u_xlat40;
  u_xlat41 = (-(x_780) + 1.0f);
  let x_783 : f32 = u_xlat41;
  let x_784 : f32 = u_xlat41;
  u_xlat3.x = (x_783 * x_784);
  let x_788 : f32 = u_xlat3.x;
  let x_790 : f32 = u_xlat3.x;
  u_xlat3.x = (x_788 * x_790);
  let x_793 : f32 = u_xlat41;
  let x_795 : f32 = u_xlat3.x;
  u_xlat41 = (x_793 * x_795);
  let x_797 : f32 = u_xlat28;
  let x_798 : f32 = u_xlat41;
  u_xlat41 = ((x_797 * x_798) + 1.0f);
  let x_801 : f32 = u_xlat39;
  u_xlat3.x = (-(abs(x_801)) + 1.0f);
  let x_808 : f32 = u_xlat3.x;
  let x_810 : f32 = u_xlat3.x;
  u_xlat16.x = (x_808 * x_810);
  let x_814 : f32 = u_xlat16.x;
  let x_816 : f32 = u_xlat16.x;
  u_xlat16.x = (x_814 * x_816);
  let x_820 : f32 = u_xlat3.x;
  let x_822 : f32 = u_xlat16.x;
  u_xlat3.x = (x_820 * x_822);
  let x_825 : f32 = u_xlat28;
  let x_827 : f32 = u_xlat3.x;
  u_xlat28 = ((x_825 * x_827) + 1.0f);
  let x_830 : f32 = u_xlat28;
  let x_831 : f32 = u_xlat41;
  u_xlat28 = (x_830 * x_831);
  let x_833 : f32 = u_xlat40;
  let x_834 : f32 = u_xlat28;
  u_xlat28 = (x_833 * x_834);
  let x_837 : f32 = u_xlat4.x;
  let x_839 : f32 = u_xlat4.x;
  u_xlat41 = (x_837 * x_839);
  let x_841 : f32 = u_xlat41;
  u_xlat41 = max(x_841, 0.002f);
  let x_844 : f32 = u_xlat41;
  u_xlat16.x = (-(x_844) + 1.0f);
  let x_849 : f32 = u_xlat39;
  let x_852 : f32 = u_xlat16.x;
  let x_854 : f32 = u_xlat41;
  u_xlat29 = ((abs(x_849) * x_852) + x_854);
  let x_856 : f32 = u_xlat40;
  let x_858 : f32 = u_xlat16.x;
  let x_860 : f32 = u_xlat41;
  u_xlat16.x = ((x_856 * x_858) + x_860);
  let x_863 : f32 = u_xlat39;
  let x_866 : f32 = u_xlat16.x;
  u_xlat39 = (abs(x_863) * x_866);
  let x_868 : f32 = u_xlat40;
  let x_869 : f32 = u_xlat29;
  let x_871 : f32 = u_xlat39;
  u_xlat39 = ((x_868 * x_869) + x_871);
  let x_873 : f32 = u_xlat39;
  u_xlat39 = (x_873 + 0.00001f);
  let x_876 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_876);
  let x_878 : f32 = u_xlat41;
  let x_879 : f32 = u_xlat41;
  u_xlat16.x = (x_878 * x_879);
  let x_883 : f32 = u_xlat2.x;
  let x_885 : f32 = u_xlat16.x;
  let x_888 : f32 = u_xlat2.x;
  u_xlat29 = ((x_883 * x_885) + -(x_888));
  let x_891 : f32 = u_xlat29;
  let x_893 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_891 * x_893) + 1.0f);
  let x_898 : f32 = u_xlat16.x;
  u_xlat16.x = (x_898 * 0.318309873f);
  let x_903 : f32 = u_xlat2.x;
  let x_905 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_903 * x_905) + 0.0000001f);
  let x_911 : f32 = u_xlat16.x;
  let x_913 : f32 = u_xlat2.x;
  u_xlat2.x = (x_911 / x_913);
  let x_916 : f32 = u_xlat39;
  let x_918 : f32 = u_xlat2.x;
  u_xlat39 = (x_916 * x_918);
  let x_920 : f32 = u_xlat40;
  let x_921 : f32 = u_xlat39;
  u_xlat39 = (x_920 * x_921);
  let x_923 : f32 = u_xlat39;
  u_xlat39 = (x_923 * 3.141592741f);
  let x_926 : f32 = u_xlat39;
  u_xlat39 = max(x_926, 0.0f);
  let x_928 : f32 = u_xlat41;
  let x_929 : f32 = u_xlat41;
  u_xlat40 = ((x_928 * x_929) + 1.0f);
  let x_932 : f32 = u_xlat40;
  u_xlat40 = (1.0f / x_932);
  let x_934 : vec4<f32> = u_xlat0;
  let x_936 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_942 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_942 == 0.0f));
  let x_944 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_944);
  let x_947 : f32 = u_xlat39;
  let x_949 : f32 = u_xlat2.x;
  u_xlat39 = (x_947 * x_949);
  let x_951 : f32 = u_xlat42;
  let x_953 : f32 = x_32.x_Glossiness;
  u_xlat2.x = (x_951 + x_953);
  let x_957 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_957, 0.0f, 1.0f);
  let x_960 : f32 = u_xlat28;
  let x_962 : vec3<f32> = u_xlat5;
  u_xlat16 = (vec3<f32>(x_960, x_960, x_960) * x_962);
  let x_964 : vec3<f32> = u_xlat5;
  let x_965 : f32 = u_xlat39;
  u_xlat5 = (x_964 * vec3<f32>(x_965, x_965, x_965));
  let x_969 : f32 = u_xlat15.x;
  u_xlat39 = (-(x_969) + 1.0f);
  let x_972 : f32 = u_xlat39;
  let x_973 : f32 = u_xlat39;
  u_xlat15.x = (x_972 * x_973);
  let x_977 : f32 = u_xlat15.x;
  let x_979 : f32 = u_xlat15.x;
  u_xlat15.x = (x_977 * x_979);
  let x_982 : f32 = u_xlat39;
  let x_984 : f32 = u_xlat15.x;
  u_xlat39 = (x_982 * x_984);
  let x_986 : vec4<f32> = u_xlat0;
  u_xlat15 = (-(vec3<f32>(x_986.x, x_986.y, x_986.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_991 : vec3<f32> = u_xlat15;
  let x_992 : f32 = u_xlat39;
  let x_995 : vec4<f32> = u_xlat0;
  u_xlat15 = ((x_991 * vec3<f32>(x_992, x_992, x_992)) + vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec3<f32> = u_xlat15;
  let x_999 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_998 * x_999);
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1003 : vec3<f32> = u_xlat16;
  let x_1005 : vec3<f32> = u_xlat15;
  let x_1006 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * x_1003) + x_1005);
  let x_1007 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec3<f32> = u_xlat17;
  let x_1010 : f32 = u_xlat40;
  u_xlat15 = (x_1009 * vec3<f32>(x_1010, x_1010, x_1010));
  let x_1013 : vec4<f32> = u_xlat0;
  let x_1016 : vec3<f32> = u_xlat2;
  u_xlat16 = (-(vec3<f32>(x_1013.x, x_1013.y, x_1013.z)) + vec3<f32>(x_1016.x, x_1016.x, x_1016.x));
  let x_1019 : vec3<f32> = u_xlat3;
  let x_1021 : vec3<f32> = u_xlat16;
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1025 : vec3<f32> = ((vec3<f32>(x_1019.x, x_1019.x, x_1019.x) * x_1021) + vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec3<f32> = u_xlat15;
  let x_1029 : vec4<f32> = u_xlat0;
  let x_1032 : vec4<f32> = u_xlat1;
  let x_1034 : vec3<f32> = ((x_1028 * vec3<f32>(x_1029.x, x_1029.y, x_1029.z)) + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

