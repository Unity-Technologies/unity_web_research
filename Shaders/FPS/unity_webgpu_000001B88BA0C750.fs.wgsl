struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat24 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlat26 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb26 : bool;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat10 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlat19 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_268 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat24 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat24;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat24 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat24;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat24 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat24;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_113.y, x_113.y, x_113.y) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_123 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.x, x_125.x, x_125.x)) + x_128);
  let x_132 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_134 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.z, x_134.z, x_134.z)) + x_137);
  let x_139 : vec3<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_139 + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : vec3<f32> = vs_TEXCOORD5;
  let x_150 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_151 : vec3<f32> = (-(x_146) + x_150);
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_159 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_159;
  let x_163 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_163;
  let x_167 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_167;
  let x_169 : vec4<f32> = u_xlat5;
  let x_171 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec3<f32> = vs_TEXCOORD5;
  let x_177 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_180 : vec3<f32> = (x_174 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = u_xlat5;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_189);
  let x_191 : f32 = u_xlat24;
  let x_193 : f32 = u_xlat25;
  u_xlat25 = (-(x_191) + x_193);
  let x_197 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_198 : f32 = u_xlat25;
  let x_200 : f32 = u_xlat24;
  u_xlat24 = ((x_197 * x_198) + x_200);
  let x_202 : f32 = u_xlat24;
  let x_205 : f32 = x_33.x_LightShadowData.z;
  let x_208 : f32 = x_33.x_LightShadowData.w;
  u_xlat24 = ((x_202 * x_205) + x_208);
  let x_210 : f32 = u_xlat24;
  u_xlat24 = clamp(x_210, 0.0f, 1.0f);
  let x_219 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_219 == 1.0f);
  let x_221 : bool = u_xlatb25;
  if (x_221) {
    let x_225 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_225 == 1.0f);
    let x_227 : vec3<f32> = vs_TEXCOORD5;
    let x_231 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_233 : vec3<f32> = (vec3<f32>(x_227.y, x_227.y, x_227.y) * vec3<f32>(x_231.x, x_231.y, x_231.z));
    let x_234 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_237 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_239 : vec3<f32> = vs_TEXCOORD5;
    let x_242 : vec4<f32> = u_xlat5;
    let x_244 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.x, x_239.x, x_239.x)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_250 : vec3<f32> = vs_TEXCOORD5;
    let x_253 : vec4<f32> = u_xlat5;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_258 : vec4<f32> = u_xlat5;
    let x_261 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_263 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(x_261.x, x_261.y, x_261.z));
    let x_264 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_266 : bool = u_xlatb25;
    if (x_266) {
      let x_271 : vec4<f32> = u_xlat5;
      x_268 = vec3<f32>(x_271.x, x_271.y, x_271.z);
    } else {
      let x_274 : vec3<f32> = vs_TEXCOORD5;
      x_268 = x_274;
    }
    let x_275 : vec3<f32> = x_268;
    let x_276 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : vec4<f32> = u_xlat5;
    let x_282 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_284 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + -(x_282));
    let x_285 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat5;
    let x_291 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_292 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) * x_291);
    let x_293 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_293.x, x_292.x, x_292.y, x_292.z);
    let x_296 : f32 = u_xlat5.y;
    u_xlat25 = ((x_296 * 0.25f) + 0.75f);
    let x_303 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_303 * 0.5f) + 0.75f);
    let x_307 : f32 = u_xlat25;
    let x_308 : f32 = u_xlat26;
    u_xlat5.x = max(x_307, x_308);
    let x_319 : vec4<f32> = u_xlat5;
    let x_321 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_319.x, x_319.z, x_319.w));
    u_xlat5 = x_321;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_327, x_329);
  let x_331 : f32 = u_xlat25;
  u_xlat25 = clamp(x_331, 0.0f, 1.0f);
  let x_334 : f32 = u_xlat24;
  u_xlatb26 = (x_334 < 0.99000001f);
  let x_337 : bool = u_xlatb26;
  if (x_337) {
    let x_340 : vec3<f32> = vs_TEXCOORD5;
    let x_342 : vec4<f32> = x_33.x_LightPositionRange;
    let x_345 : vec3<f32> = (x_340 + -(vec3<f32>(x_342.x, x_342.y, x_342.z)));
    let x_346 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_349 : f32 = u_xlat5.y;
    let x_352 : f32 = u_xlat5.x;
    u_xlat26 = max(abs(x_349), abs(x_352));
    let x_356 : f32 = u_xlat5.z;
    let x_358 : f32 = u_xlat26;
    u_xlat26 = max(abs(x_356), x_358);
    let x_360 : f32 = u_xlat26;
    let x_362 : f32 = x_33.x_LightProjectionParams.z;
    u_xlat26 = (x_360 + -(x_362));
    let x_365 : f32 = u_xlat26;
    u_xlat26 = max(x_365, 0.00001f);
    let x_368 : f32 = u_xlat26;
    let x_370 : f32 = x_33.x_LightProjectionParams.w;
    u_xlat26 = (x_368 * x_370);
    let x_373 : f32 = x_33.x_LightProjectionParams.y;
    let x_374 : f32 = u_xlat26;
    u_xlat26 = (x_373 / x_374);
    let x_376 : f32 = u_xlat26;
    let x_378 : f32 = x_33.x_LightProjectionParams.x;
    u_xlat26 = (x_376 + -(x_378));
    let x_381 : f32 = u_xlat26;
    u_xlat26 = (-(x_381) + 1.0f);
    let x_384 : vec4<f32> = u_xlat5;
    let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_389 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_393 : vec4<f32> = u_xlat6;
    let x_394 : vec3<f32> = vec3<f32>(x_393.x, x_393.y, x_393.z);
    let x_395 : f32 = u_xlat26;
    txVec0 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395);
    let x_408 : vec4<f32> = txVec0;
    let x_410 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_408.xyz, x_408.w);
    u_xlat6.x = x_410;
    let x_413 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_413.x, x_413.y, x_413.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_419 : vec3<f32> = u_xlat7;
    let x_420 : f32 = u_xlat26;
    txVec1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420);
    let x_428 : vec4<f32> = txVec1;
    let x_430 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_428.xyz, x_428.w);
    u_xlat6.y = x_430;
    let x_432 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_432.x, x_432.y, x_432.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_437 : vec3<f32> = u_xlat7;
    let x_438 : f32 = u_xlat26;
    txVec2 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438);
    let x_446 : vec4<f32> = txVec2;
    let x_448 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_446.xyz, x_446.w);
    u_xlat6.z = x_448;
    let x_450 : vec4<f32> = u_xlat5;
    let x_453 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_454 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
    let x_457 : vec4<f32> = u_xlat5;
    let x_458 : vec3<f32> = vec3<f32>(x_457.x, x_457.y, x_457.z);
    let x_459 : f32 = u_xlat26;
    txVec3 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459);
    let x_467 : vec4<f32> = txVec3;
    let x_469 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_467.xyz, x_467.w);
    u_xlat6.w = x_469;
    let x_471 : vec4<f32> = u_xlat6;
    u_xlat26 = dot(x_471, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_476 : f32 = x_33.x_LightShadowData.x;
    u_xlat27 = (-(x_476) + 1.0f);
    let x_479 : f32 = u_xlat26;
    let x_480 : f32 = u_xlat27;
    let x_483 : f32 = x_33.x_LightShadowData.x;
    u_xlat26 = ((x_479 * x_480) + x_483);
  } else {
    u_xlat26 = 1.0f;
  }
  let x_486 : f32 = u_xlat25;
  let x_487 : f32 = u_xlat26;
  u_xlat25 = (x_486 + -(x_487));
  let x_490 : f32 = u_xlat24;
  let x_491 : f32 = u_xlat25;
  let x_493 : f32 = u_xlat26;
  u_xlat24 = ((x_490 * x_491) + x_493);
  let x_495 : vec3<f32> = u_xlat4;
  let x_496 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_495, x_496);
  let x_503 : f32 = u_xlat25;
  let x_505 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_503, x_503));
  u_xlat25 = x_505.x;
  let x_507 : f32 = u_xlat24;
  let x_508 : f32 = u_xlat25;
  u_xlat24 = (x_507 * x_508);
  let x_513 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_513;
  let x_517 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_517;
  let x_520 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_520;
  let x_522 : vec3<f32> = u_xlat4;
  let x_523 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_522, x_523);
  let x_525 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_525);
  let x_527 : f32 = u_xlat25;
  let x_529 : vec3<f32> = u_xlat4;
  let x_530 : vec3<f32> = (vec3<f32>(x_527, x_527, x_527) * x_529);
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : f32 = u_xlat24;
  let x_537 : vec4<f32> = x_33.x_LightColor0;
  let x_539 : vec3<f32> = (vec3<f32>(x_533, x_533, x_533) * vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_544 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_544) + 1.0f);
  let x_547 : vec3<f32> = u_xlat4;
  let x_548 : f32 = u_xlat25;
  let x_551 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_547 * vec3<f32>(x_548, x_548, x_548)) + -(x_551));
  let x_554 : vec3<f32> = u_xlat4;
  let x_555 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_554, x_555);
  let x_557 : f32 = u_xlat25;
  u_xlat25 = max(x_557, 0.001f);
  let x_560 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_560);
  let x_562 : f32 = u_xlat25;
  let x_564 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_562, x_562, x_562) * x_564);
  let x_566 : vec4<f32> = u_xlat2;
  let x_568 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_566.x, x_566.y, x_566.z), -(x_568));
  let x_571 : vec4<f32> = u_xlat2;
  let x_573 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_571.x, x_571.y, x_571.z), vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : f32 = u_xlat26;
  u_xlat26 = clamp(x_576, 0.0f, 1.0f);
  let x_578 : vec4<f32> = u_xlat2;
  let x_580 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), x_580);
  let x_584 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_584, 0.0f, 1.0f);
  let x_588 : vec4<f32> = u_xlat5;
  let x_590 : vec3<f32> = u_xlat4;
  u_xlat10 = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), x_590);
  let x_592 : f32 = u_xlat10;
  u_xlat10 = clamp(x_592, 0.0f, 1.0f);
  let x_595 : f32 = u_xlat10;
  let x_596 : f32 = u_xlat10;
  u_xlat18 = (x_595 * x_596);
  let x_598 : f32 = u_xlat18;
  let x_600 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_598, x_598), vec2<f32>(x_600, x_600));
  let x_603 : f32 = u_xlat18;
  u_xlat18 = (x_603 + -0.5f);
  let x_606 : f32 = u_xlat26;
  u_xlat3.x = (-(x_606) + 1.0f);
  let x_612 : f32 = u_xlat3.x;
  let x_614 : f32 = u_xlat3.x;
  u_xlat11 = (x_612 * x_614);
  let x_616 : f32 = u_xlat11;
  let x_617 : f32 = u_xlat11;
  u_xlat11 = (x_616 * x_617);
  let x_620 : f32 = u_xlat3.x;
  let x_621 : f32 = u_xlat11;
  u_xlat3.x = (x_620 * x_621);
  let x_624 : f32 = u_xlat18;
  let x_626 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_624 * x_626) + 1.0f);
  let x_630 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_630)) + 1.0f);
  let x_635 : f32 = u_xlat11;
  let x_636 : f32 = u_xlat11;
  u_xlat19 = (x_635 * x_636);
  let x_638 : f32 = u_xlat19;
  let x_639 : f32 = u_xlat19;
  u_xlat19 = (x_638 * x_639);
  let x_641 : f32 = u_xlat11;
  let x_642 : f32 = u_xlat19;
  u_xlat11 = (x_641 * x_642);
  let x_644 : f32 = u_xlat18;
  let x_645 : f32 = u_xlat11;
  u_xlat18 = ((x_644 * x_645) + 1.0f);
  let x_648 : f32 = u_xlat18;
  let x_650 : f32 = u_xlat3.x;
  u_xlat18 = (x_648 * x_650);
  let x_652 : f32 = u_xlat26;
  let x_653 : f32 = u_xlat18;
  u_xlat18 = (x_652 * x_653);
  let x_655 : f32 = u_xlat24;
  let x_656 : f32 = u_xlat24;
  u_xlat24 = (x_655 * x_656);
  let x_658 : f32 = u_xlat24;
  u_xlat24 = max(x_658, 0.002f);
  let x_661 : f32 = u_xlat24;
  u_xlat3.x = (-(x_661) + 1.0f);
  let x_665 : f32 = u_xlat25;
  let x_668 : f32 = u_xlat3.x;
  let x_670 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_665) * x_668) + x_670);
  let x_672 : f32 = u_xlat26;
  let x_674 : f32 = u_xlat3.x;
  let x_676 : f32 = u_xlat24;
  u_xlat3.x = ((x_672 * x_674) + x_676);
  let x_679 : f32 = u_xlat25;
  let x_682 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_679) * x_682);
  let x_684 : f32 = u_xlat26;
  let x_685 : f32 = u_xlat11;
  let x_687 : f32 = u_xlat25;
  u_xlat25 = ((x_684 * x_685) + x_687);
  let x_689 : f32 = u_xlat25;
  u_xlat25 = (x_689 + 0.00001f);
  let x_691 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_691);
  let x_693 : f32 = u_xlat24;
  let x_694 : f32 = u_xlat24;
  u_xlat24 = (x_693 * x_694);
  let x_697 : f32 = u_xlat2.x;
  let x_698 : f32 = u_xlat24;
  let x_701 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_697 * x_698) + -(x_701));
  let x_706 : f32 = u_xlat3.x;
  let x_708 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_706 * x_708) + 1.0f);
  let x_712 : f32 = u_xlat24;
  u_xlat24 = (x_712 * 0.318309873f);
  let x_716 : f32 = u_xlat2.x;
  let x_718 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_716 * x_718) + 0.0000001f);
  let x_723 : f32 = u_xlat24;
  let x_725 : f32 = u_xlat2.x;
  u_xlat24 = (x_723 / x_725);
  let x_727 : f32 = u_xlat24;
  let x_728 : f32 = u_xlat25;
  u_xlat24 = (x_727 * x_728);
  let x_730 : f32 = u_xlat26;
  let x_731 : f32 = u_xlat24;
  u_xlat24 = (x_730 * x_731);
  let x_733 : f32 = u_xlat24;
  u_xlat24 = (x_733 * 3.141592741f);
  let x_736 : f32 = u_xlat24;
  u_xlat24 = max(x_736, 0.0f);
  let x_738 : vec3<f32> = u_xlat0;
  let x_739 : vec3<f32> = u_xlat0;
  u_xlat25 = dot(x_738, x_739);
  let x_741 : f32 = u_xlat25;
  u_xlatb25 = !((x_741 == 0.0f));
  let x_743 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_743);
  let x_745 : f32 = u_xlat24;
  let x_746 : f32 = u_xlat25;
  u_xlat24 = (x_745 * x_746);
  let x_748 : f32 = u_xlat18;
  let x_750 : vec4<f32> = u_xlat6;
  let x_752 : vec3<f32> = (vec3<f32>(x_748, x_748, x_748) * vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_752.x, x_753.y, x_752.y, x_752.z);
  let x_755 : vec4<f32> = u_xlat6;
  let x_757 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757, x_757, x_757));
  let x_760 : f32 = u_xlat10;
  u_xlat24 = (-(x_760) + 1.0f);
  let x_763 : f32 = u_xlat24;
  let x_764 : f32 = u_xlat24;
  u_xlat25 = (x_763 * x_764);
  let x_766 : f32 = u_xlat25;
  let x_767 : f32 = u_xlat25;
  u_xlat25 = (x_766 * x_767);
  let x_769 : f32 = u_xlat24;
  let x_770 : f32 = u_xlat25;
  u_xlat24 = (x_769 * x_770);
  let x_772 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_772) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_776 : vec3<f32> = u_xlat4;
  let x_777 : f32 = u_xlat24;
  let x_780 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_776 * vec3<f32>(x_777, x_777, x_777)) + x_780);
  let x_782 : vec3<f32> = u_xlat0;
  let x_783 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_782 * x_783);
  let x_787 : vec3<f32> = u_xlat1;
  let x_788 : vec4<f32> = u_xlat2;
  let x_791 : vec3<f32> = u_xlat0;
  let x_792 : vec3<f32> = ((x_787 * vec3<f32>(x_788.x, x_788.z, x_788.w)) + x_791);
  let x_793 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

