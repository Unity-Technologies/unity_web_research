struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
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
  let x_359 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_356, x_359);
  let x_361 : f32 = u_xlat25;
  u_xlat25 = clamp(x_361, 0.0f, 1.0f);
  let x_364 : f32 = u_xlat24;
  u_xlatb26 = (x_364 < 0.99000001f);
  let x_367 : bool = u_xlatb26;
  if (x_367) {
    let x_370 : vec3<f32> = vs_TEXCOORD5;
    let x_372 : vec4<f32> = x_32.x_LightPositionRange;
    let x_375 : vec3<f32> = (x_370 + -(vec3<f32>(x_372.x, x_372.y, x_372.z)));
    let x_376 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_379 : f32 = u_xlat5.y;
    let x_382 : f32 = u_xlat5.x;
    u_xlat26 = max(abs(x_379), abs(x_382));
    let x_386 : f32 = u_xlat5.z;
    let x_388 : f32 = u_xlat26;
    u_xlat26 = max(abs(x_386), x_388);
    let x_390 : f32 = u_xlat26;
    let x_392 : f32 = x_32.x_LightProjectionParams.z;
    u_xlat26 = (x_390 + -(x_392));
    let x_395 : f32 = u_xlat26;
    u_xlat26 = max(x_395, 0.00001f);
    let x_398 : f32 = u_xlat26;
    let x_400 : f32 = x_32.x_LightProjectionParams.w;
    u_xlat26 = (x_398 * x_400);
    let x_403 : f32 = x_32.x_LightProjectionParams.y;
    let x_404 : f32 = u_xlat26;
    u_xlat26 = (x_403 / x_404);
    let x_406 : f32 = u_xlat26;
    let x_408 : f32 = x_32.x_LightProjectionParams.x;
    u_xlat26 = (x_406 + -(x_408));
    let x_411 : f32 = u_xlat26;
    u_xlat26 = (-(x_411) + 1.0f);
    let x_414 : vec4<f32> = u_xlat5;
    let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_419 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_422 : vec4<f32> = u_xlat6;
    let x_423 : vec3<f32> = vec3<f32>(x_422.x, x_422.y, x_422.z);
    let x_424 : f32 = u_xlat26;
    txVec0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424);
    let x_437 : vec4<f32> = txVec0;
    let x_439 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_437.xyz, x_437.w);
    u_xlat6.x = x_439;
    let x_442 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_442.x, x_442.y, x_442.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_448 : vec3<f32> = u_xlat7;
    let x_449 : f32 = u_xlat26;
    txVec1 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449);
    let x_457 : vec4<f32> = txVec1;
    let x_459 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_457.xyz, x_457.w);
    u_xlat6.y = x_459;
    let x_461 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_461.x, x_461.y, x_461.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_466 : vec3<f32> = u_xlat7;
    let x_467 : f32 = u_xlat26;
    txVec2 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467);
    let x_475 : vec4<f32> = txVec2;
    let x_477 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_475.xyz, x_475.w);
    u_xlat6.z = x_477;
    let x_479 : vec4<f32> = u_xlat5;
    let x_482 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_483 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
    let x_486 : vec4<f32> = u_xlat5;
    let x_487 : vec3<f32> = vec3<f32>(x_486.x, x_486.y, x_486.z);
    let x_488 : f32 = u_xlat26;
    txVec3 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488);
    let x_496 : vec4<f32> = txVec3;
    let x_498 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_496.xyz, x_496.w);
    u_xlat6.w = x_498;
    let x_500 : vec4<f32> = u_xlat6;
    u_xlat26 = dot(x_500, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_505 : f32 = x_32.x_LightShadowData.x;
    u_xlat27 = (-(x_505) + 1.0f);
    let x_508 : f32 = u_xlat26;
    let x_509 : f32 = u_xlat27;
    let x_512 : f32 = x_32.x_LightShadowData.x;
    u_xlat26 = ((x_508 * x_509) + x_512);
  } else {
    u_xlat26 = 1.0f;
  }
  let x_515 : f32 = u_xlat25;
  let x_516 : f32 = u_xlat26;
  u_xlat25 = (x_515 + -(x_516));
  let x_519 : f32 = u_xlat24;
  let x_520 : f32 = u_xlat25;
  let x_522 : f32 = u_xlat26;
  u_xlat24 = ((x_519 * x_520) + x_522);
  let x_524 : vec3<f32> = u_xlat4;
  let x_525 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_524, x_525);
  let x_532 : f32 = u_xlat25;
  let x_534 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_532, x_532));
  u_xlat25 = x_534.x;
  let x_544 : vec3<f32> = u_xlat4;
  let x_545 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_544);
  u_xlat26 = x_545.w;
  let x_547 : f32 = u_xlat25;
  let x_548 : f32 = u_xlat26;
  u_xlat25 = (x_547 * x_548);
  let x_550 : f32 = u_xlat24;
  let x_551 : f32 = u_xlat25;
  u_xlat24 = (x_550 * x_551);
  let x_556 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_556;
  let x_560 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_560;
  let x_563 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_563;
  let x_565 : vec3<f32> = u_xlat4;
  let x_566 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_565, x_566);
  let x_568 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_568);
  let x_570 : f32 = u_xlat25;
  let x_572 : vec3<f32> = u_xlat4;
  let x_573 : vec3<f32> = (vec3<f32>(x_570, x_570, x_570) * x_572);
  let x_574 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_576 : f32 = u_xlat24;
  let x_580 : vec4<f32> = x_32.x_LightColor0;
  let x_582 : vec3<f32> = (vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_587 : f32 = x_32.x_Glossiness;
  u_xlat24 = (-(x_587) + 1.0f);
  let x_590 : vec3<f32> = u_xlat4;
  let x_591 : f32 = u_xlat25;
  let x_594 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_590 * vec3<f32>(x_591, x_591, x_591)) + -(x_594));
  let x_597 : vec3<f32> = u_xlat4;
  let x_598 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_597, x_598);
  let x_600 : f32 = u_xlat25;
  u_xlat25 = max(x_600, 0.001f);
  let x_603 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_603);
  let x_605 : f32 = u_xlat25;
  let x_607 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_605, x_605, x_605) * x_607);
  let x_609 : vec4<f32> = u_xlat2;
  let x_611 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_609.x, x_609.y, x_609.z), -(x_611));
  let x_614 : vec4<f32> = u_xlat2;
  let x_616 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : f32 = u_xlat26;
  u_xlat26 = clamp(x_619, 0.0f, 1.0f);
  let x_621 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), x_623);
  let x_627 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_627, 0.0f, 1.0f);
  let x_631 : vec4<f32> = u_xlat5;
  let x_633 : vec3<f32> = u_xlat4;
  u_xlat10 = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), x_633);
  let x_635 : f32 = u_xlat10;
  u_xlat10 = clamp(x_635, 0.0f, 1.0f);
  let x_638 : f32 = u_xlat10;
  let x_639 : f32 = u_xlat10;
  u_xlat18 = (x_638 * x_639);
  let x_641 : f32 = u_xlat18;
  let x_643 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_641, x_641), vec2<f32>(x_643, x_643));
  let x_646 : f32 = u_xlat18;
  u_xlat18 = (x_646 + -0.5f);
  let x_649 : f32 = u_xlat26;
  u_xlat3.x = (-(x_649) + 1.0f);
  let x_655 : f32 = u_xlat3.x;
  let x_657 : f32 = u_xlat3.x;
  u_xlat11 = (x_655 * x_657);
  let x_659 : f32 = u_xlat11;
  let x_660 : f32 = u_xlat11;
  u_xlat11 = (x_659 * x_660);
  let x_663 : f32 = u_xlat3.x;
  let x_664 : f32 = u_xlat11;
  u_xlat3.x = (x_663 * x_664);
  let x_667 : f32 = u_xlat18;
  let x_669 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_667 * x_669) + 1.0f);
  let x_673 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_673)) + 1.0f);
  let x_678 : f32 = u_xlat11;
  let x_679 : f32 = u_xlat11;
  u_xlat19 = (x_678 * x_679);
  let x_681 : f32 = u_xlat19;
  let x_682 : f32 = u_xlat19;
  u_xlat19 = (x_681 * x_682);
  let x_684 : f32 = u_xlat11;
  let x_685 : f32 = u_xlat19;
  u_xlat11 = (x_684 * x_685);
  let x_687 : f32 = u_xlat18;
  let x_688 : f32 = u_xlat11;
  u_xlat18 = ((x_687 * x_688) + 1.0f);
  let x_691 : f32 = u_xlat18;
  let x_693 : f32 = u_xlat3.x;
  u_xlat18 = (x_691 * x_693);
  let x_695 : f32 = u_xlat26;
  let x_696 : f32 = u_xlat18;
  u_xlat18 = (x_695 * x_696);
  let x_698 : f32 = u_xlat24;
  let x_699 : f32 = u_xlat24;
  u_xlat24 = (x_698 * x_699);
  let x_701 : f32 = u_xlat24;
  u_xlat24 = max(x_701, 0.002f);
  let x_704 : f32 = u_xlat24;
  u_xlat3.x = (-(x_704) + 1.0f);
  let x_708 : f32 = u_xlat25;
  let x_711 : f32 = u_xlat3.x;
  let x_713 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_708) * x_711) + x_713);
  let x_715 : f32 = u_xlat26;
  let x_717 : f32 = u_xlat3.x;
  let x_719 : f32 = u_xlat24;
  u_xlat3.x = ((x_715 * x_717) + x_719);
  let x_722 : f32 = u_xlat25;
  let x_725 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_722) * x_725);
  let x_727 : f32 = u_xlat26;
  let x_728 : f32 = u_xlat11;
  let x_730 : f32 = u_xlat25;
  u_xlat25 = ((x_727 * x_728) + x_730);
  let x_732 : f32 = u_xlat25;
  u_xlat25 = (x_732 + 0.00001f);
  let x_734 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_734);
  let x_736 : f32 = u_xlat24;
  let x_737 : f32 = u_xlat24;
  u_xlat24 = (x_736 * x_737);
  let x_740 : f32 = u_xlat2.x;
  let x_741 : f32 = u_xlat24;
  let x_744 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_740 * x_741) + -(x_744));
  let x_749 : f32 = u_xlat3.x;
  let x_751 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_749 * x_751) + 1.0f);
  let x_755 : f32 = u_xlat24;
  u_xlat24 = (x_755 * 0.318309873f);
  let x_759 : f32 = u_xlat2.x;
  let x_761 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_759 * x_761) + 0.0000001f);
  let x_766 : f32 = u_xlat24;
  let x_768 : f32 = u_xlat2.x;
  u_xlat24 = (x_766 / x_768);
  let x_770 : f32 = u_xlat24;
  let x_771 : f32 = u_xlat25;
  u_xlat24 = (x_770 * x_771);
  let x_773 : f32 = u_xlat26;
  let x_774 : f32 = u_xlat24;
  u_xlat24 = (x_773 * x_774);
  let x_776 : f32 = u_xlat24;
  u_xlat24 = (x_776 * 3.141592741f);
  let x_779 : f32 = u_xlat24;
  u_xlat24 = max(x_779, 0.0f);
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec4<f32> = u_xlat0;
  u_xlat25 = dot(vec3<f32>(x_781.x, x_781.y, x_781.z), vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : f32 = u_xlat25;
  u_xlatb25 = !((x_786 == 0.0f));
  let x_788 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_788);
  let x_790 : f32 = u_xlat24;
  let x_791 : f32 = u_xlat25;
  u_xlat24 = (x_790 * x_791);
  let x_793 : f32 = u_xlat18;
  let x_795 : vec4<f32> = u_xlat6;
  let x_797 : vec3<f32> = (vec3<f32>(x_793, x_793, x_793) * vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_797.x, x_798.y, x_797.y, x_797.z);
  let x_800 : vec4<f32> = u_xlat6;
  let x_802 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802, x_802, x_802));
  let x_805 : f32 = u_xlat10;
  u_xlat24 = (-(x_805) + 1.0f);
  let x_808 : f32 = u_xlat24;
  let x_809 : f32 = u_xlat24;
  u_xlat25 = (x_808 * x_809);
  let x_811 : f32 = u_xlat25;
  let x_812 : f32 = u_xlat25;
  u_xlat25 = (x_811 * x_812);
  let x_814 : f32 = u_xlat24;
  let x_815 : f32 = u_xlat25;
  u_xlat24 = (x_814 * x_815);
  let x_817 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_817.x, x_817.y, x_817.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_822 : vec3<f32> = u_xlat4;
  let x_823 : f32 = u_xlat24;
  let x_826 : vec4<f32> = u_xlat0;
  let x_828 : vec3<f32> = ((x_822 * vec3<f32>(x_823, x_823, x_823)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = u_xlat3;
  let x_834 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) * x_833);
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec4<f32> = u_xlat2;
  let x_842 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = ((vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(x_839.x, x_839.z, x_839.w)) + vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = vs_TEXCOORD1.w;
  let x_850 : f32 = x_32.x_ProjectionParams.y;
  u_xlat24 = (x_848 / x_850);
  let x_852 : f32 = u_xlat24;
  u_xlat24 = (-(x_852) + 1.0f);
  let x_855 : f32 = u_xlat24;
  let x_857 : f32 = x_32.x_ProjectionParams.z;
  u_xlat24 = (x_855 * x_857);
  let x_859 : f32 = u_xlat24;
  u_xlat24 = max(x_859, 0.0f);
  let x_861 : f32 = u_xlat24;
  let x_864 : f32 = x_32.unity_FogParams.x;
  u_xlat24 = (x_861 * x_864);
  let x_866 : f32 = u_xlat24;
  let x_867 : f32 = u_xlat24;
  u_xlat24 = (x_866 * -(x_867));
  let x_870 : f32 = u_xlat24;
  u_xlat24 = exp2(x_870);
  let x_872 : vec4<f32> = u_xlat0;
  let x_874 : f32 = u_xlat24;
  let x_876 : vec3<f32> = (vec3<f32>(x_872.x, x_872.y, x_872.z) * vec3<f32>(x_874, x_874, x_874));
  let x_877 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
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

