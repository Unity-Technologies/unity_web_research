struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_149 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_656 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_880 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat33 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_551 : f32;
  var u_xlat26 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1077 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat35;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb33;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb33;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb33;
  if (x_121) {
    let x_126 : f32 = u_xlat2.z;
    x_122 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_129;
  }
  let x_130 : f32 = x_122;
  u_xlat3.z = x_130;
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_134, x_135);
  let x_137 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat33;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_139, x_139, x_139) * x_141);
  let x_144 : vec3<f32> = vs_TEXCOORD1;
  let x_151 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres0;
  let x_154 : vec3<f32> = (x_144 + -(vec3<f32>(x_151.x, x_151.y, x_151.z)));
  let x_155 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres1;
  let x_163 : vec3<f32> = (x_158 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_175 : vec3<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = x_149.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_175 + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat4;
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec4<f32> = u_xlat5;
  let x_190 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec3<f32> = u_xlat6;
  let x_195 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_194, x_195);
  let x_198 : vec3<f32> = u_xlat7;
  let x_199 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_198, x_199);
  let x_205 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = x_149.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_205 < x_208);
  let x_211 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_211);
  let x_215 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_215);
  let x_219 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_219);
  let x_223 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_227);
  let x_233 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_233);
  let x_237 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_237);
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat5;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(x_242.y, x_242.z, x_242.w));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat4;
  let x_250 : vec3<f32> = max(vec3<f32>(x_247.x, x_247.y, x_247.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_251.x, x_250.x, x_250.y, x_250.z);
  let x_253 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_253, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_259 : f32 = u_xlat33;
  u_xlat33 = (-(x_259) + 4.0f);
  let x_264 : f32 = u_xlat33;
  u_xlatu33 = u32(x_264);
  let x_268 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_268) << bitcast<u32>(2i));
  let x_271 : vec3<f32> = vs_TEXCOORD1;
  let x_273 : i32 = u_xlati33;
  let x_276 : i32 = u_xlati33;
  let x_280 : vec4<f32> = x_149.x_MainLightWorldToShadow[((x_273 + 1i) / 4i)][((x_276 + 1i) % 4i)];
  let x_282 : vec3<f32> = (vec3<f32>(x_271.y, x_271.y, x_271.y) * vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati33;
  let x_287 : i32 = u_xlati33;
  let x_290 : vec4<f32> = x_149.x_MainLightWorldToShadow[(x_285 / 4i)][(x_287 % 4i)];
  let x_292 : vec3<f32> = vs_TEXCOORD1;
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : vec3<f32> = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292.x, x_292.x, x_292.x)) + vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : i32 = u_xlati33;
  let x_303 : i32 = u_xlati33;
  let x_307 : vec4<f32> = x_149.x_MainLightWorldToShadow[((x_300 + 2i) / 4i)][((x_303 + 2i) % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.z, x_309.z, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_319 : i32 = u_xlati33;
  let x_322 : i32 = u_xlati33;
  let x_326 : vec4<f32> = x_149.x_MainLightWorldToShadow[((x_319 + 3i) / 4i)][((x_322 + 3i) % 4i)];
  let x_328 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_337 : vec2<f32> = vs_TEXCOORD8;
  let x_339 : f32 = x_44.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_337, x_339);
  u_xlat5 = x_340;
  let x_345 : vec2<f32> = vs_TEXCOORD8;
  let x_347 : f32 = x_44.x_GlobalMipBias.x;
  let x_348 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_345, x_347);
  u_xlat6 = vec3<f32>(x_348.x, x_348.y, x_348.z);
  let x_350 : vec4<f32> = u_xlat5;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec3<f32> = u_xlat2;
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_357, vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : f32 = u_xlat33;
  u_xlat33 = (x_361 + 0.5f);
  let x_364 : f32 = u_xlat33;
  let x_366 : vec3<f32> = u_xlat6;
  let x_367 : vec3<f32> = (vec3<f32>(x_364, x_364, x_364) * x_366);
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : f32 = u_xlat5.w;
  u_xlat33 = max(x_371, 0.0001f);
  let x_374 : vec4<f32> = u_xlat5;
  let x_376 : f32 = u_xlat33;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) / vec3<f32>(x_376, x_376, x_376));
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_383 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_384 : vec2<f32> = vec2<f32>(x_383.x, x_383.y);
  let x_388 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_384.x, x_384.y));
  let x_389 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_388.x, x_388.y, x_389.z);
  let x_391 : vec3<f32> = u_xlat6;
  let x_393 : vec4<f32> = hlslcc_FragCoord;
  let x_395 : vec2<f32> = (vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_393.x, x_393.y));
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_395.x, x_395.y, x_396.z);
  let x_399 : f32 = u_xlat6.y;
  let x_402 : f32 = x_44.x_ScaleBiasRt.x;
  let x_405 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_399 * x_402) + x_405);
  let x_407 : f32 = u_xlat33;
  u_xlat6.z = (-(x_407) + 1.0f);
  let x_412 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_412) * 0.959999979f) + 0.959999979f);
  let x_417 : f32 = u_xlat33;
  let x_420 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_417) + x_420);
  let x_423 : f32 = u_xlat33;
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.y, x_425.z, x_425.w));
  let x_428 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = x_57.x_BaseColor;
  let x_436 : vec3<f32> = ((vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = x_57.x_Metallic;
  let x_442 : f32 = x_57.x_Metallic;
  let x_444 : f32 = x_57.x_Metallic;
  let x_445 : vec3<f32> = vec3<f32>(x_440, x_442, x_444);
  let x_450 : vec4<f32> = u_xlat0;
  let x_455 : vec3<f32> = ((vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(x_450.x, x_450.y, x_450.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : f32 = x_57.x_Smoothness;
  u_xlat33 = (-(x_459) + 1.0f);
  let x_463 : f32 = u_xlat33;
  let x_464 : f32 = u_xlat33;
  u_xlat36 = (x_463 * x_464);
  let x_466 : f32 = u_xlat36;
  u_xlat36 = max(x_466, 0.0078125f);
  let x_470 : f32 = u_xlat36;
  let x_471 : f32 = u_xlat36;
  u_xlat37 = (x_470 * x_471);
  let x_473 : f32 = u_xlat35;
  u_xlat35 = (x_473 + 1.0f);
  let x_475 : f32 = u_xlat35;
  u_xlat35 = clamp(x_475, 0.0f, 1.0f);
  let x_478 : f32 = u_xlat36;
  u_xlat38 = ((x_478 * 4.0f) + 2.0f);
  let x_486 : vec3<f32> = u_xlat6;
  let x_489 : f32 = x_44.x_GlobalMipBias.x;
  let x_490 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_486.x, x_486.z), x_489);
  u_xlat6.x = x_490.x;
  let x_495 : f32 = u_xlat6.x;
  u_xlat17 = (x_495 + -1.0f);
  let x_498 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_499 : f32 = u_xlat17;
  u_xlat17 = ((x_498 * x_499) + 1.0f);
  let x_503 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_503, 1.0f);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec2<f32> = vec2<f32>(x_507.x, x_507.y);
  let x_510 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_508.x, x_508.y, x_510);
  let x_522 : vec3<f32> = txVec0;
  let x_524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_522.xy, x_522.z);
  u_xlat4.x = x_524;
  let x_528 : f32 = x_149.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat4.x;
  let x_534 : f32 = x_149.x_MainLightShadowParams.x;
  let x_536 : f32 = u_xlat15;
  u_xlat4.x = ((x_532 * x_534) + x_536);
  let x_541 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_541);
  let x_545 : f32 = u_xlat4.z;
  u_xlatb26 = (x_545 >= 1.0f);
  let x_547 : bool = u_xlatb26;
  let x_548 : bool = u_xlatb15;
  u_xlatb15 = (x_547 | x_548);
  let x_550 : bool = u_xlatb15;
  if (x_550) {
    x_551 = 1.0f;
  } else {
    let x_556 : f32 = u_xlat4.x;
    x_551 = x_556;
  }
  let x_557 : f32 = x_551;
  u_xlat4.x = x_557;
  let x_559 : vec3<f32> = vs_TEXCOORD1;
  let x_561 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_559 + -(x_561));
  let x_564 : vec3<f32> = u_xlat7;
  let x_565 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_564, x_565);
  let x_567 : f32 = u_xlat15;
  let x_569 : f32 = x_149.x_MainLightShadowParams.z;
  let x_572 : f32 = x_149.x_MainLightShadowParams.w;
  u_xlat15 = ((x_567 * x_569) + x_572);
  let x_574 : f32 = u_xlat15;
  u_xlat15 = clamp(x_574, 0.0f, 1.0f);
  let x_578 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_578) + 1.0f);
  let x_581 : f32 = u_xlat15;
  let x_582 : f32 = u_xlat26;
  let x_585 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_581 * x_582) + x_585);
  let x_588 : f32 = u_xlat17;
  let x_591 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_588, x_588, x_588) * vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec3<f32> = u_xlat3;
  let x_596 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(-(x_594), x_596);
  let x_598 : f32 = u_xlat15;
  let x_599 : f32 = u_xlat15;
  u_xlat15 = (x_598 + x_599);
  let x_602 : vec3<f32> = u_xlat2;
  let x_603 : f32 = u_xlat15;
  let x_607 : vec3<f32> = u_xlat3;
  let x_609 : vec3<f32> = ((x_602 * -(vec3<f32>(x_603, x_603, x_603))) + -(x_607));
  let x_610 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec3<f32> = u_xlat2;
  let x_613 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_612, x_613);
  let x_615 : f32 = u_xlat15;
  u_xlat15 = clamp(x_615, 0.0f, 1.0f);
  let x_617 : f32 = u_xlat15;
  u_xlat15 = (-(x_617) + 1.0f);
  let x_620 : f32 = u_xlat15;
  let x_621 : f32 = u_xlat15;
  u_xlat15 = (x_620 * x_621);
  let x_623 : f32 = u_xlat15;
  let x_624 : f32 = u_xlat15;
  u_xlat15 = (x_623 * x_624);
  let x_626 : f32 = u_xlat33;
  u_xlat26 = ((-(x_626) * 0.699999988f) + 1.700000048f);
  let x_632 : f32 = u_xlat33;
  let x_633 : f32 = u_xlat26;
  u_xlat33 = (x_632 * x_633);
  let x_635 : f32 = u_xlat33;
  u_xlat33 = (x_635 * 6.0f);
  let x_646 : vec4<f32> = u_xlat8;
  let x_648 : f32 = u_xlat33;
  let x_649 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_646.x, x_646.y, x_646.z), x_648);
  u_xlat8 = x_649;
  let x_651 : f32 = u_xlat8.w;
  u_xlat33 = (x_651 + -1.0f);
  let x_658 : f32 = x_656.unity_SpecCube0_HDR.w;
  let x_659 : f32 = u_xlat33;
  u_xlat33 = ((x_658 * x_659) + 1.0f);
  let x_662 : f32 = u_xlat33;
  u_xlat33 = max(x_662, 0.0f);
  let x_664 : f32 = u_xlat33;
  u_xlat33 = log2(x_664);
  let x_666 : f32 = u_xlat33;
  let x_668 : f32 = x_656.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_666 * x_668);
  let x_670 : f32 = u_xlat33;
  u_xlat33 = exp2(x_670);
  let x_672 : f32 = u_xlat33;
  let x_674 : f32 = x_656.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_672 * x_674);
  let x_676 : vec4<f32> = u_xlat8;
  let x_678 : f32 = u_xlat33;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678));
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_685 : f32 = u_xlat36;
  let x_687 : f32 = u_xlat36;
  u_xlat28 = ((vec2<f32>(x_685, x_685) * vec2<f32>(x_687, x_687)) + vec2<f32>(-1.0f, 1.0f));
  let x_693 : f32 = u_xlat28.y;
  u_xlat33 = (1.0f / x_693);
  let x_696 : vec4<f32> = u_xlat0;
  let x_699 : f32 = u_xlat35;
  u_xlat9 = (-(vec3<f32>(x_696.x, x_696.y, x_696.z)) + vec3<f32>(x_699, x_699, x_699));
  let x_702 : f32 = u_xlat15;
  let x_704 : vec3<f32> = u_xlat9;
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_702, x_702, x_702) * x_704) + vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : f32 = u_xlat33;
  let x_711 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_709, x_709, x_709) * x_711);
  let x_713 : vec4<f32> = u_xlat8;
  let x_715 : vec3<f32> = u_xlat9;
  let x_716 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * x_715);
  let x_717 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat5;
  let x_721 : vec3<f32> = u_xlat12;
  let x_723 : vec4<f32> = u_xlat8;
  let x_725 : vec3<f32> = ((vec3<f32>(x_719.x, x_719.y, x_719.z) * x_721) + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_729 : f32 = u_xlat4.x;
  let x_731 : f32 = x_656.unity_LightData.z;
  u_xlat33 = (x_729 * x_731);
  let x_733 : vec3<f32> = u_xlat2;
  let x_735 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_733, vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : f32 = u_xlat35;
  u_xlat35 = clamp(x_738, 0.0f, 1.0f);
  let x_740 : f32 = u_xlat33;
  let x_741 : f32 = u_xlat35;
  u_xlat33 = (x_740 * x_741);
  let x_743 : f32 = u_xlat33;
  let x_745 : vec3<f32> = u_xlat7;
  let x_746 : vec3<f32> = (vec3<f32>(x_743, x_743, x_743) * x_745);
  let x_747 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_749 : vec3<f32> = u_xlat3;
  let x_751 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_749 + vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec3<f32> = u_xlat7;
  let x_755 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_754, x_755);
  let x_757 : f32 = u_xlat33;
  u_xlat33 = max(x_757, 1.17549435e-37f);
  let x_760 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_760);
  let x_762 : f32 = u_xlat33;
  let x_764 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_762, x_762, x_762) * x_764);
  let x_766 : vec3<f32> = u_xlat2;
  let x_767 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_766, x_767);
  let x_769 : f32 = u_xlat33;
  u_xlat33 = clamp(x_769, 0.0f, 1.0f);
  let x_772 : vec4<f32> = x_44.x_MainLightPosition;
  let x_774 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_772.x, x_772.y, x_772.z), x_774);
  let x_776 : f32 = u_xlat35;
  u_xlat35 = clamp(x_776, 0.0f, 1.0f);
  let x_778 : f32 = u_xlat33;
  let x_779 : f32 = u_xlat33;
  u_xlat33 = (x_778 * x_779);
  let x_781 : f32 = u_xlat33;
  let x_783 : f32 = u_xlat28.x;
  u_xlat33 = ((x_781 * x_783) + 1.000010014f);
  let x_787 : f32 = u_xlat35;
  let x_788 : f32 = u_xlat35;
  u_xlat35 = (x_787 * x_788);
  let x_790 : f32 = u_xlat33;
  let x_791 : f32 = u_xlat33;
  u_xlat33 = (x_790 * x_791);
  let x_793 : f32 = u_xlat35;
  u_xlat35 = max(x_793, 0.100000001f);
  let x_796 : f32 = u_xlat33;
  let x_797 : f32 = u_xlat35;
  u_xlat33 = (x_796 * x_797);
  let x_799 : f32 = u_xlat38;
  let x_800 : f32 = u_xlat33;
  u_xlat33 = (x_799 * x_800);
  let x_802 : f32 = u_xlat37;
  let x_803 : f32 = u_xlat33;
  u_xlat33 = (x_802 / x_803);
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : f32 = u_xlat33;
  let x_810 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_805.x, x_805.y, x_805.z) * vec3<f32>(x_807, x_807, x_807)) + x_810);
  let x_812 : vec4<f32> = u_xlat4;
  let x_814 : vec3<f32> = u_xlat7;
  let x_815 : vec3<f32> = (vec3<f32>(x_812.x, x_812.y, x_812.z) * x_814);
  let x_816 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_819 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_821 : f32 = x_656.unity_LightData.y;
  u_xlat33 = min(x_819, x_821);
  let x_823 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_823));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_835 : u32 = u_xlatu_loop_1;
    let x_836 : u32 = u_xlatu33;
    if ((x_835 < x_836)) {
    } else {
      break;
    }
    let x_839 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_839 >> 2u);
    let x_842 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_842 & 3u));
    let x_845 : u32 = u_xlatu36;
    let x_848 : vec4<f32> = x_656.unity_LightIndices[bitcast<i32>(x_845)];
    let x_858 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_863 : vec4<u32> = indexable[x_858];
    u_xlat36 = dot(x_848, bitcast<vec4<f32>>(x_863));
    let x_867 : f32 = u_xlat36;
    u_xlati36 = i32(x_867);
    let x_869 : vec3<f32> = vs_TEXCOORD1;
    let x_881 : i32 = u_xlati36;
    let x_883 : vec4<f32> = x_880.x_AdditionalLightsPosition[x_881];
    let x_886 : i32 = u_xlati36;
    let x_888 : vec4<f32> = x_880.x_AdditionalLightsPosition[x_886];
    let x_890 : vec3<f32> = ((-(x_869) * vec3<f32>(x_883.w, x_883.w, x_883.w)) + vec3<f32>(x_888.x, x_888.y, x_888.z));
    let x_891 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
    let x_894 : vec4<f32> = u_xlat8;
    let x_896 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_894.x, x_894.y, x_894.z), vec3<f32>(x_896.x, x_896.y, x_896.z));
    let x_899 : f32 = u_xlat39;
    u_xlat39 = max(x_899, 6.10351562e-05f);
    let x_903 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_903);
    let x_905 : f32 = u_xlat40;
    let x_907 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_905, x_905, x_905) * vec3<f32>(x_907.x, x_907.y, x_907.z));
    let x_911 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_911);
    let x_913 : f32 = u_xlat39;
    let x_914 : i32 = u_xlati36;
    let x_916 : f32 = x_880.x_AdditionalLightsAttenuation[x_914].x;
    u_xlat39 = (x_913 * x_916);
    let x_918 : f32 = u_xlat39;
    let x_920 : f32 = u_xlat39;
    u_xlat39 = ((-(x_918) * x_920) + 1.0f);
    let x_923 : f32 = u_xlat39;
    u_xlat39 = max(x_923, 0.0f);
    let x_925 : f32 = u_xlat39;
    let x_926 : f32 = u_xlat39;
    u_xlat39 = (x_925 * x_926);
    let x_928 : f32 = u_xlat39;
    let x_929 : f32 = u_xlat41;
    u_xlat39 = (x_928 * x_929);
    let x_931 : i32 = u_xlati36;
    let x_933 : vec4<f32> = x_880.x_AdditionalLightsSpotDir[x_931];
    let x_935 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), x_935);
    let x_937 : f32 = u_xlat41;
    let x_938 : i32 = u_xlati36;
    let x_940 : f32 = x_880.x_AdditionalLightsAttenuation[x_938].z;
    let x_942 : i32 = u_xlati36;
    let x_944 : f32 = x_880.x_AdditionalLightsAttenuation[x_942].w;
    u_xlat41 = ((x_937 * x_940) + x_944);
    let x_946 : f32 = u_xlat41;
    u_xlat41 = clamp(x_946, 0.0f, 1.0f);
    let x_948 : f32 = u_xlat41;
    let x_949 : f32 = u_xlat41;
    u_xlat41 = (x_948 * x_949);
    let x_951 : f32 = u_xlat39;
    let x_952 : f32 = u_xlat41;
    u_xlat39 = (x_951 * x_952);
    let x_955 : f32 = u_xlat17;
    let x_957 : i32 = u_xlati36;
    let x_959 : vec4<f32> = x_880.x_AdditionalLightsColor[x_957];
    u_xlat10 = (vec3<f32>(x_955, x_955, x_955) * vec3<f32>(x_959.x, x_959.y, x_959.z));
    let x_962 : vec3<f32> = u_xlat2;
    let x_963 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_962, x_963);
    let x_965 : f32 = u_xlat36;
    u_xlat36 = clamp(x_965, 0.0f, 1.0f);
    let x_967 : f32 = u_xlat36;
    let x_968 : f32 = u_xlat39;
    u_xlat36 = (x_967 * x_968);
    let x_970 : f32 = u_xlat36;
    let x_972 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_970, x_970, x_970) * x_972);
    let x_974 : vec4<f32> = u_xlat8;
    let x_976 : f32 = u_xlat40;
    let x_979 : vec3<f32> = u_xlat3;
    let x_980 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(x_976, x_976, x_976)) + x_979);
    let x_981 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
    let x_983 : vec4<f32> = u_xlat8;
    let x_985 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_983.x, x_983.y, x_983.z), vec3<f32>(x_985.x, x_985.y, x_985.z));
    let x_988 : f32 = u_xlat36;
    u_xlat36 = max(x_988, 1.17549435e-37f);
    let x_990 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_990);
    let x_992 : f32 = u_xlat36;
    let x_994 : vec4<f32> = u_xlat8;
    let x_996 : vec3<f32> = (vec3<f32>(x_992, x_992, x_992) * vec3<f32>(x_994.x, x_994.y, x_994.z));
    let x_997 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
    let x_999 : vec3<f32> = u_xlat2;
    let x_1000 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(x_999, vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
    let x_1003 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1003, 0.0f, 1.0f);
    let x_1005 : vec3<f32> = u_xlat9;
    let x_1006 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1005, vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
    let x_1009 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1009, 0.0f, 1.0f);
    let x_1011 : f32 = u_xlat36;
    let x_1012 : f32 = u_xlat36;
    u_xlat36 = (x_1011 * x_1012);
    let x_1014 : f32 = u_xlat36;
    let x_1016 : f32 = u_xlat28.x;
    u_xlat36 = ((x_1014 * x_1016) + 1.000010014f);
    let x_1019 : f32 = u_xlat39;
    let x_1020 : f32 = u_xlat39;
    u_xlat39 = (x_1019 * x_1020);
    let x_1022 : f32 = u_xlat36;
    let x_1023 : f32 = u_xlat36;
    u_xlat36 = (x_1022 * x_1023);
    let x_1025 : f32 = u_xlat39;
    u_xlat39 = max(x_1025, 0.100000001f);
    let x_1027 : f32 = u_xlat36;
    let x_1028 : f32 = u_xlat39;
    u_xlat36 = (x_1027 * x_1028);
    let x_1030 : f32 = u_xlat38;
    let x_1031 : f32 = u_xlat36;
    u_xlat36 = (x_1030 * x_1031);
    let x_1033 : f32 = u_xlat37;
    let x_1034 : f32 = u_xlat36;
    u_xlat36 = (x_1033 / x_1034);
    let x_1036 : vec4<f32> = u_xlat0;
    let x_1038 : f32 = u_xlat36;
    let x_1041 : vec3<f32> = u_xlat12;
    let x_1042 : vec3<f32> = ((vec3<f32>(x_1036.x, x_1036.y, x_1036.z) * vec3<f32>(x_1038, x_1038, x_1038)) + x_1041);
    let x_1043 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
    let x_1045 : vec4<f32> = u_xlat8;
    let x_1047 : vec3<f32> = u_xlat10;
    let x_1049 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1045.x, x_1045.y, x_1045.z) * x_1047) + x_1049);

    continuing {
      let x_1051 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1051 + bitcast<u32>(1i));
    }
  }
  let x_1053 : vec4<f32> = u_xlat5;
  let x_1055 : vec3<f32> = u_xlat6;
  let x_1058 : vec4<f32> = u_xlat4;
  let x_1060 : vec3<f32> = ((vec3<f32>(x_1053.x, x_1053.y, x_1053.z) * vec3<f32>(x_1055.x, x_1055.x, x_1055.x)) + vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1065 : vec3<f32> = u_xlat7;
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1068 : vec3<f32> = (x_1065 + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1074 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1074 == 1.0f);
  let x_1076 : bool = u_xlatb0;
  if (x_1076) {
    let x_1081 : f32 = u_xlat1.x;
    x_1077 = x_1081;
  } else {
    x_1077 = 1.0f;
  }
  let x_1083 : f32 = x_1077;
  SV_Target0.w = x_1083;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

