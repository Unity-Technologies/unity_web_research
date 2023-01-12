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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat26 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var x_298 : vec3<f32>;
  var u_xlatb26 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat10 : f32;
  var u_xlat18 : f32;
  var u_xlat11 : f32;
  var u_xlat19 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat24 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat24;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat26 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat26;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : f32 = u_xlat24;
  u_xlat26 = (-(x_130) + 1.0f);
  let x_138 : f32 = u_xlat1.w;
  let x_139 : f32 = u_xlat24;
  let x_141 : f32 = u_xlat26;
  SV_Target0.w = ((x_138 * x_139) + x_141);
  let x_148 : vec3<f32> = vs_TEXCOORD5;
  let x_153 : vec4<f32> = x_32.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_148.y, x_148.y, x_148.y) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_160 : vec3<f32> = vs_TEXCOORD5;
  let x_163 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_169 : vec3<f32> = vs_TEXCOORD5;
  let x_172 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.z, x_169.z, x_169.z)) + x_172);
  let x_174 : vec3<f32> = u_xlat4;
  let x_177 : vec4<f32> = x_32.unity_WorldToLight[3i];
  u_xlat4 = (x_174 + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec3<f32> = vs_TEXCOORD5;
  let x_185 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_186 : vec3<f32> = (-(x_181) + x_185);
  let x_187 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_193 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_193;
  let x_196 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_196;
  let x_200 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_200;
  let x_202 : vec4<f32> = u_xlat5;
  let x_204 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec3<f32> = vs_TEXCOORD5;
  let x_210 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_213 : vec3<f32> = (x_207 + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec4<f32> = u_xlat5;
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_222);
  let x_224 : f32 = u_xlat24;
  let x_226 : f32 = u_xlat25;
  u_xlat25 = (-(x_224) + x_226);
  let x_229 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_230 : f32 = u_xlat25;
  let x_232 : f32 = u_xlat24;
  u_xlat24 = ((x_229 * x_230) + x_232);
  let x_234 : f32 = u_xlat24;
  let x_237 : f32 = x_32.x_LightShadowData.z;
  let x_240 : f32 = x_32.x_LightShadowData.w;
  u_xlat24 = ((x_234 * x_237) + x_240);
  let x_242 : f32 = u_xlat24;
  u_xlat24 = clamp(x_242, 0.0f, 1.0f);
  let x_250 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_250 == 1.0f);
  let x_252 : bool = u_xlatb25;
  if (x_252) {
    let x_256 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_256 == 1.0f);
    let x_258 : vec3<f32> = vs_TEXCOORD5;
    let x_262 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_264 : vec3<f32> = (vec3<f32>(x_258.y, x_258.y, x_258.y) * vec3<f32>(x_262.x, x_262.y, x_262.z));
    let x_265 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_268 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_270 : vec3<f32> = vs_TEXCOORD5;
    let x_273 : vec4<f32> = u_xlat5;
    let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.x, x_270.x, x_270.x)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
    let x_276 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_279 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_281 : vec3<f32> = vs_TEXCOORD5;
    let x_284 : vec4<f32> = u_xlat5;
    let x_286 : vec3<f32> = ((vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_281.z, x_281.z, x_281.z)) + vec3<f32>(x_284.x, x_284.y, x_284.z));
    let x_287 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat5;
    let x_292 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_294 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) + vec3<f32>(x_292.x, x_292.y, x_292.z));
    let x_295 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
    let x_297 : bool = u_xlatb25;
    if (x_297) {
      let x_301 : vec4<f32> = u_xlat5;
      x_298 = vec3<f32>(x_301.x, x_301.y, x_301.z);
    } else {
      let x_304 : vec3<f32> = vs_TEXCOORD5;
      x_298 = x_304;
    }
    let x_305 : vec3<f32> = x_298;
    let x_306 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
    let x_308 : vec4<f32> = u_xlat5;
    let x_312 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_314 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) + -(x_312));
    let x_315 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : vec4<f32> = u_xlat5;
    let x_321 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_322 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) * x_321);
    let x_323 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_323.x, x_322.x, x_322.y, x_322.z);
    let x_326 : f32 = u_xlat5.y;
    u_xlat25 = ((x_326 * 0.25f) + 0.75f);
    let x_332 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_332 * 0.5f) + 0.75f);
    let x_336 : f32 = u_xlat25;
    let x_337 : f32 = u_xlat26;
    u_xlat5.x = max(x_336, x_337);
    let x_348 : vec4<f32> = u_xlat5;
    let x_350 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_348.x, x_348.z, x_348.w));
    u_xlat5 = x_350;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_356 : vec4<f32> = u_xlat5;
  let x_358 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_356, x_358);
  let x_360 : f32 = u_xlat25;
  u_xlat25 = clamp(x_360, 0.0f, 1.0f);
  let x_363 : f32 = u_xlat24;
  u_xlatb26 = (x_363 < 0.99000001f);
  let x_366 : bool = u_xlatb26;
  if (x_366) {
    let x_369 : vec3<f32> = vs_TEXCOORD5;
    let x_371 : vec4<f32> = x_32.x_LightPositionRange;
    let x_374 : vec3<f32> = (x_369 + -(vec3<f32>(x_371.x, x_371.y, x_371.z)));
    let x_375 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
    let x_378 : f32 = u_xlat5.y;
    let x_381 : f32 = u_xlat5.x;
    u_xlat26 = max(abs(x_378), abs(x_381));
    let x_385 : f32 = u_xlat5.z;
    let x_387 : f32 = u_xlat26;
    u_xlat26 = max(abs(x_385), x_387);
    let x_389 : f32 = u_xlat26;
    let x_391 : f32 = x_32.x_LightProjectionParams.z;
    u_xlat26 = (x_389 + -(x_391));
    let x_394 : f32 = u_xlat26;
    u_xlat26 = max(x_394, 0.00001f);
    let x_397 : f32 = u_xlat26;
    let x_399 : f32 = x_32.x_LightProjectionParams.w;
    u_xlat26 = (x_397 * x_399);
    let x_402 : f32 = x_32.x_LightProjectionParams.y;
    let x_403 : f32 = u_xlat26;
    u_xlat26 = (x_402 / x_403);
    let x_405 : f32 = u_xlat26;
    let x_407 : f32 = x_32.x_LightProjectionParams.x;
    u_xlat26 = (x_405 + -(x_407));
    let x_410 : f32 = u_xlat26;
    u_xlat26 = (-(x_410) + 1.0f);
    let x_413 : vec4<f32> = u_xlat5;
    let x_417 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_418 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_421 : vec4<f32> = u_xlat6;
    let x_422 : vec3<f32> = vec3<f32>(x_421.x, x_421.y, x_421.z);
    let x_423 : f32 = u_xlat26;
    txVec0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423);
    let x_436 : vec4<f32> = txVec0;
    let x_438 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_436.xyz, x_436.w);
    u_xlat6.x = x_438;
    let x_441 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_441.x, x_441.y, x_441.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_447 : vec3<f32> = u_xlat7;
    let x_448 : f32 = u_xlat26;
    txVec1 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448);
    let x_456 : vec4<f32> = txVec1;
    let x_458 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_456.xyz, x_456.w);
    u_xlat6.y = x_458;
    let x_460 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_460.x, x_460.y, x_460.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_465 : vec3<f32> = u_xlat7;
    let x_466 : f32 = u_xlat26;
    txVec2 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466);
    let x_474 : vec4<f32> = txVec2;
    let x_476 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_474.xyz, x_474.w);
    u_xlat6.z = x_476;
    let x_478 : vec4<f32> = u_xlat5;
    let x_481 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_482 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
    let x_485 : vec4<f32> = u_xlat5;
    let x_486 : vec3<f32> = vec3<f32>(x_485.x, x_485.y, x_485.z);
    let x_487 : f32 = u_xlat26;
    txVec3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487);
    let x_495 : vec4<f32> = txVec3;
    let x_497 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_495.xyz, x_495.w);
    u_xlat6.w = x_497;
    let x_499 : vec4<f32> = u_xlat6;
    u_xlat26 = dot(x_499, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_504 : f32 = x_32.x_LightShadowData.x;
    u_xlat27 = (-(x_504) + 1.0f);
    let x_507 : f32 = u_xlat26;
    let x_508 : f32 = u_xlat27;
    let x_511 : f32 = x_32.x_LightShadowData.x;
    u_xlat26 = ((x_507 * x_508) + x_511);
  } else {
    u_xlat26 = 1.0f;
  }
  let x_514 : f32 = u_xlat25;
  let x_515 : f32 = u_xlat26;
  u_xlat25 = (x_514 + -(x_515));
  let x_518 : f32 = u_xlat24;
  let x_519 : f32 = u_xlat25;
  let x_521 : f32 = u_xlat26;
  u_xlat24 = ((x_518 * x_519) + x_521);
  let x_523 : vec3<f32> = u_xlat4;
  let x_524 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_523, x_524);
  let x_531 : f32 = u_xlat25;
  let x_533 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_531, x_531));
  u_xlat25 = x_533.x;
  let x_543 : vec3<f32> = u_xlat4;
  let x_544 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_543);
  u_xlat26 = x_544.w;
  let x_546 : f32 = u_xlat25;
  let x_547 : f32 = u_xlat26;
  u_xlat25 = (x_546 * x_547);
  let x_549 : f32 = u_xlat24;
  let x_550 : f32 = u_xlat25;
  u_xlat24 = (x_549 * x_550);
  let x_555 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_555;
  let x_559 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_559;
  let x_562 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_562;
  let x_564 : vec3<f32> = u_xlat4;
  let x_565 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_564, x_565);
  let x_567 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_567);
  let x_569 : f32 = u_xlat25;
  let x_571 : vec3<f32> = u_xlat4;
  let x_572 : vec3<f32> = (vec3<f32>(x_569, x_569, x_569) * x_571);
  let x_573 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : f32 = u_xlat24;
  let x_579 : vec4<f32> = x_32.x_LightColor0;
  let x_581 : vec3<f32> = (vec3<f32>(x_575, x_575, x_575) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_586 : f32 = x_32.x_Glossiness;
  u_xlat24 = (-(x_586) + 1.0f);
  let x_589 : vec3<f32> = u_xlat4;
  let x_590 : f32 = u_xlat25;
  let x_593 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_589 * vec3<f32>(x_590, x_590, x_590)) + -(x_593));
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_596, x_597);
  let x_599 : f32 = u_xlat25;
  u_xlat25 = max(x_599, 0.001f);
  let x_602 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_602);
  let x_604 : f32 = u_xlat25;
  let x_606 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_604, x_604, x_604) * x_606);
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), -(x_610));
  let x_613 : vec4<f32> = u_xlat2;
  let x_615 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : f32 = u_xlat26;
  u_xlat26 = clamp(x_618, 0.0f, 1.0f);
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), x_622);
  let x_626 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_626, 0.0f, 1.0f);
  let x_630 : vec4<f32> = u_xlat5;
  let x_632 : vec3<f32> = u_xlat4;
  u_xlat10 = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), x_632);
  let x_634 : f32 = u_xlat10;
  u_xlat10 = clamp(x_634, 0.0f, 1.0f);
  let x_637 : f32 = u_xlat10;
  let x_638 : f32 = u_xlat10;
  u_xlat18 = (x_637 * x_638);
  let x_640 : f32 = u_xlat18;
  let x_642 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_640, x_640), vec2<f32>(x_642, x_642));
  let x_645 : f32 = u_xlat18;
  u_xlat18 = (x_645 + -0.5f);
  let x_648 : f32 = u_xlat26;
  u_xlat3.x = (-(x_648) + 1.0f);
  let x_654 : f32 = u_xlat3.x;
  let x_656 : f32 = u_xlat3.x;
  u_xlat11 = (x_654 * x_656);
  let x_658 : f32 = u_xlat11;
  let x_659 : f32 = u_xlat11;
  u_xlat11 = (x_658 * x_659);
  let x_662 : f32 = u_xlat3.x;
  let x_663 : f32 = u_xlat11;
  u_xlat3.x = (x_662 * x_663);
  let x_666 : f32 = u_xlat18;
  let x_668 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_666 * x_668) + 1.0f);
  let x_672 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_672)) + 1.0f);
  let x_677 : f32 = u_xlat11;
  let x_678 : f32 = u_xlat11;
  u_xlat19 = (x_677 * x_678);
  let x_680 : f32 = u_xlat19;
  let x_681 : f32 = u_xlat19;
  u_xlat19 = (x_680 * x_681);
  let x_683 : f32 = u_xlat11;
  let x_684 : f32 = u_xlat19;
  u_xlat11 = (x_683 * x_684);
  let x_686 : f32 = u_xlat18;
  let x_687 : f32 = u_xlat11;
  u_xlat18 = ((x_686 * x_687) + 1.0f);
  let x_690 : f32 = u_xlat18;
  let x_692 : f32 = u_xlat3.x;
  u_xlat18 = (x_690 * x_692);
  let x_694 : f32 = u_xlat26;
  let x_695 : f32 = u_xlat18;
  u_xlat18 = (x_694 * x_695);
  let x_697 : f32 = u_xlat24;
  let x_698 : f32 = u_xlat24;
  u_xlat24 = (x_697 * x_698);
  let x_700 : f32 = u_xlat24;
  u_xlat24 = max(x_700, 0.002f);
  let x_703 : f32 = u_xlat24;
  u_xlat3.x = (-(x_703) + 1.0f);
  let x_707 : f32 = u_xlat25;
  let x_710 : f32 = u_xlat3.x;
  let x_712 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_707) * x_710) + x_712);
  let x_714 : f32 = u_xlat26;
  let x_716 : f32 = u_xlat3.x;
  let x_718 : f32 = u_xlat24;
  u_xlat3.x = ((x_714 * x_716) + x_718);
  let x_721 : f32 = u_xlat25;
  let x_724 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_721) * x_724);
  let x_726 : f32 = u_xlat26;
  let x_727 : f32 = u_xlat11;
  let x_729 : f32 = u_xlat25;
  u_xlat25 = ((x_726 * x_727) + x_729);
  let x_731 : f32 = u_xlat25;
  u_xlat25 = (x_731 + 0.00001f);
  let x_733 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_733);
  let x_735 : f32 = u_xlat24;
  let x_736 : f32 = u_xlat24;
  u_xlat24 = (x_735 * x_736);
  let x_739 : f32 = u_xlat2.x;
  let x_740 : f32 = u_xlat24;
  let x_743 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_739 * x_740) + -(x_743));
  let x_748 : f32 = u_xlat3.x;
  let x_750 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_748 * x_750) + 1.0f);
  let x_754 : f32 = u_xlat24;
  u_xlat24 = (x_754 * 0.318309873f);
  let x_758 : f32 = u_xlat2.x;
  let x_760 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_758 * x_760) + 0.0000001f);
  let x_765 : f32 = u_xlat24;
  let x_767 : f32 = u_xlat2.x;
  u_xlat24 = (x_765 / x_767);
  let x_769 : f32 = u_xlat24;
  let x_770 : f32 = u_xlat25;
  u_xlat24 = (x_769 * x_770);
  let x_772 : f32 = u_xlat26;
  let x_773 : f32 = u_xlat24;
  u_xlat24 = (x_772 * x_773);
  let x_775 : f32 = u_xlat24;
  u_xlat24 = (x_775 * 3.141592741f);
  let x_778 : f32 = u_xlat24;
  u_xlat24 = max(x_778, 0.0f);
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec4<f32> = u_xlat0;
  u_xlat25 = dot(vec3<f32>(x_780.x, x_780.y, x_780.z), vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : f32 = u_xlat25;
  u_xlatb25 = !((x_785 == 0.0f));
  let x_787 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_787);
  let x_789 : f32 = u_xlat24;
  let x_790 : f32 = u_xlat25;
  u_xlat24 = (x_789 * x_790);
  let x_792 : f32 = u_xlat18;
  let x_794 : vec4<f32> = u_xlat6;
  let x_796 : vec3<f32> = (vec3<f32>(x_792, x_792, x_792) * vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_797 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_796.x, x_797.y, x_796.y, x_796.z);
  let x_799 : vec4<f32> = u_xlat6;
  let x_801 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801, x_801, x_801));
  let x_804 : f32 = u_xlat10;
  u_xlat24 = (-(x_804) + 1.0f);
  let x_807 : f32 = u_xlat24;
  let x_808 : f32 = u_xlat24;
  u_xlat25 = (x_807 * x_808);
  let x_810 : f32 = u_xlat25;
  let x_811 : f32 = u_xlat25;
  u_xlat25 = (x_810 * x_811);
  let x_813 : f32 = u_xlat24;
  let x_814 : f32 = u_xlat25;
  u_xlat24 = (x_813 * x_814);
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_816.x, x_816.y, x_816.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_821 : vec3<f32> = u_xlat4;
  let x_822 : f32 = u_xlat24;
  let x_825 : vec4<f32> = u_xlat0;
  let x_827 : vec3<f32> = ((x_821 * vec3<f32>(x_822, x_822, x_822)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat0;
  let x_832 : vec3<f32> = u_xlat3;
  let x_833 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * x_832);
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec4<f32> = u_xlat2;
  let x_841 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = ((vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(x_838.x, x_838.z, x_838.w)) + vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
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

