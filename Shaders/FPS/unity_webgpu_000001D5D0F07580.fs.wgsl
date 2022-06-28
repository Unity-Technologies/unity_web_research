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

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat29 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb28 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTextureB0 : sampler;

@group(0) @binding(7) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

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
  let x_387 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_385, x_385));
  u_xlat29 = x_387.x;
  let x_397 : vec3<f32> = u_xlat7;
  let x_398 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_397);
  u_xlat21 = x_398.w;
  let x_400 : f32 = u_xlat29;
  let x_401 : f32 = u_xlat21;
  u_xlat29 = (x_400 * x_401);
  let x_403 : f32 = u_xlat28;
  let x_404 : f32 = u_xlat29;
  u_xlat28 = (x_403 * x_404);
  let x_407 : vec3<f32> = vs_TEXCOORD1;
  let x_408 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_407, x_408);
  let x_412 : vec3<f32> = vs_TEXCOORD2;
  let x_413 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_412, x_413);
  let x_417 : vec3<f32> = vs_TEXCOORD3;
  let x_418 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_417, x_418);
  let x_421 : vec3<f32> = u_xlat7;
  let x_422 : vec3<f32> = u_xlat7;
  u_xlat29 = dot(x_421, x_422);
  let x_424 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_424);
  let x_426 : f32 = u_xlat29;
  let x_428 : vec3<f32> = u_xlat7;
  u_xlat6 = (vec3<f32>(x_426, x_426, x_426) * x_428);
  let x_430 : f32 = u_xlat28;
  let x_434 : vec4<f32> = x_18.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_430, x_430, x_430) * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec3<f32> = u_xlat4;
  let x_439 : vec4<f32> = x_18.x_Color;
  u_xlat4 = ((x_437 * vec3<f32>(x_439.x, x_439.y, x_439.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_445 : vec4<f32> = u_xlat3;
  let x_447 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_445.x, x_445.x, x_445.x) * x_447) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_453 : f32 = u_xlat3.x;
  u_xlat28 = ((-(x_453) * 0.959999979f) + 0.959999979f);
  let x_458 : f32 = u_xlat28;
  let x_460 : vec3<f32> = u_xlat5;
  let x_461 : vec3<f32> = (vec3<f32>(x_458, x_458, x_458) * x_460);
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_461.x, x_462.y, x_461.y, x_461.z);
  let x_465 : f32 = u_xlat3.y;
  let x_469 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_465) * x_469) + 1.0f);
  let x_472 : vec3<f32> = u_xlat0;
  let x_473 : f32 = u_xlat27;
  let x_476 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_472 * vec3<f32>(x_473, x_473, x_473)) + x_476);
  let x_478 : vec3<f32> = u_xlat0;
  let x_479 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_478, x_479);
  let x_481 : f32 = u_xlat27;
  u_xlat27 = max(x_481, 0.001f);
  let x_484 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_484);
  let x_486 : f32 = u_xlat27;
  let x_488 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_486, x_486, x_486) * x_488);
  let x_490 : vec3<f32> = u_xlat6;
  let x_491 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_490, x_491);
  let x_493 : vec3<f32> = u_xlat6;
  let x_494 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_493, x_494);
  let x_498 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_498, 0.0f, 1.0f);
  let x_502 : vec3<f32> = u_xlat6;
  let x_503 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(x_502, x_503);
  let x_505 : f32 = u_xlat11;
  u_xlat11 = clamp(x_505, 0.0f, 1.0f);
  let x_507 : vec3<f32> = u_xlat1;
  let x_508 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_507, x_508);
  let x_512 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_512, 0.0f, 1.0f);
  let x_517 : f32 = u_xlat0.x;
  let x_519 : f32 = u_xlat0.x;
  u_xlat9.x = (x_517 * x_519);
  let x_522 : vec3<f32> = u_xlat9;
  let x_524 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_522.x, x_522.x), vec2<f32>(x_524, x_524));
  let x_529 : f32 = u_xlat9.x;
  u_xlat9.x = (x_529 + -0.5f);
  let x_535 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_535) + 1.0f);
  let x_538 : f32 = u_xlat18;
  let x_539 : f32 = u_xlat18;
  u_xlat1.x = (x_538 * x_539);
  let x_543 : f32 = u_xlat1.x;
  let x_545 : f32 = u_xlat1.x;
  u_xlat1.x = (x_543 * x_545);
  let x_548 : f32 = u_xlat18;
  let x_550 : f32 = u_xlat1.x;
  u_xlat18 = (x_548 * x_550);
  let x_553 : f32 = u_xlat9.x;
  let x_554 : f32 = u_xlat18;
  u_xlat18 = ((x_553 * x_554) + 1.0f);
  let x_557 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_557)) + 1.0f);
  let x_564 : f32 = u_xlat1.x;
  let x_566 : f32 = u_xlat1.x;
  u_xlat10 = (x_564 * x_566);
  let x_568 : f32 = u_xlat10;
  let x_569 : f32 = u_xlat10;
  u_xlat10 = (x_568 * x_569);
  let x_572 : f32 = u_xlat1.x;
  let x_573 : f32 = u_xlat10;
  u_xlat1.x = (x_572 * x_573);
  let x_577 : f32 = u_xlat9.x;
  let x_579 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_577 * x_579) + 1.0f);
  let x_584 : f32 = u_xlat9.x;
  let x_585 : f32 = u_xlat18;
  u_xlat9.x = (x_584 * x_585);
  let x_588 : f32 = u_xlat28;
  let x_589 : f32 = u_xlat28;
  u_xlat18 = (x_588 * x_589);
  let x_591 : f32 = u_xlat18;
  u_xlat18 = max(x_591, 0.002f);
  let x_594 : f32 = u_xlat18;
  u_xlat1.x = (-(x_594) + 1.0f);
  let x_598 : f32 = u_xlat27;
  let x_601 : f32 = u_xlat1.x;
  let x_603 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_598) * x_601) + x_603);
  let x_606 : f32 = u_xlat2.x;
  let x_608 : f32 = u_xlat1.x;
  let x_610 : f32 = u_xlat18;
  u_xlat1.x = ((x_606 * x_608) + x_610);
  let x_613 : f32 = u_xlat27;
  let x_616 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_613) * x_616);
  let x_619 : f32 = u_xlat2.x;
  let x_620 : f32 = u_xlat10;
  let x_622 : f32 = u_xlat27;
  u_xlat27 = ((x_619 * x_620) + x_622);
  let x_624 : f32 = u_xlat27;
  u_xlat27 = (x_624 + 0.00001f);
  let x_627 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_627);
  let x_629 : f32 = u_xlat18;
  let x_630 : f32 = u_xlat18;
  u_xlat18 = (x_629 * x_630);
  let x_632 : f32 = u_xlat11;
  let x_633 : f32 = u_xlat18;
  let x_635 : f32 = u_xlat11;
  u_xlat1.x = ((x_632 * x_633) + -(x_635));
  let x_640 : f32 = u_xlat1.x;
  let x_641 : f32 = u_xlat11;
  u_xlat1.x = ((x_640 * x_641) + 1.0f);
  let x_645 : f32 = u_xlat18;
  u_xlat18 = (x_645 * 0.318309873f);
  let x_649 : f32 = u_xlat1.x;
  let x_651 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_649 * x_651) + 0.0000001f);
  let x_656 : f32 = u_xlat18;
  let x_658 : f32 = u_xlat1.x;
  u_xlat18 = (x_656 / x_658);
  let x_660 : f32 = u_xlat18;
  let x_661 : f32 = u_xlat27;
  u_xlat9.y = (x_660 * x_661);
  let x_664 : vec3<f32> = u_xlat2;
  let x_666 : vec3<f32> = u_xlat9;
  let x_668 : vec2<f32> = (vec2<f32>(x_664.x, x_664.x) * vec2<f32>(x_666.x, x_666.y));
  let x_669 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_668.x, x_668.y, x_669.z);
  let x_672 : f32 = u_xlat9.y;
  u_xlat18 = (x_672 * 3.141592741f);
  let x_675 : f32 = u_xlat18;
  u_xlat18 = max(x_675, 0.0f);
  let x_677 : vec3<f32> = u_xlat4;
  let x_678 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_677, x_678);
  let x_681 : f32 = u_xlat27;
  u_xlatb27 = !((x_681 == 0.0f));
  let x_683 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_683);
  let x_685 : f32 = u_xlat27;
  let x_686 : f32 = u_xlat18;
  u_xlat18 = (x_685 * x_686);
  let x_688 : vec3<f32> = u_xlat9;
  let x_690 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_688.x, x_688.x, x_688.x) * x_690);
  let x_692 : vec3<f32> = u_xlat7;
  let x_693 : f32 = u_xlat18;
  u_xlat9 = (x_692 * vec3<f32>(x_693, x_693, x_693));
  let x_697 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_697) + 1.0f);
  let x_702 : f32 = u_xlat0.x;
  let x_704 : f32 = u_xlat0.x;
  u_xlat28 = (x_702 * x_704);
  let x_706 : f32 = u_xlat28;
  let x_707 : f32 = u_xlat28;
  u_xlat28 = (x_706 * x_707);
  let x_710 : f32 = u_xlat0.x;
  let x_711 : f32 = u_xlat28;
  u_xlat0.x = (x_710 * x_711);
  let x_714 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_714) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_718 : vec3<f32> = u_xlat2;
  let x_719 : vec3<f32> = u_xlat0;
  let x_722 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_718 * vec3<f32>(x_719.x, x_719.x, x_719.x)) + x_722);
  let x_724 : vec3<f32> = u_xlat9;
  let x_725 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_724 * x_725);
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = u_xlat1;
  let x_733 : vec3<f32> = u_xlat0;
  let x_734 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.z, x_729.w) * x_731) + x_733);
  let x_735 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
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

