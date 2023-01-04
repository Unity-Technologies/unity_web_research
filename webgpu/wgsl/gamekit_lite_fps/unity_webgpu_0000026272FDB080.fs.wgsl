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

@group(0) @binding(8) var sampler_MainTex : sampler;

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

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb26 : bool;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

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
  let x_505 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_503, x_503));
  u_xlat25 = x_505.x;
  let x_515 : vec3<f32> = u_xlat4;
  let x_516 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_515);
  u_xlat26 = x_516.w;
  let x_518 : f32 = u_xlat25;
  let x_519 : f32 = u_xlat26;
  u_xlat25 = (x_518 * x_519);
  let x_521 : f32 = u_xlat24;
  let x_522 : f32 = u_xlat25;
  u_xlat24 = (x_521 * x_522);
  let x_527 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_527;
  let x_531 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_531;
  let x_534 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_534;
  let x_536 : vec3<f32> = u_xlat4;
  let x_537 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_536, x_537);
  let x_539 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_539);
  let x_541 : f32 = u_xlat25;
  let x_543 : vec3<f32> = u_xlat4;
  let x_544 : vec3<f32> = (vec3<f32>(x_541, x_541, x_541) * x_543);
  let x_545 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : f32 = u_xlat24;
  let x_551 : vec4<f32> = x_33.x_LightColor0;
  let x_553 : vec3<f32> = (vec3<f32>(x_547, x_547, x_547) * vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_558 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_558) + 1.0f);
  let x_561 : vec3<f32> = u_xlat4;
  let x_562 : f32 = u_xlat25;
  let x_565 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_561 * vec3<f32>(x_562, x_562, x_562)) + -(x_565));
  let x_568 : vec3<f32> = u_xlat4;
  let x_569 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_568, x_569);
  let x_571 : f32 = u_xlat25;
  u_xlat25 = max(x_571, 0.001f);
  let x_574 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_574);
  let x_576 : f32 = u_xlat25;
  let x_578 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_576, x_576, x_576) * x_578);
  let x_580 : vec4<f32> = u_xlat2;
  let x_582 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), -(x_582));
  let x_585 : vec4<f32> = u_xlat2;
  let x_587 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_585.x, x_585.y, x_585.z), vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : f32 = u_xlat26;
  u_xlat26 = clamp(x_590, 0.0f, 1.0f);
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_592.x, x_592.y, x_592.z), x_594);
  let x_598 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_598, 0.0f, 1.0f);
  let x_602 : vec4<f32> = u_xlat5;
  let x_604 : vec3<f32> = u_xlat4;
  u_xlat10 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), x_604);
  let x_606 : f32 = u_xlat10;
  u_xlat10 = clamp(x_606, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat10;
  let x_610 : f32 = u_xlat10;
  u_xlat18 = (x_609 * x_610);
  let x_612 : f32 = u_xlat18;
  let x_614 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_612, x_612), vec2<f32>(x_614, x_614));
  let x_617 : f32 = u_xlat18;
  u_xlat18 = (x_617 + -0.5f);
  let x_620 : f32 = u_xlat26;
  u_xlat3.x = (-(x_620) + 1.0f);
  let x_626 : f32 = u_xlat3.x;
  let x_628 : f32 = u_xlat3.x;
  u_xlat11 = (x_626 * x_628);
  let x_630 : f32 = u_xlat11;
  let x_631 : f32 = u_xlat11;
  u_xlat11 = (x_630 * x_631);
  let x_634 : f32 = u_xlat3.x;
  let x_635 : f32 = u_xlat11;
  u_xlat3.x = (x_634 * x_635);
  let x_638 : f32 = u_xlat18;
  let x_640 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_638 * x_640) + 1.0f);
  let x_644 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_644)) + 1.0f);
  let x_649 : f32 = u_xlat11;
  let x_650 : f32 = u_xlat11;
  u_xlat19 = (x_649 * x_650);
  let x_652 : f32 = u_xlat19;
  let x_653 : f32 = u_xlat19;
  u_xlat19 = (x_652 * x_653);
  let x_655 : f32 = u_xlat11;
  let x_656 : f32 = u_xlat19;
  u_xlat11 = (x_655 * x_656);
  let x_658 : f32 = u_xlat18;
  let x_659 : f32 = u_xlat11;
  u_xlat18 = ((x_658 * x_659) + 1.0f);
  let x_662 : f32 = u_xlat18;
  let x_664 : f32 = u_xlat3.x;
  u_xlat18 = (x_662 * x_664);
  let x_666 : f32 = u_xlat26;
  let x_667 : f32 = u_xlat18;
  u_xlat18 = (x_666 * x_667);
  let x_669 : f32 = u_xlat24;
  let x_670 : f32 = u_xlat24;
  u_xlat24 = (x_669 * x_670);
  let x_672 : f32 = u_xlat24;
  u_xlat24 = max(x_672, 0.002f);
  let x_675 : f32 = u_xlat24;
  u_xlat3.x = (-(x_675) + 1.0f);
  let x_679 : f32 = u_xlat25;
  let x_682 : f32 = u_xlat3.x;
  let x_684 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_679) * x_682) + x_684);
  let x_686 : f32 = u_xlat26;
  let x_688 : f32 = u_xlat3.x;
  let x_690 : f32 = u_xlat24;
  u_xlat3.x = ((x_686 * x_688) + x_690);
  let x_693 : f32 = u_xlat25;
  let x_696 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_693) * x_696);
  let x_698 : f32 = u_xlat26;
  let x_699 : f32 = u_xlat11;
  let x_701 : f32 = u_xlat25;
  u_xlat25 = ((x_698 * x_699) + x_701);
  let x_703 : f32 = u_xlat25;
  u_xlat25 = (x_703 + 0.00001f);
  let x_705 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_705);
  let x_707 : f32 = u_xlat24;
  let x_708 : f32 = u_xlat24;
  u_xlat24 = (x_707 * x_708);
  let x_711 : f32 = u_xlat2.x;
  let x_712 : f32 = u_xlat24;
  let x_715 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_711 * x_712) + -(x_715));
  let x_720 : f32 = u_xlat3.x;
  let x_722 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_720 * x_722) + 1.0f);
  let x_726 : f32 = u_xlat24;
  u_xlat24 = (x_726 * 0.318309873f);
  let x_730 : f32 = u_xlat2.x;
  let x_732 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_730 * x_732) + 0.0000001f);
  let x_737 : f32 = u_xlat24;
  let x_739 : f32 = u_xlat2.x;
  u_xlat24 = (x_737 / x_739);
  let x_741 : f32 = u_xlat24;
  let x_742 : f32 = u_xlat25;
  u_xlat24 = (x_741 * x_742);
  let x_744 : f32 = u_xlat26;
  let x_745 : f32 = u_xlat24;
  u_xlat24 = (x_744 * x_745);
  let x_747 : f32 = u_xlat24;
  u_xlat24 = (x_747 * 3.141592741f);
  let x_750 : f32 = u_xlat24;
  u_xlat24 = max(x_750, 0.0f);
  let x_752 : vec3<f32> = u_xlat0;
  let x_753 : vec3<f32> = u_xlat0;
  u_xlat25 = dot(x_752, x_753);
  let x_755 : f32 = u_xlat25;
  u_xlatb25 = !((x_755 == 0.0f));
  let x_757 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_757);
  let x_759 : f32 = u_xlat24;
  let x_760 : f32 = u_xlat25;
  u_xlat24 = (x_759 * x_760);
  let x_762 : f32 = u_xlat18;
  let x_764 : vec4<f32> = u_xlat6;
  let x_766 : vec3<f32> = (vec3<f32>(x_762, x_762, x_762) * vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_766.x, x_767.y, x_766.y, x_766.z);
  let x_769 : vec4<f32> = u_xlat6;
  let x_771 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_769.x, x_769.y, x_769.z) * vec3<f32>(x_771, x_771, x_771));
  let x_774 : f32 = u_xlat10;
  u_xlat24 = (-(x_774) + 1.0f);
  let x_777 : f32 = u_xlat24;
  let x_778 : f32 = u_xlat24;
  u_xlat25 = (x_777 * x_778);
  let x_780 : f32 = u_xlat25;
  let x_781 : f32 = u_xlat25;
  u_xlat25 = (x_780 * x_781);
  let x_783 : f32 = u_xlat24;
  let x_784 : f32 = u_xlat25;
  u_xlat24 = (x_783 * x_784);
  let x_786 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_786) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_790 : vec3<f32> = u_xlat4;
  let x_791 : f32 = u_xlat24;
  let x_794 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_790 * vec3<f32>(x_791, x_791, x_791)) + x_794);
  let x_796 : vec3<f32> = u_xlat0;
  let x_797 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_796 * x_797);
  let x_801 : vec3<f32> = u_xlat1;
  let x_802 : vec4<f32> = u_xlat2;
  let x_805 : vec3<f32> = u_xlat0;
  let x_806 : vec3<f32> = ((x_801 * vec3<f32>(x_802.x, x_802.z, x_802.w)) + x_805);
  let x_807 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
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

