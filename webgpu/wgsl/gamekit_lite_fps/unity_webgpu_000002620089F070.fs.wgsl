struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(10) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_278 : vec3<f32>;
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
  let x_51 : vec4<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_51.x, x_51.y));
  u_xlat22 = x_53.x;
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_64.z, x_64.w));
  let x_67 : vec2<f32> = vec2<f32>(x_66.x, x_66.w);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
  let x_70 : f32 = u_xlat22;
  u_xlat22 = (-(x_70) + 1.0f);
  let x_74 : f32 = u_xlat22;
  let x_78 : f32 = x_18.x_Cutoff;
  u_xlat22 = (x_74 + -(x_78));
  let x_85 : f32 = x_18.x_EdgeSize;
  u_xlat16.x = (1.0f / -(x_85));
  let x_89 : f32 = u_xlat22;
  let x_91 : f32 = u_xlat16.x;
  u_xlat22 = (x_89 * x_91);
  let x_93 : f32 = u_xlat22;
  u_xlat22 = clamp(x_93, 0.0f, 1.0f);
  let x_96 : f32 = u_xlat22;
  u_xlat16.x = ((x_96 * -2.0f) + 3.0f);
  let x_102 : f32 = u_xlat22;
  let x_103 : f32 = u_xlat22;
  u_xlat22 = (x_102 * x_103);
  let x_111 : vec4<f32> = vs_TEXCOORD0;
  let x_113 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_111.z, x_111.w));
  u_xlat3 = vec3<f32>(x_113.x, x_113.y, x_113.z);
  let x_116 : vec3<f32> = u_xlat3;
  let x_120 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_116 * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_129 : vec4<f32> = vs_TEXCOORD0;
  let x_131 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_129.z, x_129.w));
  u_xlat5 = vec3<f32>(x_131.x, x_131.y, x_131.w);
  let x_135 : f32 = u_xlat5.z;
  let x_137 : f32 = u_xlat5.x;
  u_xlat5.x = (x_135 * x_137);
  let x_140 : vec3<f32> = u_xlat5;
  let x_147 : vec2<f32> = ((vec2<f32>(x_140.x, x_140.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_148 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_147.x, x_147.y, x_148.z);
  let x_151 : vec3<f32> = u_xlat5;
  let x_153 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_151.x, x_151.y), vec2<f32>(x_153.x, x_153.y));
  let x_156 : f32 = u_xlat23;
  u_xlat23 = min(x_156, 1.0f);
  let x_158 : f32 = u_xlat23;
  u_xlat23 = (-(x_158) + 1.0f);
  let x_161 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_161);
  let x_165 : f32 = u_xlat2.x;
  let x_168 : f32 = x_18.x_Metallic;
  u_xlat2.x = (x_165 * x_168);
  let x_172 : f32 = u_xlat16.x;
  let x_174 : f32 = u_xlat22;
  let x_177 : f32 = x_18.x_Cutoff;
  u_xlat22 = ((-(x_172) * x_174) + -(x_177));
  let x_180 : f32 = u_xlat22;
  u_xlat22 = (x_180 + 1.0f);
  let x_185 : f32 = u_xlat22;
  u_xlatb22 = (x_185 < 0.0f);
  let x_187 : bool = u_xlatb22;
  if (((select(0i, 1i, x_187) * -1i) != 0i)) {
    discard;
  }
  let x_196 : vec3<f32> = vs_TEXCOORD4;
  let x_200 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat16 = (vec2<f32>(x_196.y, x_196.y) * vec2<f32>(x_200.x, x_200.y));
  let x_204 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_206 : vec3<f32> = vs_TEXCOORD4;
  let x_209 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.x)) + x_209);
  let x_213 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_215 : vec3<f32> = vs_TEXCOORD4;
  let x_218 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_215.z, x_215.z)) + x_218);
  let x_220 : vec2<f32> = u_xlat16;
  let x_223 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat16 = (x_220 + vec2<f32>(x_223.x, x_223.y));
  let x_227 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_227 == 1.0f);
  let x_229 : bool = u_xlatb22;
  if (x_229) {
    let x_234 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_234 == 1.0f);
    let x_237 : vec3<f32> = vs_TEXCOORD4;
    let x_241 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_243 : vec3<f32> = (vec3<f32>(x_237.y, x_237.y, x_237.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_247 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_249 : vec3<f32> = vs_TEXCOORD4;
    let x_252 : vec4<f32> = u_xlat6;
    let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_258 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_260 : vec3<f32> = vs_TEXCOORD4;
    let x_263 : vec4<f32> = u_xlat6;
    let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.z, x_260.z, x_260.z)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat6;
    let x_271 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_273 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : bool = u_xlatb22;
    if (x_276) {
      let x_281 : vec4<f32> = u_xlat6;
      x_278 = vec3<f32>(x_281.x, x_281.y, x_281.z);
    } else {
      let x_284 : vec3<f32> = vs_TEXCOORD4;
      x_278 = x_284;
    }
    let x_285 : vec3<f32> = x_278;
    let x_286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat6;
    let x_292 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_294 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_292));
    let x_295 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
    let x_297 : vec4<f32> = u_xlat6;
    let x_301 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * x_301);
    let x_303 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_303.x, x_302.x, x_302.y, x_302.z);
    let x_306 : f32 = u_xlat6.y;
    u_xlat22 = ((x_306 * 0.25f) + 0.75f);
    let x_313 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_313 * 0.5f) + 0.75f);
    let x_317 : f32 = u_xlat22;
    let x_318 : f32 = u_xlat24;
    u_xlat6.x = max(x_317, x_318);
    let x_329 : vec4<f32> = u_xlat6;
    let x_331 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_329.x, x_329.z, x_329.w));
    u_xlat6 = x_331;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_338, x_340);
  let x_342 : f32 = u_xlat22;
  u_xlat22 = clamp(x_342, 0.0f, 1.0f);
  let x_349 : vec2<f32> = u_xlat16;
  let x_350 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_349);
  u_xlat16.x = x_350.w;
  let x_353 : f32 = u_xlat22;
  let x_355 : f32 = u_xlat16.x;
  u_xlat22 = (x_353 * x_355);
  let x_358 : vec3<f32> = vs_TEXCOORD1;
  let x_359 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_358, x_359);
  let x_363 : vec3<f32> = vs_TEXCOORD2;
  let x_364 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_363, x_364);
  let x_368 : vec3<f32> = vs_TEXCOORD3;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_368, x_369);
  let x_372 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_379 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_379);
  let x_382 : vec2<f32> = u_xlat16;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_382.x, x_382.x, x_382.x) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat22;
  let x_391 : vec4<f32> = x_18.x_LightColor0;
  let x_393 : vec3<f32> = (vec3<f32>(x_387, x_387, x_387) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec3<f32> = u_xlat3;
  let x_398 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_396 * vec3<f32>(x_398.x, x_398.y, x_398.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_404.x, x_404.x, x_404.x) * x_406) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_412 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_412) * 0.959999979f) + 0.959999979f);
  let x_417 : f32 = u_xlat22;
  let x_419 : vec3<f32> = u_xlat4;
  let x_420 : vec3<f32> = (vec3<f32>(x_417, x_417, x_417) * x_419);
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_420.x, x_421.y, x_420.y, x_420.z);
  let x_424 : f32 = u_xlat2.y;
  let x_428 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_424) * x_428) + 1.0f);
  let x_431 : vec3<f32> = u_xlat0;
  let x_432 : f32 = u_xlat21;
  let x_436 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_431 * vec3<f32>(x_432, x_432, x_432)) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec3<f32> = u_xlat0;
  let x_440 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_439, x_440);
  let x_442 : f32 = u_xlat21;
  u_xlat21 = max(x_442, 0.001f);
  let x_445 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_445);
  let x_447 : f32 = u_xlat21;
  let x_449 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_451 : vec3<f32> = u_xlat5;
  let x_452 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_451, x_452);
  let x_454 : vec3<f32> = u_xlat5;
  let x_456 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_454, vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_461 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_461, 0.0f, 1.0f);
  let x_465 : vec3<f32> = u_xlat5;
  let x_466 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_465, x_466);
  let x_468 : f32 = u_xlat8;
  u_xlat8 = clamp(x_468, 0.0f, 1.0f);
  let x_471 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_473 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_471.x, x_471.y, x_471.z), x_473);
  let x_477 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_477, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat0.x;
  let x_484 : f32 = u_xlat0.x;
  u_xlat7.x = (x_482 * x_484);
  let x_487 : vec3<f32> = u_xlat7;
  let x_489 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_487.x, x_487.x), vec2<f32>(x_489, x_489));
  let x_494 : f32 = u_xlat7.x;
  u_xlat7.x = (x_494 + -0.5f);
  let x_500 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_500) + 1.0f);
  let x_504 : f32 = u_xlat14;
  let x_505 : f32 = u_xlat14;
  u_xlat15 = (x_504 * x_505);
  let x_507 : f32 = u_xlat15;
  let x_508 : f32 = u_xlat15;
  u_xlat15 = (x_507 * x_508);
  let x_510 : f32 = u_xlat14;
  let x_511 : f32 = u_xlat15;
  u_xlat14 = (x_510 * x_511);
  let x_514 : f32 = u_xlat7.x;
  let x_515 : f32 = u_xlat14;
  u_xlat14 = ((x_514 * x_515) + 1.0f);
  let x_518 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_518)) + 1.0f);
  let x_523 : f32 = u_xlat15;
  let x_524 : f32 = u_xlat15;
  u_xlat9 = (x_523 * x_524);
  let x_526 : f32 = u_xlat9;
  let x_527 : f32 = u_xlat9;
  u_xlat9 = (x_526 * x_527);
  let x_529 : f32 = u_xlat15;
  let x_530 : f32 = u_xlat9;
  u_xlat15 = (x_529 * x_530);
  let x_533 : f32 = u_xlat7.x;
  let x_534 : f32 = u_xlat15;
  u_xlat7.x = ((x_533 * x_534) + 1.0f);
  let x_539 : f32 = u_xlat7.x;
  let x_540 : f32 = u_xlat14;
  u_xlat7.x = (x_539 * x_540);
  let x_543 : f32 = u_xlat22;
  let x_544 : f32 = u_xlat22;
  u_xlat14 = (x_543 * x_544);
  let x_546 : f32 = u_xlat14;
  u_xlat14 = max(x_546, 0.002f);
  let x_549 : f32 = u_xlat14;
  u_xlat15 = (-(x_549) + 1.0f);
  let x_552 : f32 = u_xlat21;
  let x_554 : f32 = u_xlat15;
  let x_556 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_552) * x_554) + x_556);
  let x_559 : f32 = u_xlat1.x;
  let x_560 : f32 = u_xlat15;
  let x_562 : f32 = u_xlat14;
  u_xlat15 = ((x_559 * x_560) + x_562);
  let x_564 : f32 = u_xlat21;
  let x_566 : f32 = u_xlat15;
  u_xlat21 = (abs(x_564) * x_566);
  let x_569 : f32 = u_xlat1.x;
  let x_570 : f32 = u_xlat22;
  let x_572 : f32 = u_xlat21;
  u_xlat21 = ((x_569 * x_570) + x_572);
  let x_574 : f32 = u_xlat21;
  u_xlat21 = (x_574 + 0.00001f);
  let x_577 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_577);
  let x_579 : f32 = u_xlat14;
  let x_580 : f32 = u_xlat14;
  u_xlat14 = (x_579 * x_580);
  let x_582 : f32 = u_xlat8;
  let x_583 : f32 = u_xlat14;
  let x_585 : f32 = u_xlat8;
  u_xlat15 = ((x_582 * x_583) + -(x_585));
  let x_588 : f32 = u_xlat15;
  let x_589 : f32 = u_xlat8;
  u_xlat8 = ((x_588 * x_589) + 1.0f);
  let x_592 : f32 = u_xlat14;
  u_xlat14 = (x_592 * 0.318309873f);
  let x_595 : f32 = u_xlat8;
  let x_596 : f32 = u_xlat8;
  u_xlat8 = ((x_595 * x_596) + 0.0000001f);
  let x_600 : f32 = u_xlat14;
  let x_601 : f32 = u_xlat8;
  u_xlat14 = (x_600 / x_601);
  let x_603 : f32 = u_xlat14;
  let x_604 : f32 = u_xlat21;
  u_xlat7.y = (x_603 * x_604);
  let x_607 : vec3<f32> = u_xlat1;
  let x_609 : vec3<f32> = u_xlat7;
  let x_611 : vec2<f32> = (vec2<f32>(x_607.x, x_607.x) * vec2<f32>(x_609.x, x_609.y));
  let x_612 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_611.x, x_611.y, x_612.z);
  let x_615 : f32 = u_xlat7.y;
  u_xlat14 = (x_615 * 3.141592741f);
  let x_618 : f32 = u_xlat14;
  u_xlat14 = max(x_618, 0.0f);
  let x_620 : vec3<f32> = u_xlat3;
  let x_621 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_620, x_621);
  let x_624 : f32 = u_xlat21;
  u_xlatb21 = !((x_624 == 0.0f));
  let x_626 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_626);
  let x_628 : f32 = u_xlat21;
  let x_629 : f32 = u_xlat14;
  u_xlat14 = (x_628 * x_629);
  let x_631 : vec3<f32> = u_xlat7;
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_631.x, x_631.x, x_631.x) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat6;
  let x_638 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638, x_638, x_638));
  let x_642 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_642) + 1.0f);
  let x_647 : f32 = u_xlat0.x;
  let x_649 : f32 = u_xlat0.x;
  u_xlat22 = (x_647 * x_649);
  let x_651 : f32 = u_xlat22;
  let x_652 : f32 = u_xlat22;
  u_xlat22 = (x_651 * x_652);
  let x_655 : f32 = u_xlat0.x;
  let x_656 : f32 = u_xlat22;
  u_xlat0.x = (x_655 * x_656);
  let x_659 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_659) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_663 : vec3<f32> = u_xlat4;
  let x_664 : vec3<f32> = u_xlat0;
  let x_667 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_663 * vec3<f32>(x_664.x, x_664.x, x_664.x)) + x_667);
  let x_669 : vec3<f32> = u_xlat7;
  let x_670 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_669 * x_670);
  let x_674 : vec4<f32> = u_xlat2;
  let x_676 : vec3<f32> = u_xlat1;
  let x_678 : vec3<f32> = u_xlat0;
  let x_679 : vec3<f32> = ((vec3<f32>(x_674.x, x_674.z, x_674.w) * x_676) + x_678);
  let x_680 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

