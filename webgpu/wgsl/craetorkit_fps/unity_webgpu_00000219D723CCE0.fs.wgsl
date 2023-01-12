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
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(8) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat17 : vec2<f32>;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_199 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
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
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_110 : vec3<f32> = vs_TEXCOORD4;
  let x_116 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat17 = (vec2<f32>(x_110.y, x_110.y) * vec2<f32>(x_116.x, x_116.y));
  let x_120 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_122 : vec3<f32> = vs_TEXCOORD4;
  let x_125 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_131 : vec3<f32> = vs_TEXCOORD4;
  let x_134 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_131.z, x_131.z)) + x_134);
  let x_136 : vec2<f32> = u_xlat17;
  let x_139 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat17 = (x_136 + vec2<f32>(x_139.x, x_139.y));
  let x_148 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_148 == 1.0f);
  let x_150 : bool = u_xlatb22;
  if (x_150) {
    let x_155 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_155 == 1.0f);
    let x_159 : vec3<f32> = vs_TEXCOORD4;
    let x_163 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_165 : vec3<f32> = (vec3<f32>(x_159.y, x_159.y, x_159.y) * vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_169 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_171 : vec3<f32> = vs_TEXCOORD4;
    let x_174 : vec4<f32> = u_xlat5;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.x, x_171.x, x_171.x)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_180 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_182 : vec3<f32> = vs_TEXCOORD4;
    let x_185 : vec4<f32> = u_xlat5;
    let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.z, x_182.z, x_182.z)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat5;
    let x_193 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_195 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(x_193.x, x_193.y, x_193.z));
    let x_196 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_198 : bool = u_xlatb22;
    if (x_198) {
      let x_202 : vec4<f32> = u_xlat5;
      x_199 = vec3<f32>(x_202.x, x_202.y, x_202.z);
    } else {
      let x_205 : vec3<f32> = vs_TEXCOORD4;
      x_199 = x_205;
    }
    let x_206 : vec3<f32> = x_199;
    let x_207 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_209 : vec4<f32> = u_xlat5;
    let x_213 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_215 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) + -(x_213));
    let x_216 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_218 : vec4<f32> = u_xlat5;
    let x_222 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_223 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) * x_222);
    let x_224 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_224.x, x_223.x, x_223.y, x_223.z);
    let x_227 : f32 = u_xlat5.y;
    u_xlat22 = ((x_227 * 0.25f) + 0.75f);
    let x_234 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_234 * 0.5f) + 0.75f);
    let x_238 : f32 = u_xlat22;
    let x_239 : f32 = u_xlat23;
    u_xlat5.x = max(x_238, x_239);
    let x_250 : vec4<f32> = u_xlat5;
    let x_252 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_250.x, x_250.z, x_250.w));
    u_xlat5 = x_252;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_259 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_259, x_261);
  let x_263 : f32 = u_xlat22;
  u_xlat22 = clamp(x_263, 0.0f, 1.0f);
  let x_271 : vec2<f32> = u_xlat17;
  let x_272 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_271);
  u_xlat23 = x_272.w;
  let x_274 : f32 = u_xlat22;
  let x_275 : f32 = u_xlat23;
  u_xlat22 = (x_274 * x_275);
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_278, x_279);
  let x_283 : vec3<f32> = vs_TEXCOORD2;
  let x_284 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_283, x_284);
  let x_288 : vec3<f32> = vs_TEXCOORD3;
  let x_289 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_288, x_289);
  let x_292 : vec4<f32> = u_xlat5;
  let x_294 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_297);
  let x_299 : f32 = u_xlat23;
  let x_301 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_299, x_299, x_299) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : f32 = u_xlat22;
  let x_308 : vec4<f32> = x_18.x_LightColor0;
  let x_310 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_314 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_318 : vec3<f32> = u_xlat3;
  let x_320 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_318.x, x_318.x, x_318.x) * x_320) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_326 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_326) * 0.959999979f) + 0.959999979f);
  let x_331 : f32 = u_xlat22;
  let x_333 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_331, x_331, x_331) * x_333);
  let x_336 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_336) + 1.0f);
  let x_339 : vec3<f32> = u_xlat0;
  let x_340 : f32 = u_xlat21;
  let x_344 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_339 * vec3<f32>(x_340, x_340, x_340)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec3<f32> = u_xlat0;
  let x_348 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_347, x_348);
  let x_350 : f32 = u_xlat21;
  u_xlat21 = max(x_350, 0.001f);
  let x_353 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_353);
  let x_355 : f32 = u_xlat21;
  let x_357 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_355, x_355, x_355) * x_357);
  let x_359 : vec3<f32> = u_xlat4;
  let x_360 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_359, x_360);
  let x_362 : vec3<f32> = u_xlat4;
  let x_364 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_362, vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_369 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_369, 0.0f, 1.0f);
  let x_373 : vec3<f32> = u_xlat4;
  let x_374 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_373, x_374);
  let x_376 : f32 = u_xlat8;
  u_xlat8 = clamp(x_376, 0.0f, 1.0f);
  let x_379 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_381 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), x_381);
  let x_385 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_385, 0.0f, 1.0f);
  let x_390 : f32 = u_xlat0.x;
  let x_392 : f32 = u_xlat0.x;
  u_xlat7.x = (x_390 * x_392);
  let x_395 : vec3<f32> = u_xlat7;
  let x_397 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_395.x, x_395.x), vec2<f32>(x_397, x_397));
  let x_402 : f32 = u_xlat7.x;
  u_xlat7.x = (x_402 + -0.5f);
  let x_408 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_408) + 1.0f);
  let x_412 : f32 = u_xlat14;
  let x_413 : f32 = u_xlat14;
  u_xlat15 = (x_412 * x_413);
  let x_415 : f32 = u_xlat15;
  let x_416 : f32 = u_xlat15;
  u_xlat15 = (x_415 * x_416);
  let x_418 : f32 = u_xlat14;
  let x_419 : f32 = u_xlat15;
  u_xlat14 = (x_418 * x_419);
  let x_422 : f32 = u_xlat7.x;
  let x_423 : f32 = u_xlat14;
  u_xlat14 = ((x_422 * x_423) + 1.0f);
  let x_426 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_426)) + 1.0f);
  let x_430 : f32 = u_xlat15;
  let x_431 : f32 = u_xlat15;
  u_xlat23 = (x_430 * x_431);
  let x_433 : f32 = u_xlat23;
  let x_434 : f32 = u_xlat23;
  u_xlat23 = (x_433 * x_434);
  let x_436 : f32 = u_xlat15;
  let x_437 : f32 = u_xlat23;
  u_xlat15 = (x_436 * x_437);
  let x_440 : f32 = u_xlat7.x;
  let x_441 : f32 = u_xlat15;
  u_xlat7.x = ((x_440 * x_441) + 1.0f);
  let x_446 : f32 = u_xlat7.x;
  let x_447 : f32 = u_xlat14;
  u_xlat7.x = (x_446 * x_447);
  let x_450 : f32 = u_xlat22;
  let x_451 : f32 = u_xlat22;
  u_xlat14 = (x_450 * x_451);
  let x_453 : f32 = u_xlat14;
  u_xlat14 = max(x_453, 0.002f);
  let x_456 : f32 = u_xlat14;
  u_xlat15 = (-(x_456) + 1.0f);
  let x_459 : f32 = u_xlat21;
  let x_461 : f32 = u_xlat15;
  let x_463 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_459) * x_461) + x_463);
  let x_466 : f32 = u_xlat1.x;
  let x_467 : f32 = u_xlat15;
  let x_469 : f32 = u_xlat14;
  u_xlat15 = ((x_466 * x_467) + x_469);
  let x_471 : f32 = u_xlat21;
  let x_473 : f32 = u_xlat15;
  u_xlat21 = (abs(x_471) * x_473);
  let x_476 : f32 = u_xlat1.x;
  let x_477 : f32 = u_xlat22;
  let x_479 : f32 = u_xlat21;
  u_xlat21 = ((x_476 * x_477) + x_479);
  let x_481 : f32 = u_xlat21;
  u_xlat21 = (x_481 + 0.00001f);
  let x_484 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_484);
  let x_486 : f32 = u_xlat14;
  let x_487 : f32 = u_xlat14;
  u_xlat14 = (x_486 * x_487);
  let x_489 : f32 = u_xlat8;
  let x_490 : f32 = u_xlat14;
  let x_492 : f32 = u_xlat8;
  u_xlat15 = ((x_489 * x_490) + -(x_492));
  let x_495 : f32 = u_xlat15;
  let x_496 : f32 = u_xlat8;
  u_xlat8 = ((x_495 * x_496) + 1.0f);
  let x_499 : f32 = u_xlat14;
  u_xlat14 = (x_499 * 0.318309873f);
  let x_502 : f32 = u_xlat8;
  let x_503 : f32 = u_xlat8;
  u_xlat8 = ((x_502 * x_503) + 0.0000001f);
  let x_507 : f32 = u_xlat14;
  let x_508 : f32 = u_xlat8;
  u_xlat14 = (x_507 / x_508);
  let x_510 : f32 = u_xlat14;
  let x_511 : f32 = u_xlat21;
  u_xlat7.y = (x_510 * x_511);
  let x_514 : vec3<f32> = u_xlat1;
  let x_516 : vec3<f32> = u_xlat7;
  let x_518 : vec2<f32> = (vec2<f32>(x_514.x, x_514.x) * vec2<f32>(x_516.x, x_516.y));
  let x_519 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_518.x, x_518.y, x_519.z);
  let x_522 : f32 = u_xlat7.y;
  u_xlat14 = (x_522 * 3.141592741f);
  let x_525 : f32 = u_xlat14;
  u_xlat14 = max(x_525, 0.0f);
  let x_527 : vec3<f32> = u_xlat6;
  let x_528 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_527, x_528);
  let x_531 : f32 = u_xlat21;
  u_xlatb21 = !((x_531 == 0.0f));
  let x_533 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_533);
  let x_535 : f32 = u_xlat21;
  let x_536 : f32 = u_xlat14;
  u_xlat14 = (x_535 * x_536);
  let x_538 : vec3<f32> = u_xlat7;
  let x_540 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_538.x, x_538.x, x_538.x) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat5;
  let x_545 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_543.x, x_543.y, x_543.z) * vec3<f32>(x_545, x_545, x_545));
  let x_549 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_549) + 1.0f);
  let x_554 : f32 = u_xlat0.x;
  let x_556 : f32 = u_xlat0.x;
  u_xlat22 = (x_554 * x_556);
  let x_558 : f32 = u_xlat22;
  let x_559 : f32 = u_xlat22;
  u_xlat22 = (x_558 * x_559);
  let x_562 : f32 = u_xlat0.x;
  let x_563 : f32 = u_xlat22;
  u_xlat0.x = (x_562 * x_563);
  let x_566 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_566) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_570 : vec3<f32> = u_xlat3;
  let x_571 : vec3<f32> = u_xlat0;
  let x_574 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_570 * vec3<f32>(x_571.x, x_571.x, x_571.x)) + x_574);
  let x_576 : vec3<f32> = u_xlat7;
  let x_577 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_576 * x_577);
  let x_579 : vec3<f32> = u_xlat2;
  let x_580 : vec3<f32> = u_xlat1;
  let x_582 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_579 * x_580) + x_582);
  let x_586 : f32 = vs_TEXCOORD7;
  let x_588 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_586 / x_588);
  let x_590 : f32 = u_xlat21;
  u_xlat21 = (-(x_590) + 1.0f);
  let x_593 : f32 = u_xlat21;
  let x_595 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_593 * x_595);
  let x_597 : f32 = u_xlat21;
  u_xlat21 = max(x_597, 0.0f);
  let x_599 : f32 = u_xlat21;
  let x_602 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_599 * x_602);
  let x_604 : f32 = u_xlat21;
  let x_605 : f32 = u_xlat21;
  u_xlat21 = (x_604 * -(x_605));
  let x_608 : f32 = u_xlat21;
  u_xlat21 = exp2(x_608);
  let x_612 : vec3<f32> = u_xlat0;
  let x_613 : f32 = u_xlat21;
  let x_615 : vec3<f32> = (x_612 * vec3<f32>(x_613, x_613, x_613));
  let x_616 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

