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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(7) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_NormalMap : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_182 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
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
  let x_52 : vec2<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_52);
  u_xlat2 = x_53;
  let x_55 : vec4<f32> = u_xlat2;
  let x_59 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (x_55 * x_59);
  let x_67 : vec2<f32> = vs_TEXCOORD0;
  let x_68 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_67);
  let x_69 : vec2<f32> = vec2<f32>(x_68.x, x_68.w);
  let x_70 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_76 : f32 = u_xlat4.x;
  let x_80 : f32 = x_18.x_Metallic;
  u_xlat22 = (x_76 * x_80);
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_87);
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_89.x, x_90.y, x_89.y, x_89.z);
  let x_94 : f32 = u_xlat4.w;
  let x_96 : f32 = u_xlat4.x;
  u_xlat4.x = (x_94 * x_96);
  let x_100 : vec4<f32> = u_xlat4;
  let x_107 : vec2<f32> = ((vec2<f32>(x_100.x, x_100.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_108 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_107.x, x_107.y, x_108.z);
  let x_111 : vec3<f32> = u_xlat5;
  let x_113 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_111.x, x_111.y), vec2<f32>(x_113.x, x_113.y));
  let x_116 : f32 = u_xlat23;
  u_xlat23 = min(x_116, 1.0f);
  let x_119 : f32 = u_xlat23;
  u_xlat23 = (-(x_119) + 1.0f);
  let x_122 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_122);
  let x_131 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_131 == 1.0f);
  let x_133 : bool = u_xlatb23;
  if (x_133) {
    let x_138 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_138 == 1.0f);
    let x_140 : vec3<f32> = vs_TEXCOORD4;
    let x_145 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_147 : vec3<f32> = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_145.x, x_145.y, x_145.z));
    let x_148 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_147.x, x_148.y, x_147.y, x_147.z);
    let x_151 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_153 : vec3<f32> = vs_TEXCOORD4;
    let x_156 : vec4<f32> = u_xlat4;
    let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.x, x_153.x, x_153.x)) + vec3<f32>(x_156.x, x_156.z, x_156.w));
    let x_159 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_158.x, x_159.y, x_158.y, x_158.z);
    let x_163 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_165 : vec3<f32> = vs_TEXCOORD4;
    let x_168 : vec4<f32> = u_xlat4;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + vec3<f32>(x_168.x, x_168.z, x_168.w));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_171.y, x_170.y, x_170.z);
    let x_173 : vec4<f32> = u_xlat4;
    let x_176 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_178 : vec3<f32> = (vec3<f32>(x_173.x, x_173.z, x_173.w) + vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_178.x, x_179.y, x_178.y, x_178.z);
    let x_181 : bool = u_xlatb23;
    if (x_181) {
      let x_185 : vec4<f32> = u_xlat4;
      x_182 = vec3<f32>(x_185.x, x_185.z, x_185.w);
    } else {
      let x_188 : vec3<f32> = vs_TEXCOORD4;
      x_182 = x_188;
    }
    let x_189 : vec3<f32> = x_182;
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_189.x, x_190.y, x_189.y, x_189.z);
    let x_192 : vec4<f32> = u_xlat4;
    let x_196 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_198 : vec3<f32> = (vec3<f32>(x_192.x, x_192.z, x_192.w) + -(x_196));
    let x_199 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_198.x, x_199.y, x_198.y, x_198.z);
    let x_202 : vec4<f32> = u_xlat4;
    let x_206 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_207 : vec3<f32> = (vec3<f32>(x_202.x, x_202.z, x_202.w) * x_206);
    let x_208 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_208.x, x_207.x, x_207.y, x_207.z);
    let x_211 : f32 = u_xlat6.y;
    u_xlat23 = ((x_211 * 0.25f) + 0.75f);
    let x_217 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((x_217 * 0.5f) + 0.75f);
    let x_222 : f32 = u_xlat23;
    let x_224 : f32 = u_xlat4.x;
    u_xlat6.x = max(x_222, x_224);
    let x_235 : vec4<f32> = u_xlat6;
    let x_237 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_235.x, x_235.z, x_235.w));
    u_xlat6 = x_237;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_243 : vec4<f32> = u_xlat6;
  let x_245 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_243, x_245);
  let x_247 : f32 = u_xlat23;
  u_xlat23 = clamp(x_247, 0.0f, 1.0f);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_251, x_252);
  let x_256 : vec3<f32> = vs_TEXCOORD2;
  let x_257 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_256, x_257);
  let x_261 : vec3<f32> = vs_TEXCOORD3;
  let x_262 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_261, x_262);
  let x_265 : vec4<f32> = u_xlat6;
  let x_267 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_272 : f32 = u_xlat4.x;
  u_xlat4.x = inverseSqrt(x_272);
  let x_275 : vec4<f32> = u_xlat4;
  let x_277 : vec4<f32> = u_xlat6;
  let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.x, x_275.x) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_280.y, x_279.y, x_279.z);
  let x_282 : f32 = u_xlat23;
  let x_286 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_282, x_282, x_282) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat2;
  let x_292 : vec4<f32> = x_18.x_Color;
  let x_297 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_292.x, x_292.y, x_292.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : f32 = u_xlat22;
  let x_302 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300, x_300, x_300) * vec3<f32>(x_302.x, x_302.y, x_302.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : f32 = u_xlat22;
  u_xlat22 = ((-(x_310) * 0.959999979f) + 0.959999979f);
  let x_315 : f32 = u_xlat22;
  let x_317 : vec4<f32> = u_xlat3;
  let x_319 : vec3<f32> = (vec3<f32>(x_315, x_315, x_315) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = u_xlat4.y;
  let x_327 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_323) * x_327) + 1.0f);
  let x_330 : vec3<f32> = u_xlat0;
  let x_331 : f32 = u_xlat21;
  let x_335 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_330 * vec3<f32>(x_331, x_331, x_331)) + vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec3<f32> = u_xlat0;
  let x_339 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_338, x_339);
  let x_341 : f32 = u_xlat21;
  u_xlat21 = max(x_341, 0.001f);
  let x_344 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_344);
  let x_346 : f32 = u_xlat21;
  let x_348 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_346, x_346, x_346) * x_348);
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(vec3<f32>(x_350.x, x_350.z, x_350.w), x_352);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_354.x, x_354.z, x_354.w), vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_362 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_362, 0.0f, 1.0f);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(vec3<f32>(x_366.x, x_366.z, x_366.w), x_368);
  let x_370 : f32 = u_xlat8;
  u_xlat8 = clamp(x_370, 0.0f, 1.0f);
  let x_373 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_375 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), x_375);
  let x_379 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_379, 0.0f, 1.0f);
  let x_384 : f32 = u_xlat0.x;
  let x_386 : f32 = u_xlat0.x;
  u_xlat7.x = (x_384 * x_386);
  let x_389 : vec3<f32> = u_xlat7;
  let x_391 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_389.x, x_389.x), vec2<f32>(x_391, x_391));
  let x_396 : f32 = u_xlat7.x;
  u_xlat7.x = (x_396 + -0.5f);
  let x_402 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_402) + 1.0f);
  let x_406 : f32 = u_xlat14;
  let x_407 : f32 = u_xlat14;
  u_xlat15 = (x_406 * x_407);
  let x_409 : f32 = u_xlat15;
  let x_410 : f32 = u_xlat15;
  u_xlat15 = (x_409 * x_410);
  let x_412 : f32 = u_xlat14;
  let x_413 : f32 = u_xlat15;
  u_xlat14 = (x_412 * x_413);
  let x_416 : f32 = u_xlat7.x;
  let x_417 : f32 = u_xlat14;
  u_xlat14 = ((x_416 * x_417) + 1.0f);
  let x_420 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_420)) + 1.0f);
  let x_424 : f32 = u_xlat15;
  let x_425 : f32 = u_xlat15;
  u_xlat23 = (x_424 * x_425);
  let x_427 : f32 = u_xlat23;
  let x_428 : f32 = u_xlat23;
  u_xlat23 = (x_427 * x_428);
  let x_430 : f32 = u_xlat15;
  let x_431 : f32 = u_xlat23;
  u_xlat15 = (x_430 * x_431);
  let x_434 : f32 = u_xlat7.x;
  let x_435 : f32 = u_xlat15;
  u_xlat7.x = ((x_434 * x_435) + 1.0f);
  let x_440 : f32 = u_xlat7.x;
  let x_441 : f32 = u_xlat14;
  u_xlat7.x = (x_440 * x_441);
  let x_444 : f32 = u_xlat22;
  let x_445 : f32 = u_xlat22;
  u_xlat14 = (x_444 * x_445);
  let x_447 : f32 = u_xlat14;
  u_xlat14 = max(x_447, 0.002f);
  let x_450 : f32 = u_xlat14;
  u_xlat15 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat21;
  let x_455 : f32 = u_xlat15;
  let x_457 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_453) * x_455) + x_457);
  let x_460 : f32 = u_xlat1.x;
  let x_461 : f32 = u_xlat15;
  let x_463 : f32 = u_xlat14;
  u_xlat15 = ((x_460 * x_461) + x_463);
  let x_465 : f32 = u_xlat21;
  let x_467 : f32 = u_xlat15;
  u_xlat21 = (abs(x_465) * x_467);
  let x_470 : f32 = u_xlat1.x;
  let x_471 : f32 = u_xlat22;
  let x_473 : f32 = u_xlat21;
  u_xlat21 = ((x_470 * x_471) + x_473);
  let x_475 : f32 = u_xlat21;
  u_xlat21 = (x_475 + 0.00001f);
  let x_478 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_478);
  let x_480 : f32 = u_xlat14;
  let x_481 : f32 = u_xlat14;
  u_xlat14 = (x_480 * x_481);
  let x_483 : f32 = u_xlat8;
  let x_484 : f32 = u_xlat14;
  let x_486 : f32 = u_xlat8;
  u_xlat15 = ((x_483 * x_484) + -(x_486));
  let x_489 : f32 = u_xlat15;
  let x_490 : f32 = u_xlat8;
  u_xlat8 = ((x_489 * x_490) + 1.0f);
  let x_493 : f32 = u_xlat14;
  u_xlat14 = (x_493 * 0.318309873f);
  let x_496 : f32 = u_xlat8;
  let x_497 : f32 = u_xlat8;
  u_xlat8 = ((x_496 * x_497) + 0.0000001f);
  let x_501 : f32 = u_xlat14;
  let x_502 : f32 = u_xlat8;
  u_xlat14 = (x_501 / x_502);
  let x_504 : f32 = u_xlat14;
  let x_505 : f32 = u_xlat21;
  u_xlat7.y = (x_504 * x_505);
  let x_508 : vec3<f32> = u_xlat1;
  let x_510 : vec3<f32> = u_xlat7;
  let x_512 : vec2<f32> = (vec2<f32>(x_508.x, x_508.x) * vec2<f32>(x_510.x, x_510.y));
  let x_513 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_512.x, x_512.y, x_513.z);
  let x_516 : f32 = u_xlat7.y;
  u_xlat14 = (x_516 * 3.141592741f);
  let x_519 : f32 = u_xlat14;
  u_xlat14 = max(x_519, 0.0f);
  let x_521 : vec4<f32> = u_xlat2;
  let x_523 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_527 : f32 = u_xlat21;
  u_xlatb21 = !((x_527 == 0.0f));
  let x_529 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_529);
  let x_531 : f32 = u_xlat21;
  let x_532 : f32 = u_xlat14;
  u_xlat14 = (x_531 * x_532);
  let x_534 : vec3<f32> = u_xlat7;
  let x_536 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_534.x, x_534.x, x_534.x) * x_536);
  let x_538 : vec3<f32> = u_xlat5;
  let x_539 : f32 = u_xlat14;
  u_xlat7 = (x_538 * vec3<f32>(x_539, x_539, x_539));
  let x_543 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_543) + 1.0f);
  let x_548 : f32 = u_xlat0.x;
  let x_550 : f32 = u_xlat0.x;
  u_xlat22 = (x_548 * x_550);
  let x_552 : f32 = u_xlat22;
  let x_553 : f32 = u_xlat22;
  u_xlat22 = (x_552 * x_553);
  let x_556 : f32 = u_xlat0.x;
  let x_557 : f32 = u_xlat22;
  u_xlat0.x = (x_556 * x_557);
  let x_560 : vec4<f32> = u_xlat2;
  let x_564 : vec3<f32> = (-(vec3<f32>(x_560.x, x_560.y, x_560.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat4;
  let x_569 : vec3<f32> = u_xlat0;
  let x_572 : vec4<f32> = u_xlat2;
  let x_574 : vec3<f32> = ((vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_569.x, x_569.x, x_569.x)) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec3<f32> = u_xlat7;
  let x_578 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_577 * vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_583 : vec4<f32> = u_xlat3;
  let x_585 : vec3<f32> = u_xlat1;
  let x_587 : vec3<f32> = u_xlat0;
  let x_588 : vec3<f32> = ((vec3<f32>(x_583.x, x_583.y, x_583.z) * x_585) + x_587);
  let x_589 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_592 : f32 = u_xlat3.w;
  SV_Target0.w = x_592;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

