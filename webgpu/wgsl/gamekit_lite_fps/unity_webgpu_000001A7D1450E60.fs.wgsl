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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

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

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_283 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat24 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat24;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_98 : vec4<f32> = vs_TEXCOORD4;
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  u_xlat24 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat24;
  let x_108 : vec4<f32> = vs_TEXCOORD4;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = vs_TEXCOORD1;
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  u_xlat24 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_119);
  let x_122 : f32 = u_xlat24;
  let x_124 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_122, x_122, x_122) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_130 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec4<f32> = x_37.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_140 : vec4<f32> = x_37.unity_WorldToLight[0i];
  let x_142 : vec3<f32> = vs_TEXCOORD5;
  let x_145 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + x_145);
  let x_149 : vec4<f32> = x_37.unity_WorldToLight[2i];
  let x_151 : vec3<f32> = vs_TEXCOORD5;
  let x_154 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec3<f32> = u_xlat4;
  let x_159 : vec4<f32> = x_37.unity_WorldToLight[3i];
  u_xlat4 = (x_156 + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_163 : vec3<f32> = vs_TEXCOORD5;
  let x_167 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  let x_168 : vec3<f32> = (-(x_163) + x_167);
  let x_169 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_175 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_175;
  let x_179 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_179;
  let x_183 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_183;
  let x_185 : vec4<f32> = u_xlat5;
  let x_187 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec3<f32> = vs_TEXCOORD5;
  let x_193 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_196 : vec3<f32> = (x_190 + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_200 : vec4<f32> = u_xlat5;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_205);
  let x_207 : f32 = u_xlat24;
  let x_209 : f32 = u_xlat25;
  u_xlat25 = (-(x_207) + x_209);
  let x_212 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_213 : f32 = u_xlat25;
  let x_215 : f32 = u_xlat24;
  u_xlat24 = ((x_212 * x_213) + x_215);
  let x_217 : f32 = u_xlat24;
  let x_220 : f32 = x_37.x_LightShadowData.z;
  let x_223 : f32 = x_37.x_LightShadowData.w;
  u_xlat24 = ((x_217 * x_220) + x_223);
  let x_225 : f32 = u_xlat24;
  u_xlat24 = clamp(x_225, 0.0f, 1.0f);
  let x_234 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_234 == 1.0f);
  let x_236 : bool = u_xlatb25;
  if (x_236) {
    let x_240 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_240 == 1.0f);
    let x_242 : vec3<f32> = vs_TEXCOORD5;
    let x_246 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_248 : vec3<f32> = (vec3<f32>(x_242.y, x_242.y, x_242.y) * vec3<f32>(x_246.x, x_246.y, x_246.z));
    let x_249 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_252 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_254 : vec3<f32> = vs_TEXCOORD5;
    let x_257 : vec4<f32> = u_xlat5;
    let x_259 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.x, x_254.x, x_254.x)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_263 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_265 : vec3<f32> = vs_TEXCOORD5;
    let x_268 : vec4<f32> = u_xlat5;
    let x_270 : vec3<f32> = ((vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.z, x_265.z, x_265.z)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
    let x_271 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_273 : vec4<f32> = u_xlat5;
    let x_276 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_278 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) + vec3<f32>(x_276.x, x_276.y, x_276.z));
    let x_279 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_281 : bool = u_xlatb25;
    if (x_281) {
      let x_286 : vec4<f32> = u_xlat5;
      x_283 = vec3<f32>(x_286.x, x_286.y, x_286.z);
    } else {
      let x_289 : vec3<f32> = vs_TEXCOORD5;
      x_283 = x_289;
    }
    let x_290 : vec3<f32> = x_283;
    let x_291 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat5;
    let x_297 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_299 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) + -(x_297));
    let x_300 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat5;
    let x_306 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_307 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * x_306);
    let x_308 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_308.x, x_307.x, x_307.y, x_307.z);
    let x_311 : f32 = u_xlat5.y;
    u_xlat25 = ((x_311 * 0.25f) + 0.75f);
    let x_318 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_318 * 0.5f) + 0.75f);
    let x_322 : f32 = u_xlat25;
    let x_323 : f32 = u_xlat26;
    u_xlat5.x = max(x_322, x_323);
    let x_334 : vec4<f32> = u_xlat5;
    let x_336 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_334.x, x_334.z, x_334.w));
    u_xlat5 = x_336;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_342, x_344);
  let x_346 : f32 = u_xlat25;
  u_xlat25 = clamp(x_346, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat24;
  u_xlatb26 = (x_349 < 0.99000001f);
  let x_352 : bool = u_xlatb26;
  if (x_352) {
    let x_355 : vec3<f32> = vs_TEXCOORD5;
    let x_357 : vec4<f32> = x_37.x_LightPositionRange;
    let x_360 : vec3<f32> = (x_355 + -(vec3<f32>(x_357.x, x_357.y, x_357.z)));
    let x_361 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_364 : f32 = u_xlat5.y;
    let x_367 : f32 = u_xlat5.x;
    u_xlat26 = max(abs(x_364), abs(x_367));
    let x_371 : f32 = u_xlat5.z;
    let x_373 : f32 = u_xlat26;
    u_xlat26 = max(abs(x_371), x_373);
    let x_375 : f32 = u_xlat26;
    let x_377 : f32 = x_37.x_LightProjectionParams.z;
    u_xlat26 = (x_375 + -(x_377));
    let x_380 : f32 = u_xlat26;
    u_xlat26 = max(x_380, 0.00001f);
    let x_383 : f32 = u_xlat26;
    let x_385 : f32 = x_37.x_LightProjectionParams.w;
    u_xlat26 = (x_383 * x_385);
    let x_388 : f32 = x_37.x_LightProjectionParams.y;
    let x_389 : f32 = u_xlat26;
    u_xlat26 = (x_388 / x_389);
    let x_391 : f32 = u_xlat26;
    let x_393 : f32 = x_37.x_LightProjectionParams.x;
    u_xlat26 = (x_391 + -(x_393));
    let x_396 : f32 = u_xlat26;
    u_xlat26 = (-(x_396) + 1.0f);
    let x_399 : vec4<f32> = u_xlat5;
    let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_404 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
    let x_408 : vec4<f32> = u_xlat6;
    let x_409 : vec3<f32> = vec3<f32>(x_408.x, x_408.y, x_408.z);
    let x_410 : f32 = u_xlat26;
    txVec0 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410);
    let x_423 : vec4<f32> = txVec0;
    let x_425 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_423.xyz, x_423.w);
    u_xlat6.x = x_425;
    let x_428 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_428.x, x_428.y, x_428.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_434 : vec3<f32> = u_xlat7;
    let x_435 : f32 = u_xlat26;
    txVec1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435);
    let x_443 : vec4<f32> = txVec1;
    let x_445 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_443.xyz, x_443.w);
    u_xlat6.y = x_445;
    let x_447 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_452 : vec3<f32> = u_xlat7;
    let x_453 : f32 = u_xlat26;
    txVec2 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453);
    let x_461 : vec4<f32> = txVec2;
    let x_463 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_461.xyz, x_461.w);
    u_xlat6.z = x_463;
    let x_465 : vec4<f32> = u_xlat5;
    let x_468 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_469 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_472 : vec4<f32> = u_xlat5;
    let x_473 : vec3<f32> = vec3<f32>(x_472.x, x_472.y, x_472.z);
    let x_474 : f32 = u_xlat26;
    txVec3 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474);
    let x_482 : vec4<f32> = txVec3;
    let x_484 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_482.xyz, x_482.w);
    u_xlat6.w = x_484;
    let x_486 : vec4<f32> = u_xlat6;
    u_xlat26 = dot(x_486, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_491 : f32 = x_37.x_LightShadowData.x;
    u_xlat27 = (-(x_491) + 1.0f);
    let x_494 : f32 = u_xlat26;
    let x_495 : f32 = u_xlat27;
    let x_498 : f32 = x_37.x_LightShadowData.x;
    u_xlat26 = ((x_494 * x_495) + x_498);
  } else {
    u_xlat26 = 1.0f;
  }
  let x_501 : f32 = u_xlat25;
  let x_502 : f32 = u_xlat26;
  u_xlat25 = (x_501 + -(x_502));
  let x_505 : f32 = u_xlat24;
  let x_506 : f32 = u_xlat25;
  let x_508 : f32 = u_xlat26;
  u_xlat24 = ((x_505 * x_506) + x_508);
  let x_510 : vec3<f32> = u_xlat4;
  let x_511 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_510, x_511);
  let x_518 : f32 = u_xlat25;
  let x_520 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_518, x_518));
  u_xlat25 = x_520.x;
  let x_522 : f32 = u_xlat24;
  let x_523 : f32 = u_xlat25;
  u_xlat24 = (x_522 * x_523);
  let x_528 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_528;
  let x_532 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_532;
  let x_535 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_535;
  let x_537 : vec3<f32> = u_xlat4;
  let x_538 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_537, x_538);
  let x_540 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_540);
  let x_542 : f32 = u_xlat25;
  let x_544 : vec3<f32> = u_xlat4;
  let x_545 : vec3<f32> = (vec3<f32>(x_542, x_542, x_542) * x_544);
  let x_546 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : f32 = u_xlat24;
  let x_552 : vec4<f32> = x_37.x_LightColor0;
  let x_554 : vec3<f32> = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : f32 = x_37.x_Glossiness;
  u_xlat24 = (-(x_559) + 1.0f);
  let x_562 : vec3<f32> = u_xlat4;
  let x_563 : f32 = u_xlat25;
  let x_566 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_562 * vec3<f32>(x_563, x_563, x_563)) + -(x_566));
  let x_569 : vec3<f32> = u_xlat4;
  let x_570 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat25;
  u_xlat25 = max(x_572, 0.001f);
  let x_575 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat25;
  let x_579 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec4<f32> = u_xlat2;
  let x_583 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), -(x_583));
  let x_586 : vec4<f32> = u_xlat2;
  let x_588 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : f32 = u_xlat26;
  u_xlat26 = clamp(x_591, 0.0f, 1.0f);
  let x_593 : vec4<f32> = u_xlat2;
  let x_595 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), x_595);
  let x_599 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_599, 0.0f, 1.0f);
  let x_603 : vec4<f32> = u_xlat5;
  let x_605 : vec3<f32> = u_xlat4;
  u_xlat10 = dot(vec3<f32>(x_603.x, x_603.y, x_603.z), x_605);
  let x_607 : f32 = u_xlat10;
  u_xlat10 = clamp(x_607, 0.0f, 1.0f);
  let x_610 : f32 = u_xlat10;
  let x_611 : f32 = u_xlat10;
  u_xlat18 = (x_610 * x_611);
  let x_613 : f32 = u_xlat18;
  let x_615 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_613, x_613), vec2<f32>(x_615, x_615));
  let x_618 : f32 = u_xlat18;
  u_xlat18 = (x_618 + -0.5f);
  let x_621 : f32 = u_xlat26;
  u_xlat3.x = (-(x_621) + 1.0f);
  let x_627 : f32 = u_xlat3.x;
  let x_629 : f32 = u_xlat3.x;
  u_xlat11 = (x_627 * x_629);
  let x_631 : f32 = u_xlat11;
  let x_632 : f32 = u_xlat11;
  u_xlat11 = (x_631 * x_632);
  let x_635 : f32 = u_xlat3.x;
  let x_636 : f32 = u_xlat11;
  u_xlat3.x = (x_635 * x_636);
  let x_639 : f32 = u_xlat18;
  let x_641 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_639 * x_641) + 1.0f);
  let x_645 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_645)) + 1.0f);
  let x_650 : f32 = u_xlat11;
  let x_651 : f32 = u_xlat11;
  u_xlat19 = (x_650 * x_651);
  let x_653 : f32 = u_xlat19;
  let x_654 : f32 = u_xlat19;
  u_xlat19 = (x_653 * x_654);
  let x_656 : f32 = u_xlat11;
  let x_657 : f32 = u_xlat19;
  u_xlat11 = (x_656 * x_657);
  let x_659 : f32 = u_xlat18;
  let x_660 : f32 = u_xlat11;
  u_xlat18 = ((x_659 * x_660) + 1.0f);
  let x_663 : f32 = u_xlat18;
  let x_665 : f32 = u_xlat3.x;
  u_xlat18 = (x_663 * x_665);
  let x_667 : f32 = u_xlat26;
  let x_668 : f32 = u_xlat18;
  u_xlat18 = (x_667 * x_668);
  let x_670 : f32 = u_xlat24;
  let x_671 : f32 = u_xlat24;
  u_xlat24 = (x_670 * x_671);
  let x_673 : f32 = u_xlat24;
  u_xlat24 = max(x_673, 0.002f);
  let x_676 : f32 = u_xlat24;
  u_xlat3.x = (-(x_676) + 1.0f);
  let x_680 : f32 = u_xlat25;
  let x_683 : f32 = u_xlat3.x;
  let x_685 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_680) * x_683) + x_685);
  let x_687 : f32 = u_xlat26;
  let x_689 : f32 = u_xlat3.x;
  let x_691 : f32 = u_xlat24;
  u_xlat3.x = ((x_687 * x_689) + x_691);
  let x_694 : f32 = u_xlat25;
  let x_697 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_694) * x_697);
  let x_699 : f32 = u_xlat26;
  let x_700 : f32 = u_xlat11;
  let x_702 : f32 = u_xlat25;
  u_xlat25 = ((x_699 * x_700) + x_702);
  let x_704 : f32 = u_xlat25;
  u_xlat25 = (x_704 + 0.00001f);
  let x_706 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_706);
  let x_708 : f32 = u_xlat24;
  let x_709 : f32 = u_xlat24;
  u_xlat24 = (x_708 * x_709);
  let x_712 : f32 = u_xlat2.x;
  let x_713 : f32 = u_xlat24;
  let x_716 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_712 * x_713) + -(x_716));
  let x_721 : f32 = u_xlat3.x;
  let x_723 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_721 * x_723) + 1.0f);
  let x_727 : f32 = u_xlat24;
  u_xlat24 = (x_727 * 0.318309873f);
  let x_731 : f32 = u_xlat2.x;
  let x_733 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_731 * x_733) + 0.0000001f);
  let x_738 : f32 = u_xlat24;
  let x_740 : f32 = u_xlat2.x;
  u_xlat24 = (x_738 / x_740);
  let x_742 : f32 = u_xlat24;
  let x_743 : f32 = u_xlat25;
  u_xlat24 = (x_742 * x_743);
  let x_745 : f32 = u_xlat26;
  let x_746 : f32 = u_xlat24;
  u_xlat24 = (x_745 * x_746);
  let x_748 : f32 = u_xlat24;
  u_xlat24 = (x_748 * 3.141592741f);
  let x_751 : f32 = u_xlat24;
  u_xlat24 = max(x_751, 0.0f);
  let x_753 : vec4<f32> = u_xlat0;
  let x_755 : vec4<f32> = u_xlat0;
  u_xlat25 = dot(vec3<f32>(x_753.x, x_753.y, x_753.z), vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : f32 = u_xlat25;
  u_xlatb25 = !((x_758 == 0.0f));
  let x_760 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_760);
  let x_762 : f32 = u_xlat24;
  let x_763 : f32 = u_xlat25;
  u_xlat24 = (x_762 * x_763);
  let x_765 : f32 = u_xlat18;
  let x_767 : vec4<f32> = u_xlat6;
  let x_769 : vec3<f32> = (vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_770.y, x_769.y, x_769.z);
  let x_772 : vec4<f32> = u_xlat6;
  let x_774 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774, x_774, x_774));
  let x_777 : f32 = u_xlat10;
  u_xlat24 = (-(x_777) + 1.0f);
  let x_780 : f32 = u_xlat24;
  let x_781 : f32 = u_xlat24;
  u_xlat25 = (x_780 * x_781);
  let x_783 : f32 = u_xlat25;
  let x_784 : f32 = u_xlat25;
  u_xlat25 = (x_783 * x_784);
  let x_786 : f32 = u_xlat24;
  let x_787 : f32 = u_xlat25;
  u_xlat24 = (x_786 * x_787);
  let x_789 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_789.x, x_789.y, x_789.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_794 : vec3<f32> = u_xlat4;
  let x_795 : f32 = u_xlat24;
  let x_798 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = ((x_794 * vec3<f32>(x_795, x_795, x_795)) + vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat0;
  let x_805 : vec3<f32> = u_xlat3;
  let x_806 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * x_805);
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec3<f32> = u_xlat1;
  let x_810 : vec4<f32> = u_xlat2;
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = ((x_809 * vec3<f32>(x_810.x, x_810.z, x_810.w)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
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

