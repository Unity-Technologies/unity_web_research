struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(7) var sampler_Normal : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlatb19 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlatb20 : bool;
  var x_281 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
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
  let x_52 : vec4<f32> = vs_TEXCOORD0;
  let x_54 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_52.x, x_52.y));
  u_xlat2 = x_54;
  let x_55 : vec4<f32> = u_xlat2;
  let x_60 : vec4<f32> = x_18.x_Color;
  let x_62 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_66 : vec4<f32> = u_xlat2;
  let x_69 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : f32 = x_18.x_Time.x;
  let x_81 : f32 = x_18.x_MovementSpeed;
  let x_86 : f32 = vs_TEXCOORD0.z;
  u_xlat4.x = ((x_78 * x_81) + x_86);
  let x_90 : f32 = x_18.x_Time.x;
  let x_93 : f32 = x_18.x_MovementSpeed;
  let x_97 : f32 = vs_TEXCOORD0.w;
  u_xlat4.y = ((-(x_90) * x_93) + x_97);
  let x_106 : vec3<f32> = u_xlat4;
  let x_108 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_106.x, x_106.y));
  u_xlat4 = vec3<f32>(x_108.x, x_108.y, x_108.w);
  let x_111 : f32 = u_xlat4.z;
  let x_113 : f32 = u_xlat4.x;
  u_xlat4.x = (x_111 * x_113);
  let x_116 : vec3<f32> = u_xlat4;
  let x_123 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_124 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_123.x, x_123.y, x_124.z);
  let x_126 : vec3<f32> = u_xlat4;
  let x_130 : f32 = x_18.x_NormalSacle;
  let x_132 : vec2<f32> = (vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_130, x_130));
  let x_133 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_136 : vec3<f32> = u_xlat4;
  let x_138 : vec3<f32> = u_xlat4;
  u_xlat19 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(x_138.x, x_138.y));
  let x_141 : f32 = u_xlat19;
  u_xlat19 = min(x_141, 1.0f);
  let x_144 : f32 = u_xlat19;
  u_xlat19 = (-(x_144) + 1.0f);
  let x_147 : f32 = u_xlat19;
  u_xlat4.z = sqrt(x_147);
  let x_151 : f32 = vs_COLOR0.w;
  u_xlat19 = (-(x_151) + 1.0f);
  let x_155 : f32 = u_xlat2.w;
  let x_157 : f32 = x_18.x_Color.w;
  let x_159 : f32 = u_xlat19;
  u_xlat19 = ((x_155 * x_157) + -(x_159));
  let x_165 : f32 = u_xlat19;
  u_xlatb19 = (x_165 < 0.0f);
  let x_168 : bool = u_xlatb19;
  if (((select(0i, 1i, x_168) * -1i) != 0i)) {
    discard;
  }
  let x_179 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_179;
  let x_182 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_182;
  let x_186 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_186;
  let x_188 : vec3<f32> = u_xlat0;
  let x_189 : vec4<f32> = u_xlat5;
  u_xlat19 = dot(x_188, vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec3<f32> = vs_TEXCOORD4;
  let x_195 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_198 : vec3<f32> = (x_192 + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = u_xlat5;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : f32 = u_xlat20;
  u_xlat20 = sqrt(x_207);
  let x_209 : f32 = u_xlat19;
  let x_211 : f32 = u_xlat20;
  u_xlat20 = (-(x_209) + x_211);
  let x_214 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_215 : f32 = u_xlat20;
  let x_217 : f32 = u_xlat19;
  u_xlat19 = ((x_214 * x_215) + x_217);
  let x_219 : f32 = u_xlat19;
  let x_222 : f32 = x_18.x_LightShadowData.z;
  let x_225 : f32 = x_18.x_LightShadowData.w;
  u_xlat19 = ((x_219 * x_222) + x_225);
  let x_227 : f32 = u_xlat19;
  u_xlat19 = clamp(x_227, 0.0f, 1.0f);
  let x_232 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb20 = (x_232 == 1.0f);
  let x_234 : bool = u_xlatb20;
  if (x_234) {
    let x_238 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb20 = (x_238 == 1.0f);
    let x_240 : vec3<f32> = vs_TEXCOORD4;
    let x_244 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_246 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_244.x, x_244.y, x_244.z));
    let x_247 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_250 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_252 : vec3<f32> = vs_TEXCOORD4;
    let x_255 : vec4<f32> = u_xlat5;
    let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.x, x_252.x, x_252.x)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_261 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_263 : vec3<f32> = vs_TEXCOORD4;
    let x_266 : vec4<f32> = u_xlat5;
    let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.z, x_263.z, x_263.z)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat5;
    let x_275 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : bool = u_xlatb20;
    if (x_280) {
      let x_284 : vec4<f32> = u_xlat5;
      x_281 = vec3<f32>(x_284.x, x_284.y, x_284.z);
    } else {
      let x_287 : vec3<f32> = vs_TEXCOORD4;
      x_281 = x_287;
    }
    let x_288 : vec3<f32> = x_281;
    let x_289 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_291 : vec4<f32> = u_xlat5;
    let x_295 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_297 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.z) + -(x_295));
    let x_298 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
    let x_300 : vec4<f32> = u_xlat5;
    let x_304 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_305 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * x_304);
    let x_306 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_306.x, x_305.x, x_305.y, x_305.z);
    let x_309 : f32 = u_xlat5.y;
    u_xlat20 = ((x_309 * 0.25f) + 0.75f);
    let x_316 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_316 * 0.5f) + 0.75f);
    let x_320 : f32 = u_xlat20;
    let x_321 : f32 = u_xlat21;
    u_xlat5.x = max(x_320, x_321);
    let x_332 : vec4<f32> = u_xlat5;
    let x_334 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_332.x, x_332.z, x_332.w));
    u_xlat5 = x_334;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_340 : vec4<f32> = u_xlat5;
  let x_342 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat20 = dot(x_340, x_342);
  let x_344 : f32 = u_xlat20;
  u_xlat20 = clamp(x_344, 0.0f, 1.0f);
  let x_347 : vec4<f32> = vs_TEXCOORD7;
  let x_349 : vec4<f32> = vs_TEXCOORD7;
  let x_351 : vec2<f32> = (vec2<f32>(x_347.x, x_347.y) / vec2<f32>(x_349.w, x_349.w));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
  let x_359 : vec4<f32> = u_xlat5;
  let x_361 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_359.x, x_359.y));
  u_xlat21 = x_361.x;
  let x_363 : f32 = u_xlat20;
  let x_364 : f32 = u_xlat21;
  u_xlat20 = (x_363 + -(x_364));
  let x_367 : f32 = u_xlat19;
  let x_368 : f32 = u_xlat20;
  let x_370 : f32 = u_xlat21;
  u_xlat19 = ((x_367 * x_368) + x_370);
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_374 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_373, x_374);
  let x_378 : vec3<f32> = vs_TEXCOORD2;
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_378, x_379);
  let x_383 : vec3<f32> = vs_TEXCOORD3;
  let x_384 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_383, x_384);
  let x_387 : vec4<f32> = u_xlat5;
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_392);
  let x_394 : f32 = u_xlat20;
  let x_396 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : f32 = u_xlat19;
  let x_403 : vec4<f32> = x_18.x_LightColor0;
  let x_405 : vec3<f32> = (vec3<f32>(x_399, x_399, x_399) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec4<f32> = vs_COLOR0;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410.x, x_410.y, x_410.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_420 : f32 = x_18.x_Metallic;
  let x_422 : f32 = x_18.x_Metallic;
  let x_424 : f32 = x_18.x_Metallic;
  let x_425 : vec3<f32> = vec3<f32>(x_420, x_422, x_424);
  let x_430 : vec4<f32> = u_xlat2;
  let x_435 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_430.x, x_430.y, x_430.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_436 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_439) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat19;
  let x_446 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_444, x_444, x_444) * x_446);
  let x_450 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_450) + 1.0f);
  let x_453 : vec3<f32> = u_xlat0;
  let x_454 : f32 = u_xlat18;
  let x_458 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_453 * vec3<f32>(x_454, x_454, x_454)) + vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec3<f32> = u_xlat0;
  let x_462 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_461, x_462);
  let x_464 : f32 = u_xlat18;
  u_xlat18 = max(x_464, 0.001f);
  let x_467 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_467);
  let x_469 : f32 = u_xlat18;
  let x_471 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_469, x_469, x_469) * x_471);
  let x_473 : vec3<f32> = u_xlat4;
  let x_474 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_473, x_474);
  let x_476 : vec3<f32> = u_xlat4;
  let x_478 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_476, vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_483 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_483, 0.0f, 1.0f);
  let x_487 : vec3<f32> = u_xlat4;
  let x_488 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_487, x_488);
  let x_490 : f32 = u_xlat7;
  u_xlat7 = clamp(x_490, 0.0f, 1.0f);
  let x_493 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_495 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_493.x, x_493.y, x_493.z), x_495);
  let x_499 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_499, 0.0f, 1.0f);
  let x_504 : f32 = u_xlat0.x;
  let x_506 : f32 = u_xlat0.x;
  u_xlat6.x = (x_504 * x_506);
  let x_509 : vec3<f32> = u_xlat6;
  let x_511 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_509.x, x_509.x), vec2<f32>(x_511, x_511));
  let x_516 : f32 = u_xlat6.x;
  u_xlat6.x = (x_516 + -0.5f);
  let x_522 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_522) + 1.0f);
  let x_526 : f32 = u_xlat12;
  let x_527 : f32 = u_xlat12;
  u_xlat13 = (x_526 * x_527);
  let x_529 : f32 = u_xlat13;
  let x_530 : f32 = u_xlat13;
  u_xlat13 = (x_529 * x_530);
  let x_532 : f32 = u_xlat12;
  let x_533 : f32 = u_xlat13;
  u_xlat12 = (x_532 * x_533);
  let x_536 : f32 = u_xlat6.x;
  let x_537 : f32 = u_xlat12;
  u_xlat12 = ((x_536 * x_537) + 1.0f);
  let x_540 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_540)) + 1.0f);
  let x_544 : f32 = u_xlat13;
  let x_545 : f32 = u_xlat13;
  u_xlat20 = (x_544 * x_545);
  let x_547 : f32 = u_xlat20;
  let x_548 : f32 = u_xlat20;
  u_xlat20 = (x_547 * x_548);
  let x_550 : f32 = u_xlat13;
  let x_551 : f32 = u_xlat20;
  u_xlat13 = (x_550 * x_551);
  let x_554 : f32 = u_xlat6.x;
  let x_555 : f32 = u_xlat13;
  u_xlat6.x = ((x_554 * x_555) + 1.0f);
  let x_560 : f32 = u_xlat6.x;
  let x_561 : f32 = u_xlat12;
  u_xlat6.x = (x_560 * x_561);
  let x_564 : f32 = u_xlat19;
  let x_565 : f32 = u_xlat19;
  u_xlat12 = (x_564 * x_565);
  let x_567 : f32 = u_xlat12;
  u_xlat12 = max(x_567, 0.002f);
  let x_570 : f32 = u_xlat12;
  u_xlat13 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat18;
  let x_575 : f32 = u_xlat13;
  let x_577 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_573) * x_575) + x_577);
  let x_580 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat13;
  let x_583 : f32 = u_xlat12;
  u_xlat13 = ((x_580 * x_581) + x_583);
  let x_585 : f32 = u_xlat18;
  let x_587 : f32 = u_xlat13;
  u_xlat18 = (abs(x_585) * x_587);
  let x_590 : f32 = u_xlat1.x;
  let x_591 : f32 = u_xlat19;
  let x_593 : f32 = u_xlat18;
  u_xlat18 = ((x_590 * x_591) + x_593);
  let x_595 : f32 = u_xlat18;
  u_xlat18 = (x_595 + 0.00001f);
  let x_598 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_598);
  let x_600 : f32 = u_xlat12;
  let x_601 : f32 = u_xlat12;
  u_xlat12 = (x_600 * x_601);
  let x_603 : f32 = u_xlat7;
  let x_604 : f32 = u_xlat12;
  let x_606 : f32 = u_xlat7;
  u_xlat13 = ((x_603 * x_604) + -(x_606));
  let x_609 : f32 = u_xlat13;
  let x_610 : f32 = u_xlat7;
  u_xlat7 = ((x_609 * x_610) + 1.0f);
  let x_613 : f32 = u_xlat12;
  u_xlat12 = (x_613 * 0.318309873f);
  let x_616 : f32 = u_xlat7;
  let x_617 : f32 = u_xlat7;
  u_xlat7 = ((x_616 * x_617) + 0.0000001f);
  let x_621 : f32 = u_xlat12;
  let x_622 : f32 = u_xlat7;
  u_xlat12 = (x_621 / x_622);
  let x_624 : f32 = u_xlat12;
  let x_625 : f32 = u_xlat18;
  u_xlat6.y = (x_624 * x_625);
  let x_628 : vec3<f32> = u_xlat1;
  let x_630 : vec3<f32> = u_xlat6;
  let x_632 : vec2<f32> = (vec2<f32>(x_628.x, x_628.x) * vec2<f32>(x_630.x, x_630.y));
  let x_633 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_632.x, x_632.y, x_633.z);
  let x_636 : f32 = u_xlat6.y;
  u_xlat12 = (x_636 * 3.141592741f);
  let x_639 : f32 = u_xlat12;
  u_xlat12 = max(x_639, 0.0f);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : f32 = u_xlat18;
  u_xlatb18 = !((x_647 == 0.0f));
  let x_649 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_649);
  let x_651 : f32 = u_xlat18;
  let x_652 : f32 = u_xlat12;
  u_xlat12 = (x_651 * x_652);
  let x_654 : vec3<f32> = u_xlat6;
  let x_656 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_654.x, x_654.x, x_654.x) * vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat5;
  let x_661 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_661, x_661, x_661));
  let x_665 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_665) + 1.0f);
  let x_670 : f32 = u_xlat0.x;
  let x_672 : f32 = u_xlat0.x;
  u_xlat19 = (x_670 * x_672);
  let x_674 : f32 = u_xlat19;
  let x_675 : f32 = u_xlat19;
  u_xlat19 = (x_674 * x_675);
  let x_678 : f32 = u_xlat0.x;
  let x_679 : f32 = u_xlat19;
  u_xlat0.x = (x_678 * x_679);
  let x_682 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec3<f32>(x_682.x, x_682.y, x_682.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_687 : vec3<f32> = u_xlat4;
  let x_688 : vec3<f32> = u_xlat0;
  let x_691 : vec4<f32> = u_xlat2;
  let x_693 : vec3<f32> = ((x_687 * vec3<f32>(x_688.x, x_688.x, x_688.x)) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec3<f32> = u_xlat6;
  let x_697 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_696 * vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_702 : vec3<f32> = u_xlat3;
  let x_703 : vec3<f32> = u_xlat1;
  let x_705 : vec3<f32> = u_xlat0;
  let x_706 : vec3<f32> = ((x_702 * x_703) + x_705);
  let x_707 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

