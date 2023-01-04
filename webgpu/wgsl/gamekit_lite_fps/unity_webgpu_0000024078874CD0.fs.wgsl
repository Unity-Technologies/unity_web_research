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

var<private> u_xlat27 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat28 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> u_xlat29 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb29 : bool;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

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
  var x_293 : vec3<f32>;
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
  let x_88 : f32 = u_xlat28;
  u_xlat28 = (-(x_88) + 1.0f);
  let x_92 : f32 = u_xlat28;
  let x_96 : f32 = x_18.x_Cutoff;
  u_xlat28 = (x_92 + -(x_96));
  let x_102 : f32 = x_18.x_EdgeSize;
  u_xlat29 = (1.0f / -(x_102));
  let x_105 : f32 = u_xlat28;
  let x_106 : f32 = u_xlat29;
  u_xlat28 = (x_105 * x_106);
  let x_108 : f32 = u_xlat28;
  u_xlat28 = clamp(x_108, 0.0f, 1.0f);
  let x_111 : f32 = u_xlat28;
  u_xlat29 = ((x_111 * -2.0f) + 3.0f);
  let x_116 : f32 = u_xlat28;
  let x_117 : f32 = u_xlat28;
  u_xlat28 = (x_116 * x_117);
  let x_125 : vec4<f32> = vs_TEXCOORD0;
  let x_127 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_125.z, x_125.w));
  u_xlat4 = vec3<f32>(x_127.x, x_127.y, x_127.z);
  let x_130 : vec3<f32> = u_xlat4;
  let x_133 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (x_130 * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_142 : vec4<f32> = vs_TEXCOORD0;
  let x_144 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_142.z, x_142.w));
  u_xlat6 = vec3<f32>(x_144.x, x_144.y, x_144.w);
  let x_148 : f32 = u_xlat6.z;
  let x_150 : f32 = u_xlat6.x;
  u_xlat6.x = (x_148 * x_150);
  let x_153 : vec3<f32> = u_xlat6;
  let x_160 : vec2<f32> = ((vec2<f32>(x_153.x, x_153.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_161 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_160.x, x_160.y, x_161.z);
  let x_165 : vec3<f32> = u_xlat6;
  let x_167 : vec3<f32> = u_xlat6;
  u_xlat21.x = dot(vec2<f32>(x_165.x, x_165.y), vec2<f32>(x_167.x, x_167.y));
  let x_172 : f32 = u_xlat21.x;
  u_xlat21.x = min(x_172, 1.0f);
  let x_176 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_176) + 1.0f);
  let x_181 : f32 = u_xlat21.x;
  u_xlat6.z = sqrt(x_181);
  let x_185 : f32 = u_xlat3.x;
  let x_188 : f32 = x_18.x_Metallic;
  u_xlat3.x = (x_185 * x_188);
  let x_191 : f32 = u_xlat29;
  let x_193 : f32 = u_xlat28;
  let x_196 : f32 = x_18.x_Cutoff;
  u_xlat28 = ((-(x_191) * x_193) + -(x_196));
  let x_199 : f32 = u_xlat28;
  u_xlat28 = (x_199 + 1.0f);
  let x_204 : f32 = u_xlat28;
  u_xlatb28 = (x_204 < 0.0f);
  let x_206 : bool = u_xlatb28;
  if (((select(0i, 1i, x_206) * -1i) != 0i)) {
    discard;
  }
  let x_215 : vec3<f32> = vs_TEXCOORD4;
  let x_219 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_215.y, x_215.y, x_215.y, x_215.y) * x_219);
  let x_222 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_223 : vec3<f32> = vs_TEXCOORD4;
  let x_226 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_222 * vec4<f32>(x_223.x, x_223.x, x_223.x, x_223.x)) + x_226);
  let x_230 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_231 : vec3<f32> = vs_TEXCOORD4;
  let x_234 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_230 * vec4<f32>(x_231.z, x_231.z, x_231.z, x_231.z)) + x_234);
  let x_236 : vec4<f32> = u_xlat7;
  let x_239 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_236 + x_239);
  let x_242 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb28 = (x_242 == 1.0f);
  let x_244 : bool = u_xlatb28;
  if (x_244) {
    let x_249 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb28 = (x_249 == 1.0f);
    let x_252 : vec3<f32> = vs_TEXCOORD4;
    let x_256 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_258 : vec3<f32> = (vec3<f32>(x_252.y, x_252.y, x_252.y) * vec3<f32>(x_256.x, x_256.y, x_256.z));
    let x_259 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_262 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_264 : vec3<f32> = vs_TEXCOORD4;
    let x_267 : vec4<f32> = u_xlat8;
    let x_269 : vec3<f32> = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.x, x_264.x, x_264.x)) + vec3<f32>(x_267.x, x_267.y, x_267.z));
    let x_270 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
    let x_273 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_275 : vec3<f32> = vs_TEXCOORD4;
    let x_278 : vec4<f32> = u_xlat8;
    let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.z, x_275.z, x_275.z)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
    let x_281 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
    let x_283 : vec4<f32> = u_xlat8;
    let x_286 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_291 : bool = u_xlatb28;
    if (x_291) {
      let x_296 : vec4<f32> = u_xlat8;
      x_293 = vec3<f32>(x_296.x, x_296.y, x_296.z);
    } else {
      let x_299 : vec3<f32> = vs_TEXCOORD4;
      x_293 = x_299;
    }
    let x_300 : vec3<f32> = x_293;
    let x_301 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat8;
    let x_307 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + -(x_307));
    let x_310 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : vec4<f32> = u_xlat8;
    let x_316 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_317 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * x_316);
    let x_318 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_318.x, x_317.x, x_317.y, x_317.z);
    let x_321 : f32 = u_xlat8.y;
    u_xlat28 = ((x_321 * 0.25f) + 0.75f);
    let x_327 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat29 = ((x_327 * 0.5f) + 0.75f);
    let x_331 : f32 = u_xlat28;
    let x_332 : f32 = u_xlat29;
    u_xlat8.x = max(x_331, x_332);
    let x_343 : vec4<f32> = u_xlat8;
    let x_345 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_343.x, x_343.z, x_343.w));
    u_xlat8 = x_345;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_352 : vec4<f32> = u_xlat8;
  let x_354 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat28 = dot(x_352, x_354);
  let x_356 : f32 = u_xlat28;
  u_xlat28 = clamp(x_356, 0.0f, 1.0f);
  let x_360 : f32 = u_xlat7.z;
  u_xlatb29 = (0.0f < x_360);
  let x_362 : bool = u_xlatb29;
  u_xlat29 = select(0.0f, 1.0f, x_362);
  let x_364 : vec4<f32> = u_xlat7;
  let x_366 : vec4<f32> = u_xlat7;
  u_xlat21 = (vec2<f32>(x_364.x, x_364.y) / vec2<f32>(x_366.w, x_366.w));
  let x_369 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_369 + vec2<f32>(0.5f, 0.5f));
  let x_377 : vec2<f32> = u_xlat21;
  let x_378 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_377);
  u_xlat21.x = x_378.w;
  let x_381 : f32 = u_xlat29;
  let x_383 : f32 = u_xlat21.x;
  u_xlat29 = (x_381 * x_383);
  let x_385 : vec4<f32> = u_xlat7;
  let x_387 : vec4<f32> = u_xlat7;
  u_xlat21.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_396 : vec2<f32> = u_xlat21;
  let x_398 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_396.x, x_396.x));
  u_xlat21.x = x_398.x;
  let x_401 : f32 = u_xlat29;
  let x_403 : f32 = u_xlat21.x;
  u_xlat29 = (x_401 * x_403);
  let x_405 : f32 = u_xlat28;
  let x_406 : f32 = u_xlat29;
  u_xlat28 = (x_405 * x_406);
  let x_409 : vec3<f32> = vs_TEXCOORD1;
  let x_410 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_409, x_410);
  let x_414 : vec3<f32> = vs_TEXCOORD2;
  let x_415 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_414, x_415);
  let x_419 : vec3<f32> = vs_TEXCOORD3;
  let x_420 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_419, x_420);
  let x_423 : vec4<f32> = u_xlat7;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_428);
  let x_430 : f32 = u_xlat29;
  let x_432 : vec4<f32> = u_xlat7;
  u_xlat6 = (vec3<f32>(x_430, x_430, x_430) * vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat28;
  let x_439 : vec4<f32> = x_18.x_LightColor0;
  let x_441 : vec3<f32> = (vec3<f32>(x_435, x_435, x_435) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = u_xlat4;
  let x_446 : vec4<f32> = x_18.x_Color;
  u_xlat4 = ((x_444 * vec3<f32>(x_446.x, x_446.y, x_446.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_452.x, x_452.x, x_452.x) * x_454) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_460 : f32 = u_xlat3.x;
  u_xlat28 = ((-(x_460) * 0.959999979f) + 0.959999979f);
  let x_465 : f32 = u_xlat28;
  let x_467 : vec3<f32> = u_xlat5;
  let x_468 : vec3<f32> = (vec3<f32>(x_465, x_465, x_465) * x_467);
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_468.x, x_469.y, x_468.y, x_468.z);
  let x_472 : f32 = u_xlat3.y;
  let x_476 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_472) * x_476) + 1.0f);
  let x_479 : vec3<f32> = u_xlat0;
  let x_480 : f32 = u_xlat27;
  let x_483 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_479 * vec3<f32>(x_480, x_480, x_480)) + x_483);
  let x_485 : vec3<f32> = u_xlat0;
  let x_486 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_485, x_486);
  let x_488 : f32 = u_xlat27;
  u_xlat27 = max(x_488, 0.001f);
  let x_491 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_491);
  let x_493 : f32 = u_xlat27;
  let x_495 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_493, x_493, x_493) * x_495);
  let x_497 : vec3<f32> = u_xlat6;
  let x_498 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_497, x_498);
  let x_500 : vec3<f32> = u_xlat6;
  let x_501 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_500, x_501);
  let x_505 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_505, 0.0f, 1.0f);
  let x_509 : vec3<f32> = u_xlat6;
  let x_510 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(x_509, x_510);
  let x_512 : f32 = u_xlat11;
  u_xlat11 = clamp(x_512, 0.0f, 1.0f);
  let x_514 : vec3<f32> = u_xlat1;
  let x_515 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_514, x_515);
  let x_519 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_519, 0.0f, 1.0f);
  let x_524 : f32 = u_xlat0.x;
  let x_526 : f32 = u_xlat0.x;
  u_xlat9.x = (x_524 * x_526);
  let x_529 : vec3<f32> = u_xlat9;
  let x_531 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_529.x, x_529.x), vec2<f32>(x_531, x_531));
  let x_536 : f32 = u_xlat9.x;
  u_xlat9.x = (x_536 + -0.5f);
  let x_542 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat18;
  let x_546 : f32 = u_xlat18;
  u_xlat1.x = (x_545 * x_546);
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = u_xlat1.x;
  u_xlat1.x = (x_550 * x_552);
  let x_555 : f32 = u_xlat18;
  let x_557 : f32 = u_xlat1.x;
  u_xlat18 = (x_555 * x_557);
  let x_560 : f32 = u_xlat9.x;
  let x_561 : f32 = u_xlat18;
  u_xlat18 = ((x_560 * x_561) + 1.0f);
  let x_564 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_564)) + 1.0f);
  let x_571 : f32 = u_xlat1.x;
  let x_573 : f32 = u_xlat1.x;
  u_xlat10 = (x_571 * x_573);
  let x_575 : f32 = u_xlat10;
  let x_576 : f32 = u_xlat10;
  u_xlat10 = (x_575 * x_576);
  let x_579 : f32 = u_xlat1.x;
  let x_580 : f32 = u_xlat10;
  u_xlat1.x = (x_579 * x_580);
  let x_584 : f32 = u_xlat9.x;
  let x_586 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_584 * x_586) + 1.0f);
  let x_591 : f32 = u_xlat9.x;
  let x_592 : f32 = u_xlat18;
  u_xlat9.x = (x_591 * x_592);
  let x_595 : f32 = u_xlat28;
  let x_596 : f32 = u_xlat28;
  u_xlat18 = (x_595 * x_596);
  let x_598 : f32 = u_xlat18;
  u_xlat18 = max(x_598, 0.002f);
  let x_601 : f32 = u_xlat18;
  u_xlat1.x = (-(x_601) + 1.0f);
  let x_605 : f32 = u_xlat27;
  let x_608 : f32 = u_xlat1.x;
  let x_610 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_605) * x_608) + x_610);
  let x_613 : f32 = u_xlat2.x;
  let x_615 : f32 = u_xlat1.x;
  let x_617 : f32 = u_xlat18;
  u_xlat1.x = ((x_613 * x_615) + x_617);
  let x_620 : f32 = u_xlat27;
  let x_623 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_620) * x_623);
  let x_626 : f32 = u_xlat2.x;
  let x_627 : f32 = u_xlat10;
  let x_629 : f32 = u_xlat27;
  u_xlat27 = ((x_626 * x_627) + x_629);
  let x_631 : f32 = u_xlat27;
  u_xlat27 = (x_631 + 0.00001f);
  let x_634 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_634);
  let x_636 : f32 = u_xlat18;
  let x_637 : f32 = u_xlat18;
  u_xlat18 = (x_636 * x_637);
  let x_639 : f32 = u_xlat11;
  let x_640 : f32 = u_xlat18;
  let x_642 : f32 = u_xlat11;
  u_xlat1.x = ((x_639 * x_640) + -(x_642));
  let x_647 : f32 = u_xlat1.x;
  let x_648 : f32 = u_xlat11;
  u_xlat1.x = ((x_647 * x_648) + 1.0f);
  let x_652 : f32 = u_xlat18;
  u_xlat18 = (x_652 * 0.318309873f);
  let x_656 : f32 = u_xlat1.x;
  let x_658 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_656 * x_658) + 0.0000001f);
  let x_663 : f32 = u_xlat18;
  let x_665 : f32 = u_xlat1.x;
  u_xlat18 = (x_663 / x_665);
  let x_667 : f32 = u_xlat18;
  let x_668 : f32 = u_xlat27;
  u_xlat9.y = (x_667 * x_668);
  let x_671 : vec3<f32> = u_xlat2;
  let x_673 : vec3<f32> = u_xlat9;
  let x_675 : vec2<f32> = (vec2<f32>(x_671.x, x_671.x) * vec2<f32>(x_673.x, x_673.y));
  let x_676 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_675.x, x_675.y, x_676.z);
  let x_679 : f32 = u_xlat9.y;
  u_xlat18 = (x_679 * 3.141592741f);
  let x_682 : f32 = u_xlat18;
  u_xlat18 = max(x_682, 0.0f);
  let x_684 : vec3<f32> = u_xlat4;
  let x_685 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_684, x_685);
  let x_688 : f32 = u_xlat27;
  u_xlatb27 = !((x_688 == 0.0f));
  let x_690 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_690);
  let x_692 : f32 = u_xlat27;
  let x_693 : f32 = u_xlat18;
  u_xlat18 = (x_692 * x_693);
  let x_695 : vec3<f32> = u_xlat9;
  let x_697 : vec4<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_695.x, x_695.x, x_695.x) * vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat7;
  let x_702 : f32 = u_xlat18;
  u_xlat9 = (vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702, x_702, x_702));
  let x_706 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_706) + 1.0f);
  let x_711 : f32 = u_xlat0.x;
  let x_713 : f32 = u_xlat0.x;
  u_xlat28 = (x_711 * x_713);
  let x_715 : f32 = u_xlat28;
  let x_716 : f32 = u_xlat28;
  u_xlat28 = (x_715 * x_716);
  let x_719 : f32 = u_xlat0.x;
  let x_720 : f32 = u_xlat28;
  u_xlat0.x = (x_719 * x_720);
  let x_723 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_723) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_727 : vec3<f32> = u_xlat2;
  let x_728 : vec3<f32> = u_xlat0;
  let x_731 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_727 * vec3<f32>(x_728.x, x_728.x, x_728.x)) + x_731);
  let x_733 : vec3<f32> = u_xlat9;
  let x_734 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_733 * x_734);
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = u_xlat1;
  let x_742 : vec3<f32> = u_xlat0;
  let x_743 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.z, x_738.w) * x_740) + x_742);
  let x_744 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
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

