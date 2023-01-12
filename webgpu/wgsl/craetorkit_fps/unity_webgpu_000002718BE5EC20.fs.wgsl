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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(9) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

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
  var u_xlat6 : vec4<f32>;
  var x_223 : vec3<f32>;
  var u_xlat25 : f32;
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
  let x_126 : vec3<f32> = vs_TEXCOORD4;
  let x_131 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_133 : vec2<f32> = (vec2<f32>(x_126.y, x_126.y) * vec2<f32>(x_131.x, x_131.y));
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_133.x, x_134.y, x_133.y, x_134.w);
  let x_137 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_139 : vec3<f32> = vs_TEXCOORD4;
  let x_142 : vec4<f32> = u_xlat4;
  let x_144 : vec2<f32> = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_139.x, x_139.x)) + vec2<f32>(x_142.x, x_142.z));
  let x_145 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_144.x, x_145.y, x_144.y, x_145.w);
  let x_149 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_151 : vec3<f32> = vs_TEXCOORD4;
  let x_154 : vec4<f32> = u_xlat4;
  let x_156 : vec2<f32> = ((vec2<f32>(x_149.x, x_149.y) * vec2<f32>(x_151.z, x_151.z)) + vec2<f32>(x_154.x, x_154.z));
  let x_157 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_156.x, x_157.y, x_156.y, x_157.w);
  let x_159 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.z) + vec2<f32>(x_163.x, x_163.y));
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_165.x, x_166.y, x_165.y, x_166.w);
  let x_173 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_173 == 1.0f);
  let x_175 : bool = u_xlatb23;
  if (x_175) {
    let x_180 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_180 == 1.0f);
    let x_183 : vec3<f32> = vs_TEXCOORD4;
    let x_187 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_189 : vec3<f32> = (vec3<f32>(x_183.y, x_183.y, x_183.y) * vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_193 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_195 : vec3<f32> = vs_TEXCOORD4;
    let x_198 : vec4<f32> = u_xlat6;
    let x_200 : vec3<f32> = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195.x, x_195.x, x_195.x)) + vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_204 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_206 : vec3<f32> = vs_TEXCOORD4;
    let x_209 : vec4<f32> = u_xlat6;
    let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.z, x_206.z, x_206.z)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
    let x_212 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_214 : vec4<f32> = u_xlat6;
    let x_217 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_219 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + vec3<f32>(x_217.x, x_217.y, x_217.z));
    let x_220 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : bool = u_xlatb23;
    if (x_222) {
      let x_226 : vec4<f32> = u_xlat6;
      x_223 = vec3<f32>(x_226.x, x_226.y, x_226.z);
    } else {
      let x_229 : vec3<f32> = vs_TEXCOORD4;
      x_223 = x_229;
    }
    let x_230 : vec3<f32> = x_223;
    let x_231 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_233 : vec4<f32> = u_xlat6;
    let x_237 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_239 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) + -(x_237));
    let x_240 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : vec4<f32> = u_xlat6;
    let x_246 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_247 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) * x_246);
    let x_248 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_248.x, x_247.x, x_247.y, x_247.z);
    let x_251 : f32 = u_xlat6.y;
    u_xlat23 = ((x_251 * 0.25f) + 0.75f);
    let x_258 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_258 * 0.5f) + 0.75f);
    let x_262 : f32 = u_xlat23;
    let x_263 : f32 = u_xlat25;
    u_xlat6.x = max(x_262, x_263);
    let x_274 : vec4<f32> = u_xlat6;
    let x_276 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_274.x, x_274.z, x_274.w));
    u_xlat6 = x_276;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_282 : vec4<f32> = u_xlat6;
  let x_284 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_282, x_284);
  let x_286 : f32 = u_xlat23;
  u_xlat23 = clamp(x_286, 0.0f, 1.0f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_294.x, x_294.z));
  u_xlat4.x = x_296.w;
  let x_299 : f32 = u_xlat23;
  let x_301 : f32 = u_xlat4.x;
  u_xlat23 = (x_299 * x_301);
  let x_304 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_304, x_305);
  let x_309 : vec3<f32> = vs_TEXCOORD2;
  let x_310 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_309, x_310);
  let x_314 : vec3<f32> = vs_TEXCOORD3;
  let x_315 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_314, x_315);
  let x_318 : vec4<f32> = u_xlat6;
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_325 : f32 = u_xlat4.x;
  u_xlat4.x = inverseSqrt(x_325);
  let x_328 : vec4<f32> = u_xlat4;
  let x_330 : vec4<f32> = u_xlat6;
  let x_332 : vec3<f32> = (vec3<f32>(x_328.x, x_328.x, x_328.x) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_333.y, x_332.y, x_332.z);
  let x_335 : f32 = u_xlat23;
  let x_339 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_335, x_335, x_335) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat2;
  let x_345 : vec4<f32> = x_18.x_Color;
  let x_350 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : f32 = u_xlat22;
  let x_355 : vec4<f32> = u_xlat2;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353, x_353, x_353) * vec3<f32>(x_355.x, x_355.y, x_355.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : f32 = u_xlat22;
  u_xlat22 = ((-(x_363) * 0.959999979f) + 0.959999979f);
  let x_368 : f32 = u_xlat22;
  let x_370 : vec4<f32> = u_xlat3;
  let x_372 : vec3<f32> = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = u_xlat4.y;
  let x_380 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_376) * x_380) + 1.0f);
  let x_383 : vec3<f32> = u_xlat0;
  let x_384 : f32 = u_xlat21;
  let x_388 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_383 * vec3<f32>(x_384, x_384, x_384)) + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec3<f32> = u_xlat0;
  let x_392 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_391, x_392);
  let x_394 : f32 = u_xlat21;
  u_xlat21 = max(x_394, 0.001f);
  let x_397 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_397);
  let x_399 : f32 = u_xlat21;
  let x_401 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_399, x_399, x_399) * x_401);
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(vec3<f32>(x_403.x, x_403.z, x_403.w), x_405);
  let x_407 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_407.x, x_407.z, x_407.w), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_415, 0.0f, 1.0f);
  let x_419 : vec4<f32> = u_xlat4;
  let x_421 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(vec3<f32>(x_419.x, x_419.z, x_419.w), x_421);
  let x_423 : f32 = u_xlat8;
  u_xlat8 = clamp(x_423, 0.0f, 1.0f);
  let x_426 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_428 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_426.x, x_426.y, x_426.z), x_428);
  let x_432 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_432, 0.0f, 1.0f);
  let x_437 : f32 = u_xlat0.x;
  let x_439 : f32 = u_xlat0.x;
  u_xlat7.x = (x_437 * x_439);
  let x_442 : vec3<f32> = u_xlat7;
  let x_444 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_442.x, x_442.x), vec2<f32>(x_444, x_444));
  let x_449 : f32 = u_xlat7.x;
  u_xlat7.x = (x_449 + -0.5f);
  let x_455 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_455) + 1.0f);
  let x_459 : f32 = u_xlat14;
  let x_460 : f32 = u_xlat14;
  u_xlat15 = (x_459 * x_460);
  let x_462 : f32 = u_xlat15;
  let x_463 : f32 = u_xlat15;
  u_xlat15 = (x_462 * x_463);
  let x_465 : f32 = u_xlat14;
  let x_466 : f32 = u_xlat15;
  u_xlat14 = (x_465 * x_466);
  let x_469 : f32 = u_xlat7.x;
  let x_470 : f32 = u_xlat14;
  u_xlat14 = ((x_469 * x_470) + 1.0f);
  let x_473 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_473)) + 1.0f);
  let x_477 : f32 = u_xlat15;
  let x_478 : f32 = u_xlat15;
  u_xlat23 = (x_477 * x_478);
  let x_480 : f32 = u_xlat23;
  let x_481 : f32 = u_xlat23;
  u_xlat23 = (x_480 * x_481);
  let x_483 : f32 = u_xlat15;
  let x_484 : f32 = u_xlat23;
  u_xlat15 = (x_483 * x_484);
  let x_487 : f32 = u_xlat7.x;
  let x_488 : f32 = u_xlat15;
  u_xlat7.x = ((x_487 * x_488) + 1.0f);
  let x_493 : f32 = u_xlat7.x;
  let x_494 : f32 = u_xlat14;
  u_xlat7.x = (x_493 * x_494);
  let x_497 : f32 = u_xlat22;
  let x_498 : f32 = u_xlat22;
  u_xlat14 = (x_497 * x_498);
  let x_500 : f32 = u_xlat14;
  u_xlat14 = max(x_500, 0.002f);
  let x_503 : f32 = u_xlat14;
  u_xlat15 = (-(x_503) + 1.0f);
  let x_506 : f32 = u_xlat21;
  let x_508 : f32 = u_xlat15;
  let x_510 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_506) * x_508) + x_510);
  let x_513 : f32 = u_xlat1.x;
  let x_514 : f32 = u_xlat15;
  let x_516 : f32 = u_xlat14;
  u_xlat15 = ((x_513 * x_514) + x_516);
  let x_518 : f32 = u_xlat21;
  let x_520 : f32 = u_xlat15;
  u_xlat21 = (abs(x_518) * x_520);
  let x_523 : f32 = u_xlat1.x;
  let x_524 : f32 = u_xlat22;
  let x_526 : f32 = u_xlat21;
  u_xlat21 = ((x_523 * x_524) + x_526);
  let x_528 : f32 = u_xlat21;
  u_xlat21 = (x_528 + 0.00001f);
  let x_531 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_531);
  let x_533 : f32 = u_xlat14;
  let x_534 : f32 = u_xlat14;
  u_xlat14 = (x_533 * x_534);
  let x_536 : f32 = u_xlat8;
  let x_537 : f32 = u_xlat14;
  let x_539 : f32 = u_xlat8;
  u_xlat15 = ((x_536 * x_537) + -(x_539));
  let x_542 : f32 = u_xlat15;
  let x_543 : f32 = u_xlat8;
  u_xlat8 = ((x_542 * x_543) + 1.0f);
  let x_546 : f32 = u_xlat14;
  u_xlat14 = (x_546 * 0.318309873f);
  let x_549 : f32 = u_xlat8;
  let x_550 : f32 = u_xlat8;
  u_xlat8 = ((x_549 * x_550) + 0.0000001f);
  let x_554 : f32 = u_xlat14;
  let x_555 : f32 = u_xlat8;
  u_xlat14 = (x_554 / x_555);
  let x_557 : f32 = u_xlat14;
  let x_558 : f32 = u_xlat21;
  u_xlat7.y = (x_557 * x_558);
  let x_561 : vec3<f32> = u_xlat1;
  let x_563 : vec3<f32> = u_xlat7;
  let x_565 : vec2<f32> = (vec2<f32>(x_561.x, x_561.x) * vec2<f32>(x_563.x, x_563.y));
  let x_566 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_565.x, x_565.y, x_566.z);
  let x_569 : f32 = u_xlat7.y;
  u_xlat14 = (x_569 * 3.141592741f);
  let x_572 : f32 = u_xlat14;
  u_xlat14 = max(x_572, 0.0f);
  let x_574 : vec4<f32> = u_xlat2;
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_574.x, x_574.y, x_574.z), vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_580 : f32 = u_xlat21;
  u_xlatb21 = !((x_580 == 0.0f));
  let x_582 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_582);
  let x_584 : f32 = u_xlat21;
  let x_585 : f32 = u_xlat14;
  u_xlat14 = (x_584 * x_585);
  let x_587 : vec3<f32> = u_xlat7;
  let x_589 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_587.x, x_587.x, x_587.x) * x_589);
  let x_591 : vec3<f32> = u_xlat5;
  let x_592 : f32 = u_xlat14;
  u_xlat7 = (x_591 * vec3<f32>(x_592, x_592, x_592));
  let x_596 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_596) + 1.0f);
  let x_601 : f32 = u_xlat0.x;
  let x_603 : f32 = u_xlat0.x;
  u_xlat22 = (x_601 * x_603);
  let x_605 : f32 = u_xlat22;
  let x_606 : f32 = u_xlat22;
  u_xlat22 = (x_605 * x_606);
  let x_609 : f32 = u_xlat0.x;
  let x_610 : f32 = u_xlat22;
  u_xlat0.x = (x_609 * x_610);
  let x_613 : vec4<f32> = u_xlat2;
  let x_617 : vec3<f32> = (-(vec3<f32>(x_613.x, x_613.y, x_613.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : vec3<f32> = u_xlat0;
  let x_625 : vec4<f32> = u_xlat2;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622.x, x_622.x, x_622.x)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec3<f32> = u_xlat7;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_630 * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec3<f32> = u_xlat1;
  let x_638 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * x_636) + x_638);
  let x_642 : f32 = vs_TEXCOORD6;
  let x_644 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_642 / x_644);
  let x_646 : f32 = u_xlat21;
  u_xlat21 = (-(x_646) + 1.0f);
  let x_649 : f32 = u_xlat21;
  let x_651 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_649 * x_651);
  let x_653 : f32 = u_xlat21;
  u_xlat21 = max(x_653, 0.0f);
  let x_655 : f32 = u_xlat21;
  let x_658 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_655 * x_658);
  let x_660 : f32 = u_xlat21;
  let x_661 : f32 = u_xlat21;
  u_xlat21 = (x_660 * -(x_661));
  let x_664 : f32 = u_xlat21;
  u_xlat21 = exp2(x_664);
  let x_668 : vec3<f32> = u_xlat0;
  let x_669 : f32 = u_xlat21;
  let x_671 : vec3<f32> = (x_668 * vec3<f32>(x_669, x_669, x_669));
  let x_672 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_675 : f32 = u_xlat3.w;
  SV_Target0.w = x_675;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

