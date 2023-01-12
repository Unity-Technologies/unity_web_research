struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

var<private> vs_TEXCOORD8 : f32;

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
  let x_343 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat20 = dot(x_340, x_343);
  let x_345 : f32 = u_xlat20;
  u_xlat20 = clamp(x_345, 0.0f, 1.0f);
  let x_348 : vec4<f32> = vs_TEXCOORD7;
  let x_350 : vec4<f32> = vs_TEXCOORD7;
  let x_352 : vec2<f32> = (vec2<f32>(x_348.x, x_348.y) / vec2<f32>(x_350.w, x_350.w));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_360.x, x_360.y));
  u_xlat21 = x_362.x;
  let x_364 : f32 = u_xlat20;
  let x_365 : f32 = u_xlat21;
  u_xlat20 = (x_364 + -(x_365));
  let x_368 : f32 = u_xlat19;
  let x_369 : f32 = u_xlat20;
  let x_371 : f32 = u_xlat21;
  u_xlat19 = ((x_368 * x_369) + x_371);
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_374, x_375);
  let x_379 : vec3<f32> = vs_TEXCOORD2;
  let x_380 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_379, x_380);
  let x_384 : vec3<f32> = vs_TEXCOORD3;
  let x_385 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_384, x_385);
  let x_388 : vec4<f32> = u_xlat5;
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_393);
  let x_395 : f32 = u_xlat20;
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_395, x_395, x_395) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : f32 = u_xlat19;
  let x_404 : vec4<f32> = x_18.x_LightColor0;
  let x_406 : vec3<f32> = (vec3<f32>(x_400, x_400, x_400) * vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat2;
  let x_411 : vec4<f32> = vs_COLOR0;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.x, x_411.y, x_411.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_421 : f32 = x_18.x_Metallic;
  let x_423 : f32 = x_18.x_Metallic;
  let x_425 : f32 = x_18.x_Metallic;
  let x_426 : vec3<f32> = vec3<f32>(x_421, x_423, x_425);
  let x_431 : vec4<f32> = u_xlat2;
  let x_436 : vec3<f32> = ((vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_437 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_440) * 0.959999979f) + 0.959999979f);
  let x_445 : f32 = u_xlat19;
  let x_447 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_445, x_445, x_445) * x_447);
  let x_451 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_451) + 1.0f);
  let x_454 : vec3<f32> = u_xlat0;
  let x_455 : f32 = u_xlat18;
  let x_459 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_454 * vec3<f32>(x_455, x_455, x_455)) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec3<f32> = u_xlat0;
  let x_463 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_462, x_463);
  let x_465 : f32 = u_xlat18;
  u_xlat18 = max(x_465, 0.001f);
  let x_468 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_468);
  let x_470 : f32 = u_xlat18;
  let x_472 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_470, x_470, x_470) * x_472);
  let x_474 : vec3<f32> = u_xlat4;
  let x_475 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_474, x_475);
  let x_477 : vec3<f32> = u_xlat4;
  let x_479 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_477, vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_484 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_484, 0.0f, 1.0f);
  let x_488 : vec3<f32> = u_xlat4;
  let x_489 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_488, x_489);
  let x_491 : f32 = u_xlat7;
  u_xlat7 = clamp(x_491, 0.0f, 1.0f);
  let x_494 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_496 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_494.x, x_494.y, x_494.z), x_496);
  let x_500 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_500, 0.0f, 1.0f);
  let x_505 : f32 = u_xlat0.x;
  let x_507 : f32 = u_xlat0.x;
  u_xlat6.x = (x_505 * x_507);
  let x_510 : vec3<f32> = u_xlat6;
  let x_512 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_510.x, x_510.x), vec2<f32>(x_512, x_512));
  let x_517 : f32 = u_xlat6.x;
  u_xlat6.x = (x_517 + -0.5f);
  let x_523 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_523) + 1.0f);
  let x_527 : f32 = u_xlat12;
  let x_528 : f32 = u_xlat12;
  u_xlat13 = (x_527 * x_528);
  let x_530 : f32 = u_xlat13;
  let x_531 : f32 = u_xlat13;
  u_xlat13 = (x_530 * x_531);
  let x_533 : f32 = u_xlat12;
  let x_534 : f32 = u_xlat13;
  u_xlat12 = (x_533 * x_534);
  let x_537 : f32 = u_xlat6.x;
  let x_538 : f32 = u_xlat12;
  u_xlat12 = ((x_537 * x_538) + 1.0f);
  let x_541 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_541)) + 1.0f);
  let x_545 : f32 = u_xlat13;
  let x_546 : f32 = u_xlat13;
  u_xlat20 = (x_545 * x_546);
  let x_548 : f32 = u_xlat20;
  let x_549 : f32 = u_xlat20;
  u_xlat20 = (x_548 * x_549);
  let x_551 : f32 = u_xlat13;
  let x_552 : f32 = u_xlat20;
  u_xlat13 = (x_551 * x_552);
  let x_555 : f32 = u_xlat6.x;
  let x_556 : f32 = u_xlat13;
  u_xlat6.x = ((x_555 * x_556) + 1.0f);
  let x_561 : f32 = u_xlat6.x;
  let x_562 : f32 = u_xlat12;
  u_xlat6.x = (x_561 * x_562);
  let x_565 : f32 = u_xlat19;
  let x_566 : f32 = u_xlat19;
  u_xlat12 = (x_565 * x_566);
  let x_568 : f32 = u_xlat12;
  u_xlat12 = max(x_568, 0.002f);
  let x_571 : f32 = u_xlat12;
  u_xlat13 = (-(x_571) + 1.0f);
  let x_574 : f32 = u_xlat18;
  let x_576 : f32 = u_xlat13;
  let x_578 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_574) * x_576) + x_578);
  let x_581 : f32 = u_xlat1.x;
  let x_582 : f32 = u_xlat13;
  let x_584 : f32 = u_xlat12;
  u_xlat13 = ((x_581 * x_582) + x_584);
  let x_586 : f32 = u_xlat18;
  let x_588 : f32 = u_xlat13;
  u_xlat18 = (abs(x_586) * x_588);
  let x_591 : f32 = u_xlat1.x;
  let x_592 : f32 = u_xlat19;
  let x_594 : f32 = u_xlat18;
  u_xlat18 = ((x_591 * x_592) + x_594);
  let x_596 : f32 = u_xlat18;
  u_xlat18 = (x_596 + 0.00001f);
  let x_599 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_599);
  let x_601 : f32 = u_xlat12;
  let x_602 : f32 = u_xlat12;
  u_xlat12 = (x_601 * x_602);
  let x_604 : f32 = u_xlat7;
  let x_605 : f32 = u_xlat12;
  let x_607 : f32 = u_xlat7;
  u_xlat13 = ((x_604 * x_605) + -(x_607));
  let x_610 : f32 = u_xlat13;
  let x_611 : f32 = u_xlat7;
  u_xlat7 = ((x_610 * x_611) + 1.0f);
  let x_614 : f32 = u_xlat12;
  u_xlat12 = (x_614 * 0.318309873f);
  let x_617 : f32 = u_xlat7;
  let x_618 : f32 = u_xlat7;
  u_xlat7 = ((x_617 * x_618) + 0.0000001f);
  let x_622 : f32 = u_xlat12;
  let x_623 : f32 = u_xlat7;
  u_xlat12 = (x_622 / x_623);
  let x_625 : f32 = u_xlat12;
  let x_626 : f32 = u_xlat18;
  u_xlat6.y = (x_625 * x_626);
  let x_629 : vec3<f32> = u_xlat1;
  let x_631 : vec3<f32> = u_xlat6;
  let x_633 : vec2<f32> = (vec2<f32>(x_629.x, x_629.x) * vec2<f32>(x_631.x, x_631.y));
  let x_634 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_633.x, x_633.y, x_634.z);
  let x_637 : f32 = u_xlat6.y;
  u_xlat12 = (x_637 * 3.141592741f);
  let x_640 : f32 = u_xlat12;
  u_xlat12 = max(x_640, 0.0f);
  let x_642 : vec4<f32> = u_xlat2;
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_642.x, x_642.y, x_642.z), vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_648 : f32 = u_xlat18;
  u_xlatb18 = !((x_648 == 0.0f));
  let x_650 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_650);
  let x_652 : f32 = u_xlat18;
  let x_653 : f32 = u_xlat12;
  u_xlat12 = (x_652 * x_653);
  let x_655 : vec3<f32> = u_xlat6;
  let x_657 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat5;
  let x_662 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662, x_662, x_662));
  let x_666 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_666) + 1.0f);
  let x_671 : f32 = u_xlat0.x;
  let x_673 : f32 = u_xlat0.x;
  u_xlat19 = (x_671 * x_673);
  let x_675 : f32 = u_xlat19;
  let x_676 : f32 = u_xlat19;
  u_xlat19 = (x_675 * x_676);
  let x_679 : f32 = u_xlat0.x;
  let x_680 : f32 = u_xlat19;
  u_xlat0.x = (x_679 * x_680);
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec3<f32>(x_683.x, x_683.y, x_683.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_688 : vec3<f32> = u_xlat4;
  let x_689 : vec3<f32> = u_xlat0;
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = ((x_688 * vec3<f32>(x_689.x, x_689.x, x_689.x)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec3<f32> = u_xlat6;
  let x_698 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_697 * vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec3<f32> = u_xlat3;
  let x_702 : vec3<f32> = u_xlat1;
  let x_704 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_701 * x_702) + x_704);
  let x_707 : f32 = vs_TEXCOORD8;
  let x_709 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_707 / x_709);
  let x_711 : f32 = u_xlat18;
  u_xlat18 = (-(x_711) + 1.0f);
  let x_714 : f32 = u_xlat18;
  let x_716 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_714 * x_716);
  let x_718 : f32 = u_xlat18;
  u_xlat18 = max(x_718, 0.0f);
  let x_720 : f32 = u_xlat18;
  let x_723 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_720 * x_723);
  let x_725 : f32 = u_xlat18;
  let x_726 : f32 = u_xlat18;
  u_xlat18 = (x_725 * -(x_726));
  let x_729 : f32 = u_xlat18;
  u_xlat18 = exp2(x_729);
  let x_733 : vec3<f32> = u_xlat0;
  let x_734 : f32 = u_xlat18;
  let x_736 : vec3<f32> = (x_733 * vec3<f32>(x_734, x_734, x_734));
  let x_737 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(7) vs_TEXCOORD7_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

