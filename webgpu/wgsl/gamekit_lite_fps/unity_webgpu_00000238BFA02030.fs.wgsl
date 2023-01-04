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
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat27 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat28 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(11) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> u_xlat29 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(12) var sampler_Gradient : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlatb28 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb27 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_312 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat28;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_69 : vec4<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_69.x, x_69.y));
  u_xlat28 = x_71.x;
  let x_82 : vec4<f32> = vs_TEXCOORD0;
  let x_84 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_82.z, x_82.w));
  let x_85 : vec2<f32> = vec2<f32>(x_84.x, x_84.w);
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_94.z, x_94.w));
  u_xlat29 = x_96.x;
  let x_99 : f32 = u_xlat29;
  u_xlat21 = (-(x_99) + 1.0f);
  let x_103 : f32 = u_xlat28;
  let x_104 : f32 = u_xlat21;
  u_xlat28 = (x_103 * x_104);
  let x_106 : f32 = u_xlat28;
  let x_110 : f32 = x_18.x_NoiseStrength;
  let x_112 : f32 = u_xlat29;
  u_xlat28 = ((x_106 * x_110) + x_112);
  let x_114 : f32 = u_xlat28;
  u_xlat28 = (-(x_114) + 1.0f);
  let x_117 : f32 = u_xlat28;
  let x_120 : f32 = x_18.x_Cutoff;
  u_xlat28 = (x_117 + -(x_120));
  let x_125 : f32 = x_18.x_EdgeSize;
  u_xlat29 = (1.0f / -(x_125));
  let x_128 : f32 = u_xlat28;
  let x_129 : f32 = u_xlat29;
  u_xlat28 = (x_128 * x_129);
  let x_131 : f32 = u_xlat28;
  u_xlat28 = clamp(x_131, 0.0f, 1.0f);
  let x_134 : f32 = u_xlat28;
  u_xlat29 = ((x_134 * -2.0f) + 3.0f);
  let x_139 : f32 = u_xlat28;
  let x_140 : f32 = u_xlat28;
  u_xlat28 = (x_139 * x_140);
  let x_148 : vec4<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_148.z, x_148.w));
  u_xlat4 = vec3<f32>(x_150.x, x_150.y, x_150.z);
  let x_153 : vec3<f32> = u_xlat4;
  let x_156 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (x_153 * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  let x_167 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_165.z, x_165.w));
  u_xlat6 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_171 : f32 = u_xlat6.z;
  let x_173 : f32 = u_xlat6.x;
  u_xlat6.x = (x_171 * x_173);
  let x_176 : vec3<f32> = u_xlat6;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_183.x, x_183.y, x_184.z);
  let x_186 : vec3<f32> = u_xlat6;
  let x_188 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec2<f32>(x_186.x, x_186.y), vec2<f32>(x_188.x, x_188.y));
  let x_191 : f32 = u_xlat21;
  u_xlat21 = min(x_191, 1.0f);
  let x_193 : f32 = u_xlat21;
  u_xlat21 = (-(x_193) + 1.0f);
  let x_196 : f32 = u_xlat21;
  u_xlat6.z = sqrt(x_196);
  let x_200 : f32 = u_xlat3.x;
  let x_203 : f32 = x_18.x_Metallic;
  u_xlat3.x = (x_200 * x_203);
  let x_206 : f32 = u_xlat29;
  let x_208 : f32 = u_xlat28;
  let x_211 : f32 = x_18.x_Cutoff;
  u_xlat28 = ((-(x_206) * x_208) + -(x_211));
  let x_214 : f32 = u_xlat28;
  u_xlat28 = (x_214 + 1.0f);
  let x_219 : f32 = u_xlat28;
  u_xlatb28 = (x_219 < 0.0f);
  let x_221 : bool = u_xlatb28;
  if (((select(0i, 1i, x_221) * -1i) != 0i)) {
    discard;
  }
  let x_230 : vec3<f32> = vs_TEXCOORD4;
  let x_234 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_230.y, x_230.y, x_230.y) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_240 : vec3<f32> = vs_TEXCOORD4;
  let x_243 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_247 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_249 : vec3<f32> = vs_TEXCOORD4;
  let x_252 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec3<f32> = u_xlat7;
  let x_257 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_254 + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_261 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb28 = (x_261 == 1.0f);
  let x_263 : bool = u_xlatb28;
  if (x_263) {
    let x_268 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb28 = (x_268 == 1.0f);
    let x_271 : vec3<f32> = vs_TEXCOORD4;
    let x_275 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.y, x_271.y, x_271.y) * vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_281 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_283 : vec3<f32> = vs_TEXCOORD4;
    let x_286 : vec4<f32> = u_xlat8;
    let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.x, x_283.x, x_283.x)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_292 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_294 : vec3<f32> = vs_TEXCOORD4;
    let x_297 : vec4<f32> = u_xlat8;
    let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
    let x_300 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat8;
    let x_305 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_307 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : bool = u_xlatb28;
    if (x_310) {
      let x_315 : vec4<f32> = u_xlat8;
      x_312 = vec3<f32>(x_315.x, x_315.y, x_315.z);
    } else {
      let x_318 : vec3<f32> = vs_TEXCOORD4;
      x_312 = x_318;
    }
    let x_319 : vec3<f32> = x_312;
    let x_320 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat8;
    let x_326 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_328 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + -(x_326));
    let x_329 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec4<f32> = u_xlat8;
    let x_335 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_336 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * x_335);
    let x_337 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_337.x, x_336.x, x_336.y, x_336.z);
    let x_340 : f32 = u_xlat8.y;
    u_xlat28 = ((x_340 * 0.25f) + 0.75f);
    let x_346 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat29 = ((x_346 * 0.5f) + 0.75f);
    let x_350 : f32 = u_xlat28;
    let x_351 : f32 = u_xlat29;
    u_xlat8.x = max(x_350, x_351);
    let x_362 : vec4<f32> = u_xlat8;
    let x_364 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_362.x, x_362.z, x_362.w));
    u_xlat8 = x_364;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_371 : vec4<f32> = u_xlat8;
  let x_373 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat28 = dot(x_371, x_373);
  let x_375 : f32 = u_xlat28;
  u_xlat28 = clamp(x_375, 0.0f, 1.0f);
  let x_377 : vec3<f32> = u_xlat7;
  let x_378 : vec3<f32> = u_xlat7;
  u_xlat29 = dot(x_377, x_378);
  let x_385 : f32 = u_xlat29;
  let x_387 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_385, x_385));
  u_xlat29 = x_387.x;
  let x_389 : f32 = u_xlat28;
  let x_390 : f32 = u_xlat29;
  u_xlat28 = (x_389 * x_390);
  let x_393 : vec3<f32> = vs_TEXCOORD1;
  let x_394 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_393, x_394);
  let x_398 : vec3<f32> = vs_TEXCOORD2;
  let x_399 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_398, x_399);
  let x_403 : vec3<f32> = vs_TEXCOORD3;
  let x_404 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_403, x_404);
  let x_407 : vec3<f32> = u_xlat7;
  let x_408 : vec3<f32> = u_xlat7;
  u_xlat29 = dot(x_407, x_408);
  let x_410 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_410);
  let x_412 : f32 = u_xlat29;
  let x_414 : vec3<f32> = u_xlat7;
  u_xlat6 = (vec3<f32>(x_412, x_412, x_412) * x_414);
  let x_416 : f32 = u_xlat28;
  let x_420 : vec4<f32> = x_18.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_416, x_416, x_416) * vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec3<f32> = u_xlat4;
  let x_425 : vec4<f32> = x_18.x_Color;
  u_xlat4 = ((x_423 * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_431 : vec4<f32> = u_xlat3;
  let x_433 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_431.x, x_431.x, x_431.x) * x_433) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_439 : f32 = u_xlat3.x;
  u_xlat28 = ((-(x_439) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat28;
  let x_446 : vec3<f32> = u_xlat5;
  let x_447 : vec3<f32> = (vec3<f32>(x_444, x_444, x_444) * x_446);
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_447.x, x_448.y, x_447.y, x_447.z);
  let x_451 : f32 = u_xlat3.y;
  let x_455 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_451) * x_455) + 1.0f);
  let x_458 : vec3<f32> = u_xlat0;
  let x_459 : f32 = u_xlat27;
  let x_462 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_458 * vec3<f32>(x_459, x_459, x_459)) + x_462);
  let x_464 : vec3<f32> = u_xlat0;
  let x_465 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_464, x_465);
  let x_467 : f32 = u_xlat27;
  u_xlat27 = max(x_467, 0.001f);
  let x_470 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_470);
  let x_472 : f32 = u_xlat27;
  let x_474 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_472, x_472, x_472) * x_474);
  let x_476 : vec3<f32> = u_xlat6;
  let x_477 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_476, x_477);
  let x_479 : vec3<f32> = u_xlat6;
  let x_480 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_479, x_480);
  let x_484 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_484, 0.0f, 1.0f);
  let x_488 : vec3<f32> = u_xlat6;
  let x_489 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(x_488, x_489);
  let x_491 : f32 = u_xlat11;
  u_xlat11 = clamp(x_491, 0.0f, 1.0f);
  let x_493 : vec3<f32> = u_xlat1;
  let x_494 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_493, x_494);
  let x_498 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_498, 0.0f, 1.0f);
  let x_503 : f32 = u_xlat0.x;
  let x_505 : f32 = u_xlat0.x;
  u_xlat9.x = (x_503 * x_505);
  let x_508 : vec3<f32> = u_xlat9;
  let x_510 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_508.x, x_508.x), vec2<f32>(x_510, x_510));
  let x_515 : f32 = u_xlat9.x;
  u_xlat9.x = (x_515 + -0.5f);
  let x_521 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_521) + 1.0f);
  let x_524 : f32 = u_xlat18;
  let x_525 : f32 = u_xlat18;
  u_xlat1.x = (x_524 * x_525);
  let x_529 : f32 = u_xlat1.x;
  let x_531 : f32 = u_xlat1.x;
  u_xlat1.x = (x_529 * x_531);
  let x_534 : f32 = u_xlat18;
  let x_536 : f32 = u_xlat1.x;
  u_xlat18 = (x_534 * x_536);
  let x_539 : f32 = u_xlat9.x;
  let x_540 : f32 = u_xlat18;
  u_xlat18 = ((x_539 * x_540) + 1.0f);
  let x_543 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_543)) + 1.0f);
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = u_xlat1.x;
  u_xlat10 = (x_550 * x_552);
  let x_554 : f32 = u_xlat10;
  let x_555 : f32 = u_xlat10;
  u_xlat10 = (x_554 * x_555);
  let x_558 : f32 = u_xlat1.x;
  let x_559 : f32 = u_xlat10;
  u_xlat1.x = (x_558 * x_559);
  let x_563 : f32 = u_xlat9.x;
  let x_565 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_563 * x_565) + 1.0f);
  let x_570 : f32 = u_xlat9.x;
  let x_571 : f32 = u_xlat18;
  u_xlat9.x = (x_570 * x_571);
  let x_574 : f32 = u_xlat28;
  let x_575 : f32 = u_xlat28;
  u_xlat18 = (x_574 * x_575);
  let x_577 : f32 = u_xlat18;
  u_xlat18 = max(x_577, 0.002f);
  let x_580 : f32 = u_xlat18;
  u_xlat1.x = (-(x_580) + 1.0f);
  let x_584 : f32 = u_xlat27;
  let x_587 : f32 = u_xlat1.x;
  let x_589 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_584) * x_587) + x_589);
  let x_592 : f32 = u_xlat2.x;
  let x_594 : f32 = u_xlat1.x;
  let x_596 : f32 = u_xlat18;
  u_xlat1.x = ((x_592 * x_594) + x_596);
  let x_599 : f32 = u_xlat27;
  let x_602 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_599) * x_602);
  let x_605 : f32 = u_xlat2.x;
  let x_606 : f32 = u_xlat10;
  let x_608 : f32 = u_xlat27;
  u_xlat27 = ((x_605 * x_606) + x_608);
  let x_610 : f32 = u_xlat27;
  u_xlat27 = (x_610 + 0.00001f);
  let x_613 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_613);
  let x_615 : f32 = u_xlat18;
  let x_616 : f32 = u_xlat18;
  u_xlat18 = (x_615 * x_616);
  let x_618 : f32 = u_xlat11;
  let x_619 : f32 = u_xlat18;
  let x_621 : f32 = u_xlat11;
  u_xlat1.x = ((x_618 * x_619) + -(x_621));
  let x_626 : f32 = u_xlat1.x;
  let x_627 : f32 = u_xlat11;
  u_xlat1.x = ((x_626 * x_627) + 1.0f);
  let x_631 : f32 = u_xlat18;
  u_xlat18 = (x_631 * 0.318309873f);
  let x_635 : f32 = u_xlat1.x;
  let x_637 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_635 * x_637) + 0.0000001f);
  let x_642 : f32 = u_xlat18;
  let x_644 : f32 = u_xlat1.x;
  u_xlat18 = (x_642 / x_644);
  let x_646 : f32 = u_xlat18;
  let x_647 : f32 = u_xlat27;
  u_xlat9.y = (x_646 * x_647);
  let x_650 : vec3<f32> = u_xlat2;
  let x_652 : vec3<f32> = u_xlat9;
  let x_654 : vec2<f32> = (vec2<f32>(x_650.x, x_650.x) * vec2<f32>(x_652.x, x_652.y));
  let x_655 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_654.x, x_654.y, x_655.z);
  let x_658 : f32 = u_xlat9.y;
  u_xlat18 = (x_658 * 3.141592741f);
  let x_661 : f32 = u_xlat18;
  u_xlat18 = max(x_661, 0.0f);
  let x_663 : vec3<f32> = u_xlat4;
  let x_664 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_663, x_664);
  let x_667 : f32 = u_xlat27;
  u_xlatb27 = !((x_667 == 0.0f));
  let x_669 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_669);
  let x_671 : f32 = u_xlat27;
  let x_672 : f32 = u_xlat18;
  u_xlat18 = (x_671 * x_672);
  let x_674 : vec3<f32> = u_xlat9;
  let x_676 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_674.x, x_674.x, x_674.x) * x_676);
  let x_678 : vec3<f32> = u_xlat7;
  let x_679 : f32 = u_xlat18;
  u_xlat9 = (x_678 * vec3<f32>(x_679, x_679, x_679));
  let x_683 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_683) + 1.0f);
  let x_688 : f32 = u_xlat0.x;
  let x_690 : f32 = u_xlat0.x;
  u_xlat28 = (x_688 * x_690);
  let x_692 : f32 = u_xlat28;
  let x_693 : f32 = u_xlat28;
  u_xlat28 = (x_692 * x_693);
  let x_696 : f32 = u_xlat0.x;
  let x_697 : f32 = u_xlat28;
  u_xlat0.x = (x_696 * x_697);
  let x_700 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_700) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_704 : vec3<f32> = u_xlat2;
  let x_705 : vec3<f32> = u_xlat0;
  let x_708 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_704 * vec3<f32>(x_705.x, x_705.x, x_705.x)) + x_708);
  let x_710 : vec3<f32> = u_xlat9;
  let x_711 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_710 * x_711);
  let x_715 : vec4<f32> = u_xlat3;
  let x_717 : vec3<f32> = u_xlat1;
  let x_719 : vec3<f32> = u_xlat0;
  let x_720 : vec3<f32> = ((vec3<f32>(x_715.x, x_715.z, x_715.w) * x_717) + x_719);
  let x_721 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
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

