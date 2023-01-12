struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(12) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

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
  let x_137 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_143 : vec3<f32> = vs_TEXCOORD4;
  let x_146 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
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
    let x_365 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat33 = (x_363 + -(x_365));
    let x_368 : f32 = u_xlat33;
    u_xlat33 = max(x_368, 0.00001f);
    let x_371 : f32 = u_xlat33;
    let x_373 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat33 = (x_371 * x_373);
    let x_376 : f32 = x_18.x_LightProjectionParams.y;
    let x_377 : f32 = u_xlat33;
    u_xlat33 = (x_376 / x_377);
    let x_379 : f32 = u_xlat33;
    let x_381 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat33 = (x_379 + -(x_381));
    let x_384 : f32 = u_xlat33;
    u_xlat33 = (-(x_384) + 1.0f);
    let x_387 : vec3<f32> = u_xlat12;
    let x_390 : vec3<f32> = (x_387 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_391 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
    let x_394 : vec4<f32> = u_xlat8;
    let x_395 : vec3<f32> = vec3<f32>(x_394.x, x_394.y, x_394.z);
    let x_396 : f32 = u_xlat33;
    txVec0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396);
    let x_409 : vec4<f32> = txVec0;
    let x_411 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_409.xyz, x_409.w);
    u_xlat8.x = x_411;
    let x_414 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_414 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_419 : vec3<f32> = u_xlat9;
    let x_420 : f32 = u_xlat33;
    txVec1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420);
    let x_428 : vec4<f32> = txVec1;
    let x_430 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_428.xyz, x_428.w);
    u_xlat8.y = x_430;
    let x_432 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_432 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_436 : vec3<f32> = u_xlat9;
    let x_437 : f32 = u_xlat33;
    txVec2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437);
    let x_445 : vec4<f32> = txVec2;
    let x_447 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_445.xyz, x_445.w);
    u_xlat8.z = x_447;
    let x_449 : vec3<f32> = u_xlat12;
    u_xlat12 = (x_449 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_453 : vec3<f32> = u_xlat12;
    let x_454 : f32 = u_xlat33;
    txVec3 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454);
    let x_462 : vec4<f32> = txVec3;
    let x_464 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_462.xyz, x_462.w);
    u_xlat8.w = x_464;
    let x_466 : vec4<f32> = u_xlat8;
    u_xlat12.x = dot(x_466, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_472 : f32 = x_18.x_LightShadowData.x;
    u_xlat22 = (-(x_472) + 1.0f);
    let x_476 : f32 = u_xlat12.x;
    let x_477 : f32 = u_xlat22;
    let x_480 : f32 = x_18.x_LightShadowData.x;
    u_xlat12.x = ((x_476 * x_477) + x_480);
  } else {
    u_xlat12.x = 1.0f;
  }
  let x_486 : f32 = u_xlat12.x;
  let x_489 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_486) + x_489);
  let x_492 : f32 = u_xlat31;
  let x_494 : f32 = u_xlat2.x;
  let x_497 : f32 = u_xlat12.x;
  u_xlat31 = ((x_492 * x_494) + x_497);
  let x_499 : vec3<f32> = u_xlat7;
  let x_500 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_499, x_500);
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_508.x, x_508.x));
  u_xlat2.x = x_510.x;
  let x_521 : vec3<f32> = u_xlat7;
  let x_522 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_521);
  u_xlat12.x = x_522.w;
  let x_526 : f32 = u_xlat12.x;
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = (x_526 * x_528);
  let x_531 : f32 = u_xlat31;
  let x_533 : f32 = u_xlat2.x;
  u_xlat31 = (x_531 * x_533);
  let x_536 : vec3<f32> = vs_TEXCOORD1;
  let x_537 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : vec3<f32> = vs_TEXCOORD2;
  let x_542 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_541, x_542);
  let x_546 : vec3<f32> = vs_TEXCOORD3;
  let x_547 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_546, x_547);
  let x_551 : vec4<f32> = u_xlat2;
  let x_553 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_556);
  let x_558 : f32 = u_xlat32;
  let x_560 : vec4<f32> = u_xlat2;
  let x_562 : vec3<f32> = (vec3<f32>(x_558, x_558, x_558) * vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : f32 = u_xlat31;
  let x_569 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_565, x_565, x_565) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec3<f32> = u_xlat4;
  u_xlat7 = (x_572 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_576 : vec2<f32> = u_xlat5;
  let x_578 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_576.x, x_576.x, x_576.x) * x_578) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_584 : f32 = u_xlat5.x;
  u_xlat31 = ((-(x_584) * 0.959999979f) + 0.959999979f);
  let x_589 : f32 = u_xlat31;
  let x_591 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_594 : f32 = u_xlat5.y;
  u_xlat31 = (-(x_594) + 1.0f);
  let x_597 : vec3<f32> = u_xlat0;
  let x_598 : f32 = u_xlat30;
  let x_601 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_597 * vec3<f32>(x_598, x_598, x_598)) + x_601);
  let x_603 : vec3<f32> = u_xlat0;
  let x_604 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_603, x_604);
  let x_606 : f32 = u_xlat30;
  u_xlat30 = max(x_606, 0.001f);
  let x_609 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_609);
  let x_611 : f32 = u_xlat30;
  let x_613 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_611, x_611, x_611) * x_613);
  let x_615 : vec4<f32> = u_xlat2;
  let x_617 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), x_617);
  let x_619 : vec4<f32> = u_xlat2;
  let x_621 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), x_621);
  let x_623 : f32 = u_xlat32;
  u_xlat32 = clamp(x_623, 0.0f, 1.0f);
  let x_625 : vec4<f32> = u_xlat2;
  let x_627 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), x_627);
  let x_631 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_631, 0.0f, 1.0f);
  let x_634 : vec3<f32> = u_xlat1;
  let x_635 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_634, x_635);
  let x_639 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_639, 0.0f, 1.0f);
  let x_644 : f32 = u_xlat0.x;
  let x_646 : f32 = u_xlat0.x;
  u_xlat10.x = (x_644 * x_646);
  let x_649 : vec3<f32> = u_xlat10;
  let x_651 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_649.x, x_649.x), vec2<f32>(x_651, x_651));
  let x_656 : f32 = u_xlat10.x;
  u_xlat10.x = (x_656 + -0.5f);
  let x_661 : f32 = u_xlat32;
  u_xlat20 = (-(x_661) + 1.0f);
  let x_664 : f32 = u_xlat20;
  let x_665 : f32 = u_xlat20;
  u_xlat1.x = (x_664 * x_665);
  let x_669 : f32 = u_xlat1.x;
  let x_671 : f32 = u_xlat1.x;
  u_xlat1.x = (x_669 * x_671);
  let x_674 : f32 = u_xlat20;
  let x_676 : f32 = u_xlat1.x;
  u_xlat20 = (x_674 * x_676);
  let x_679 : f32 = u_xlat10.x;
  let x_680 : f32 = u_xlat20;
  u_xlat20 = ((x_679 * x_680) + 1.0f);
  let x_683 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_683)) + 1.0f);
  let x_690 : f32 = u_xlat1.x;
  let x_692 : f32 = u_xlat1.x;
  u_xlat11 = (x_690 * x_692);
  let x_694 : f32 = u_xlat11;
  let x_695 : f32 = u_xlat11;
  u_xlat11 = (x_694 * x_695);
  let x_698 : f32 = u_xlat1.x;
  let x_699 : f32 = u_xlat11;
  u_xlat1.x = (x_698 * x_699);
  let x_703 : f32 = u_xlat10.x;
  let x_705 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_703 * x_705) + 1.0f);
  let x_710 : f32 = u_xlat10.x;
  let x_711 : f32 = u_xlat20;
  u_xlat10.x = (x_710 * x_711);
  let x_714 : f32 = u_xlat31;
  let x_715 : f32 = u_xlat31;
  u_xlat20 = (x_714 * x_715);
  let x_717 : f32 = u_xlat20;
  u_xlat20 = max(x_717, 0.002f);
  let x_720 : f32 = u_xlat20;
  u_xlat1.x = (-(x_720) + 1.0f);
  let x_724 : f32 = u_xlat30;
  let x_727 : f32 = u_xlat1.x;
  let x_729 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_724) * x_727) + x_729);
  let x_731 : f32 = u_xlat32;
  let x_733 : f32 = u_xlat1.x;
  let x_735 : f32 = u_xlat20;
  u_xlat1.x = ((x_731 * x_733) + x_735);
  let x_738 : f32 = u_xlat30;
  let x_741 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_738) * x_741);
  let x_743 : f32 = u_xlat32;
  let x_744 : f32 = u_xlat11;
  let x_746 : f32 = u_xlat30;
  u_xlat30 = ((x_743 * x_744) + x_746);
  let x_748 : f32 = u_xlat30;
  u_xlat30 = (x_748 + 0.00001f);
  let x_750 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_750);
  let x_752 : f32 = u_xlat20;
  let x_753 : f32 = u_xlat20;
  u_xlat20 = (x_752 * x_753);
  let x_756 : f32 = u_xlat2.x;
  let x_757 : f32 = u_xlat20;
  let x_760 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_756 * x_757) + -(x_760));
  let x_765 : f32 = u_xlat1.x;
  let x_767 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_765 * x_767) + 1.0f);
  let x_771 : f32 = u_xlat20;
  u_xlat20 = (x_771 * 0.318309873f);
  let x_775 : f32 = u_xlat1.x;
  let x_777 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_775 * x_777) + 0.0000001f);
  let x_782 : f32 = u_xlat20;
  let x_784 : f32 = u_xlat1.x;
  u_xlat20 = (x_782 / x_784);
  let x_786 : f32 = u_xlat20;
  let x_787 : f32 = u_xlat30;
  u_xlat10.y = (x_786 * x_787);
  let x_790 : f32 = u_xlat32;
  let x_792 : vec3<f32> = u_xlat10;
  let x_794 : vec2<f32> = (vec2<f32>(x_790, x_790) * vec2<f32>(x_792.x, x_792.y));
  let x_795 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_794.x, x_794.y, x_795.z);
  let x_798 : f32 = u_xlat10.y;
  u_xlat20 = (x_798 * 3.141592741f);
  let x_801 : f32 = u_xlat20;
  u_xlat20 = max(x_801, 0.0f);
  let x_803 : vec3<f32> = u_xlat7;
  let x_804 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_803, x_804);
  let x_807 : f32 = u_xlat30;
  u_xlatb30 = !((x_807 == 0.0f));
  let x_809 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_809);
  let x_811 : f32 = u_xlat30;
  let x_812 : f32 = u_xlat20;
  u_xlat20 = (x_811 * x_812);
  let x_814 : vec3<f32> = u_xlat10;
  let x_816 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_814.x, x_814.x, x_814.x) * x_816);
  let x_818 : vec3<f32> = u_xlat6;
  let x_819 : f32 = u_xlat20;
  u_xlat10 = (x_818 * vec3<f32>(x_819, x_819, x_819));
  let x_823 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_823) + 1.0f);
  let x_828 : f32 = u_xlat0.x;
  let x_830 : f32 = u_xlat0.x;
  u_xlat31 = (x_828 * x_830);
  let x_832 : f32 = u_xlat31;
  let x_833 : f32 = u_xlat31;
  u_xlat31 = (x_832 * x_833);
  let x_836 : f32 = u_xlat0.x;
  let x_837 : f32 = u_xlat31;
  u_xlat0.x = (x_836 * x_837);
  let x_840 : vec3<f32> = u_xlat7;
  let x_843 : vec3<f32> = (-(x_840) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_844 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = u_xlat0;
  let x_851 : vec3<f32> = u_xlat7;
  let x_852 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_848.x, x_848.x, x_848.x)) + x_851);
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat10;
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_855 * vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_861 : vec3<f32> = u_xlat4;
  let x_862 : vec3<f32> = u_xlat1;
  let x_864 : vec3<f32> = u_xlat0;
  let x_865 : vec3<f32> = ((x_861 * x_862) + x_864);
  let x_866 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  SV_Target0.w = 1.0f;
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

