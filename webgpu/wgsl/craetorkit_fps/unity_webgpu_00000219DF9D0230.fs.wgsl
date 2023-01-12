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
  x_GlossMapScale : f32,
  @size(12)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat28 : f32;
  var u_xlatb18 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var x_215 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_24.x, x_24.y));
  let x_27 : vec2<f32> = vec2<f32>(x_26.x, x_26.w);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_27.x, x_27.y, x_28.z);
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_36.x, x_36.y));
  u_xlat1 = vec3<f32>(x_38.x, x_38.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (x_41 * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_54 : vec4<f32> = x_45.x_Color;
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * x_56) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_72) * 0.959999979f) + 0.959999979f);
  let x_78 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * x_80);
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_88.x, x_88.y));
  u_xlat3 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_94 : f32 = u_xlat3.z;
  let x_96 : f32 = u_xlat3.x;
  u_xlat3.x = (x_94 * x_96);
  let x_101 : vec3<f32> = u_xlat3;
  u_xlat18 = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_110 : vec2<f32> = u_xlat18;
  let x_111 : vec2<f32> = u_xlat18;
  u_xlat28 = dot(x_110, x_111);
  let x_113 : f32 = u_xlat28;
  u_xlat28 = min(x_113, 1.0f);
  let x_116 : f32 = u_xlat28;
  u_xlat28 = (-(x_116) + 1.0f);
  let x_119 : f32 = u_xlat28;
  u_xlat28 = sqrt(x_119);
  let x_121 : vec2<f32> = u_xlat18;
  let x_124 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_121.y, x_121.y, x_121.y) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : vec4<f32> = vs_TEXCOORD2;
  let x_130 : vec2<f32> = u_xlat18;
  let x_133 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_130.x, x_130.x, x_130.x)) + x_133);
  let x_136 : vec4<f32> = vs_TEXCOORD4;
  let x_138 : f32 = u_xlat28;
  let x_141 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(x_138, x_138, x_138)) + x_141);
  let x_149 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_149 == 1.0f);
  let x_151 : bool = u_xlatb18;
  if (x_151) {
    let x_156 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_156 == 1.0f);
    let x_160 : vec4<f32> = vs_TEXCOORD3;
    let x_165 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_167 : vec3<f32> = (vec3<f32>(x_160.w, x_160.w, x_160.w) * vec3<f32>(x_165.x, x_165.y, x_165.z));
    let x_168 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
    let x_172 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_174 : vec4<f32> = vs_TEXCOORD2;
    let x_177 : vec4<f32> = u_xlat4;
    let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.w, x_174.w, x_174.w)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_184 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_186 : vec4<f32> = vs_TEXCOORD4;
    let x_189 : vec4<f32> = u_xlat4;
    let x_191 : vec3<f32> = ((vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_186.w, x_186.w, x_186.w)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : vec4<f32> = u_xlat4;
    let x_197 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_199 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) + vec3<f32>(x_197.x, x_197.y, x_197.z));
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_206 : f32 = vs_TEXCOORD2.w;
    u_xlat14.x = x_206;
    let x_209 : f32 = vs_TEXCOORD3.w;
    u_xlat14.y = x_209;
    let x_212 : f32 = vs_TEXCOORD4.w;
    u_xlat14.z = x_212;
    let x_214 : bool = u_xlatb18;
    if (x_214) {
      let x_218 : vec4<f32> = u_xlat4;
      x_215 = vec3<f32>(x_218.x, x_218.y, x_218.z);
    } else {
      let x_221 : vec3<f32> = u_xlat14;
      x_215 = x_221;
    }
    let x_222 : vec3<f32> = x_215;
    let x_223 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
    let x_225 : vec4<f32> = u_xlat4;
    let x_230 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_232 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) + -(x_230));
    let x_233 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : vec4<f32> = u_xlat4;
    let x_239 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_240 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) * x_239);
    let x_241 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_241.x, x_240.x, x_240.y, x_240.z);
    let x_244 : f32 = u_xlat4.y;
    u_xlat18.x = ((x_244 * 0.25f) + 0.75f);
    let x_252 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_252 * 0.5f) + 0.75f);
    let x_256 : f32 = u_xlat27;
    let x_258 : f32 = u_xlat18.x;
    u_xlat4.x = max(x_256, x_258);
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
  let x_279 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat18.x = dot(x_277, x_279);
  let x_283 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_283, 0.0f, 1.0f);
  let x_292 : vec4<f32> = vs_TEXCOORD0;
  let x_294 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_292.x, x_292.y));
  u_xlat27 = x_294.y;
  let x_297 : f32 = u_xlat0.y;
  let x_301 : f32 = x_45.x_GlossMapScale;
  u_xlat4.z = ((-(x_297) * x_301) + 1.0f);
  let x_306 : vec4<f32> = vs_TEXCOORD1;
  let x_308 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), x_308);
  let x_310 : f32 = u_xlat28;
  let x_311 : f32 = u_xlat28;
  u_xlat28 = (x_310 + x_311);
  let x_314 : vec3<f32> = u_xlat3;
  let x_315 : f32 = u_xlat28;
  let x_319 : vec4<f32> = vs_TEXCOORD1;
  let x_321 : vec3<f32> = ((x_314 * -(vec3<f32>(x_315, x_315, x_315))) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec2<f32> = u_xlat18;
  let x_329 : vec4<f32> = x_45.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_325.x, x_325.x, x_325.x) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_333 : f32 = u_xlat27;
  let x_336 : vec4<f32> = vs_TEXCOORD5;
  u_xlat7 = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_340 : f32 = u_xlat4.z;
  u_xlat18.x = ((-(x_340) * 0.699999988f) + 1.700000048f);
  let x_348 : f32 = u_xlat18.x;
  let x_350 : f32 = u_xlat4.z;
  u_xlat18.x = (x_348 * x_350);
  let x_354 : f32 = u_xlat18.x;
  u_xlat18.x = (x_354 * 6.0f);
  let x_366 : vec4<f32> = u_xlat5;
  let x_369 : f32 = u_xlat18.x;
  let x_370 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_366.x, x_366.y, x_366.z), x_369);
  u_xlat5 = x_370;
  let x_372 : f32 = u_xlat5.w;
  u_xlat18.x = (x_372 + -1.0f);
  let x_376 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_378 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_376 * x_378) + 1.0f);
  let x_383 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_383);
  let x_387 : f32 = u_xlat18.x;
  let x_389 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_387 * x_389);
  let x_393 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_393);
  let x_397 : f32 = u_xlat18.x;
  let x_399 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_397 * x_399);
  let x_402 : vec4<f32> = u_xlat5;
  let x_404 : vec2<f32> = u_xlat18;
  let x_406 : vec3<f32> = (vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_404.x, x_404.x, x_404.x));
  let x_407 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : f32 = u_xlat27;
  let x_411 : vec4<f32> = u_xlat5;
  let x_413 : vec3<f32> = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = vs_TEXCOORD1;
  let x_419 : vec3<f32> = u_xlat3;
  u_xlat18.x = dot(-(vec3<f32>(x_416.x, x_416.y, x_416.z)), x_419);
  let x_423 : f32 = u_xlat18.x;
  let x_425 : f32 = u_xlat18.x;
  u_xlat27 = (x_423 + x_425);
  let x_428 : vec3<f32> = u_xlat3;
  let x_429 : f32 = u_xlat27;
  let x_433 : vec4<f32> = vs_TEXCOORD1;
  u_xlat8 = ((x_428 * -(vec3<f32>(x_429, x_429, x_429))) + -(vec3<f32>(x_433.x, x_433.y, x_433.z)));
  let x_437 : vec3<f32> = u_xlat3;
  let x_439 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat27 = dot(x_437, vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : f32 = u_xlat27;
  u_xlat27 = clamp(x_442, 0.0f, 1.0f);
  let x_445 : f32 = u_xlat18.x;
  u_xlat18.x = x_445;
  let x_448 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_448, 0.0f, 1.0f);
  let x_451 : vec3<f32> = u_xlat8;
  let x_453 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat3.x = dot(x_451, vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_458 : f32 = u_xlat18.x;
  u_xlat3.y = (-(x_458) + 1.0f);
  let x_462 : vec3<f32> = u_xlat3;
  let x_464 : vec3<f32> = u_xlat3;
  let x_466 : vec2<f32> = (vec2<f32>(x_462.x, x_462.y) * vec2<f32>(x_464.x, x_464.y));
  let x_467 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_466.x, x_466.y, x_467.z);
  let x_469 : vec3<f32> = u_xlat3;
  let x_471 : vec3<f32> = u_xlat3;
  let x_473 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(x_471.x, x_471.y));
  let x_474 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
  let x_477 : f32 = u_xlat0.y;
  let x_479 : f32 = x_45.x_GlossMapScale;
  let x_482 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_477 * x_479) + -(x_482));
  let x_487 : f32 = u_xlat0.x;
  u_xlat0.x = (x_487 + 1.0f);
  let x_491 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_491, 0.0f, 1.0f);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_500.x, x_500.z));
  u_xlat9.x = x_502.x;
  let x_506 : f32 = u_xlat9.x;
  u_xlat9.x = (x_506 * 16.0f);
  let x_510 : vec3<f32> = u_xlat9;
  let x_512 : vec3<f32> = u_xlat1;
  let x_514 : vec3<f32> = u_xlat2;
  u_xlat3 = ((vec3<f32>(x_510.x, x_510.x, x_510.x) * x_512) + x_514);
  let x_516 : f32 = u_xlat27;
  let x_518 : vec3<f32> = u_xlat6;
  u_xlat9 = (vec3<f32>(x_516, x_516, x_516) * x_518);
  let x_520 : vec3<f32> = u_xlat1;
  let x_522 : vec3<f32> = u_xlat0;
  let x_524 : vec3<f32> = (-(x_520) + vec3<f32>(x_522.x, x_522.x, x_522.x));
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_524.x, x_525.y, x_524.y, x_524.z);
  let x_527 : vec4<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat4;
  let x_532 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_527.y, x_527.y, x_527.y) * vec3<f32>(x_529.x, x_529.z, x_529.w)) + x_532);
  let x_534 : vec3<f32> = u_xlat1;
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_534 * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec3<f32> = u_xlat7;
  let x_539 : vec3<f32> = u_xlat2;
  let x_541 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_538 * x_539) + x_541);
  let x_543 : vec3<f32> = u_xlat3;
  let x_544 : vec3<f32> = u_xlat9;
  let x_546 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_543 * x_544) + x_546);
  let x_553 : vec4<f32> = vs_TEXCOORD0;
  let x_555 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_553.x, x_553.y));
  u_xlat1 = vec3<f32>(x_555.x, x_555.y, x_555.z);
  let x_559 : vec3<f32> = u_xlat1;
  let x_562 : vec4<f32> = x_45.x_EmissionColor;
  let x_565 : vec3<f32> = u_xlat0;
  let x_566 : vec3<f32> = ((x_559 * vec3<f32>(x_562.x, x_562.y, x_562.z)) + x_565);
  let x_567 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

