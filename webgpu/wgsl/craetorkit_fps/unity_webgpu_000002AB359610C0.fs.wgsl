struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  var x_409 : f32;
  var x_421 : f32;
  var x_433 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_595 : f32;
  var x_607 : f32;
  var x_619 : f32;
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
    let x_372 : vec4<f32> = x_32.unity_SpecCube0_BoxMax;
    let x_374 : vec3<f32> = (-(x_368) + vec3<f32>(x_372.x, x_372.y, x_372.z));
    let x_375 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
    let x_377 : vec4<f32> = u_xlat8;
    let x_379 : vec4<f32> = u_xlat6;
    let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) / vec3<f32>(x_379.x, x_379.y, x_379.z));
    let x_382 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
    let x_385 : vec3<f32> = u_xlat7;
    let x_389 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    u_xlat9 = (-(x_385) + vec3<f32>(x_389.x, x_389.y, x_389.z));
    let x_392 : vec3<f32> = u_xlat9;
    let x_393 : vec4<f32> = u_xlat6;
    u_xlat9 = (x_392 / vec3<f32>(x_393.x, x_393.y, x_393.z));
    let x_400 : vec4<f32> = u_xlat6;
    let x_403 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_400.x, x_400.y, x_400.z, x_400.x));
    u_xlatb10 = vec3<bool>(x_403.x, x_403.y, x_403.z);
    let x_406 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_406;
    let x_408 : bool = u_xlatb10.x;
    if (x_408) {
      let x_413 : f32 = u_xlat8.x;
      x_409 = x_413;
    } else {
      let x_416 : f32 = u_xlat9.x;
      x_409 = x_416;
    }
    let x_417 : f32 = x_409;
    hlslcc_movcTemp.x = x_417;
    let x_420 : bool = u_xlatb10.y;
    if (x_420) {
      let x_425 : f32 = u_xlat8.y;
      x_421 = x_425;
    } else {
      let x_428 : f32 = u_xlat9.y;
      x_421 = x_428;
    }
    let x_429 : f32 = x_421;
    hlslcc_movcTemp.y = x_429;
    let x_432 : bool = u_xlatb10.z;
    if (x_432) {
      let x_437 : f32 = u_xlat8.z;
      x_433 = x_437;
    } else {
      let x_440 : f32 = u_xlat9.z;
      x_433 = x_440;
    }
    let x_441 : f32 = x_433;
    hlslcc_movcTemp.z = x_441;
    let x_443 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_443;
    let x_445 : f32 = u_xlat8.y;
    let x_447 : f32 = u_xlat8.x;
    u_xlat39 = min(x_445, x_447);
    let x_450 : f32 = u_xlat8.z;
    let x_451 : f32 = u_xlat39;
    u_xlat39 = min(x_450, x_451);
    let x_453 : vec3<f32> = u_xlat7;
    let x_455 : vec4<f32> = x_32.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_453 + -(vec3<f32>(x_455.x, x_455.y, x_455.z)));
    let x_459 : vec4<f32> = u_xlat6;
    let x_461 : f32 = u_xlat39;
    let x_464 : vec3<f32> = u_xlat7;
    let x_465 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_461, x_461, x_461)) + x_464);
    let x_466 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  } else {
    let x_469 : vec3<f32> = u_xlat17;
    let x_470 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  }
  let x_473 : f32 = u_xlat4.x;
  u_xlat39 = ((-(x_473) * 0.699999988f) + 1.700000048f);
  let x_479 : f32 = u_xlat39;
  let x_481 : f32 = u_xlat4.x;
  u_xlat39 = (x_479 * x_481);
  let x_483 : f32 = u_xlat39;
  u_xlat39 = (x_483 * 6.0f);
  let x_494 : vec4<f32> = u_xlat6;
  let x_496 : f32 = u_xlat39;
  let x_497 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_494.x, x_494.y, x_494.z), x_496);
  u_xlat6 = x_497;
  let x_500 : f32 = u_xlat6.w;
  u_xlat44 = (x_500 + -1.0f);
  let x_505 : f32 = x_32.unity_SpecCube0_HDR.w;
  let x_506 : f32 = u_xlat44;
  u_xlat44 = ((x_505 * x_506) + 1.0f);
  let x_509 : f32 = u_xlat44;
  u_xlat44 = log2(x_509);
  let x_511 : f32 = u_xlat44;
  let x_513 : f32 = x_32.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_511 * x_513);
  let x_515 : f32 = u_xlat44;
  u_xlat44 = exp2(x_515);
  let x_517 : f32 = u_xlat44;
  let x_519 : f32 = x_32.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_517 * x_519);
  let x_521 : vec4<f32> = u_xlat6;
  let x_523 : f32 = u_xlat44;
  u_xlat7 = (vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_523, x_523, x_523));
  let x_528 : f32 = x_32.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_528 < 0.999989986f);
  let x_531 : bool = u_xlatb45;
  if (x_531) {
    let x_536 : f32 = x_32.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_536);
    let x_538 : bool = u_xlatb45;
    if (x_538) {
      let x_542 : vec3<f32> = u_xlat17;
      let x_543 : vec3<f32> = u_xlat17;
      u_xlat45 = dot(x_542, x_543);
      let x_545 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_545);
      let x_547 : vec3<f32> = u_xlat17;
      let x_548 : f32 = u_xlat45;
      let x_550 : vec3<f32> = (x_547 * vec3<f32>(x_548, x_548, x_548));
      let x_551 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
      let x_554 : f32 = vs_TEXCOORD2.w;
      u_xlat9.x = x_554;
      let x_557 : f32 = vs_TEXCOORD3.w;
      u_xlat9.y = x_557;
      let x_560 : f32 = vs_TEXCOORD4.w;
      u_xlat9.z = x_560;
      let x_563 : vec3<f32> = u_xlat9;
      let x_567 : vec4<f32> = x_32.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_563) + vec3<f32>(x_567.x, x_567.y, x_567.z));
      let x_570 : vec3<f32> = u_xlat10;
      let x_571 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_570 / vec3<f32>(x_571.x, x_571.y, x_571.z));
      let x_575 : vec3<f32> = u_xlat9;
      let x_579 : vec4<f32> = x_32.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_575) + vec3<f32>(x_579.x, x_579.y, x_579.z));
      let x_582 : vec3<f32> = u_xlat11;
      let x_583 : vec4<f32> = u_xlat8;
      u_xlat11 = (x_582 / vec3<f32>(x_583.x, x_583.y, x_583.z));
      let x_587 : vec4<f32> = u_xlat8;
      let x_589 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_587.x, x_587.y, x_587.z, x_587.x));
      u_xlatb12 = vec3<bool>(x_589.x, x_589.y, x_589.z);
      let x_592 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_592;
      let x_594 : bool = u_xlatb12.x;
      if (x_594) {
        let x_599 : f32 = u_xlat10.x;
        x_595 = x_599;
      } else {
        let x_602 : f32 = u_xlat11.x;
        x_595 = x_602;
      }
      let x_603 : f32 = x_595;
      hlslcc_movcTemp_1.x = x_603;
      let x_606 : bool = u_xlatb12.y;
      if (x_606) {
        let x_611 : f32 = u_xlat10.y;
        x_607 = x_611;
      } else {
        let x_614 : f32 = u_xlat11.y;
        x_607 = x_614;
      }
      let x_615 : f32 = x_607;
      hlslcc_movcTemp_1.y = x_615;
      let x_618 : bool = u_xlatb12.z;
      if (x_618) {
        let x_623 : f32 = u_xlat10.z;
        x_619 = x_623;
      } else {
        let x_626 : f32 = u_xlat11.z;
        x_619 = x_626;
      }
      let x_627 : f32 = x_619;
      hlslcc_movcTemp_1.z = x_627;
      let x_629 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_629;
      let x_631 : f32 = u_xlat10.y;
      let x_633 : f32 = u_xlat10.x;
      u_xlat45 = min(x_631, x_633);
      let x_636 : f32 = u_xlat10.z;
      let x_637 : f32 = u_xlat45;
      u_xlat45 = min(x_636, x_637);
      let x_639 : vec3<f32> = u_xlat9;
      let x_641 : vec4<f32> = x_32.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_639 + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
      let x_645 : vec4<f32> = u_xlat8;
      let x_647 : f32 = u_xlat45;
      let x_650 : vec3<f32> = u_xlat9;
      u_xlat17 = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_647, x_647, x_647)) + x_650);
    }
    let x_656 : vec3<f32> = u_xlat17;
    let x_657 : f32 = u_xlat39;
    let x_658 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_656, x_657);
    u_xlat8 = x_658;
    let x_660 : f32 = u_xlat8.w;
    u_xlat39 = (x_660 + -1.0f);
    let x_664 : f32 = x_32.unity_SpecCube1_HDR.w;
    let x_665 : f32 = u_xlat39;
    u_xlat39 = ((x_664 * x_665) + 1.0f);
    let x_668 : f32 = u_xlat39;
    u_xlat39 = log2(x_668);
    let x_670 : f32 = u_xlat39;
    let x_672 : f32 = x_32.unity_SpecCube1_HDR.y;
    u_xlat39 = (x_670 * x_672);
    let x_674 : f32 = u_xlat39;
    u_xlat39 = exp2(x_674);
    let x_676 : f32 = u_xlat39;
    let x_678 : f32 = x_32.unity_SpecCube1_HDR.x;
    u_xlat39 = (x_676 * x_678);
    let x_680 : vec4<f32> = u_xlat8;
    let x_682 : f32 = u_xlat39;
    u_xlat17 = (vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(x_682, x_682, x_682));
    let x_685 : f32 = u_xlat44;
    let x_687 : vec4<f32> = u_xlat6;
    let x_690 : vec3<f32> = u_xlat17;
    let x_692 : vec3<f32> = ((vec3<f32>(x_685, x_685, x_685) * vec3<f32>(x_687.x, x_687.y, x_687.z)) + -(x_690));
    let x_693 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_696 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_698 : vec4<f32> = u_xlat6;
    let x_701 : vec3<f32> = u_xlat17;
    u_xlat7 = ((vec3<f32>(x_696.w, x_696.w, x_696.w) * vec3<f32>(x_698.x, x_698.y, x_698.z)) + x_701);
  }
  let x_703 : f32 = u_xlat40;
  let x_705 : vec3<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_703, x_703, x_703) * x_705);
  let x_707 : vec4<f32> = vs_TEXCOORD1;
  let x_710 : f32 = u_xlat41;
  let x_714 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_716 : vec3<f32> = ((-(vec3<f32>(x_707.x, x_707.y, x_707.z)) * vec3<f32>(x_710, x_710, x_710)) + vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat6;
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat39 = dot(vec3<f32>(x_719.x, x_719.y, x_719.z), vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat39;
  u_xlat39 = max(x_724, 0.001f);
  let x_727 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_727);
  let x_729 : f32 = u_xlat39;
  let x_731 : vec4<f32> = u_xlat6;
  let x_733 : vec3<f32> = (vec3<f32>(x_729, x_729, x_729) * vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec3<f32> = u_xlat2;
  let x_737 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_736, -(x_737));
  let x_740 : vec3<f32> = u_xlat2;
  let x_742 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  u_xlat40 = dot(x_740, vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : f32 = u_xlat40;
  u_xlat40 = clamp(x_745, 0.0f, 1.0f);
  let x_747 : vec3<f32> = u_xlat2;
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(x_747, vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_753 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_753, 0.0f, 1.0f);
  let x_758 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_760 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_765 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_765, 0.0f, 1.0f);
  let x_770 : f32 = u_xlat15.x;
  let x_772 : f32 = u_xlat15.x;
  u_xlat28 = (x_770 * x_772);
  let x_774 : f32 = u_xlat28;
  let x_776 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec2<f32>(x_774, x_774), vec2<f32>(x_776.x, x_776.x));
  let x_779 : f32 = u_xlat28;
  u_xlat28 = (x_779 + -0.5f);
  let x_782 : f32 = u_xlat40;
  u_xlat41 = (-(x_782) + 1.0f);
  let x_785 : f32 = u_xlat41;
  let x_786 : f32 = u_xlat41;
  u_xlat3.x = (x_785 * x_786);
  let x_790 : f32 = u_xlat3.x;
  let x_792 : f32 = u_xlat3.x;
  u_xlat3.x = (x_790 * x_792);
  let x_795 : f32 = u_xlat41;
  let x_797 : f32 = u_xlat3.x;
  u_xlat41 = (x_795 * x_797);
  let x_799 : f32 = u_xlat28;
  let x_800 : f32 = u_xlat41;
  u_xlat41 = ((x_799 * x_800) + 1.0f);
  let x_803 : f32 = u_xlat39;
  u_xlat3.x = (-(abs(x_803)) + 1.0f);
  let x_810 : f32 = u_xlat3.x;
  let x_812 : f32 = u_xlat3.x;
  u_xlat16.x = (x_810 * x_812);
  let x_816 : f32 = u_xlat16.x;
  let x_818 : f32 = u_xlat16.x;
  u_xlat16.x = (x_816 * x_818);
  let x_822 : f32 = u_xlat3.x;
  let x_824 : f32 = u_xlat16.x;
  u_xlat3.x = (x_822 * x_824);
  let x_827 : f32 = u_xlat28;
  let x_829 : f32 = u_xlat3.x;
  u_xlat28 = ((x_827 * x_829) + 1.0f);
  let x_832 : f32 = u_xlat28;
  let x_833 : f32 = u_xlat41;
  u_xlat28 = (x_832 * x_833);
  let x_835 : f32 = u_xlat40;
  let x_836 : f32 = u_xlat28;
  u_xlat28 = (x_835 * x_836);
  let x_839 : f32 = u_xlat4.x;
  let x_841 : f32 = u_xlat4.x;
  u_xlat41 = (x_839 * x_841);
  let x_843 : f32 = u_xlat41;
  u_xlat41 = max(x_843, 0.002f);
  let x_846 : f32 = u_xlat41;
  u_xlat16.x = (-(x_846) + 1.0f);
  let x_851 : f32 = u_xlat39;
  let x_854 : f32 = u_xlat16.x;
  let x_856 : f32 = u_xlat41;
  u_xlat29 = ((abs(x_851) * x_854) + x_856);
  let x_858 : f32 = u_xlat40;
  let x_860 : f32 = u_xlat16.x;
  let x_862 : f32 = u_xlat41;
  u_xlat16.x = ((x_858 * x_860) + x_862);
  let x_865 : f32 = u_xlat39;
  let x_868 : f32 = u_xlat16.x;
  u_xlat39 = (abs(x_865) * x_868);
  let x_870 : f32 = u_xlat40;
  let x_871 : f32 = u_xlat29;
  let x_873 : f32 = u_xlat39;
  u_xlat39 = ((x_870 * x_871) + x_873);
  let x_875 : f32 = u_xlat39;
  u_xlat39 = (x_875 + 0.00001f);
  let x_878 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_878);
  let x_880 : f32 = u_xlat41;
  let x_881 : f32 = u_xlat41;
  u_xlat16.x = (x_880 * x_881);
  let x_885 : f32 = u_xlat2.x;
  let x_887 : f32 = u_xlat16.x;
  let x_890 : f32 = u_xlat2.x;
  u_xlat29 = ((x_885 * x_887) + -(x_890));
  let x_893 : f32 = u_xlat29;
  let x_895 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_893 * x_895) + 1.0f);
  let x_900 : f32 = u_xlat16.x;
  u_xlat16.x = (x_900 * 0.318309873f);
  let x_905 : f32 = u_xlat2.x;
  let x_907 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_905 * x_907) + 0.0000001f);
  let x_913 : f32 = u_xlat16.x;
  let x_915 : f32 = u_xlat2.x;
  u_xlat2.x = (x_913 / x_915);
  let x_918 : f32 = u_xlat39;
  let x_920 : f32 = u_xlat2.x;
  u_xlat39 = (x_918 * x_920);
  let x_922 : f32 = u_xlat40;
  let x_923 : f32 = u_xlat39;
  u_xlat39 = (x_922 * x_923);
  let x_925 : f32 = u_xlat39;
  u_xlat39 = (x_925 * 3.141592741f);
  let x_928 : f32 = u_xlat39;
  u_xlat39 = max(x_928, 0.0f);
  let x_930 : f32 = u_xlat41;
  let x_931 : f32 = u_xlat41;
  u_xlat40 = ((x_930 * x_931) + 1.0f);
  let x_934 : f32 = u_xlat40;
  u_xlat40 = (1.0f / x_934);
  let x_936 : vec4<f32> = u_xlat0;
  let x_938 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_936.x, x_936.y, x_936.z), vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_944 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_944 == 0.0f));
  let x_946 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_946);
  let x_949 : f32 = u_xlat39;
  let x_951 : f32 = u_xlat2.x;
  u_xlat39 = (x_949 * x_951);
  let x_953 : f32 = u_xlat42;
  let x_955 : f32 = x_32.x_Glossiness;
  u_xlat2.x = (x_953 + x_955);
  let x_959 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_959, 0.0f, 1.0f);
  let x_962 : f32 = u_xlat28;
  let x_964 : vec3<f32> = u_xlat5;
  u_xlat16 = (vec3<f32>(x_962, x_962, x_962) * x_964);
  let x_966 : vec3<f32> = u_xlat5;
  let x_967 : f32 = u_xlat39;
  u_xlat5 = (x_966 * vec3<f32>(x_967, x_967, x_967));
  let x_971 : f32 = u_xlat15.x;
  u_xlat39 = (-(x_971) + 1.0f);
  let x_974 : f32 = u_xlat39;
  let x_975 : f32 = u_xlat39;
  u_xlat15.x = (x_974 * x_975);
  let x_979 : f32 = u_xlat15.x;
  let x_981 : f32 = u_xlat15.x;
  u_xlat15.x = (x_979 * x_981);
  let x_984 : f32 = u_xlat39;
  let x_986 : f32 = u_xlat15.x;
  u_xlat39 = (x_984 * x_986);
  let x_988 : vec4<f32> = u_xlat0;
  u_xlat15 = (-(vec3<f32>(x_988.x, x_988.y, x_988.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_993 : vec3<f32> = u_xlat15;
  let x_994 : f32 = u_xlat39;
  let x_997 : vec4<f32> = u_xlat0;
  u_xlat15 = ((x_993 * vec3<f32>(x_994, x_994, x_994)) + vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec3<f32> = u_xlat15;
  let x_1001 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_1000 * x_1001);
  let x_1003 : vec4<f32> = u_xlat1;
  let x_1005 : vec3<f32> = u_xlat16;
  let x_1007 : vec3<f32> = u_xlat15;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1003.x, x_1003.y, x_1003.z) * x_1005) + x_1007);
  let x_1009 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec3<f32> = u_xlat17;
  let x_1012 : f32 = u_xlat40;
  u_xlat15 = (x_1011 * vec3<f32>(x_1012, x_1012, x_1012));
  let x_1015 : vec4<f32> = u_xlat0;
  let x_1018 : vec3<f32> = u_xlat2;
  u_xlat16 = (-(vec3<f32>(x_1015.x, x_1015.y, x_1015.z)) + vec3<f32>(x_1018.x, x_1018.x, x_1018.x));
  let x_1021 : vec3<f32> = u_xlat3;
  let x_1023 : vec3<f32> = u_xlat16;
  let x_1025 : vec4<f32> = u_xlat0;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.x, x_1021.x) * x_1023) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : vec3<f32> = u_xlat15;
  let x_1031 : vec4<f32> = u_xlat0;
  let x_1034 : vec4<f32> = u_xlat1;
  let x_1036 : vec3<f32> = ((x_1030 * vec3<f32>(x_1031.x, x_1031.y, x_1031.z)) + vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1040 : f32 = vs_TEXCOORD1.w;
  let x_1042 : f32 = x_32.x_ProjectionParams.y;
  u_xlat39 = (x_1040 / x_1042);
  let x_1044 : f32 = u_xlat39;
  u_xlat39 = (-(x_1044) + 1.0f);
  let x_1047 : f32 = u_xlat39;
  let x_1049 : f32 = x_32.x_ProjectionParams.z;
  u_xlat39 = (x_1047 * x_1049);
  let x_1051 : f32 = u_xlat39;
  u_xlat39 = max(x_1051, 0.0f);
  let x_1053 : f32 = u_xlat39;
  let x_1056 : f32 = x_32.unity_FogParams.x;
  u_xlat39 = (x_1053 * x_1056);
  let x_1058 : f32 = u_xlat39;
  let x_1059 : f32 = u_xlat39;
  u_xlat39 = (x_1058 * -(x_1059));
  let x_1062 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1062);
  let x_1064 : vec4<f32> = u_xlat0;
  let x_1067 : vec4<f32> = x_32.unity_FogColor;
  let x_1070 : vec3<f32> = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) + -(vec3<f32>(x_1067.x, x_1067.y, x_1067.z)));
  let x_1071 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : f32 = u_xlat39;
  let x_1075 : vec4<f32> = u_xlat0;
  let x_1079 : vec4<f32> = x_32.unity_FogColor;
  let x_1081 : vec3<f32> = ((vec3<f32>(x_1073, x_1073, x_1073) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z)) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
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

