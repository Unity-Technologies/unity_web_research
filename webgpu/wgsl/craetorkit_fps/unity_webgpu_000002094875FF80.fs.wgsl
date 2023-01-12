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

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_266 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
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
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
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
  let x_171 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), x_171);
  let x_173 : vec3<f32> = vs_TEXCOORD5;
  let x_176 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_179 : vec3<f32> = (x_173 + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = u_xlat5;
  let x_185 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_188);
  let x_190 : f32 = u_xlat21;
  let x_192 : f32 = u_xlat22;
  u_xlat22 = (-(x_190) + x_192);
  let x_196 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_197 : f32 = u_xlat22;
  let x_199 : f32 = u_xlat21;
  u_xlat21 = ((x_196 * x_197) + x_199);
  let x_201 : f32 = u_xlat21;
  let x_204 : f32 = x_33.x_LightShadowData.z;
  let x_207 : f32 = x_33.x_LightShadowData.w;
  u_xlat21 = ((x_201 * x_204) + x_207);
  let x_209 : f32 = u_xlat21;
  u_xlat21 = clamp(x_209, 0.0f, 1.0f);
  let x_218 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_218 == 1.0f);
  let x_220 : bool = u_xlatb22;
  if (x_220) {
    let x_224 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_224 == 1.0f);
    let x_226 : vec3<f32> = vs_TEXCOORD5;
    let x_230 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_232 : vec3<f32> = (vec3<f32>(x_226.y, x_226.y, x_226.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
    let x_233 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_236 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_238 : vec3<f32> = vs_TEXCOORD5;
    let x_241 : vec4<f32> = u_xlat5;
    let x_243 : vec3<f32> = ((vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(x_238.x, x_238.x, x_238.x)) + vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_247 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_249 : vec3<f32> = vs_TEXCOORD5;
    let x_252 : vec4<f32> = u_xlat5;
    let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_257 : vec4<f32> = u_xlat5;
    let x_260 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_262 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) + vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : bool = u_xlatb22;
    if (x_265) {
      let x_269 : vec4<f32> = u_xlat5;
      x_266 = vec3<f32>(x_269.x, x_269.y, x_269.z);
    } else {
      let x_272 : vec3<f32> = vs_TEXCOORD5;
      x_266 = x_272;
    }
    let x_273 : vec3<f32> = x_266;
    let x_274 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat5;
    let x_280 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_282 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) + -(x_280));
    let x_283 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
    let x_285 : vec4<f32> = u_xlat5;
    let x_289 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * x_289);
    let x_291 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_291.x, x_290.x, x_290.y, x_290.z);
    let x_294 : f32 = u_xlat5.y;
    u_xlat22 = ((x_294 * 0.25f) + 0.75f);
    let x_301 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_301 * 0.5f) + 0.75f);
    let x_305 : f32 = u_xlat22;
    let x_306 : f32 = u_xlat23;
    u_xlat5.x = max(x_305, x_306);
    let x_317 : vec4<f32> = u_xlat5;
    let x_319 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_317.x, x_317.z, x_317.w));
    u_xlat5 = x_319;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_325 : vec4<f32> = u_xlat5;
  let x_328 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_325, x_328);
  let x_330 : f32 = u_xlat22;
  u_xlat22 = clamp(x_330, 0.0f, 1.0f);
  let x_332 : vec3<f32> = vs_TEXCOORD5;
  let x_334 : vec4<f32> = x_33.x_LightPositionRange;
  let x_337 : vec3<f32> = (x_332 + -(vec3<f32>(x_334.x, x_334.y, x_334.z)));
  let x_338 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : f32 = u_xlat5.y;
  let x_344 : f32 = u_xlat5.x;
  u_xlat23 = max(abs(x_341), abs(x_344));
  let x_348 : f32 = u_xlat5.z;
  let x_350 : f32 = u_xlat23;
  u_xlat23 = max(abs(x_348), x_350);
  let x_352 : f32 = u_xlat23;
  let x_354 : f32 = x_33.x_LightProjectionParams.z;
  u_xlat23 = (x_352 + -(x_354));
  let x_357 : f32 = u_xlat23;
  u_xlat23 = max(x_357, 0.00001f);
  let x_360 : f32 = u_xlat23;
  let x_362 : f32 = x_33.x_LightProjectionParams.w;
  u_xlat23 = (x_360 * x_362);
  let x_365 : f32 = x_33.x_LightProjectionParams.y;
  let x_366 : f32 = u_xlat23;
  u_xlat23 = (x_365 / x_366);
  let x_368 : f32 = u_xlat23;
  let x_370 : f32 = x_33.x_LightProjectionParams.x;
  u_xlat23 = (x_368 + -(x_370));
  let x_373 : f32 = u_xlat23;
  u_xlat23 = (-(x_373) + 1.0f);
  let x_377 : vec4<f32> = u_xlat5;
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.z);
  let x_379 : f32 = u_xlat23;
  txVec0 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379);
  let x_392 : vec4<f32> = txVec0;
  let x_394 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_392.xyz, x_392.w);
  u_xlat23 = x_394;
  let x_397 : f32 = x_33.x_LightShadowData.x;
  u_xlat24 = (-(x_397) + 1.0f);
  let x_400 : f32 = u_xlat23;
  let x_401 : f32 = u_xlat24;
  let x_404 : f32 = x_33.x_LightShadowData.x;
  u_xlat23 = ((x_400 * x_401) + x_404);
  let x_406 : f32 = u_xlat22;
  let x_407 : f32 = u_xlat23;
  u_xlat22 = (x_406 + -(x_407));
  let x_410 : f32 = u_xlat21;
  let x_411 : f32 = u_xlat22;
  let x_413 : f32 = u_xlat23;
  u_xlat21 = ((x_410 * x_411) + x_413);
  let x_415 : vec3<f32> = u_xlat4;
  let x_416 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_415, x_416);
  let x_423 : f32 = u_xlat22;
  let x_425 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_423, x_423));
  u_xlat22 = x_425.x;
  let x_427 : f32 = u_xlat21;
  let x_428 : f32 = u_xlat22;
  u_xlat21 = (x_427 * x_428);
  let x_433 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_433;
  let x_437 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_437;
  let x_440 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_440;
  let x_442 : vec3<f32> = u_xlat4;
  let x_443 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_442, x_443);
  let x_445 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_445);
  let x_447 : f32 = u_xlat22;
  let x_449 : vec3<f32> = u_xlat4;
  let x_450 : vec3<f32> = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : f32 = u_xlat21;
  let x_457 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_462 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_462) + 1.0f);
  let x_465 : vec3<f32> = u_xlat4;
  let x_466 : f32 = u_xlat22;
  let x_469 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_465 * vec3<f32>(x_466, x_466, x_466)) + -(x_469));
  let x_472 : vec3<f32> = u_xlat4;
  let x_473 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_472, x_473);
  let x_475 : f32 = u_xlat22;
  u_xlat22 = max(x_475, 0.001f);
  let x_478 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_478);
  let x_480 : f32 = u_xlat22;
  let x_482 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_480, x_480, x_480) * x_482);
  let x_484 : vec4<f32> = u_xlat2;
  let x_486 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), -(x_486));
  let x_489 : vec4<f32> = u_xlat2;
  let x_491 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : f32 = u_xlat23;
  u_xlat23 = clamp(x_494, 0.0f, 1.0f);
  let x_496 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_496.x, x_496.y, x_496.z), x_498);
  let x_502 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_502, 0.0f, 1.0f);
  let x_506 : vec4<f32> = u_xlat5;
  let x_508 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_506.x, x_506.y, x_506.z), x_508);
  let x_510 : f32 = u_xlat9;
  u_xlat9 = clamp(x_510, 0.0f, 1.0f);
  let x_513 : f32 = u_xlat9;
  let x_514 : f32 = u_xlat9;
  u_xlat16 = (x_513 * x_514);
  let x_516 : f32 = u_xlat16;
  let x_518 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_516, x_516), vec2<f32>(x_518, x_518));
  let x_521 : f32 = u_xlat16;
  u_xlat16 = (x_521 + -0.5f);
  let x_524 : f32 = u_xlat23;
  u_xlat3.x = (-(x_524) + 1.0f);
  let x_530 : f32 = u_xlat3.x;
  let x_532 : f32 = u_xlat3.x;
  u_xlat10 = (x_530 * x_532);
  let x_534 : f32 = u_xlat10;
  let x_535 : f32 = u_xlat10;
  u_xlat10 = (x_534 * x_535);
  let x_538 : f32 = u_xlat3.x;
  let x_539 : f32 = u_xlat10;
  u_xlat3.x = (x_538 * x_539);
  let x_542 : f32 = u_xlat16;
  let x_544 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_542 * x_544) + 1.0f);
  let x_548 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_548)) + 1.0f);
  let x_553 : f32 = u_xlat10;
  let x_554 : f32 = u_xlat10;
  u_xlat17 = (x_553 * x_554);
  let x_556 : f32 = u_xlat17;
  let x_557 : f32 = u_xlat17;
  u_xlat17 = (x_556 * x_557);
  let x_559 : f32 = u_xlat10;
  let x_560 : f32 = u_xlat17;
  u_xlat10 = (x_559 * x_560);
  let x_562 : f32 = u_xlat16;
  let x_563 : f32 = u_xlat10;
  u_xlat16 = ((x_562 * x_563) + 1.0f);
  let x_566 : f32 = u_xlat16;
  let x_568 : f32 = u_xlat3.x;
  u_xlat16 = (x_566 * x_568);
  let x_570 : f32 = u_xlat23;
  let x_571 : f32 = u_xlat16;
  u_xlat16 = (x_570 * x_571);
  let x_573 : f32 = u_xlat21;
  let x_574 : f32 = u_xlat21;
  u_xlat21 = (x_573 * x_574);
  let x_576 : f32 = u_xlat21;
  u_xlat21 = max(x_576, 0.002f);
  let x_579 : f32 = u_xlat21;
  u_xlat3.x = (-(x_579) + 1.0f);
  let x_583 : f32 = u_xlat22;
  let x_586 : f32 = u_xlat3.x;
  let x_588 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_583) * x_586) + x_588);
  let x_590 : f32 = u_xlat23;
  let x_592 : f32 = u_xlat3.x;
  let x_594 : f32 = u_xlat21;
  u_xlat3.x = ((x_590 * x_592) + x_594);
  let x_597 : f32 = u_xlat22;
  let x_600 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_597) * x_600);
  let x_602 : f32 = u_xlat23;
  let x_603 : f32 = u_xlat10;
  let x_605 : f32 = u_xlat22;
  u_xlat22 = ((x_602 * x_603) + x_605);
  let x_607 : f32 = u_xlat22;
  u_xlat22 = (x_607 + 0.00001f);
  let x_609 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_609);
  let x_611 : f32 = u_xlat21;
  let x_612 : f32 = u_xlat21;
  u_xlat21 = (x_611 * x_612);
  let x_615 : f32 = u_xlat2.x;
  let x_616 : f32 = u_xlat21;
  let x_619 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_615 * x_616) + -(x_619));
  let x_624 : f32 = u_xlat3.x;
  let x_626 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_624 * x_626) + 1.0f);
  let x_630 : f32 = u_xlat21;
  u_xlat21 = (x_630 * 0.318309873f);
  let x_634 : f32 = u_xlat2.x;
  let x_636 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_634 * x_636) + 0.0000001f);
  let x_641 : f32 = u_xlat21;
  let x_643 : f32 = u_xlat2.x;
  u_xlat21 = (x_641 / x_643);
  let x_645 : f32 = u_xlat21;
  let x_646 : f32 = u_xlat22;
  u_xlat21 = (x_645 * x_646);
  let x_648 : f32 = u_xlat23;
  let x_649 : f32 = u_xlat21;
  u_xlat21 = (x_648 * x_649);
  let x_651 : f32 = u_xlat21;
  u_xlat21 = (x_651 * 3.141592741f);
  let x_654 : f32 = u_xlat21;
  u_xlat21 = max(x_654, 0.0f);
  let x_656 : vec3<f32> = u_xlat0;
  let x_657 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_656, x_657);
  let x_659 : f32 = u_xlat22;
  u_xlatb22 = !((x_659 == 0.0f));
  let x_661 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_661);
  let x_663 : f32 = u_xlat21;
  let x_664 : f32 = u_xlat22;
  u_xlat21 = (x_663 * x_664);
  let x_666 : f32 = u_xlat16;
  let x_668 : vec3<f32> = u_xlat6;
  let x_669 : vec3<f32> = (vec3<f32>(x_666, x_666, x_666) * x_668);
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_669.x, x_670.y, x_669.y, x_669.z);
  let x_672 : vec3<f32> = u_xlat6;
  let x_673 : f32 = u_xlat21;
  u_xlat3 = (x_672 * vec3<f32>(x_673, x_673, x_673));
  let x_676 : f32 = u_xlat9;
  u_xlat21 = (-(x_676) + 1.0f);
  let x_679 : f32 = u_xlat21;
  let x_680 : f32 = u_xlat21;
  u_xlat22 = (x_679 * x_680);
  let x_682 : f32 = u_xlat22;
  let x_683 : f32 = u_xlat22;
  u_xlat22 = (x_682 * x_683);
  let x_685 : f32 = u_xlat21;
  let x_686 : f32 = u_xlat22;
  u_xlat21 = (x_685 * x_686);
  let x_688 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_688) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_692 : vec3<f32> = u_xlat4;
  let x_693 : f32 = u_xlat21;
  let x_696 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_692 * vec3<f32>(x_693, x_693, x_693)) + x_696);
  let x_698 : vec3<f32> = u_xlat0;
  let x_699 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_698 * x_699);
  let x_701 : vec3<f32> = u_xlat1;
  let x_702 : vec4<f32> = u_xlat2;
  let x_705 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_701 * vec3<f32>(x_702.x, x_702.z, x_702.w)) + x_705);
  let x_708 : f32 = vs_TEXCOORD1.w;
  let x_710 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_708 / x_710);
  let x_712 : f32 = u_xlat21;
  u_xlat21 = (-(x_712) + 1.0f);
  let x_715 : f32 = u_xlat21;
  let x_717 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_715 * x_717);
  let x_719 : f32 = u_xlat21;
  u_xlat21 = max(x_719, 0.0f);
  let x_721 : f32 = u_xlat21;
  let x_724 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_721 * x_724);
  let x_726 : f32 = u_xlat21;
  let x_727 : f32 = u_xlat21;
  u_xlat21 = (x_726 * -(x_727));
  let x_730 : f32 = u_xlat21;
  u_xlat21 = exp2(x_730);
  let x_734 : vec3<f32> = u_xlat0;
  let x_735 : f32 = u_xlat21;
  let x_737 : vec3<f32> = (x_734 * vec3<f32>(x_735, x_735, x_735));
  let x_738 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
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

