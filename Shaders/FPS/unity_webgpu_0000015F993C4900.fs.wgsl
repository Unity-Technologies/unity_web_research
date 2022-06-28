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

@group(0) @binding(10) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicSmooth : sampler;

var<private> u_xlat29 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

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
  var x_290 : vec3<f32>;
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
  let x_164 : vec3<f32> = u_xlat6;
  let x_166 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec2<f32>(x_164.x, x_164.y), vec2<f32>(x_166.x, x_166.y));
  let x_169 : f32 = u_xlat21;
  u_xlat21 = min(x_169, 1.0f);
  let x_171 : f32 = u_xlat21;
  u_xlat21 = (-(x_171) + 1.0f);
  let x_174 : f32 = u_xlat21;
  u_xlat6.z = sqrt(x_174);
  let x_178 : f32 = u_xlat3.x;
  let x_181 : f32 = x_18.x_Metallic;
  u_xlat3.x = (x_178 * x_181);
  let x_184 : f32 = u_xlat29;
  let x_186 : f32 = u_xlat28;
  let x_189 : f32 = x_18.x_Cutoff;
  u_xlat28 = ((-(x_184) * x_186) + -(x_189));
  let x_192 : f32 = u_xlat28;
  u_xlat28 = (x_192 + 1.0f);
  let x_197 : f32 = u_xlat28;
  u_xlatb28 = (x_197 < 0.0f);
  let x_199 : bool = u_xlatb28;
  if (((select(0i, 1i, x_199) * -1i) != 0i)) {
    discard;
  }
  let x_208 : vec3<f32> = vs_TEXCOORD4;
  let x_212 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_208.y, x_208.y, x_208.y) * vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_218 : vec3<f32> = vs_TEXCOORD4;
  let x_221 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.x, x_218.x, x_218.x)) + x_221);
  let x_225 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_227 : vec3<f32> = vs_TEXCOORD4;
  let x_230 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.z, x_227.z, x_227.z)) + x_230);
  let x_232 : vec3<f32> = u_xlat7;
  let x_235 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_232 + vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb28 = (x_239 == 1.0f);
  let x_241 : bool = u_xlatb28;
  if (x_241) {
    let x_246 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb28 = (x_246 == 1.0f);
    let x_249 : vec3<f32> = vs_TEXCOORD4;
    let x_253 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_255 : vec3<f32> = (vec3<f32>(x_249.y, x_249.y, x_249.y) * vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_261 : vec3<f32> = vs_TEXCOORD4;
    let x_264 : vec4<f32> = u_xlat8;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.x, x_261.x)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_270 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_272 : vec3<f32> = vs_TEXCOORD4;
    let x_275 : vec4<f32> = u_xlat8;
    let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.z, x_272.z, x_272.z)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat8;
    let x_283 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : bool = u_xlatb28;
    if (x_288) {
      let x_293 : vec4<f32> = u_xlat8;
      x_290 = vec3<f32>(x_293.x, x_293.y, x_293.z);
    } else {
      let x_296 : vec3<f32> = vs_TEXCOORD4;
      x_290 = x_296;
    }
    let x_297 : vec3<f32> = x_290;
    let x_298 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
    let x_300 : vec4<f32> = u_xlat8;
    let x_304 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_306 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + -(x_304));
    let x_307 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat8;
    let x_313 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) * x_313);
    let x_315 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_315.x, x_314.x, x_314.y, x_314.z);
    let x_318 : f32 = u_xlat8.y;
    u_xlat28 = ((x_318 * 0.25f) + 0.75f);
    let x_324 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat29 = ((x_324 * 0.5f) + 0.75f);
    let x_328 : f32 = u_xlat28;
    let x_329 : f32 = u_xlat29;
    u_xlat8.x = max(x_328, x_329);
    let x_340 : vec4<f32> = u_xlat8;
    let x_342 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_340.x, x_340.z, x_340.w));
    u_xlat8 = x_342;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_349 : vec4<f32> = u_xlat8;
  let x_351 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat28 = dot(x_349, x_351);
  let x_353 : f32 = u_xlat28;
  u_xlat28 = clamp(x_353, 0.0f, 1.0f);
  let x_355 : vec3<f32> = u_xlat7;
  let x_356 : vec3<f32> = u_xlat7;
  u_xlat29 = dot(x_355, x_356);
  let x_363 : f32 = u_xlat29;
  let x_365 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_363, x_363));
  u_xlat29 = x_365.x;
  let x_367 : f32 = u_xlat28;
  let x_368 : f32 = u_xlat29;
  u_xlat28 = (x_367 * x_368);
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_372 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_371, x_372);
  let x_376 : vec3<f32> = vs_TEXCOORD2;
  let x_377 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_376, x_377);
  let x_381 : vec3<f32> = vs_TEXCOORD3;
  let x_382 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_381, x_382);
  let x_385 : vec3<f32> = u_xlat7;
  let x_386 : vec3<f32> = u_xlat7;
  u_xlat29 = dot(x_385, x_386);
  let x_388 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_388);
  let x_390 : f32 = u_xlat29;
  let x_392 : vec3<f32> = u_xlat7;
  u_xlat6 = (vec3<f32>(x_390, x_390, x_390) * x_392);
  let x_394 : f32 = u_xlat28;
  let x_398 : vec4<f32> = x_18.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec3<f32> = u_xlat4;
  let x_403 : vec4<f32> = x_18.x_Color;
  u_xlat4 = ((x_401 * vec3<f32>(x_403.x, x_403.y, x_403.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_409.x, x_409.x, x_409.x) * x_411) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_417 : f32 = u_xlat3.x;
  u_xlat28 = ((-(x_417) * 0.959999979f) + 0.959999979f);
  let x_422 : f32 = u_xlat28;
  let x_424 : vec3<f32> = u_xlat5;
  let x_425 : vec3<f32> = (vec3<f32>(x_422, x_422, x_422) * x_424);
  let x_426 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_425.x, x_426.y, x_425.y, x_425.z);
  let x_429 : f32 = u_xlat3.y;
  let x_433 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_429) * x_433) + 1.0f);
  let x_436 : vec3<f32> = u_xlat0;
  let x_437 : f32 = u_xlat27;
  let x_440 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_436 * vec3<f32>(x_437, x_437, x_437)) + x_440);
  let x_442 : vec3<f32> = u_xlat0;
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_442, x_443);
  let x_445 : f32 = u_xlat27;
  u_xlat27 = max(x_445, 0.001f);
  let x_448 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_448);
  let x_450 : f32 = u_xlat27;
  let x_452 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_450, x_450, x_450) * x_452);
  let x_454 : vec3<f32> = u_xlat6;
  let x_455 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_454, x_455);
  let x_457 : vec3<f32> = u_xlat6;
  let x_458 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_457, x_458);
  let x_462 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_462, 0.0f, 1.0f);
  let x_466 : vec3<f32> = u_xlat6;
  let x_467 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(x_466, x_467);
  let x_469 : f32 = u_xlat11;
  u_xlat11 = clamp(x_469, 0.0f, 1.0f);
  let x_471 : vec3<f32> = u_xlat1;
  let x_472 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_471, x_472);
  let x_476 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_476, 0.0f, 1.0f);
  let x_481 : f32 = u_xlat0.x;
  let x_483 : f32 = u_xlat0.x;
  u_xlat9.x = (x_481 * x_483);
  let x_486 : vec3<f32> = u_xlat9;
  let x_488 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_486.x, x_486.x), vec2<f32>(x_488, x_488));
  let x_493 : f32 = u_xlat9.x;
  u_xlat9.x = (x_493 + -0.5f);
  let x_499 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_499) + 1.0f);
  let x_502 : f32 = u_xlat18;
  let x_503 : f32 = u_xlat18;
  u_xlat1.x = (x_502 * x_503);
  let x_507 : f32 = u_xlat1.x;
  let x_509 : f32 = u_xlat1.x;
  u_xlat1.x = (x_507 * x_509);
  let x_512 : f32 = u_xlat18;
  let x_514 : f32 = u_xlat1.x;
  u_xlat18 = (x_512 * x_514);
  let x_517 : f32 = u_xlat9.x;
  let x_518 : f32 = u_xlat18;
  u_xlat18 = ((x_517 * x_518) + 1.0f);
  let x_521 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_521)) + 1.0f);
  let x_528 : f32 = u_xlat1.x;
  let x_530 : f32 = u_xlat1.x;
  u_xlat10 = (x_528 * x_530);
  let x_532 : f32 = u_xlat10;
  let x_533 : f32 = u_xlat10;
  u_xlat10 = (x_532 * x_533);
  let x_536 : f32 = u_xlat1.x;
  let x_537 : f32 = u_xlat10;
  u_xlat1.x = (x_536 * x_537);
  let x_541 : f32 = u_xlat9.x;
  let x_543 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_541 * x_543) + 1.0f);
  let x_548 : f32 = u_xlat9.x;
  let x_549 : f32 = u_xlat18;
  u_xlat9.x = (x_548 * x_549);
  let x_552 : f32 = u_xlat28;
  let x_553 : f32 = u_xlat28;
  u_xlat18 = (x_552 * x_553);
  let x_555 : f32 = u_xlat18;
  u_xlat18 = max(x_555, 0.002f);
  let x_558 : f32 = u_xlat18;
  u_xlat1.x = (-(x_558) + 1.0f);
  let x_562 : f32 = u_xlat27;
  let x_565 : f32 = u_xlat1.x;
  let x_567 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_562) * x_565) + x_567);
  let x_570 : f32 = u_xlat2.x;
  let x_572 : f32 = u_xlat1.x;
  let x_574 : f32 = u_xlat18;
  u_xlat1.x = ((x_570 * x_572) + x_574);
  let x_577 : f32 = u_xlat27;
  let x_580 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_577) * x_580);
  let x_583 : f32 = u_xlat2.x;
  let x_584 : f32 = u_xlat10;
  let x_586 : f32 = u_xlat27;
  u_xlat27 = ((x_583 * x_584) + x_586);
  let x_588 : f32 = u_xlat27;
  u_xlat27 = (x_588 + 0.00001f);
  let x_591 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_591);
  let x_593 : f32 = u_xlat18;
  let x_594 : f32 = u_xlat18;
  u_xlat18 = (x_593 * x_594);
  let x_596 : f32 = u_xlat11;
  let x_597 : f32 = u_xlat18;
  let x_599 : f32 = u_xlat11;
  u_xlat1.x = ((x_596 * x_597) + -(x_599));
  let x_604 : f32 = u_xlat1.x;
  let x_605 : f32 = u_xlat11;
  u_xlat1.x = ((x_604 * x_605) + 1.0f);
  let x_609 : f32 = u_xlat18;
  u_xlat18 = (x_609 * 0.318309873f);
  let x_613 : f32 = u_xlat1.x;
  let x_615 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_613 * x_615) + 0.0000001f);
  let x_620 : f32 = u_xlat18;
  let x_622 : f32 = u_xlat1.x;
  u_xlat18 = (x_620 / x_622);
  let x_624 : f32 = u_xlat18;
  let x_625 : f32 = u_xlat27;
  u_xlat9.y = (x_624 * x_625);
  let x_628 : vec3<f32> = u_xlat2;
  let x_630 : vec3<f32> = u_xlat9;
  let x_632 : vec2<f32> = (vec2<f32>(x_628.x, x_628.x) * vec2<f32>(x_630.x, x_630.y));
  let x_633 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_632.x, x_632.y, x_633.z);
  let x_636 : f32 = u_xlat9.y;
  u_xlat18 = (x_636 * 3.141592741f);
  let x_639 : f32 = u_xlat18;
  u_xlat18 = max(x_639, 0.0f);
  let x_641 : vec3<f32> = u_xlat4;
  let x_642 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_641, x_642);
  let x_645 : f32 = u_xlat27;
  u_xlatb27 = !((x_645 == 0.0f));
  let x_647 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_647);
  let x_649 : f32 = u_xlat27;
  let x_650 : f32 = u_xlat18;
  u_xlat18 = (x_649 * x_650);
  let x_652 : vec3<f32> = u_xlat9;
  let x_654 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_652.x, x_652.x, x_652.x) * x_654);
  let x_656 : vec3<f32> = u_xlat7;
  let x_657 : f32 = u_xlat18;
  u_xlat9 = (x_656 * vec3<f32>(x_657, x_657, x_657));
  let x_661 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_661) + 1.0f);
  let x_666 : f32 = u_xlat0.x;
  let x_668 : f32 = u_xlat0.x;
  u_xlat28 = (x_666 * x_668);
  let x_670 : f32 = u_xlat28;
  let x_671 : f32 = u_xlat28;
  u_xlat28 = (x_670 * x_671);
  let x_674 : f32 = u_xlat0.x;
  let x_675 : f32 = u_xlat28;
  u_xlat0.x = (x_674 * x_675);
  let x_678 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_678) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_682 : vec3<f32> = u_xlat2;
  let x_683 : vec3<f32> = u_xlat0;
  let x_686 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_682 * vec3<f32>(x_683.x, x_683.x, x_683.x)) + x_686);
  let x_688 : vec3<f32> = u_xlat9;
  let x_689 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_688 * x_689);
  let x_693 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = u_xlat1;
  let x_697 : vec3<f32> = u_xlat0;
  let x_698 : vec3<f32> = ((vec3<f32>(x_693.x, x_693.z, x_693.w) * x_695) + x_697);
  let x_699 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
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

