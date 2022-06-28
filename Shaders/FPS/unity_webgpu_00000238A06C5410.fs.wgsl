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
  unity_ObjectToWorld : mat4x4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat30 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> u_xlat33 : f32;

var<private> u_xlatb33 : bool;

var<private> u_xlat24 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlatb31 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat12 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat22 : f32;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_475 : vec3<f32>;
  var txVec0 : vec4<f32>;
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
  let x_78 : vec2<f32> = vs_TEXCOORD0;
  let x_79 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_78);
  u_xlat4 = vec2<f32>(x_79.x, x_79.w);
  let x_82 : vec3<f32> = vs_TEXCOORD4;
  let x_87 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat5 = (vec3<f32>(x_82.z, x_82.y, x_82.x) + -(vec3<f32>(x_87.z, x_87.y, x_87.x)));
  let x_92 : vec3<f32> = u_xlat5;
  let x_96 : vec2<f32> = (vec2<f32>(x_92.x, x_92.z) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_97 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_97.x, x_96.x, x_97.z, x_96.y);
  let x_102 : f32 = x_18.x_Cutoff;
  let x_104 : f32 = x_18.x_Cutoff;
  u_xlat31 = (x_102 + x_104);
  let x_109 : f32 = u_xlat5.y;
  let x_112 : f32 = u_xlat31;
  u_xlat6.x = ((x_109 * 2.0f) + x_112);
  let x_118 : f32 = u_xlat5.y;
  let x_122 : f32 = x_18.x_Cutoff;
  u_xlat7.x = ((x_118 * 4.0f) + x_122);
  let x_127 : f32 = x_18.x_bounds.y;
  u_xlat31 = (x_127 + 0.200000003f);
  let x_135 : vec4<f32> = u_xlat6;
  let x_137 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_135.x, x_135.y));
  u_xlat32 = x_137.x;
  let x_141 : f32 = u_xlat6.w;
  u_xlat7.y = x_141;
  let x_147 : vec3<f32> = u_xlat7;
  let x_149 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_147.x, x_147.y));
  u_xlat33 = x_149.x;
  let x_151 : f32 = u_xlat32;
  let x_153 : f32 = u_xlat33;
  u_xlat32 = dot(vec2<f32>(x_151, x_151), vec2<f32>(x_153, x_153));
  let x_156 : f32 = u_xlat31;
  u_xlat33 = (x_156 * 0.5f);
  let x_160 : f32 = x_18.x_Cutoff;
  let x_161 : f32 = u_xlat31;
  let x_163 : f32 = u_xlat33;
  u_xlat31 = ((x_160 * x_161) + -(x_163));
  let x_170 : f32 = u_xlat5.y;
  let x_171 : f32 = u_xlat31;
  u_xlatb33 = (x_170 >= x_171);
  let x_174 : f32 = u_xlat31;
  let x_177 : f32 = x_18.x_EdgeSizeBot;
  u_xlat24 = (x_174 + -(x_177));
  let x_181 : f32 = u_xlat31;
  let x_182 : f32 = u_xlat24;
  u_xlat34 = (x_181 + -(x_182));
  let x_185 : f32 = u_xlat24;
  let x_188 : f32 = u_xlat5.y;
  u_xlat24 = (-(x_185) + x_188);
  let x_191 : f32 = u_xlat34;
  u_xlat34 = (1.0f / x_191);
  let x_193 : f32 = u_xlat34;
  let x_194 : f32 = u_xlat24;
  u_xlat24 = (x_193 * x_194);
  let x_196 : f32 = u_xlat24;
  u_xlat24 = clamp(x_196, 0.0f, 1.0f);
  let x_199 : f32 = u_xlat24;
  u_xlat34 = ((x_199 * -2.0f) + 3.0f);
  let x_204 : f32 = u_xlat24;
  let x_205 : f32 = u_xlat24;
  u_xlat24 = (x_204 * x_205);
  let x_207 : f32 = u_xlat31;
  let x_210 : f32 = x_18.x_EdgeSizeTop;
  u_xlat5.x = (x_207 + x_210);
  let x_213 : f32 = u_xlat31;
  let x_215 : f32 = u_xlat5.x;
  u_xlat31 = (x_213 + -(x_215));
  let x_219 : f32 = u_xlat5.x;
  let x_222 : f32 = u_xlat5.y;
  u_xlat5.x = (-(x_219) + x_222);
  let x_225 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_225);
  let x_227 : f32 = u_xlat31;
  let x_229 : f32 = u_xlat5.x;
  u_xlat31 = (x_227 * x_229);
  let x_231 : f32 = u_xlat31;
  u_xlat31 = clamp(x_231, 0.0f, 1.0f);
  let x_233 : f32 = u_xlat31;
  u_xlat5.x = ((x_233 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat31;
  let x_238 : f32 = u_xlat31;
  u_xlat31 = (x_237 * x_238);
  let x_240 : f32 = u_xlat31;
  let x_242 : f32 = u_xlat5.x;
  u_xlat31 = (x_240 * x_242);
  let x_249 : vec2<f32> = vs_TEXCOORD0;
  let x_250 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_249);
  u_xlat5 = vec3<f32>(x_250.x, x_250.y, x_250.z);
  let x_252 : vec3<f32> = u_xlat5;
  let x_255 : vec4<f32> = x_18.x_Color;
  let x_257 : vec3<f32> = (x_252 * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_265 : vec2<f32> = vs_TEXCOORD0;
  let x_266 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_265);
  u_xlat7 = vec3<f32>(x_266.x, x_266.y, x_266.w);
  let x_270 : f32 = u_xlat7.z;
  let x_272 : f32 = u_xlat7.x;
  u_xlat7.x = (x_270 * x_272);
  let x_275 : vec3<f32> = u_xlat7;
  let x_281 : vec2<f32> = ((vec2<f32>(x_275.x, x_275.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_282 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_281.x, x_281.y, x_282.z);
  let x_285 : vec3<f32> = u_xlat7;
  let x_287 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec2<f32>(x_285.x, x_285.y), vec2<f32>(x_287.x, x_287.y));
  let x_290 : f32 = u_xlat35;
  u_xlat35 = min(x_290, 1.0f);
  let x_292 : f32 = u_xlat35;
  u_xlat35 = (-(x_292) + 1.0f);
  let x_295 : f32 = u_xlat35;
  u_xlat7.z = sqrt(x_295);
  let x_298 : vec2<f32> = u_xlat4;
  let x_301 : f32 = x_18.x_Metallic;
  let x_304 : f32 = x_18.x_Glossiness;
  u_xlat4 = (x_298 * vec2<f32>(x_301, x_304));
  let x_307 : f32 = u_xlat34;
  let x_309 : f32 = u_xlat24;
  u_xlat24 = ((-(x_307) * x_309) + 1.0f);
  let x_312 : f32 = u_xlat24;
  let x_314 : f32 = u_xlat4.x;
  u_xlat4.x = (x_312 * x_314);
  let x_317 : bool = u_xlatb33;
  u_xlat33 = select(1.0f, 0.0f, x_317);
  let x_319 : f32 = u_xlat32;
  let x_320 : f32 = u_xlat31;
  let x_322 : f32 = u_xlat33;
  u_xlat31 = ((x_319 * x_320) + x_322);
  let x_324 : f32 = u_xlat31;
  let x_326 : f32 = x_18.x_Cutoff;
  u_xlat31 = (x_324 + -(x_326));
  let x_329 : f32 = u_xlat31;
  let x_332 : f32 = x_18.x_Cutoff2;
  u_xlat31 = (x_329 + -(x_332));
  let x_336 : f32 = u_xlat31;
  u_xlatb31 = (x_336 < 0.0f);
  let x_338 : bool = u_xlatb31;
  if (((select(0i, 1i, x_338) * -1i) != 0i)) {
    discard;
  }
  let x_347 : vec3<f32> = vs_TEXCOORD4;
  let x_351 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat8 = (vec3<f32>(x_347.y, x_347.y, x_347.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_355 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_357 : vec3<f32> = vs_TEXCOORD4;
  let x_360 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + x_360);
  let x_364 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_366 : vec3<f32> = vs_TEXCOORD4;
  let x_369 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + x_369);
  let x_371 : vec3<f32> = u_xlat8;
  let x_373 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat8 = (x_371 + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_379 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat9.x = x_379;
  let x_382 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat9.y = x_382;
  let x_385 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat9.z = x_385;
  let x_387 : vec4<f32> = u_xlat2;
  let x_389 : vec3<f32> = u_xlat9;
  u_xlat31 = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), x_389);
  let x_391 : vec3<f32> = vs_TEXCOORD4;
  let x_394 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_397 : vec3<f32> = (x_391 + -(vec3<f32>(x_394.x, x_394.y, x_394.z)));
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat2;
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_400.x, x_400.y, x_400.z), vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_407 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_407);
  let x_410 : f32 = u_xlat31;
  let x_413 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_410) + x_413);
  let x_417 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_419 : f32 = u_xlat2.x;
  let x_421 : f32 = u_xlat31;
  u_xlat31 = ((x_417 * x_419) + x_421);
  let x_423 : f32 = u_xlat31;
  let x_426 : f32 = x_18.x_LightShadowData.z;
  let x_429 : f32 = x_18.x_LightShadowData.w;
  u_xlat31 = ((x_423 * x_426) + x_429);
  let x_431 : f32 = u_xlat31;
  u_xlat31 = clamp(x_431, 0.0f, 1.0f);
  let x_436 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_436 == 1.0f);
  let x_438 : bool = u_xlatb2;
  if (x_438) {
    let x_442 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_442 == 1.0f);
    let x_445 : vec3<f32> = vs_TEXCOORD4;
    let x_449 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_445.y, x_445.y, x_445.y) * vec3<f32>(x_449.x, x_449.y, x_449.z));
    let x_453 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_455 : vec3<f32> = vs_TEXCOORD4;
    let x_458 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_455.x, x_455.x, x_455.x)) + x_458);
    let x_461 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_463 : vec3<f32> = vs_TEXCOORD4;
    let x_466 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.z, x_463.z, x_463.z)) + x_466);
    let x_468 : vec3<f32> = u_xlat12;
    let x_470 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_468 + vec3<f32>(x_470.x, x_470.y, x_470.z));
    let x_473 : bool = u_xlatb2;
    if (x_473) {
      let x_478 : vec3<f32> = u_xlat12;
      x_475 = x_478;
    } else {
      let x_480 : vec3<f32> = vs_TEXCOORD4;
      x_475 = x_480;
    }
    let x_481 : vec3<f32> = x_475;
    let x_482 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
    let x_484 : vec4<f32> = u_xlat2;
    let x_488 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_490 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) + -(x_488));
    let x_491 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
    let x_493 : vec4<f32> = u_xlat2;
    let x_497 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_498 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) * x_497);
    let x_499 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_499.x, x_498.x, x_498.y, x_498.z);
    let x_502 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_502 * 0.25f) + 0.75f);
    let x_509 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat33 = ((x_509 * 0.5f) + 0.75f);
    let x_513 : f32 = u_xlat12.x;
    let x_514 : f32 = u_xlat33;
    u_xlat2.x = max(x_513, x_514);
    let x_525 : vec4<f32> = u_xlat2;
    let x_527 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_525.x, x_525.z, x_525.w));
    u_xlat2 = x_527;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_533 : vec4<f32> = u_xlat2;
  let x_536 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_533, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_540, 0.0f, 1.0f);
  let x_543 : vec3<f32> = vs_TEXCOORD4;
  let x_545 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat12 = (x_543 + -(vec3<f32>(x_545.x, x_545.y, x_545.z)));
  let x_550 : f32 = u_xlat12.y;
  let x_553 : f32 = u_xlat12.x;
  u_xlat33 = max(abs(x_550), abs(x_553));
  let x_557 : f32 = u_xlat12.z;
  let x_559 : f32 = u_xlat33;
  u_xlat33 = max(abs(x_557), x_559);
  let x_561 : f32 = u_xlat33;
  let x_563 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat33 = (x_561 + -(x_563));
  let x_566 : f32 = u_xlat33;
  u_xlat33 = max(x_566, 0.00001f);
  let x_569 : f32 = u_xlat33;
  let x_571 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat33 = (x_569 * x_571);
  let x_574 : f32 = x_18.x_LightProjectionParams.y;
  let x_575 : f32 = u_xlat33;
  u_xlat33 = (x_574 / x_575);
  let x_577 : f32 = u_xlat33;
  let x_579 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat33 = (x_577 + -(x_579));
  let x_582 : f32 = u_xlat33;
  u_xlat33 = (-(x_582) + 1.0f);
  let x_587 : vec3<f32> = u_xlat12;
  let x_588 : f32 = u_xlat33;
  txVec0 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588);
  let x_601 : vec4<f32> = txVec0;
  let x_603 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_601.xyz, x_601.w);
  u_xlat12.x = x_603;
  let x_607 : f32 = x_18.x_LightShadowData.x;
  u_xlat22 = (-(x_607) + 1.0f);
  let x_611 : f32 = u_xlat12.x;
  let x_612 : f32 = u_xlat22;
  let x_615 : f32 = x_18.x_LightShadowData.x;
  u_xlat12.x = ((x_611 * x_612) + x_615);
  let x_619 : f32 = u_xlat12.x;
  let x_622 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_619) + x_622);
  let x_625 : f32 = u_xlat31;
  let x_627 : f32 = u_xlat2.x;
  let x_630 : f32 = u_xlat12.x;
  u_xlat31 = ((x_625 * x_627) + x_630);
  let x_632 : vec3<f32> = u_xlat8;
  let x_633 : vec3<f32> = u_xlat8;
  u_xlat2.x = dot(x_632, x_633);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_641.x, x_641.x));
  u_xlat2.x = x_643.x;
  let x_654 : vec3<f32> = u_xlat8;
  let x_655 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_654);
  u_xlat12.x = x_655.w;
  let x_659 : f32 = u_xlat12.x;
  let x_661 : f32 = u_xlat2.x;
  u_xlat2.x = (x_659 * x_661);
  let x_664 : f32 = u_xlat31;
  let x_666 : f32 = u_xlat2.x;
  u_xlat31 = (x_664 * x_666);
  let x_669 : vec3<f32> = vs_TEXCOORD1;
  let x_670 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_669, x_670);
  let x_674 : vec3<f32> = vs_TEXCOORD2;
  let x_675 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_674, x_675);
  let x_679 : vec3<f32> = vs_TEXCOORD3;
  let x_680 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_679, x_680);
  let x_683 : vec4<f32> = u_xlat2;
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_688);
  let x_690 : f32 = u_xlat32;
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = (vec3<f32>(x_690, x_690, x_690) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : f32 = u_xlat31;
  let x_701 : vec4<f32> = x_18.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_697, x_697, x_697) * vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec3<f32> = u_xlat5;
  let x_706 : vec4<f32> = x_18.x_Color;
  u_xlat5 = ((x_704 * vec3<f32>(x_706.x, x_706.y, x_706.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_712 : vec2<f32> = u_xlat4;
  let x_714 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_712.x, x_712.x, x_712.x) * x_714) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_720 : f32 = u_xlat4.x;
  u_xlat31 = ((-(x_720) * 0.959999979f) + 0.959999979f);
  let x_725 : f32 = u_xlat31;
  let x_727 : vec4<f32> = u_xlat6;
  let x_729 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_733 : f32 = u_xlat4.y;
  let x_735 : f32 = u_xlat24;
  u_xlat31 = ((-(x_733) * x_735) + 1.0f);
  let x_738 : vec3<f32> = u_xlat0;
  let x_739 : f32 = u_xlat30;
  let x_742 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_738 * vec3<f32>(x_739, x_739, x_739)) + x_742);
  let x_744 : vec3<f32> = u_xlat0;
  let x_745 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_744, x_745);
  let x_747 : f32 = u_xlat30;
  u_xlat30 = max(x_747, 0.001f);
  let x_750 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_750);
  let x_752 : f32 = u_xlat30;
  let x_754 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_752, x_752, x_752) * x_754);
  let x_756 : vec4<f32> = u_xlat2;
  let x_758 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_756.x, x_756.y, x_756.z), x_758);
  let x_760 : vec4<f32> = u_xlat2;
  let x_762 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_760.x, x_760.y, x_760.z), x_762);
  let x_764 : f32 = u_xlat32;
  u_xlat32 = clamp(x_764, 0.0f, 1.0f);
  let x_766 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_766.x, x_766.y, x_766.z), x_768);
  let x_772 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_772, 0.0f, 1.0f);
  let x_775 : vec3<f32> = u_xlat1;
  let x_776 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_775, x_776);
  let x_780 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_780, 0.0f, 1.0f);
  let x_785 : f32 = u_xlat0.x;
  let x_787 : f32 = u_xlat0.x;
  u_xlat10.x = (x_785 * x_787);
  let x_790 : vec3<f32> = u_xlat10;
  let x_792 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_790.x, x_790.x), vec2<f32>(x_792, x_792));
  let x_797 : f32 = u_xlat10.x;
  u_xlat10.x = (x_797 + -0.5f);
  let x_802 : f32 = u_xlat32;
  u_xlat20 = (-(x_802) + 1.0f);
  let x_805 : f32 = u_xlat20;
  let x_806 : f32 = u_xlat20;
  u_xlat1.x = (x_805 * x_806);
  let x_810 : f32 = u_xlat1.x;
  let x_812 : f32 = u_xlat1.x;
  u_xlat1.x = (x_810 * x_812);
  let x_815 : f32 = u_xlat20;
  let x_817 : f32 = u_xlat1.x;
  u_xlat20 = (x_815 * x_817);
  let x_820 : f32 = u_xlat10.x;
  let x_821 : f32 = u_xlat20;
  u_xlat20 = ((x_820 * x_821) + 1.0f);
  let x_824 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_824)) + 1.0f);
  let x_831 : f32 = u_xlat1.x;
  let x_833 : f32 = u_xlat1.x;
  u_xlat11 = (x_831 * x_833);
  let x_835 : f32 = u_xlat11;
  let x_836 : f32 = u_xlat11;
  u_xlat11 = (x_835 * x_836);
  let x_839 : f32 = u_xlat1.x;
  let x_840 : f32 = u_xlat11;
  u_xlat1.x = (x_839 * x_840);
  let x_844 : f32 = u_xlat10.x;
  let x_846 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_844 * x_846) + 1.0f);
  let x_851 : f32 = u_xlat10.x;
  let x_852 : f32 = u_xlat20;
  u_xlat10.x = (x_851 * x_852);
  let x_855 : f32 = u_xlat31;
  let x_856 : f32 = u_xlat31;
  u_xlat20 = (x_855 * x_856);
  let x_858 : f32 = u_xlat20;
  u_xlat20 = max(x_858, 0.002f);
  let x_861 : f32 = u_xlat20;
  u_xlat1.x = (-(x_861) + 1.0f);
  let x_865 : f32 = u_xlat30;
  let x_868 : f32 = u_xlat1.x;
  let x_870 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_865) * x_868) + x_870);
  let x_872 : f32 = u_xlat32;
  let x_874 : f32 = u_xlat1.x;
  let x_876 : f32 = u_xlat20;
  u_xlat1.x = ((x_872 * x_874) + x_876);
  let x_879 : f32 = u_xlat30;
  let x_882 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_879) * x_882);
  let x_884 : f32 = u_xlat32;
  let x_885 : f32 = u_xlat11;
  let x_887 : f32 = u_xlat30;
  u_xlat30 = ((x_884 * x_885) + x_887);
  let x_889 : f32 = u_xlat30;
  u_xlat30 = (x_889 + 0.00001f);
  let x_891 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_891);
  let x_893 : f32 = u_xlat20;
  let x_894 : f32 = u_xlat20;
  u_xlat20 = (x_893 * x_894);
  let x_897 : f32 = u_xlat2.x;
  let x_898 : f32 = u_xlat20;
  let x_901 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_897 * x_898) + -(x_901));
  let x_906 : f32 = u_xlat1.x;
  let x_908 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_906 * x_908) + 1.0f);
  let x_912 : f32 = u_xlat20;
  u_xlat20 = (x_912 * 0.318309873f);
  let x_916 : f32 = u_xlat1.x;
  let x_918 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_916 * x_918) + 0.0000001f);
  let x_923 : f32 = u_xlat20;
  let x_925 : f32 = u_xlat1.x;
  u_xlat20 = (x_923 / x_925);
  let x_927 : f32 = u_xlat20;
  let x_928 : f32 = u_xlat30;
  u_xlat10.y = (x_927 * x_928);
  let x_931 : f32 = u_xlat32;
  let x_933 : vec3<f32> = u_xlat10;
  let x_935 : vec2<f32> = (vec2<f32>(x_931, x_931) * vec2<f32>(x_933.x, x_933.y));
  let x_936 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_935.x, x_935.y, x_936.z);
  let x_939 : f32 = u_xlat10.y;
  u_xlat20 = (x_939 * 3.141592741f);
  let x_942 : f32 = u_xlat20;
  u_xlat20 = max(x_942, 0.0f);
  let x_944 : vec3<f32> = u_xlat5;
  let x_945 : vec3<f32> = u_xlat5;
  u_xlat30 = dot(x_944, x_945);
  let x_948 : f32 = u_xlat30;
  u_xlatb30 = !((x_948 == 0.0f));
  let x_950 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_950);
  let x_952 : f32 = u_xlat30;
  let x_953 : f32 = u_xlat20;
  u_xlat20 = (x_952 * x_953);
  let x_955 : vec3<f32> = u_xlat10;
  let x_957 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_955.x, x_955.x, x_955.x) * x_957);
  let x_959 : vec3<f32> = u_xlat7;
  let x_960 : f32 = u_xlat20;
  u_xlat10 = (x_959 * vec3<f32>(x_960, x_960, x_960));
  let x_964 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_964) + 1.0f);
  let x_969 : f32 = u_xlat0.x;
  let x_971 : f32 = u_xlat0.x;
  u_xlat31 = (x_969 * x_971);
  let x_973 : f32 = u_xlat31;
  let x_974 : f32 = u_xlat31;
  u_xlat31 = (x_973 * x_974);
  let x_977 : f32 = u_xlat0.x;
  let x_978 : f32 = u_xlat31;
  u_xlat0.x = (x_977 * x_978);
  let x_981 : vec3<f32> = u_xlat5;
  let x_984 : vec3<f32> = (-(x_981) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_985 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat2;
  let x_989 : vec3<f32> = u_xlat0;
  let x_992 : vec3<f32> = u_xlat5;
  let x_993 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989.x, x_989.x, x_989.x)) + x_992);
  let x_994 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec3<f32> = u_xlat10;
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_996 * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1002 : vec4<f32> = u_xlat6;
  let x_1004 : vec3<f32> = u_xlat1;
  let x_1006 : vec3<f32> = u_xlat0;
  let x_1007 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.y, x_1002.z) * x_1004) + x_1006);
  let x_1008 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
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

