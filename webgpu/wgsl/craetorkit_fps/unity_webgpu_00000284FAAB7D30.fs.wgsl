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

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(11) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlatb29 : bool;
  var x_223 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlat11 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat10 : f32;
  var u_xlatb27 : bool;
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
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_71);
  u_xlat3 = x_72;
  let x_74 : vec4<f32> = u_xlat3;
  let x_77 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_74 * x_77);
  let x_85 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_85);
  let x_87 : vec2<f32> = vec2<f32>(x_86.x, x_86.w);
  let x_88 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_93 : f32 = u_xlat5.x;
  let x_97 : f32 = x_18.x_Metallic;
  u_xlat28 = (x_93 * x_97);
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_104);
  let x_106 : vec3<f32> = vec3<f32>(x_105.x, x_105.y, x_105.w);
  let x_107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_106.x, x_107.y, x_106.y, x_106.z);
  let x_111 : f32 = u_xlat5.w;
  let x_113 : f32 = u_xlat5.x;
  u_xlat5.x = (x_111 * x_113);
  let x_117 : vec4<f32> = u_xlat5;
  let x_124 : vec2<f32> = ((vec2<f32>(x_117.x, x_117.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_125 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_128 : vec3<f32> = u_xlat6;
  let x_130 : vec3<f32> = u_xlat6;
  u_xlat29 = dot(vec2<f32>(x_128.x, x_128.y), vec2<f32>(x_130.x, x_130.y));
  let x_133 : f32 = u_xlat29;
  u_xlat29 = min(x_133, 1.0f);
  let x_136 : f32 = u_xlat29;
  u_xlat29 = (-(x_136) + 1.0f);
  let x_139 : f32 = u_xlat29;
  u_xlat6.z = sqrt(x_139);
  let x_144 : vec3<f32> = vs_TEXCOORD4;
  let x_148 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_144.y, x_144.y, x_144.y, x_144.y) * x_148);
  let x_151 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_152 : vec3<f32> = vs_TEXCOORD4;
  let x_155 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_151 * vec4<f32>(x_152.x, x_152.x, x_152.x, x_152.x)) + x_155);
  let x_159 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_160 : vec3<f32> = vs_TEXCOORD4;
  let x_163 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_159 * vec4<f32>(x_160.z, x_160.z, x_160.z, x_160.z)) + x_163);
  let x_165 : vec4<f32> = u_xlat7;
  let x_168 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_165 + x_168);
  let x_174 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb29 = (x_174 == 1.0f);
  let x_176 : bool = u_xlatb29;
  if (x_176) {
    let x_181 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb29 = (x_181 == 1.0f);
    let x_183 : vec3<f32> = vs_TEXCOORD4;
    let x_187 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_189 : vec3<f32> = (vec3<f32>(x_183.y, x_183.y, x_183.y) * vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_189.x, x_190.y, x_189.y, x_189.z);
    let x_193 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_195 : vec3<f32> = vs_TEXCOORD4;
    let x_198 : vec4<f32> = u_xlat5;
    let x_200 : vec3<f32> = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195.x, x_195.x, x_195.x)) + vec3<f32>(x_198.x, x_198.z, x_198.w));
    let x_201 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_200.x, x_201.y, x_200.y, x_200.z);
    let x_204 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_206 : vec3<f32> = vs_TEXCOORD4;
    let x_209 : vec4<f32> = u_xlat5;
    let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.z, x_206.z, x_206.z)) + vec3<f32>(x_209.x, x_209.z, x_209.w));
    let x_212 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_211.x, x_212.y, x_211.y, x_211.z);
    let x_214 : vec4<f32> = u_xlat5;
    let x_217 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_219 : vec3<f32> = (vec3<f32>(x_214.x, x_214.z, x_214.w) + vec3<f32>(x_217.x, x_217.y, x_217.z));
    let x_220 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_219.x, x_220.y, x_219.y, x_219.z);
    let x_222 : bool = u_xlatb29;
    if (x_222) {
      let x_226 : vec4<f32> = u_xlat5;
      x_223 = vec3<f32>(x_226.x, x_226.z, x_226.w);
    } else {
      let x_229 : vec3<f32> = vs_TEXCOORD4;
      x_223 = x_229;
    }
    let x_230 : vec3<f32> = x_223;
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_231.y, x_230.y, x_230.z);
    let x_233 : vec4<f32> = u_xlat5;
    let x_237 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_239 : vec3<f32> = (vec3<f32>(x_233.x, x_233.z, x_233.w) + -(x_237));
    let x_240 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_239.x, x_240.y, x_239.y, x_239.z);
    let x_243 : vec4<f32> = u_xlat5;
    let x_247 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_248 : vec3<f32> = (vec3<f32>(x_243.x, x_243.z, x_243.w) * x_247);
    let x_249 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_249.x, x_248.x, x_248.y, x_248.z);
    let x_252 : f32 = u_xlat8.y;
    u_xlat29 = ((x_252 * 0.25f) + 0.75f);
    let x_259 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_259 * 0.5f) + 0.75f);
    let x_263 : f32 = u_xlat29;
    let x_264 : f32 = u_xlat30;
    u_xlat8.x = max(x_263, x_264);
    let x_275 : vec4<f32> = u_xlat8;
    let x_277 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_275.x, x_275.z, x_275.w));
    u_xlat8 = x_277;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_283 : vec4<f32> = u_xlat8;
  let x_285 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat29 = dot(x_283, x_285);
  let x_287 : f32 = u_xlat29;
  u_xlat29 = clamp(x_287, 0.0f, 1.0f);
  let x_292 : f32 = u_xlat7.z;
  u_xlatb30 = (0.0f < x_292);
  let x_294 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_294);
  let x_296 : vec4<f32> = u_xlat7;
  let x_298 : vec4<f32> = u_xlat7;
  let x_300 : vec2<f32> = (vec2<f32>(x_296.x, x_296.y) / vec2<f32>(x_298.w, x_298.w));
  let x_301 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_300.x, x_301.y, x_300.y, x_301.w);
  let x_303 : vec4<f32> = u_xlat5;
  let x_306 : vec2<f32> = (vec2<f32>(x_303.x, x_303.z) + vec2<f32>(0.5f, 0.5f));
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_306.x, x_307.y, x_306.y, x_307.w);
  let x_314 : vec4<f32> = u_xlat5;
  let x_316 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_314.x, x_314.z));
  u_xlat5.x = x_316.w;
  let x_319 : f32 = u_xlat30;
  let x_321 : f32 = u_xlat5.x;
  u_xlat30 = (x_319 * x_321);
  let x_323 : vec4<f32> = u_xlat7;
  let x_325 : vec4<f32> = u_xlat7;
  u_xlat5.x = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_334 : vec4<f32> = u_xlat5;
  let x_336 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_334.x, x_334.x));
  u_xlat5.x = x_336.x;
  let x_339 : f32 = u_xlat30;
  let x_341 : f32 = u_xlat5.x;
  u_xlat30 = (x_339 * x_341);
  let x_343 : f32 = u_xlat29;
  let x_344 : f32 = u_xlat30;
  u_xlat29 = (x_343 * x_344);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_348 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_347, x_348);
  let x_352 : vec3<f32> = vs_TEXCOORD2;
  let x_353 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_352, x_353);
  let x_357 : vec3<f32> = vs_TEXCOORD3;
  let x_358 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_357, x_358);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_366);
  let x_368 : f32 = u_xlat30;
  let x_370 : vec4<f32> = u_xlat7;
  let x_372 : vec3<f32> = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_372.x, x_373.y, x_372.y, x_372.z);
  let x_375 : f32 = u_xlat29;
  let x_379 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_375, x_375, x_375) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat3;
  let x_385 : vec4<f32> = x_18.x_Color;
  let x_390 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_385.x, x_385.y, x_385.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : f32 = u_xlat28;
  let x_395 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = ((vec3<f32>(x_393, x_393, x_393) * vec3<f32>(x_395.x, x_395.y, x_395.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : f32 = u_xlat28;
  u_xlat28 = ((-(x_403) * 0.959999979f) + 0.959999979f);
  let x_408 : f32 = u_xlat28;
  let x_410 : vec4<f32> = u_xlat4;
  let x_412 : vec3<f32> = (vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat5.y;
  let x_420 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_416) * x_420) + 1.0f);
  let x_423 : vec3<f32> = u_xlat0;
  let x_424 : f32 = u_xlat27;
  let x_427 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_423 * vec3<f32>(x_424, x_424, x_424)) + x_427);
  let x_429 : vec3<f32> = u_xlat0;
  let x_430 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_429, x_430);
  let x_432 : f32 = u_xlat27;
  u_xlat27 = max(x_432, 0.001f);
  let x_435 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat27;
  let x_439 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_437, x_437, x_437) * x_439);
  let x_441 : vec4<f32> = u_xlat5;
  let x_443 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(vec3<f32>(x_441.x, x_441.z, x_441.w), x_443);
  let x_445 : vec4<f32> = u_xlat5;
  let x_447 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_445.x, x_445.z, x_445.w), x_447);
  let x_451 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_451, 0.0f, 1.0f);
  let x_455 : vec4<f32> = u_xlat5;
  let x_457 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(vec3<f32>(x_455.x, x_455.z, x_455.w), x_457);
  let x_459 : f32 = u_xlat11;
  u_xlat11 = clamp(x_459, 0.0f, 1.0f);
  let x_461 : vec3<f32> = u_xlat1;
  let x_462 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_461, x_462);
  let x_466 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_466, 0.0f, 1.0f);
  let x_471 : f32 = u_xlat0.x;
  let x_473 : f32 = u_xlat0.x;
  u_xlat9.x = (x_471 * x_473);
  let x_476 : vec3<f32> = u_xlat9;
  let x_478 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_476.x, x_476.x), vec2<f32>(x_478, x_478));
  let x_483 : f32 = u_xlat9.x;
  u_xlat9.x = (x_483 + -0.5f);
  let x_489 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_489) + 1.0f);
  let x_492 : f32 = u_xlat18;
  let x_493 : f32 = u_xlat18;
  u_xlat1.x = (x_492 * x_493);
  let x_497 : f32 = u_xlat1.x;
  let x_499 : f32 = u_xlat1.x;
  u_xlat1.x = (x_497 * x_499);
  let x_502 : f32 = u_xlat18;
  let x_504 : f32 = u_xlat1.x;
  u_xlat18 = (x_502 * x_504);
  let x_507 : f32 = u_xlat9.x;
  let x_508 : f32 = u_xlat18;
  u_xlat18 = ((x_507 * x_508) + 1.0f);
  let x_511 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_511)) + 1.0f);
  let x_518 : f32 = u_xlat1.x;
  let x_520 : f32 = u_xlat1.x;
  u_xlat10 = (x_518 * x_520);
  let x_522 : f32 = u_xlat10;
  let x_523 : f32 = u_xlat10;
  u_xlat10 = (x_522 * x_523);
  let x_526 : f32 = u_xlat1.x;
  let x_527 : f32 = u_xlat10;
  u_xlat1.x = (x_526 * x_527);
  let x_531 : f32 = u_xlat9.x;
  let x_533 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_531 * x_533) + 1.0f);
  let x_538 : f32 = u_xlat9.x;
  let x_539 : f32 = u_xlat18;
  u_xlat9.x = (x_538 * x_539);
  let x_542 : f32 = u_xlat28;
  let x_543 : f32 = u_xlat28;
  u_xlat18 = (x_542 * x_543);
  let x_545 : f32 = u_xlat18;
  u_xlat18 = max(x_545, 0.002f);
  let x_548 : f32 = u_xlat18;
  u_xlat1.x = (-(x_548) + 1.0f);
  let x_552 : f32 = u_xlat27;
  let x_555 : f32 = u_xlat1.x;
  let x_557 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_552) * x_555) + x_557);
  let x_560 : f32 = u_xlat2.x;
  let x_562 : f32 = u_xlat1.x;
  let x_564 : f32 = u_xlat18;
  u_xlat1.x = ((x_560 * x_562) + x_564);
  let x_567 : f32 = u_xlat27;
  let x_570 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_567) * x_570);
  let x_573 : f32 = u_xlat2.x;
  let x_574 : f32 = u_xlat10;
  let x_576 : f32 = u_xlat27;
  u_xlat27 = ((x_573 * x_574) + x_576);
  let x_578 : f32 = u_xlat27;
  u_xlat27 = (x_578 + 0.00001f);
  let x_581 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_581);
  let x_583 : f32 = u_xlat18;
  let x_584 : f32 = u_xlat18;
  u_xlat18 = (x_583 * x_584);
  let x_586 : f32 = u_xlat11;
  let x_587 : f32 = u_xlat18;
  let x_589 : f32 = u_xlat11;
  u_xlat1.x = ((x_586 * x_587) + -(x_589));
  let x_594 : f32 = u_xlat1.x;
  let x_595 : f32 = u_xlat11;
  u_xlat1.x = ((x_594 * x_595) + 1.0f);
  let x_599 : f32 = u_xlat18;
  u_xlat18 = (x_599 * 0.318309873f);
  let x_603 : f32 = u_xlat1.x;
  let x_605 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_603 * x_605) + 0.0000001f);
  let x_610 : f32 = u_xlat18;
  let x_612 : f32 = u_xlat1.x;
  u_xlat18 = (x_610 / x_612);
  let x_614 : f32 = u_xlat18;
  let x_615 : f32 = u_xlat27;
  u_xlat9.y = (x_614 * x_615);
  let x_618 : vec3<f32> = u_xlat2;
  let x_620 : vec3<f32> = u_xlat9;
  let x_622 : vec2<f32> = (vec2<f32>(x_618.x, x_618.x) * vec2<f32>(x_620.x, x_620.y));
  let x_623 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_622.x, x_622.y, x_623.z);
  let x_626 : f32 = u_xlat9.y;
  u_xlat18 = (x_626 * 3.141592741f);
  let x_629 : f32 = u_xlat18;
  u_xlat18 = max(x_629, 0.0f);
  let x_631 : vec4<f32> = u_xlat3;
  let x_633 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_637 : f32 = u_xlat27;
  u_xlatb27 = !((x_637 == 0.0f));
  let x_639 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_639);
  let x_641 : f32 = u_xlat27;
  let x_642 : f32 = u_xlat18;
  u_xlat18 = (x_641 * x_642);
  let x_644 : vec3<f32> = u_xlat9;
  let x_646 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_644.x, x_644.x, x_644.x) * x_646);
  let x_648 : vec3<f32> = u_xlat6;
  let x_649 : f32 = u_xlat18;
  u_xlat9 = (x_648 * vec3<f32>(x_649, x_649, x_649));
  let x_653 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_653) + 1.0f);
  let x_658 : f32 = u_xlat0.x;
  let x_660 : f32 = u_xlat0.x;
  u_xlat28 = (x_658 * x_660);
  let x_662 : f32 = u_xlat28;
  let x_663 : f32 = u_xlat28;
  u_xlat28 = (x_662 * x_663);
  let x_666 : f32 = u_xlat0.x;
  let x_667 : f32 = u_xlat28;
  u_xlat0.x = (x_666 * x_667);
  let x_670 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_670.x, x_670.y, x_670.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_675 : vec3<f32> = u_xlat2;
  let x_676 : vec3<f32> = u_xlat0;
  let x_679 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_675 * vec3<f32>(x_676.x, x_676.x, x_676.x)) + vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : vec3<f32> = u_xlat9;
  let x_683 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_682 * x_683);
  let x_687 : vec4<f32> = u_xlat4;
  let x_689 : vec3<f32> = u_xlat1;
  let x_691 : vec3<f32> = u_xlat0;
  let x_692 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * x_689) + x_691);
  let x_693 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_696 : f32 = u_xlat4.w;
  SV_Target0.w = x_696;
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

