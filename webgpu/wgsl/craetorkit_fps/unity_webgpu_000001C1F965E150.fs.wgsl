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
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(5) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(4) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat3 : vec4<f32>;
  var x_203 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlat20 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_40 : f32 = vs_TEXCOORD3;
  u_xlat19 = (x_40 + -1.0f);
  let x_43 : f32 = u_xlat19;
  u_xlat19 = (x_43 * -9.999998093f);
  let x_46 : f32 = u_xlat19;
  u_xlat19 = clamp(x_46, 0.0f, 1.0f);
  let x_51 : f32 = u_xlat19;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  let x_58 : vec2<f32> = (-(vec2<f32>(x_51, x_51)) + x_57);
  let x_59 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_58.x, x_58.y, x_59.z);
  let x_71 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_71.x, x_71.y));
  u_xlat19 = x_73.x;
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_80);
  u_xlat2.x = x_81.z;
  let x_85 : f32 = u_xlat19;
  u_xlat19 = ((x_85 * -2.0f) + 1.0f);
  let x_90 : f32 = u_xlat2.x;
  let x_92 : f32 = u_xlat19;
  u_xlat19 = (-(x_90) + x_92);
  let x_97 : f32 = u_xlat19;
  u_xlatb19 = (x_97 < 0.0f);
  let x_99 : bool = u_xlatb19;
  if (((select(0i, 1i, x_99) * -1i) != 0i)) {
    discard;
  }
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  let x_113 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_115 : vec2<f32> = (vec2<f32>(x_108.y, x_108.y) * vec2<f32>(x_113.x, x_113.y));
  let x_116 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_119 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_124 : vec3<f32> = u_xlat2;
  let x_126 : vec2<f32> = ((vec2<f32>(x_119.x, x_119.y) * vec2<f32>(x_121.x, x_121.x)) + vec2<f32>(x_124.x, x_124.y));
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_126.x, x_126.y, x_127.z);
  let x_131 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = u_xlat2;
  let x_138 : vec2<f32> = ((vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_133.z, x_133.z)) + vec2<f32>(x_136.x, x_136.y));
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_138.x, x_138.y, x_139.z);
  let x_141 : vec3<f32> = u_xlat2;
  let x_145 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_147 : vec2<f32> = (vec2<f32>(x_141.x, x_141.y) + vec2<f32>(x_145.x, x_145.y));
  let x_148 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_147.x, x_147.y, x_148.z);
  let x_152 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_152 == 1.0f);
  let x_154 : bool = u_xlatb19;
  if (x_154) {
    let x_159 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_159 == 1.0f);
    let x_163 : vec3<f32> = vs_TEXCOORD2;
    let x_167 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_169 : vec3<f32> = (vec3<f32>(x_163.y, x_163.y, x_163.y) * vec3<f32>(x_167.x, x_167.y, x_167.z));
    let x_170 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
    let x_173 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_175 : vec3<f32> = vs_TEXCOORD2;
    let x_178 : vec4<f32> = u_xlat3;
    let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.x, x_175.x, x_175.x)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_184 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_186 : vec3<f32> = vs_TEXCOORD2;
    let x_189 : vec4<f32> = u_xlat3;
    let x_191 : vec3<f32> = ((vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_186.z, x_186.z, x_186.z)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : vec4<f32> = u_xlat3;
    let x_197 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_199 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) + vec3<f32>(x_197.x, x_197.y, x_197.z));
    let x_200 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_202 : bool = u_xlatb19;
    if (x_202) {
      let x_206 : vec4<f32> = u_xlat3;
      x_203 = vec3<f32>(x_206.x, x_206.y, x_206.z);
    } else {
      let x_209 : vec3<f32> = vs_TEXCOORD2;
      x_203 = x_209;
    }
    let x_210 : vec3<f32> = x_203;
    let x_211 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_213 : vec4<f32> = u_xlat3;
    let x_217 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_219 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + -(x_217));
    let x_220 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat3;
    let x_226 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_227 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) * x_226);
    let x_228 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_228.x, x_227.x, x_227.y, x_227.z);
    let x_231 : f32 = u_xlat3.y;
    u_xlat19 = ((x_231 * 0.25f) + 0.75f);
    let x_238 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat14 = ((x_238 * 0.5f) + 0.75f);
    let x_242 : f32 = u_xlat19;
    let x_243 : f32 = u_xlat14;
    u_xlat3.x = max(x_242, x_243);
    let x_254 : vec4<f32> = u_xlat3;
    let x_256 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_254.x, x_254.z, x_254.w));
    u_xlat3 = x_256;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_263, x_265);
  let x_267 : f32 = u_xlat19;
  u_xlat19 = clamp(x_267, 0.0f, 1.0f);
  let x_274 : vec3<f32> = u_xlat2;
  let x_276 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_274.x, x_274.y));
  u_xlat2.x = x_276.w;
  let x_279 : f32 = u_xlat19;
  let x_281 : f32 = u_xlat2.x;
  u_xlat19 = (x_279 * x_281);
  let x_283 : f32 = u_xlat19;
  let x_287 : vec4<f32> = x_18.x_LightColor0;
  u_xlat2 = (vec3<f32>(x_283, x_283, x_283) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_291, x_292);
  let x_294 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_294);
  let x_296 : f32 = u_xlat19;
  let x_298 : vec3<f32> = vs_TEXCOORD1;
  let x_299 : vec3<f32> = (vec3<f32>(x_296, x_296, x_296) * x_298);
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_305 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (vec3<f32>(x_305.x, x_305.y, x_305.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_312 : f32 = x_18.x_Metallic;
  let x_314 : f32 = x_18.x_Metallic;
  let x_316 : f32 = x_18.x_Metallic;
  let x_317 : vec3<f32> = vec3<f32>(x_312, x_314, x_316);
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * x_322) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_328 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_328) * 0.959999979f) + 0.959999979f);
  let x_334 : f32 = u_xlat19;
  let x_337 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_334, x_334, x_334) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_342 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_342) + 1.0f);
  let x_345 : vec3<f32> = u_xlat0;
  let x_346 : f32 = u_xlat18;
  let x_350 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_345 * vec3<f32>(x_346, x_346, x_346)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec3<f32> = u_xlat0;
  let x_354 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_353, x_354);
  let x_356 : f32 = u_xlat18;
  u_xlat18 = max(x_356, 0.001f);
  let x_359 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat18;
  let x_363 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_365 : vec4<f32> = u_xlat3;
  let x_367 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), x_367);
  let x_369 : vec4<f32> = u_xlat3;
  let x_372 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_377 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_377, 0.0f, 1.0f);
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), x_383);
  let x_385 : f32 = u_xlat7;
  u_xlat7 = clamp(x_385, 0.0f, 1.0f);
  let x_388 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_390 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), x_390);
  let x_394 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_394, 0.0f, 1.0f);
  let x_399 : f32 = u_xlat0.x;
  let x_401 : f32 = u_xlat0.x;
  u_xlat6.x = (x_399 * x_401);
  let x_404 : vec3<f32> = u_xlat6;
  let x_406 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_404.x, x_404.x), vec2<f32>(x_406, x_406));
  let x_411 : f32 = u_xlat6.x;
  u_xlat6.x = (x_411 + -0.5f);
  let x_417 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_417) + 1.0f);
  let x_421 : f32 = u_xlat12;
  let x_422 : f32 = u_xlat12;
  u_xlat13 = (x_421 * x_422);
  let x_424 : f32 = u_xlat13;
  let x_425 : f32 = u_xlat13;
  u_xlat13 = (x_424 * x_425);
  let x_427 : f32 = u_xlat12;
  let x_428 : f32 = u_xlat13;
  u_xlat12 = (x_427 * x_428);
  let x_431 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat12;
  u_xlat12 = ((x_431 * x_432) + 1.0f);
  let x_435 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_435)) + 1.0f);
  let x_440 : f32 = u_xlat13;
  let x_441 : f32 = u_xlat13;
  u_xlat20 = (x_440 * x_441);
  let x_443 : f32 = u_xlat20;
  let x_444 : f32 = u_xlat20;
  u_xlat20 = (x_443 * x_444);
  let x_446 : f32 = u_xlat13;
  let x_447 : f32 = u_xlat20;
  u_xlat13 = (x_446 * x_447);
  let x_450 : f32 = u_xlat6.x;
  let x_451 : f32 = u_xlat13;
  u_xlat6.x = ((x_450 * x_451) + 1.0f);
  let x_456 : f32 = u_xlat6.x;
  let x_457 : f32 = u_xlat12;
  u_xlat6.x = (x_456 * x_457);
  let x_460 : f32 = u_xlat19;
  let x_461 : f32 = u_xlat19;
  u_xlat12 = (x_460 * x_461);
  let x_463 : f32 = u_xlat12;
  u_xlat12 = max(x_463, 0.002f);
  let x_466 : f32 = u_xlat12;
  u_xlat13 = (-(x_466) + 1.0f);
  let x_469 : f32 = u_xlat18;
  let x_471 : f32 = u_xlat13;
  let x_473 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_469) * x_471) + x_473);
  let x_476 : f32 = u_xlat1.x;
  let x_477 : f32 = u_xlat13;
  let x_479 : f32 = u_xlat12;
  u_xlat13 = ((x_476 * x_477) + x_479);
  let x_481 : f32 = u_xlat18;
  let x_483 : f32 = u_xlat13;
  u_xlat18 = (abs(x_481) * x_483);
  let x_486 : f32 = u_xlat1.x;
  let x_487 : f32 = u_xlat19;
  let x_489 : f32 = u_xlat18;
  u_xlat18 = ((x_486 * x_487) + x_489);
  let x_491 : f32 = u_xlat18;
  u_xlat18 = (x_491 + 0.00001f);
  let x_494 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_494);
  let x_496 : f32 = u_xlat12;
  let x_497 : f32 = u_xlat12;
  u_xlat12 = (x_496 * x_497);
  let x_499 : f32 = u_xlat7;
  let x_500 : f32 = u_xlat12;
  let x_502 : f32 = u_xlat7;
  u_xlat13 = ((x_499 * x_500) + -(x_502));
  let x_505 : f32 = u_xlat13;
  let x_506 : f32 = u_xlat7;
  u_xlat7 = ((x_505 * x_506) + 1.0f);
  let x_509 : f32 = u_xlat12;
  u_xlat12 = (x_509 * 0.318309873f);
  let x_512 : f32 = u_xlat7;
  let x_513 : f32 = u_xlat7;
  u_xlat7 = ((x_512 * x_513) + 0.0000001f);
  let x_517 : f32 = u_xlat12;
  let x_518 : f32 = u_xlat7;
  u_xlat12 = (x_517 / x_518);
  let x_520 : f32 = u_xlat12;
  let x_521 : f32 = u_xlat18;
  u_xlat6.y = (x_520 * x_521);
  let x_524 : vec3<f32> = u_xlat1;
  let x_526 : vec3<f32> = u_xlat6;
  let x_528 : vec2<f32> = (vec2<f32>(x_524.x, x_524.x) * vec2<f32>(x_526.x, x_526.y));
  let x_529 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_528.x, x_528.y, x_529.z);
  let x_532 : f32 = u_xlat6.y;
  u_xlat12 = (x_532 * 3.141592741f);
  let x_535 : f32 = u_xlat12;
  u_xlat12 = max(x_535, 0.0f);
  let x_537 : vec3<f32> = u_xlat4;
  let x_538 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_537, x_538);
  let x_541 : f32 = u_xlat18;
  u_xlatb18 = !((x_541 == 0.0f));
  let x_543 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_543);
  let x_545 : f32 = u_xlat18;
  let x_546 : f32 = u_xlat12;
  u_xlat12 = (x_545 * x_546);
  let x_548 : vec3<f32> = u_xlat6;
  let x_550 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_548.x, x_548.x, x_548.x) * x_550);
  let x_552 : vec3<f32> = u_xlat2;
  let x_553 : f32 = u_xlat12;
  u_xlat6 = (x_552 * vec3<f32>(x_553, x_553, x_553));
  let x_557 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_557) + 1.0f);
  let x_562 : f32 = u_xlat0.x;
  let x_564 : f32 = u_xlat0.x;
  u_xlat19 = (x_562 * x_564);
  let x_566 : f32 = u_xlat19;
  let x_567 : f32 = u_xlat19;
  u_xlat19 = (x_566 * x_567);
  let x_570 : f32 = u_xlat0.x;
  let x_571 : f32 = u_xlat19;
  u_xlat0.x = (x_570 * x_571);
  let x_574 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_574) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_578 : vec3<f32> = u_xlat2;
  let x_579 : vec3<f32> = u_xlat0;
  let x_582 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_578 * vec3<f32>(x_579.x, x_579.x, x_579.x)) + x_582);
  let x_584 : vec3<f32> = u_xlat6;
  let x_585 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_584 * x_585);
  let x_589 : vec3<f32> = u_xlat5;
  let x_590 : vec3<f32> = u_xlat1;
  let x_592 : vec3<f32> = u_xlat0;
  let x_593 : vec3<f32> = ((x_589 * x_590) + x_592);
  let x_594 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

