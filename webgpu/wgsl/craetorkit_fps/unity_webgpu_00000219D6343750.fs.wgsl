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

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

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
  let x_327 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_325, x_327);
  let x_329 : f32 = u_xlat22;
  u_xlat22 = clamp(x_329, 0.0f, 1.0f);
  let x_331 : vec3<f32> = vs_TEXCOORD5;
  let x_333 : vec4<f32> = x_33.x_LightPositionRange;
  let x_336 : vec3<f32> = (x_331 + -(vec3<f32>(x_333.x, x_333.y, x_333.z)));
  let x_337 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : f32 = u_xlat5.y;
  let x_343 : f32 = u_xlat5.x;
  u_xlat23 = max(abs(x_340), abs(x_343));
  let x_347 : f32 = u_xlat5.z;
  let x_349 : f32 = u_xlat23;
  u_xlat23 = max(abs(x_347), x_349);
  let x_351 : f32 = u_xlat23;
  let x_353 : f32 = x_33.x_LightProjectionParams.z;
  u_xlat23 = (x_351 + -(x_353));
  let x_356 : f32 = u_xlat23;
  u_xlat23 = max(x_356, 0.00001f);
  let x_359 : f32 = u_xlat23;
  let x_361 : f32 = x_33.x_LightProjectionParams.w;
  u_xlat23 = (x_359 * x_361);
  let x_364 : f32 = x_33.x_LightProjectionParams.y;
  let x_365 : f32 = u_xlat23;
  u_xlat23 = (x_364 / x_365);
  let x_367 : f32 = u_xlat23;
  let x_369 : f32 = x_33.x_LightProjectionParams.x;
  u_xlat23 = (x_367 + -(x_369));
  let x_372 : f32 = u_xlat23;
  u_xlat23 = (-(x_372) + 1.0f);
  let x_376 : vec4<f32> = u_xlat5;
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.z);
  let x_378 : f32 = u_xlat23;
  txVec0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378);
  let x_391 : vec4<f32> = txVec0;
  let x_393 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_391.xyz, x_391.w);
  u_xlat23 = x_393;
  let x_396 : f32 = x_33.x_LightShadowData.x;
  u_xlat24 = (-(x_396) + 1.0f);
  let x_399 : f32 = u_xlat23;
  let x_400 : f32 = u_xlat24;
  let x_403 : f32 = x_33.x_LightShadowData.x;
  u_xlat23 = ((x_399 * x_400) + x_403);
  let x_405 : f32 = u_xlat22;
  let x_406 : f32 = u_xlat23;
  u_xlat22 = (x_405 + -(x_406));
  let x_409 : f32 = u_xlat21;
  let x_410 : f32 = u_xlat22;
  let x_412 : f32 = u_xlat23;
  u_xlat21 = ((x_409 * x_410) + x_412);
  let x_414 : vec3<f32> = u_xlat4;
  let x_415 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_414, x_415);
  let x_422 : f32 = u_xlat22;
  let x_424 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_422, x_422));
  u_xlat22 = x_424.x;
  let x_434 : vec3<f32> = u_xlat4;
  let x_435 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_434);
  u_xlat23 = x_435.w;
  let x_437 : f32 = u_xlat22;
  let x_438 : f32 = u_xlat23;
  u_xlat22 = (x_437 * x_438);
  let x_440 : f32 = u_xlat21;
  let x_441 : f32 = u_xlat22;
  u_xlat21 = (x_440 * x_441);
  let x_446 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_446;
  let x_450 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_450;
  let x_453 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_453;
  let x_455 : vec3<f32> = u_xlat4;
  let x_456 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_455, x_456);
  let x_458 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_458);
  let x_460 : f32 = u_xlat22;
  let x_462 : vec3<f32> = u_xlat4;
  let x_463 : vec3<f32> = (vec3<f32>(x_460, x_460, x_460) * x_462);
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : f32 = u_xlat21;
  let x_470 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_475 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_475) + 1.0f);
  let x_478 : vec3<f32> = u_xlat4;
  let x_479 : f32 = u_xlat22;
  let x_482 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_478 * vec3<f32>(x_479, x_479, x_479)) + -(x_482));
  let x_485 : vec3<f32> = u_xlat4;
  let x_486 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_485, x_486);
  let x_488 : f32 = u_xlat22;
  u_xlat22 = max(x_488, 0.001f);
  let x_491 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_491);
  let x_493 : f32 = u_xlat22;
  let x_495 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_493, x_493, x_493) * x_495);
  let x_497 : vec4<f32> = u_xlat2;
  let x_499 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_497.x, x_497.y, x_497.z), -(x_499));
  let x_502 : vec4<f32> = u_xlat2;
  let x_504 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : f32 = u_xlat23;
  u_xlat23 = clamp(x_507, 0.0f, 1.0f);
  let x_509 : vec4<f32> = u_xlat2;
  let x_511 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), x_511);
  let x_515 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_515, 0.0f, 1.0f);
  let x_519 : vec4<f32> = u_xlat5;
  let x_521 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_519.x, x_519.y, x_519.z), x_521);
  let x_523 : f32 = u_xlat9;
  u_xlat9 = clamp(x_523, 0.0f, 1.0f);
  let x_526 : f32 = u_xlat9;
  let x_527 : f32 = u_xlat9;
  u_xlat16 = (x_526 * x_527);
  let x_529 : f32 = u_xlat16;
  let x_531 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_529, x_529), vec2<f32>(x_531, x_531));
  let x_534 : f32 = u_xlat16;
  u_xlat16 = (x_534 + -0.5f);
  let x_537 : f32 = u_xlat23;
  u_xlat3.x = (-(x_537) + 1.0f);
  let x_543 : f32 = u_xlat3.x;
  let x_545 : f32 = u_xlat3.x;
  u_xlat10 = (x_543 * x_545);
  let x_547 : f32 = u_xlat10;
  let x_548 : f32 = u_xlat10;
  u_xlat10 = (x_547 * x_548);
  let x_551 : f32 = u_xlat3.x;
  let x_552 : f32 = u_xlat10;
  u_xlat3.x = (x_551 * x_552);
  let x_555 : f32 = u_xlat16;
  let x_557 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_555 * x_557) + 1.0f);
  let x_561 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_561)) + 1.0f);
  let x_566 : f32 = u_xlat10;
  let x_567 : f32 = u_xlat10;
  u_xlat17 = (x_566 * x_567);
  let x_569 : f32 = u_xlat17;
  let x_570 : f32 = u_xlat17;
  u_xlat17 = (x_569 * x_570);
  let x_572 : f32 = u_xlat10;
  let x_573 : f32 = u_xlat17;
  u_xlat10 = (x_572 * x_573);
  let x_575 : f32 = u_xlat16;
  let x_576 : f32 = u_xlat10;
  u_xlat16 = ((x_575 * x_576) + 1.0f);
  let x_579 : f32 = u_xlat16;
  let x_581 : f32 = u_xlat3.x;
  u_xlat16 = (x_579 * x_581);
  let x_583 : f32 = u_xlat23;
  let x_584 : f32 = u_xlat16;
  u_xlat16 = (x_583 * x_584);
  let x_586 : f32 = u_xlat21;
  let x_587 : f32 = u_xlat21;
  u_xlat21 = (x_586 * x_587);
  let x_589 : f32 = u_xlat21;
  u_xlat21 = max(x_589, 0.002f);
  let x_592 : f32 = u_xlat21;
  u_xlat3.x = (-(x_592) + 1.0f);
  let x_596 : f32 = u_xlat22;
  let x_599 : f32 = u_xlat3.x;
  let x_601 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_596) * x_599) + x_601);
  let x_603 : f32 = u_xlat23;
  let x_605 : f32 = u_xlat3.x;
  let x_607 : f32 = u_xlat21;
  u_xlat3.x = ((x_603 * x_605) + x_607);
  let x_610 : f32 = u_xlat22;
  let x_613 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_610) * x_613);
  let x_615 : f32 = u_xlat23;
  let x_616 : f32 = u_xlat10;
  let x_618 : f32 = u_xlat22;
  u_xlat22 = ((x_615 * x_616) + x_618);
  let x_620 : f32 = u_xlat22;
  u_xlat22 = (x_620 + 0.00001f);
  let x_622 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_622);
  let x_624 : f32 = u_xlat21;
  let x_625 : f32 = u_xlat21;
  u_xlat21 = (x_624 * x_625);
  let x_628 : f32 = u_xlat2.x;
  let x_629 : f32 = u_xlat21;
  let x_632 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_628 * x_629) + -(x_632));
  let x_637 : f32 = u_xlat3.x;
  let x_639 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_637 * x_639) + 1.0f);
  let x_643 : f32 = u_xlat21;
  u_xlat21 = (x_643 * 0.318309873f);
  let x_647 : f32 = u_xlat2.x;
  let x_649 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_647 * x_649) + 0.0000001f);
  let x_654 : f32 = u_xlat21;
  let x_656 : f32 = u_xlat2.x;
  u_xlat21 = (x_654 / x_656);
  let x_658 : f32 = u_xlat21;
  let x_659 : f32 = u_xlat22;
  u_xlat21 = (x_658 * x_659);
  let x_661 : f32 = u_xlat23;
  let x_662 : f32 = u_xlat21;
  u_xlat21 = (x_661 * x_662);
  let x_664 : f32 = u_xlat21;
  u_xlat21 = (x_664 * 3.141592741f);
  let x_667 : f32 = u_xlat21;
  u_xlat21 = max(x_667, 0.0f);
  let x_669 : vec3<f32> = u_xlat0;
  let x_670 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_669, x_670);
  let x_672 : f32 = u_xlat22;
  u_xlatb22 = !((x_672 == 0.0f));
  let x_674 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_674);
  let x_676 : f32 = u_xlat21;
  let x_677 : f32 = u_xlat22;
  u_xlat21 = (x_676 * x_677);
  let x_679 : f32 = u_xlat16;
  let x_681 : vec3<f32> = u_xlat6;
  let x_682 : vec3<f32> = (vec3<f32>(x_679, x_679, x_679) * x_681);
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_682.x, x_683.y, x_682.y, x_682.z);
  let x_685 : vec3<f32> = u_xlat6;
  let x_686 : f32 = u_xlat21;
  u_xlat3 = (x_685 * vec3<f32>(x_686, x_686, x_686));
  let x_689 : f32 = u_xlat9;
  u_xlat21 = (-(x_689) + 1.0f);
  let x_692 : f32 = u_xlat21;
  let x_693 : f32 = u_xlat21;
  u_xlat22 = (x_692 * x_693);
  let x_695 : f32 = u_xlat22;
  let x_696 : f32 = u_xlat22;
  u_xlat22 = (x_695 * x_696);
  let x_698 : f32 = u_xlat21;
  let x_699 : f32 = u_xlat22;
  u_xlat21 = (x_698 * x_699);
  let x_701 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_701) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_705 : vec3<f32> = u_xlat4;
  let x_706 : f32 = u_xlat21;
  let x_709 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_705 * vec3<f32>(x_706, x_706, x_706)) + x_709);
  let x_711 : vec3<f32> = u_xlat0;
  let x_712 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_711 * x_712);
  let x_716 : vec3<f32> = u_xlat1;
  let x_717 : vec4<f32> = u_xlat2;
  let x_720 : vec3<f32> = u_xlat0;
  let x_721 : vec3<f32> = ((x_716 * vec3<f32>(x_717.x, x_717.z, x_717.w)) + x_720);
  let x_722 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
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

