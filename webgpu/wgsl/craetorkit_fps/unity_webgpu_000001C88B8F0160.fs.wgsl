struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
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
  @size(8)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat25 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var x_171 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat24 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat24;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat25 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_86);
  let x_89 : f32 = u_xlat25;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_101 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_101 == 1.0f);
  let x_104 : bool = u_xlatb25;
  if (x_104) {
    let x_109 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_109 == 1.0f);
    let x_114 : vec4<f32> = vs_TEXCOORD3;
    let x_119 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_121 : vec3<f32> = (vec3<f32>(x_114.w, x_114.w, x_114.w) * vec3<f32>(x_119.x, x_119.y, x_119.z));
    let x_122 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
    let x_126 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_129 : vec4<f32> = vs_TEXCOORD2;
    let x_132 : vec4<f32> = u_xlat3;
    let x_134 : vec3<f32> = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_129.w, x_129.w, x_129.w)) + vec3<f32>(x_132.x, x_132.y, x_132.z));
    let x_135 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
    let x_139 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_141 : vec4<f32> = vs_TEXCOORD4;
    let x_144 : vec4<f32> = u_xlat3;
    let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.w, x_141.w, x_141.w)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
    let x_147 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_149 : vec4<f32> = u_xlat3;
    let x_152 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_154 : vec3<f32> = (vec3<f32>(x_149.x, x_149.y, x_149.z) + vec3<f32>(x_152.x, x_152.y, x_152.z));
    let x_155 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
    let x_161 : f32 = vs_TEXCOORD2.w;
    u_xlat12.x = x_161;
    let x_164 : f32 = vs_TEXCOORD3.w;
    u_xlat12.y = x_164;
    let x_167 : f32 = vs_TEXCOORD4.w;
    u_xlat12.z = x_167;
    let x_170 : bool = u_xlatb25;
    if (x_170) {
      let x_174 : vec4<f32> = u_xlat3;
      x_171 = vec3<f32>(x_174.x, x_174.y, x_174.z);
    } else {
      let x_177 : vec3<f32> = u_xlat12;
      x_171 = x_177;
    }
    let x_178 : vec3<f32> = x_171;
    let x_179 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_181 : vec4<f32> = u_xlat3;
    let x_186 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_188 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + -(x_186));
    let x_189 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
    let x_191 : vec4<f32> = u_xlat3;
    let x_195 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_196 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) * x_195);
    let x_197 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_197.x, x_196.x, x_196.y, x_196.z);
    let x_200 : f32 = u_xlat3.y;
    u_xlat25 = ((x_200 * 0.25f) + 0.75f);
    let x_207 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_207 * 0.5f) + 0.75f);
    let x_211 : f32 = u_xlat25;
    let x_212 : f32 = u_xlat26;
    u_xlat3.x = max(x_211, x_212);
    let x_223 : vec4<f32> = u_xlat3;
    let x_225 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_223.x, x_223.z, x_223.w));
    u_xlat3 = x_225;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_231 : vec4<f32> = u_xlat3;
  let x_233 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_231, x_233);
  let x_235 : f32 = u_xlat25;
  u_xlat25 = clamp(x_235, 0.0f, 1.0f);
  let x_243 : vec4<f32> = vs_TEXCOORD0;
  let x_245 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_243.x, x_243.y));
  u_xlat26 = x_245.y;
  let x_249 : f32 = x_33.x_Glossiness;
  let x_251 : f32 = x_33.x_Glossiness;
  let x_252 : vec2<f32> = vec2<f32>(x_249, x_251);
  let x_258 : vec2<f32> = (-(vec2<f32>(x_252.x, x_252.y)) + vec2<f32>(1.0f, 1.0f));
  let x_259 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_258.x, x_259.y, x_259.z, x_258.y);
  let x_263 : vec4<f32> = vs_TEXCOORD1;
  let x_265 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), x_265);
  let x_269 : f32 = u_xlat4.x;
  let x_271 : f32 = u_xlat4.x;
  u_xlat4.x = (x_269 + x_271);
  let x_274 : vec3<f32> = u_xlat2;
  let x_275 : vec4<f32> = u_xlat4;
  let x_279 : vec4<f32> = vs_TEXCOORD1;
  let x_281 : vec3<f32> = ((x_274 * -(vec3<f32>(x_275.x, x_275.x, x_275.x))) + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : f32 = u_xlat25;
  let x_289 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : f32 = u_xlat26;
  let x_296 : vec4<f32> = vs_TEXCOORD5;
  u_xlat6 = (vec3<f32>(x_293, x_293, x_293) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_300 : f32 = u_xlat3.x;
  u_xlat25 = ((-(x_300) * 0.699999988f) + 1.700000048f);
  let x_306 : f32 = u_xlat25;
  let x_308 : f32 = u_xlat3.x;
  u_xlat25 = (x_306 * x_308);
  let x_310 : f32 = u_xlat25;
  u_xlat25 = (x_310 * 6.0f);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : f32 = u_xlat25;
  let x_324 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_321.x, x_321.y, x_321.z), x_323);
  u_xlat4 = x_324;
  let x_326 : f32 = u_xlat4.w;
  u_xlat25 = (x_326 + -1.0f);
  let x_330 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_331 : f32 = u_xlat25;
  u_xlat25 = ((x_330 * x_331) + 1.0f);
  let x_334 : f32 = u_xlat25;
  u_xlat25 = log2(x_334);
  let x_336 : f32 = u_xlat25;
  let x_338 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat25 = (x_336 * x_338);
  let x_340 : f32 = u_xlat25;
  u_xlat25 = exp2(x_340);
  let x_342 : f32 = u_xlat25;
  let x_344 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat25 = (x_342 * x_344);
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : f32 = u_xlat25;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348, x_348, x_348));
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : f32 = u_xlat26;
  let x_355 : vec4<f32> = u_xlat4;
  let x_357 : vec3<f32> = (vec3<f32>(x_353, x_353, x_353) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_363 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(-(vec3<f32>(x_360.x, x_360.y, x_360.z)), x_363);
  let x_365 : f32 = u_xlat25;
  let x_366 : f32 = u_xlat25;
  u_xlat26 = (x_365 + x_366);
  let x_369 : vec3<f32> = u_xlat2;
  let x_370 : f32 = u_xlat26;
  let x_374 : vec4<f32> = vs_TEXCOORD1;
  u_xlat7 = ((x_369 * -(vec3<f32>(x_370, x_370, x_370))) + -(vec3<f32>(x_374.x, x_374.y, x_374.z)));
  let x_378 : vec3<f32> = u_xlat2;
  let x_380 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_378, vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_385 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_385, 0.0f, 1.0f);
  let x_388 : f32 = u_xlat25;
  u_xlat25 = x_388;
  let x_389 : f32 = u_xlat25;
  u_xlat25 = clamp(x_389, 0.0f, 1.0f);
  let x_391 : vec3<f32> = u_xlat7;
  let x_393 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat7.x = dot(x_391, vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_397 : f32 = u_xlat25;
  u_xlat7.y = (-(x_397) + 1.0f);
  let x_402 : vec3<f32> = u_xlat7;
  let x_404 : vec3<f32> = u_xlat7;
  let x_406 : vec2<f32> = (vec2<f32>(x_402.x, x_402.y) * vec2<f32>(x_404.x, x_404.y));
  let x_407 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_406.x, x_406.y, x_407.z);
  let x_409 : vec3<f32> = u_xlat10;
  let x_411 : vec3<f32> = u_xlat10;
  let x_413 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_411.x, x_411.y));
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_414.x, x_413.x, x_413.y, x_414.w);
  let x_416 : f32 = u_xlat24;
  let x_419 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_416) + x_419);
  let x_421 : f32 = u_xlat24;
  u_xlat24 = (x_421 + 1.0f);
  let x_423 : f32 = u_xlat24;
  u_xlat24 = clamp(x_423, 0.0f, 1.0f);
  let x_430 : vec4<f32> = u_xlat3;
  let x_432 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_430.y, x_430.w));
  u_xlat25 = x_432.x;
  let x_434 : f32 = u_xlat25;
  u_xlat25 = (x_434 * 16.0f);
  let x_437 : f32 = u_xlat25;
  let x_439 : vec3<f32> = u_xlat0;
  let x_441 : vec3<f32> = u_xlat1;
  u_xlat10 = ((vec3<f32>(x_437, x_437, x_437) * x_439) + x_441);
  let x_443 : vec3<f32> = u_xlat2;
  let x_445 : vec3<f32> = u_xlat5;
  let x_446 : vec3<f32> = (vec3<f32>(x_443.x, x_443.x, x_443.x) * x_445);
  let x_447 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_446.z);
  let x_449 : vec3<f32> = u_xlat0;
  let x_451 : f32 = u_xlat24;
  u_xlat5 = (-(x_449) + vec3<f32>(x_451, x_451, x_451));
  let x_454 : vec4<f32> = u_xlat3;
  let x_456 : vec3<f32> = u_xlat5;
  let x_458 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_454.z, x_454.z, x_454.z) * x_456) + x_458);
  let x_460 : vec3<f32> = u_xlat0;
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_460 * vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec3<f32> = u_xlat6;
  let x_465 : vec3<f32> = u_xlat1;
  let x_467 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_464 * x_465) + x_467);
  let x_469 : vec3<f32> = u_xlat10;
  let x_470 : vec4<f32> = u_xlat3;
  let x_473 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_469 * vec3<f32>(x_470.x, x_470.y, x_470.w)) + x_473);
  let x_480 : vec4<f32> = vs_TEXCOORD0;
  let x_482 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_480.x, x_480.y));
  u_xlat1 = vec3<f32>(x_482.x, x_482.y, x_482.z);
  let x_486 : vec3<f32> = u_xlat1;
  let x_489 : vec4<f32> = x_33.x_EmissionColor;
  let x_492 : vec3<f32> = u_xlat0;
  let x_493 : vec3<f32> = ((x_486 * vec3<f32>(x_489.x, x_489.y, x_489.z)) + x_492);
  let x_494 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

