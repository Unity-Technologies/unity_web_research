struct PGlobals {
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : vec2<f32>;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlatb24 : bool;

var<private> u_xlat25 : f32;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(7) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_356 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec4<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_51.x, x_51.y));
  u_xlat22 = x_53.x;
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_64.z, x_64.w));
  let x_67 : vec2<f32> = vec2<f32>(x_66.x, x_66.w);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
  let x_77 : vec4<f32> = vs_TEXCOORD0;
  let x_79 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_77.z, x_77.w));
  u_xlat16.x = x_79.x;
  let x_84 : f32 = u_xlat16.x;
  u_xlat23 = (-(x_84) + 1.0f);
  let x_88 : f32 = u_xlat22;
  let x_89 : f32 = u_xlat23;
  u_xlat22 = (x_88 * x_89);
  let x_91 : f32 = u_xlat22;
  let x_95 : f32 = x_18.x_NoiseStrength;
  let x_98 : f32 = u_xlat16.x;
  u_xlat22 = ((x_91 * x_95) + x_98);
  let x_100 : f32 = u_xlat22;
  u_xlat22 = (-(x_100) + 1.0f);
  let x_103 : f32 = u_xlat22;
  let x_106 : f32 = x_18.x_Cutoff;
  u_xlat22 = (x_103 + -(x_106));
  let x_111 : f32 = x_18.x_EdgeSize;
  u_xlat16.x = (1.0f / -(x_111));
  let x_115 : f32 = u_xlat22;
  let x_117 : f32 = u_xlat16.x;
  u_xlat22 = (x_115 * x_117);
  let x_119 : f32 = u_xlat22;
  u_xlat22 = clamp(x_119, 0.0f, 1.0f);
  let x_122 : f32 = u_xlat22;
  u_xlat16.x = ((x_122 * -2.0f) + 3.0f);
  let x_128 : f32 = u_xlat22;
  let x_129 : f32 = u_xlat22;
  u_xlat22 = (x_128 * x_129);
  let x_137 : vec4<f32> = vs_TEXCOORD0;
  let x_139 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_137.z, x_137.w));
  u_xlat3 = vec3<f32>(x_139.x, x_139.y, x_139.z);
  let x_142 : vec3<f32> = u_xlat3;
  let x_146 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_142 * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_155 : vec4<f32> = vs_TEXCOORD0;
  let x_157 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_155.z, x_155.w));
  u_xlat5 = vec3<f32>(x_157.x, x_157.y, x_157.w);
  let x_161 : f32 = u_xlat5.z;
  let x_163 : f32 = u_xlat5.x;
  u_xlat5.x = (x_161 * x_163);
  let x_166 : vec3<f32> = u_xlat5;
  let x_173 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_174 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_173.x, x_173.y, x_174.z);
  let x_176 : vec3<f32> = u_xlat5;
  let x_178 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_176.x, x_176.y), vec2<f32>(x_178.x, x_178.y));
  let x_181 : f32 = u_xlat23;
  u_xlat23 = min(x_181, 1.0f);
  let x_183 : f32 = u_xlat23;
  u_xlat23 = (-(x_183) + 1.0f);
  let x_186 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_186);
  let x_190 : f32 = u_xlat2.x;
  let x_193 : f32 = x_18.x_Metallic;
  u_xlat2.x = (x_190 * x_193);
  let x_197 : f32 = u_xlat16.x;
  let x_199 : f32 = u_xlat22;
  let x_202 : f32 = x_18.x_Cutoff;
  u_xlat22 = ((-(x_197) * x_199) + -(x_202));
  let x_205 : f32 = u_xlat22;
  u_xlat22 = (x_205 + 1.0f);
  let x_210 : f32 = u_xlat22;
  u_xlatb22 = (x_210 < 0.0f);
  let x_212 : bool = u_xlatb22;
  if (((select(0i, 1i, x_212) * -1i) != 0i)) {
    discard;
  }
  let x_221 : vec3<f32> = vs_TEXCOORD4;
  let x_225 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat16 = (vec2<f32>(x_221.y, x_221.y) * vec2<f32>(x_225.x, x_225.y));
  let x_229 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_231 : vec3<f32> = vs_TEXCOORD4;
  let x_234 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_229.x, x_229.y) * vec2<f32>(x_231.x, x_231.x)) + x_234);
  let x_238 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_240 : vec3<f32> = vs_TEXCOORD4;
  let x_243 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.z, x_240.z)) + x_243);
  let x_245 : vec2<f32> = u_xlat16;
  let x_248 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat16 = (x_245 + vec2<f32>(x_248.x, x_248.y));
  let x_254 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat6.x = x_254;
  let x_257 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat6.y = x_257;
  let x_261 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat6.z = x_261;
  let x_263 : vec3<f32> = u_xlat0;
  let x_264 : vec4<f32> = u_xlat6;
  u_xlat22 = dot(x_263, vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec3<f32> = vs_TEXCOORD4;
  let x_270 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_273 : vec3<f32> = (x_267 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec4<f32> = u_xlat6;
  let x_279 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_277.x, x_277.y, x_277.z), vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : f32 = u_xlat24;
  u_xlat24 = sqrt(x_282);
  let x_284 : f32 = u_xlat22;
  let x_286 : f32 = u_xlat24;
  u_xlat24 = (-(x_284) + x_286);
  let x_290 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_291 : f32 = u_xlat24;
  let x_293 : f32 = u_xlat22;
  u_xlat22 = ((x_290 * x_291) + x_293);
  let x_295 : f32 = u_xlat22;
  let x_297 : f32 = x_18.x_LightShadowData.z;
  let x_300 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_295 * x_297) + x_300);
  let x_302 : f32 = u_xlat22;
  u_xlat22 = clamp(x_302, 0.0f, 1.0f);
  let x_307 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_307 == 1.0f);
  let x_309 : bool = u_xlatb24;
  if (x_309) {
    let x_313 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_313 == 1.0f);
    let x_315 : vec3<f32> = vs_TEXCOORD4;
    let x_319 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_321 : vec3<f32> = (vec3<f32>(x_315.y, x_315.y, x_315.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
    let x_322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_325 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_327 : vec3<f32> = vs_TEXCOORD4;
    let x_330 : vec4<f32> = u_xlat6;
    let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.x, x_327.x)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
    let x_333 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
    let x_336 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_338 : vec3<f32> = vs_TEXCOORD4;
    let x_341 : vec4<f32> = u_xlat6;
    let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
    let x_344 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
    let x_346 : vec4<f32> = u_xlat6;
    let x_349 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_351 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) + vec3<f32>(x_349.x, x_349.y, x_349.z));
    let x_352 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_354 : bool = u_xlatb24;
    if (x_354) {
      let x_359 : vec4<f32> = u_xlat6;
      x_356 = vec3<f32>(x_359.x, x_359.y, x_359.z);
    } else {
      let x_362 : vec3<f32> = vs_TEXCOORD4;
      x_356 = x_362;
    }
    let x_363 : vec3<f32> = x_356;
    let x_364 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
    let x_366 : vec4<f32> = u_xlat6;
    let x_370 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_372 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + -(x_370));
    let x_373 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_375 : vec4<f32> = u_xlat6;
    let x_379 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_380 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) * x_379);
    let x_381 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_381.x, x_380.x, x_380.y, x_380.z);
    let x_384 : f32 = u_xlat6.y;
    u_xlat24 = ((x_384 * 0.25f) + 0.75f);
    let x_391 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_391 * 0.5f) + 0.75f);
    let x_395 : f32 = u_xlat24;
    let x_396 : f32 = u_xlat25;
    u_xlat6.x = max(x_395, x_396);
    let x_407 : vec4<f32> = u_xlat6;
    let x_409 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_407.x, x_407.z, x_407.w));
    u_xlat6 = x_409;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_415 : vec4<f32> = u_xlat6;
  let x_417 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_415, x_417);
  let x_419 : f32 = u_xlat24;
  u_xlat24 = clamp(x_419, 0.0f, 1.0f);
  let x_422 : vec4<f32> = vs_TEXCOORD6;
  let x_424 : vec4<f32> = vs_TEXCOORD6;
  let x_426 : vec2<f32> = (vec2<f32>(x_422.x, x_422.y) / vec2<f32>(x_424.w, x_424.w));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_434 : vec4<f32> = u_xlat6;
  let x_436 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_434.x, x_434.y));
  u_xlat25 = x_436.x;
  let x_438 : f32 = u_xlat24;
  let x_439 : f32 = u_xlat25;
  u_xlat24 = (x_438 + -(x_439));
  let x_442 : f32 = u_xlat22;
  let x_443 : f32 = u_xlat24;
  let x_445 : f32 = u_xlat25;
  u_xlat22 = ((x_442 * x_443) + x_445);
  let x_452 : vec2<f32> = u_xlat16;
  let x_453 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_452);
  u_xlat16.x = x_453.w;
  let x_456 : f32 = u_xlat22;
  let x_458 : f32 = u_xlat16.x;
  u_xlat22 = (x_456 * x_458);
  let x_461 : vec3<f32> = vs_TEXCOORD1;
  let x_462 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_461, x_462);
  let x_466 : vec3<f32> = vs_TEXCOORD2;
  let x_467 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_466, x_467);
  let x_471 : vec3<f32> = vs_TEXCOORD3;
  let x_472 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_471, x_472);
  let x_475 : vec4<f32> = u_xlat6;
  let x_477 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_475.x, x_475.y, x_475.z), vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_482 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_482);
  let x_485 : vec2<f32> = u_xlat16;
  let x_487 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_485.x, x_485.x, x_485.x) * vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : f32 = u_xlat22;
  let x_494 : vec4<f32> = x_18.x_LightColor0;
  let x_496 : vec3<f32> = (vec3<f32>(x_490, x_490, x_490) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec3<f32> = u_xlat3;
  let x_501 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_499 * vec3<f32>(x_501.x, x_501.y, x_501.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_507 : vec4<f32> = u_xlat2;
  let x_509 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_507.x, x_507.x, x_507.x) * x_509) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_515 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_515) * 0.959999979f) + 0.959999979f);
  let x_520 : f32 = u_xlat22;
  let x_522 : vec3<f32> = u_xlat4;
  let x_523 : vec3<f32> = (vec3<f32>(x_520, x_520, x_520) * x_522);
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_523.x, x_524.y, x_523.y, x_523.z);
  let x_527 : f32 = u_xlat2.y;
  let x_531 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_527) * x_531) + 1.0f);
  let x_534 : vec3<f32> = u_xlat0;
  let x_535 : f32 = u_xlat21;
  let x_539 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_534 * vec3<f32>(x_535, x_535, x_535)) + vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec3<f32> = u_xlat0;
  let x_543 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_542, x_543);
  let x_545 : f32 = u_xlat21;
  u_xlat21 = max(x_545, 0.001f);
  let x_548 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_548);
  let x_550 : f32 = u_xlat21;
  let x_552 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_550, x_550, x_550) * x_552);
  let x_554 : vec3<f32> = u_xlat5;
  let x_555 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_554, x_555);
  let x_557 : vec3<f32> = u_xlat5;
  let x_559 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_557, vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_564, 0.0f, 1.0f);
  let x_568 : vec3<f32> = u_xlat5;
  let x_569 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_568, x_569);
  let x_571 : f32 = u_xlat8;
  u_xlat8 = clamp(x_571, 0.0f, 1.0f);
  let x_574 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_576 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_574.x, x_574.y, x_574.z), x_576);
  let x_580 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_580, 0.0f, 1.0f);
  let x_585 : f32 = u_xlat0.x;
  let x_587 : f32 = u_xlat0.x;
  u_xlat7.x = (x_585 * x_587);
  let x_590 : vec3<f32> = u_xlat7;
  let x_592 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_590.x, x_590.x), vec2<f32>(x_592, x_592));
  let x_597 : f32 = u_xlat7.x;
  u_xlat7.x = (x_597 + -0.5f);
  let x_603 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_603) + 1.0f);
  let x_607 : f32 = u_xlat14;
  let x_608 : f32 = u_xlat14;
  u_xlat15 = (x_607 * x_608);
  let x_610 : f32 = u_xlat15;
  let x_611 : f32 = u_xlat15;
  u_xlat15 = (x_610 * x_611);
  let x_613 : f32 = u_xlat14;
  let x_614 : f32 = u_xlat15;
  u_xlat14 = (x_613 * x_614);
  let x_617 : f32 = u_xlat7.x;
  let x_618 : f32 = u_xlat14;
  u_xlat14 = ((x_617 * x_618) + 1.0f);
  let x_621 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_621)) + 1.0f);
  let x_626 : f32 = u_xlat15;
  let x_627 : f32 = u_xlat15;
  u_xlat9 = (x_626 * x_627);
  let x_629 : f32 = u_xlat9;
  let x_630 : f32 = u_xlat9;
  u_xlat9 = (x_629 * x_630);
  let x_632 : f32 = u_xlat15;
  let x_633 : f32 = u_xlat9;
  u_xlat15 = (x_632 * x_633);
  let x_636 : f32 = u_xlat7.x;
  let x_637 : f32 = u_xlat15;
  u_xlat7.x = ((x_636 * x_637) + 1.0f);
  let x_642 : f32 = u_xlat7.x;
  let x_643 : f32 = u_xlat14;
  u_xlat7.x = (x_642 * x_643);
  let x_646 : f32 = u_xlat22;
  let x_647 : f32 = u_xlat22;
  u_xlat14 = (x_646 * x_647);
  let x_649 : f32 = u_xlat14;
  u_xlat14 = max(x_649, 0.002f);
  let x_652 : f32 = u_xlat14;
  u_xlat15 = (-(x_652) + 1.0f);
  let x_655 : f32 = u_xlat21;
  let x_657 : f32 = u_xlat15;
  let x_659 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_655) * x_657) + x_659);
  let x_662 : f32 = u_xlat1.x;
  let x_663 : f32 = u_xlat15;
  let x_665 : f32 = u_xlat14;
  u_xlat15 = ((x_662 * x_663) + x_665);
  let x_667 : f32 = u_xlat21;
  let x_669 : f32 = u_xlat15;
  u_xlat21 = (abs(x_667) * x_669);
  let x_672 : f32 = u_xlat1.x;
  let x_673 : f32 = u_xlat22;
  let x_675 : f32 = u_xlat21;
  u_xlat21 = ((x_672 * x_673) + x_675);
  let x_677 : f32 = u_xlat21;
  u_xlat21 = (x_677 + 0.00001f);
  let x_680 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_680);
  let x_682 : f32 = u_xlat14;
  let x_683 : f32 = u_xlat14;
  u_xlat14 = (x_682 * x_683);
  let x_685 : f32 = u_xlat8;
  let x_686 : f32 = u_xlat14;
  let x_688 : f32 = u_xlat8;
  u_xlat15 = ((x_685 * x_686) + -(x_688));
  let x_691 : f32 = u_xlat15;
  let x_692 : f32 = u_xlat8;
  u_xlat8 = ((x_691 * x_692) + 1.0f);
  let x_695 : f32 = u_xlat14;
  u_xlat14 = (x_695 * 0.318309873f);
  let x_698 : f32 = u_xlat8;
  let x_699 : f32 = u_xlat8;
  u_xlat8 = ((x_698 * x_699) + 0.0000001f);
  let x_703 : f32 = u_xlat14;
  let x_704 : f32 = u_xlat8;
  u_xlat14 = (x_703 / x_704);
  let x_706 : f32 = u_xlat14;
  let x_707 : f32 = u_xlat21;
  u_xlat7.y = (x_706 * x_707);
  let x_710 : vec3<f32> = u_xlat1;
  let x_712 : vec3<f32> = u_xlat7;
  let x_714 : vec2<f32> = (vec2<f32>(x_710.x, x_710.x) * vec2<f32>(x_712.x, x_712.y));
  let x_715 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_714.x, x_714.y, x_715.z);
  let x_718 : f32 = u_xlat7.y;
  u_xlat14 = (x_718 * 3.141592741f);
  let x_721 : f32 = u_xlat14;
  u_xlat14 = max(x_721, 0.0f);
  let x_723 : vec3<f32> = u_xlat3;
  let x_724 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_723, x_724);
  let x_727 : f32 = u_xlat21;
  u_xlatb21 = !((x_727 == 0.0f));
  let x_729 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_729);
  let x_731 : f32 = u_xlat21;
  let x_732 : f32 = u_xlat14;
  u_xlat14 = (x_731 * x_732);
  let x_734 : vec3<f32> = u_xlat7;
  let x_736 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_734.x, x_734.x, x_734.x) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat6;
  let x_741 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741, x_741, x_741));
  let x_745 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_745) + 1.0f);
  let x_750 : f32 = u_xlat0.x;
  let x_752 : f32 = u_xlat0.x;
  u_xlat22 = (x_750 * x_752);
  let x_754 : f32 = u_xlat22;
  let x_755 : f32 = u_xlat22;
  u_xlat22 = (x_754 * x_755);
  let x_758 : f32 = u_xlat0.x;
  let x_759 : f32 = u_xlat22;
  u_xlat0.x = (x_758 * x_759);
  let x_762 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_762) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_766 : vec3<f32> = u_xlat4;
  let x_767 : vec3<f32> = u_xlat0;
  let x_770 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_766 * vec3<f32>(x_767.x, x_767.x, x_767.x)) + x_770);
  let x_772 : vec3<f32> = u_xlat7;
  let x_773 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_772 * x_773);
  let x_777 : vec4<f32> = u_xlat2;
  let x_779 : vec3<f32> = u_xlat1;
  let x_781 : vec3<f32> = u_xlat0;
  let x_782 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.z, x_777.w) * x_779) + x_781);
  let x_783 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

