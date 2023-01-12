struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat12 : vec3<f32>;
  var x_268 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlatb12 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat32 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat11 : f32;
  var u_xlatb30 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat30;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat31;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_77 : vec2<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_77);
  u_xlat4 = vec3<f32>(x_78.x, x_78.y, x_78.z);
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_87);
  u_xlat5 = vec2<f32>(x_88.x, x_88.w);
  let x_96 : vec2<f32> = vs_TEXCOORD0;
  let x_97 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_96);
  u_xlat6 = vec3<f32>(x_97.x, x_97.y, x_97.w);
  let x_102 : f32 = u_xlat6.z;
  let x_105 : f32 = u_xlat6.x;
  u_xlat6.x = (x_102 * x_105);
  let x_108 : vec3<f32> = u_xlat6;
  let x_115 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_116 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_118 : vec3<f32> = u_xlat6;
  let x_120 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec2<f32>(x_118.x, x_118.y), vec2<f32>(x_120.x, x_120.y));
  let x_123 : f32 = u_xlat31;
  u_xlat31 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat31;
  u_xlat31 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat31;
  u_xlat6.z = sqrt(x_129);
  let x_133 : vec3<f32> = vs_TEXCOORD4;
  let x_138 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_142 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_144 : vec3<f32> = vs_TEXCOORD4;
  let x_147 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + x_147);
  let x_150 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_152 : vec3<f32> = vs_TEXCOORD4;
  let x_155 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + x_155);
  let x_157 : vec3<f32> = u_xlat7;
  let x_160 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_157 + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_167 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_167;
  let x_170 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_170;
  let x_174 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_174;
  let x_176 : vec4<f32> = u_xlat2;
  let x_178 : vec4<f32> = u_xlat8;
  u_xlat31 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec3<f32> = vs_TEXCOORD4;
  let x_184 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_187 : vec3<f32> = (x_181 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat2;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_197 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_197);
  let x_200 : f32 = u_xlat31;
  let x_203 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_200) + x_203);
  let x_208 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_210 : f32 = u_xlat2.x;
  let x_212 : f32 = u_xlat31;
  u_xlat31 = ((x_208 * x_210) + x_212);
  let x_214 : f32 = u_xlat31;
  let x_217 : f32 = x_18.x_LightShadowData.z;
  let x_220 : f32 = x_18.x_LightShadowData.w;
  u_xlat31 = ((x_214 * x_217) + x_220);
  let x_222 : f32 = u_xlat31;
  u_xlat31 = clamp(x_222, 0.0f, 1.0f);
  let x_230 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_230 == 1.0f);
  let x_232 : bool = u_xlatb2;
  if (x_232) {
    let x_236 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_236 == 1.0f);
    let x_239 : vec3<f32> = vs_TEXCOORD4;
    let x_243 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_239.y, x_239.y, x_239.y) * vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_247 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_249 : vec3<f32> = vs_TEXCOORD4;
    let x_252 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + x_252);
    let x_255 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_257 : vec3<f32> = vs_TEXCOORD4;
    let x_260 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257.z, x_257.z, x_257.z)) + x_260);
    let x_262 : vec3<f32> = u_xlat12;
    let x_264 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_262 + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : bool = u_xlatb2;
    if (x_267) {
      let x_271 : vec3<f32> = u_xlat12;
      x_268 = x_271;
    } else {
      let x_273 : vec3<f32> = vs_TEXCOORD4;
      x_268 = x_273;
    }
    let x_274 : vec3<f32> = x_268;
    let x_275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat2;
    let x_281 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_283 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + -(x_281));
    let x_284 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat2;
    let x_290 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) * x_290);
    let x_292 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_292.x, x_291.x, x_291.y, x_291.z);
    let x_295 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_295 * 0.25f) + 0.75f);
    let x_303 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat33 = ((x_303 * 0.5f) + 0.75f);
    let x_308 : f32 = u_xlat12.x;
    let x_309 : f32 = u_xlat33;
    u_xlat2.x = max(x_308, x_309);
    let x_320 : vec4<f32> = u_xlat2;
    let x_322 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_320.x, x_320.z, x_320.w));
    u_xlat2 = x_322;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_328 : vec4<f32> = u_xlat2;
  let x_331 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_328, x_331);
  let x_335 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_335, 0.0f, 1.0f);
  let x_339 : f32 = u_xlat31;
  u_xlatb12 = (x_339 < 0.99000001f);
  let x_342 : bool = u_xlatb12;
  if (x_342) {
    let x_345 : vec3<f32> = vs_TEXCOORD4;
    let x_347 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat12 = (x_345 + -(vec3<f32>(x_347.x, x_347.y, x_347.z)));
    let x_352 : f32 = u_xlat12.y;
    let x_355 : f32 = u_xlat12.x;
    u_xlat33 = max(abs(x_352), abs(x_355));
    let x_359 : f32 = u_xlat12.z;
    let x_361 : f32 = u_xlat33;
    u_xlat33 = max(abs(x_359), x_361);
    let x_363 : f32 = u_xlat33;
    let x_366 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat33 = (x_363 + -(x_366));
    let x_369 : f32 = u_xlat33;
    u_xlat33 = max(x_369, 0.00001f);
    let x_372 : f32 = u_xlat33;
    let x_374 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat33 = (x_372 * x_374);
    let x_377 : f32 = x_18.x_LightProjectionParams.y;
    let x_378 : f32 = u_xlat33;
    u_xlat33 = (x_377 / x_378);
    let x_380 : f32 = u_xlat33;
    let x_382 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat33 = (x_380 + -(x_382));
    let x_385 : f32 = u_xlat33;
    u_xlat33 = (-(x_385) + 1.0f);
    let x_388 : vec3<f32> = u_xlat12;
    let x_391 : vec3<f32> = (x_388 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_392 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_395 : vec4<f32> = u_xlat8;
    let x_396 : vec3<f32> = vec3<f32>(x_395.x, x_395.y, x_395.z);
    let x_397 : f32 = u_xlat33;
    txVec0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397);
    let x_410 : vec4<f32> = txVec0;
    let x_412 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_410.xyz, x_410.w);
    u_xlat8.x = x_412;
    let x_415 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_415 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_420 : vec3<f32> = u_xlat9;
    let x_421 : f32 = u_xlat33;
    txVec1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421);
    let x_429 : vec4<f32> = txVec1;
    let x_431 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_429.xyz, x_429.w);
    u_xlat8.y = x_431;
    let x_433 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_433 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_437 : vec3<f32> = u_xlat9;
    let x_438 : f32 = u_xlat33;
    txVec2 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438);
    let x_446 : vec4<f32> = txVec2;
    let x_448 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_446.xyz, x_446.w);
    u_xlat8.z = x_448;
    let x_450 : vec3<f32> = u_xlat12;
    u_xlat12 = (x_450 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_454 : vec3<f32> = u_xlat12;
    let x_455 : f32 = u_xlat33;
    txVec3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455);
    let x_463 : vec4<f32> = txVec3;
    let x_465 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_463.xyz, x_463.w);
    u_xlat8.w = x_465;
    let x_467 : vec4<f32> = u_xlat8;
    u_xlat12.x = dot(x_467, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_473 : f32 = x_18.x_LightShadowData.x;
    u_xlat22 = (-(x_473) + 1.0f);
    let x_477 : f32 = u_xlat12.x;
    let x_478 : f32 = u_xlat22;
    let x_481 : f32 = x_18.x_LightShadowData.x;
    u_xlat12.x = ((x_477 * x_478) + x_481);
  } else {
    u_xlat12.x = 1.0f;
  }
  let x_487 : f32 = u_xlat12.x;
  let x_490 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_487) + x_490);
  let x_493 : f32 = u_xlat31;
  let x_495 : f32 = u_xlat2.x;
  let x_498 : f32 = u_xlat12.x;
  u_xlat31 = ((x_493 * x_495) + x_498);
  let x_500 : vec3<f32> = u_xlat7;
  let x_501 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_500, x_501);
  let x_509 : vec4<f32> = u_xlat2;
  let x_511 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_509.x, x_509.x));
  u_xlat2.x = x_511.x;
  let x_514 : f32 = u_xlat31;
  let x_516 : f32 = u_xlat2.x;
  u_xlat31 = (x_514 * x_516);
  let x_519 : vec3<f32> = vs_TEXCOORD1;
  let x_520 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_519, x_520);
  let x_524 : vec3<f32> = vs_TEXCOORD2;
  let x_525 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_524, x_525);
  let x_529 : vec3<f32> = vs_TEXCOORD3;
  let x_530 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_529, x_530);
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_534.x, x_534.y, x_534.z), vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_539);
  let x_541 : f32 = u_xlat32;
  let x_543 : vec4<f32> = u_xlat2;
  let x_545 : vec3<f32> = (vec3<f32>(x_541, x_541, x_541) * vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : f32 = u_xlat31;
  let x_552 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec3<f32> = u_xlat4;
  u_xlat7 = (x_555 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_559 : vec2<f32> = u_xlat5;
  let x_561 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_559.x, x_559.x, x_559.x) * x_561) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_567 : f32 = u_xlat5.x;
  u_xlat31 = ((-(x_567) * 0.959999979f) + 0.959999979f);
  let x_572 : f32 = u_xlat31;
  let x_574 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_572, x_572, x_572) * x_574);
  let x_577 : f32 = u_xlat5.y;
  u_xlat31 = (-(x_577) + 1.0f);
  let x_580 : vec3<f32> = u_xlat0;
  let x_581 : f32 = u_xlat30;
  let x_584 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_580 * vec3<f32>(x_581, x_581, x_581)) + x_584);
  let x_586 : vec3<f32> = u_xlat0;
  let x_587 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_586, x_587);
  let x_589 : f32 = u_xlat30;
  u_xlat30 = max(x_589, 0.001f);
  let x_592 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_592);
  let x_594 : f32 = u_xlat30;
  let x_596 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_594, x_594, x_594) * x_596);
  let x_598 : vec4<f32> = u_xlat2;
  let x_600 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_598.x, x_598.y, x_598.z), x_600);
  let x_602 : vec4<f32> = u_xlat2;
  let x_604 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), x_604);
  let x_606 : f32 = u_xlat32;
  u_xlat32 = clamp(x_606, 0.0f, 1.0f);
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), x_610);
  let x_614 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_614, 0.0f, 1.0f);
  let x_617 : vec3<f32> = u_xlat1;
  let x_618 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_617, x_618);
  let x_622 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_622, 0.0f, 1.0f);
  let x_627 : f32 = u_xlat0.x;
  let x_629 : f32 = u_xlat0.x;
  u_xlat10.x = (x_627 * x_629);
  let x_632 : vec3<f32> = u_xlat10;
  let x_634 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_632.x, x_632.x), vec2<f32>(x_634, x_634));
  let x_639 : f32 = u_xlat10.x;
  u_xlat10.x = (x_639 + -0.5f);
  let x_644 : f32 = u_xlat32;
  u_xlat20 = (-(x_644) + 1.0f);
  let x_647 : f32 = u_xlat20;
  let x_648 : f32 = u_xlat20;
  u_xlat1.x = (x_647 * x_648);
  let x_652 : f32 = u_xlat1.x;
  let x_654 : f32 = u_xlat1.x;
  u_xlat1.x = (x_652 * x_654);
  let x_657 : f32 = u_xlat20;
  let x_659 : f32 = u_xlat1.x;
  u_xlat20 = (x_657 * x_659);
  let x_662 : f32 = u_xlat10.x;
  let x_663 : f32 = u_xlat20;
  u_xlat20 = ((x_662 * x_663) + 1.0f);
  let x_666 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_666)) + 1.0f);
  let x_673 : f32 = u_xlat1.x;
  let x_675 : f32 = u_xlat1.x;
  u_xlat11 = (x_673 * x_675);
  let x_677 : f32 = u_xlat11;
  let x_678 : f32 = u_xlat11;
  u_xlat11 = (x_677 * x_678);
  let x_681 : f32 = u_xlat1.x;
  let x_682 : f32 = u_xlat11;
  u_xlat1.x = (x_681 * x_682);
  let x_686 : f32 = u_xlat10.x;
  let x_688 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_686 * x_688) + 1.0f);
  let x_693 : f32 = u_xlat10.x;
  let x_694 : f32 = u_xlat20;
  u_xlat10.x = (x_693 * x_694);
  let x_697 : f32 = u_xlat31;
  let x_698 : f32 = u_xlat31;
  u_xlat20 = (x_697 * x_698);
  let x_700 : f32 = u_xlat20;
  u_xlat20 = max(x_700, 0.002f);
  let x_703 : f32 = u_xlat20;
  u_xlat1.x = (-(x_703) + 1.0f);
  let x_707 : f32 = u_xlat30;
  let x_710 : f32 = u_xlat1.x;
  let x_712 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_707) * x_710) + x_712);
  let x_714 : f32 = u_xlat32;
  let x_716 : f32 = u_xlat1.x;
  let x_718 : f32 = u_xlat20;
  u_xlat1.x = ((x_714 * x_716) + x_718);
  let x_721 : f32 = u_xlat30;
  let x_724 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_721) * x_724);
  let x_726 : f32 = u_xlat32;
  let x_727 : f32 = u_xlat11;
  let x_729 : f32 = u_xlat30;
  u_xlat30 = ((x_726 * x_727) + x_729);
  let x_731 : f32 = u_xlat30;
  u_xlat30 = (x_731 + 0.00001f);
  let x_733 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_733);
  let x_735 : f32 = u_xlat20;
  let x_736 : f32 = u_xlat20;
  u_xlat20 = (x_735 * x_736);
  let x_739 : f32 = u_xlat2.x;
  let x_740 : f32 = u_xlat20;
  let x_743 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_739 * x_740) + -(x_743));
  let x_748 : f32 = u_xlat1.x;
  let x_750 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_748 * x_750) + 1.0f);
  let x_754 : f32 = u_xlat20;
  u_xlat20 = (x_754 * 0.318309873f);
  let x_758 : f32 = u_xlat1.x;
  let x_760 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_758 * x_760) + 0.0000001f);
  let x_765 : f32 = u_xlat20;
  let x_767 : f32 = u_xlat1.x;
  u_xlat20 = (x_765 / x_767);
  let x_769 : f32 = u_xlat20;
  let x_770 : f32 = u_xlat30;
  u_xlat10.y = (x_769 * x_770);
  let x_773 : f32 = u_xlat32;
  let x_775 : vec3<f32> = u_xlat10;
  let x_777 : vec2<f32> = (vec2<f32>(x_773, x_773) * vec2<f32>(x_775.x, x_775.y));
  let x_778 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_777.x, x_777.y, x_778.z);
  let x_781 : f32 = u_xlat10.y;
  u_xlat20 = (x_781 * 3.141592741f);
  let x_784 : f32 = u_xlat20;
  u_xlat20 = max(x_784, 0.0f);
  let x_786 : vec3<f32> = u_xlat7;
  let x_787 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_786, x_787);
  let x_790 : f32 = u_xlat30;
  u_xlatb30 = !((x_790 == 0.0f));
  let x_792 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_792);
  let x_794 : f32 = u_xlat30;
  let x_795 : f32 = u_xlat20;
  u_xlat20 = (x_794 * x_795);
  let x_797 : vec3<f32> = u_xlat10;
  let x_799 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_797.x, x_797.x, x_797.x) * x_799);
  let x_801 : vec3<f32> = u_xlat6;
  let x_802 : f32 = u_xlat20;
  u_xlat10 = (x_801 * vec3<f32>(x_802, x_802, x_802));
  let x_806 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_806) + 1.0f);
  let x_811 : f32 = u_xlat0.x;
  let x_813 : f32 = u_xlat0.x;
  u_xlat31 = (x_811 * x_813);
  let x_815 : f32 = u_xlat31;
  let x_816 : f32 = u_xlat31;
  u_xlat31 = (x_815 * x_816);
  let x_819 : f32 = u_xlat0.x;
  let x_820 : f32 = u_xlat31;
  u_xlat0.x = (x_819 * x_820);
  let x_823 : vec3<f32> = u_xlat7;
  let x_826 : vec3<f32> = (-(x_823) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat2;
  let x_831 : vec3<f32> = u_xlat0;
  let x_834 : vec3<f32> = u_xlat7;
  let x_835 : vec3<f32> = ((vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_831.x, x_831.x, x_831.x)) + x_834);
  let x_836 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec3<f32> = u_xlat10;
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_838 * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec3<f32> = u_xlat4;
  let x_843 : vec3<f32> = u_xlat1;
  let x_845 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_842 * x_843) + x_845);
  let x_849 : f32 = vs_TEXCOORD7;
  let x_851 : f32 = x_18.x_ProjectionParams.y;
  u_xlat30 = (x_849 / x_851);
  let x_853 : f32 = u_xlat30;
  u_xlat30 = (-(x_853) + 1.0f);
  let x_856 : f32 = u_xlat30;
  let x_858 : f32 = x_18.x_ProjectionParams.z;
  u_xlat30 = (x_856 * x_858);
  let x_860 : f32 = u_xlat30;
  u_xlat30 = max(x_860, 0.0f);
  let x_862 : f32 = u_xlat30;
  let x_865 : f32 = x_18.unity_FogParams.x;
  u_xlat30 = (x_862 * x_865);
  let x_867 : f32 = u_xlat30;
  let x_868 : f32 = u_xlat30;
  u_xlat30 = (x_867 * -(x_868));
  let x_871 : f32 = u_xlat30;
  u_xlat30 = exp2(x_871);
  let x_875 : vec3<f32> = u_xlat0;
  let x_876 : f32 = u_xlat30;
  let x_878 : vec3<f32> = (x_875 * vec3<f32>(x_876, x_876, x_876));
  let x_879 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

