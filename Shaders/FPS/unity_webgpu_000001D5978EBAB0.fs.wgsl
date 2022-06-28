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

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat23 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_267 : vec3<f32>;
  var txVec0 : vec4<f32>;
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
      let x_270 : vec4<f32> = u_xlat5;
      x_267 = vec3<f32>(x_270.x, x_270.y, x_270.z);
    } else {
      let x_273 : vec3<f32> = vs_TEXCOORD5;
      x_267 = x_273;
    }
    let x_274 : vec3<f32> = x_267;
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat5;
    let x_281 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_283 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + -(x_281));
    let x_284 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat5;
    let x_290 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) * x_290);
    let x_292 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_292.x, x_291.x, x_291.y, x_291.z);
    let x_295 : f32 = u_xlat5.y;
    u_xlat22 = ((x_295 * 0.25f) + 0.75f);
    let x_302 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_302 * 0.5f) + 0.75f);
    let x_306 : f32 = u_xlat22;
    let x_307 : f32 = u_xlat23;
    u_xlat5.x = max(x_306, x_307);
    let x_318 : vec4<f32> = u_xlat5;
    let x_320 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_318.x, x_318.z, x_318.w));
    u_xlat5 = x_320;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_326 : vec4<f32> = u_xlat5;
  let x_328 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_326, x_328);
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
  let x_378 : vec4<f32> = u_xlat5;
  let x_379 : vec3<f32> = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : f32 = u_xlat23;
  txVec0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380);
  let x_393 : vec4<f32> = txVec0;
  let x_395 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_393.xyz, x_393.w);
  u_xlat23 = x_395;
  let x_398 : f32 = x_33.x_LightShadowData.x;
  u_xlat24 = (-(x_398) + 1.0f);
  let x_401 : f32 = u_xlat23;
  let x_402 : f32 = u_xlat24;
  let x_405 : f32 = x_33.x_LightShadowData.x;
  u_xlat23 = ((x_401 * x_402) + x_405);
  let x_407 : f32 = u_xlat22;
  let x_408 : f32 = u_xlat23;
  u_xlat22 = (x_407 + -(x_408));
  let x_411 : f32 = u_xlat21;
  let x_412 : f32 = u_xlat22;
  let x_414 : f32 = u_xlat23;
  u_xlat21 = ((x_411 * x_412) + x_414);
  let x_416 : vec3<f32> = u_xlat4;
  let x_417 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_416, x_417);
  let x_424 : f32 = u_xlat22;
  let x_426 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_424, x_424));
  u_xlat22 = x_426.x;
  let x_436 : vec3<f32> = u_xlat4;
  let x_437 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_436);
  u_xlat23 = x_437.w;
  let x_439 : f32 = u_xlat22;
  let x_440 : f32 = u_xlat23;
  u_xlat22 = (x_439 * x_440);
  let x_442 : f32 = u_xlat21;
  let x_443 : f32 = u_xlat22;
  u_xlat21 = (x_442 * x_443);
  let x_448 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_448;
  let x_452 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_452;
  let x_455 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_455;
  let x_457 : vec3<f32> = u_xlat4;
  let x_458 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_457, x_458);
  let x_460 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_460);
  let x_462 : f32 = u_xlat22;
  let x_464 : vec3<f32> = u_xlat4;
  let x_465 : vec3<f32> = (vec3<f32>(x_462, x_462, x_462) * x_464);
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : f32 = u_xlat21;
  let x_472 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_477 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_477) + 1.0f);
  let x_480 : vec3<f32> = u_xlat4;
  let x_481 : f32 = u_xlat22;
  let x_484 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_480 * vec3<f32>(x_481, x_481, x_481)) + -(x_484));
  let x_487 : vec3<f32> = u_xlat4;
  let x_488 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_487, x_488);
  let x_490 : f32 = u_xlat22;
  u_xlat22 = max(x_490, 0.001f);
  let x_493 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_493);
  let x_495 : f32 = u_xlat22;
  let x_497 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_495, x_495, x_495) * x_497);
  let x_499 : vec4<f32> = u_xlat2;
  let x_501 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_499.x, x_499.y, x_499.z), -(x_501));
  let x_504 : vec4<f32> = u_xlat2;
  let x_506 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_504.x, x_504.y, x_504.z), vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : f32 = u_xlat23;
  u_xlat23 = clamp(x_509, 0.0f, 1.0f);
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_511.x, x_511.y, x_511.z), x_513);
  let x_517 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_517, 0.0f, 1.0f);
  let x_521 : vec4<f32> = u_xlat5;
  let x_523 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), x_523);
  let x_525 : f32 = u_xlat9;
  u_xlat9 = clamp(x_525, 0.0f, 1.0f);
  let x_528 : f32 = u_xlat9;
  let x_529 : f32 = u_xlat9;
  u_xlat16 = (x_528 * x_529);
  let x_531 : f32 = u_xlat16;
  let x_533 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_531, x_531), vec2<f32>(x_533, x_533));
  let x_536 : f32 = u_xlat16;
  u_xlat16 = (x_536 + -0.5f);
  let x_539 : f32 = u_xlat23;
  u_xlat3.x = (-(x_539) + 1.0f);
  let x_545 : f32 = u_xlat3.x;
  let x_547 : f32 = u_xlat3.x;
  u_xlat10 = (x_545 * x_547);
  let x_549 : f32 = u_xlat10;
  let x_550 : f32 = u_xlat10;
  u_xlat10 = (x_549 * x_550);
  let x_553 : f32 = u_xlat3.x;
  let x_554 : f32 = u_xlat10;
  u_xlat3.x = (x_553 * x_554);
  let x_557 : f32 = u_xlat16;
  let x_559 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_557 * x_559) + 1.0f);
  let x_563 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_563)) + 1.0f);
  let x_568 : f32 = u_xlat10;
  let x_569 : f32 = u_xlat10;
  u_xlat17 = (x_568 * x_569);
  let x_571 : f32 = u_xlat17;
  let x_572 : f32 = u_xlat17;
  u_xlat17 = (x_571 * x_572);
  let x_574 : f32 = u_xlat10;
  let x_575 : f32 = u_xlat17;
  u_xlat10 = (x_574 * x_575);
  let x_577 : f32 = u_xlat16;
  let x_578 : f32 = u_xlat10;
  u_xlat16 = ((x_577 * x_578) + 1.0f);
  let x_581 : f32 = u_xlat16;
  let x_583 : f32 = u_xlat3.x;
  u_xlat16 = (x_581 * x_583);
  let x_585 : f32 = u_xlat23;
  let x_586 : f32 = u_xlat16;
  u_xlat16 = (x_585 * x_586);
  let x_588 : f32 = u_xlat21;
  let x_589 : f32 = u_xlat21;
  u_xlat21 = (x_588 * x_589);
  let x_591 : f32 = u_xlat21;
  u_xlat21 = max(x_591, 0.002f);
  let x_594 : f32 = u_xlat21;
  u_xlat3.x = (-(x_594) + 1.0f);
  let x_598 : f32 = u_xlat22;
  let x_601 : f32 = u_xlat3.x;
  let x_603 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_598) * x_601) + x_603);
  let x_605 : f32 = u_xlat23;
  let x_607 : f32 = u_xlat3.x;
  let x_609 : f32 = u_xlat21;
  u_xlat3.x = ((x_605 * x_607) + x_609);
  let x_612 : f32 = u_xlat22;
  let x_615 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_612) * x_615);
  let x_617 : f32 = u_xlat23;
  let x_618 : f32 = u_xlat10;
  let x_620 : f32 = u_xlat22;
  u_xlat22 = ((x_617 * x_618) + x_620);
  let x_622 : f32 = u_xlat22;
  u_xlat22 = (x_622 + 0.00001f);
  let x_624 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_624);
  let x_626 : f32 = u_xlat21;
  let x_627 : f32 = u_xlat21;
  u_xlat21 = (x_626 * x_627);
  let x_630 : f32 = u_xlat2.x;
  let x_631 : f32 = u_xlat21;
  let x_634 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_630 * x_631) + -(x_634));
  let x_639 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_639 * x_641) + 1.0f);
  let x_645 : f32 = u_xlat21;
  u_xlat21 = (x_645 * 0.318309873f);
  let x_649 : f32 = u_xlat2.x;
  let x_651 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_649 * x_651) + 0.0000001f);
  let x_656 : f32 = u_xlat21;
  let x_658 : f32 = u_xlat2.x;
  u_xlat21 = (x_656 / x_658);
  let x_660 : f32 = u_xlat21;
  let x_661 : f32 = u_xlat22;
  u_xlat21 = (x_660 * x_661);
  let x_663 : f32 = u_xlat23;
  let x_664 : f32 = u_xlat21;
  u_xlat21 = (x_663 * x_664);
  let x_666 : f32 = u_xlat21;
  u_xlat21 = (x_666 * 3.141592741f);
  let x_669 : f32 = u_xlat21;
  u_xlat21 = max(x_669, 0.0f);
  let x_671 : vec3<f32> = u_xlat0;
  let x_672 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_671, x_672);
  let x_674 : f32 = u_xlat22;
  u_xlatb22 = !((x_674 == 0.0f));
  let x_676 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_676);
  let x_678 : f32 = u_xlat21;
  let x_679 : f32 = u_xlat22;
  u_xlat21 = (x_678 * x_679);
  let x_681 : f32 = u_xlat16;
  let x_683 : vec3<f32> = u_xlat6;
  let x_684 : vec3<f32> = (vec3<f32>(x_681, x_681, x_681) * x_683);
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_685.y, x_684.y, x_684.z);
  let x_687 : vec3<f32> = u_xlat6;
  let x_688 : f32 = u_xlat21;
  u_xlat3 = (x_687 * vec3<f32>(x_688, x_688, x_688));
  let x_691 : f32 = u_xlat9;
  u_xlat21 = (-(x_691) + 1.0f);
  let x_694 : f32 = u_xlat21;
  let x_695 : f32 = u_xlat21;
  u_xlat22 = (x_694 * x_695);
  let x_697 : f32 = u_xlat22;
  let x_698 : f32 = u_xlat22;
  u_xlat22 = (x_697 * x_698);
  let x_700 : f32 = u_xlat21;
  let x_701 : f32 = u_xlat22;
  u_xlat21 = (x_700 * x_701);
  let x_703 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_703) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_707 : vec3<f32> = u_xlat4;
  let x_708 : f32 = u_xlat21;
  let x_711 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_707 * vec3<f32>(x_708, x_708, x_708)) + x_711);
  let x_713 : vec3<f32> = u_xlat0;
  let x_714 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_713 * x_714);
  let x_718 : vec3<f32> = u_xlat1;
  let x_719 : vec4<f32> = u_xlat2;
  let x_722 : vec3<f32> = u_xlat0;
  let x_723 : vec3<f32> = ((x_718 * vec3<f32>(x_719.x, x_719.z, x_719.w)) + x_722);
  let x_724 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
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

