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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_149 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_619 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_843 : AdditionalLights;

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
  var x_514 : f32;
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
  var x_1040 : f32;
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
  let x_340 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_337, x_339);
  let x_341 : vec3<f32> = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_346 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_347 : vec2<f32> = vec2<f32>(x_346.x, x_346.y);
  let x_351 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_347.x, x_347.y));
  let x_352 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_351.x, x_351.y, x_352.z);
  let x_354 : vec3<f32> = u_xlat6;
  let x_356 : vec4<f32> = hlslcc_FragCoord;
  let x_358 : vec2<f32> = (vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_356.x, x_356.y));
  let x_359 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_362 : f32 = u_xlat6.y;
  let x_365 : f32 = x_44.x_ScaleBiasRt.x;
  let x_368 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_362 * x_365) + x_368);
  let x_370 : f32 = u_xlat33;
  u_xlat6.z = (-(x_370) + 1.0f);
  let x_375 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_375) * 0.959999979f) + 0.959999979f);
  let x_380 : f32 = u_xlat33;
  let x_383 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_380) + x_383);
  let x_386 : f32 = u_xlat33;
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.y, x_388.z, x_388.w));
  let x_391 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = x_57.x_BaseColor;
  let x_399 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_394.x, x_394.y, x_394.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = x_57.x_Metallic;
  let x_405 : f32 = x_57.x_Metallic;
  let x_407 : f32 = x_57.x_Metallic;
  let x_408 : vec3<f32> = vec3<f32>(x_403, x_405, x_407);
  let x_413 : vec4<f32> = u_xlat0;
  let x_418 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_419 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_422 : f32 = x_57.x_Smoothness;
  u_xlat33 = (-(x_422) + 1.0f);
  let x_426 : f32 = u_xlat33;
  let x_427 : f32 = u_xlat33;
  u_xlat36 = (x_426 * x_427);
  let x_429 : f32 = u_xlat36;
  u_xlat36 = max(x_429, 0.0078125f);
  let x_433 : f32 = u_xlat36;
  let x_434 : f32 = u_xlat36;
  u_xlat37 = (x_433 * x_434);
  let x_436 : f32 = u_xlat35;
  u_xlat35 = (x_436 + 1.0f);
  let x_438 : f32 = u_xlat35;
  u_xlat35 = clamp(x_438, 0.0f, 1.0f);
  let x_441 : f32 = u_xlat36;
  u_xlat38 = ((x_441 * 4.0f) + 2.0f);
  let x_449 : vec3<f32> = u_xlat6;
  let x_452 : f32 = x_44.x_GlobalMipBias.x;
  let x_453 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_449.x, x_449.z), x_452);
  u_xlat6.x = x_453.x;
  let x_458 : f32 = u_xlat6.x;
  u_xlat17 = (x_458 + -1.0f);
  let x_461 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_462 : f32 = u_xlat17;
  u_xlat17 = ((x_461 * x_462) + 1.0f);
  let x_466 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_466, 1.0f);
  let x_470 : vec4<f32> = u_xlat4;
  let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
  let x_473 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_471.x, x_471.y, x_473);
  let x_485 : vec3<f32> = txVec0;
  let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_485.xy, x_485.z);
  u_xlat4.x = x_487;
  let x_491 : f32 = x_149.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_491) + 1.0f);
  let x_495 : f32 = u_xlat4.x;
  let x_497 : f32 = x_149.x_MainLightShadowParams.x;
  let x_499 : f32 = u_xlat15;
  u_xlat4.x = ((x_495 * x_497) + x_499);
  let x_504 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_504);
  let x_508 : f32 = u_xlat4.z;
  u_xlatb26 = (x_508 >= 1.0f);
  let x_510 : bool = u_xlatb26;
  let x_511 : bool = u_xlatb15;
  u_xlatb15 = (x_510 | x_511);
  let x_513 : bool = u_xlatb15;
  if (x_513) {
    x_514 = 1.0f;
  } else {
    let x_519 : f32 = u_xlat4.x;
    x_514 = x_519;
  }
  let x_520 : f32 = x_514;
  u_xlat4.x = x_520;
  let x_522 : vec3<f32> = vs_TEXCOORD1;
  let x_524 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_522 + -(x_524));
  let x_527 : vec3<f32> = u_xlat7;
  let x_528 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_527, x_528);
  let x_530 : f32 = u_xlat15;
  let x_532 : f32 = x_149.x_MainLightShadowParams.z;
  let x_535 : f32 = x_149.x_MainLightShadowParams.w;
  u_xlat15 = ((x_530 * x_532) + x_535);
  let x_537 : f32 = u_xlat15;
  u_xlat15 = clamp(x_537, 0.0f, 1.0f);
  let x_541 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_541) + 1.0f);
  let x_544 : f32 = u_xlat15;
  let x_545 : f32 = u_xlat26;
  let x_548 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_544 * x_545) + x_548);
  let x_551 : f32 = u_xlat17;
  let x_554 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_551, x_551, x_551) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec3<f32> = u_xlat3;
  let x_559 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(-(x_557), x_559);
  let x_561 : f32 = u_xlat15;
  let x_562 : f32 = u_xlat15;
  u_xlat15 = (x_561 + x_562);
  let x_565 : vec3<f32> = u_xlat2;
  let x_566 : f32 = u_xlat15;
  let x_570 : vec3<f32> = u_xlat3;
  let x_572 : vec3<f32> = ((x_565 * -(vec3<f32>(x_566, x_566, x_566))) + -(x_570));
  let x_573 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec3<f32> = u_xlat2;
  let x_576 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_575, x_576);
  let x_578 : f32 = u_xlat15;
  u_xlat15 = clamp(x_578, 0.0f, 1.0f);
  let x_580 : f32 = u_xlat15;
  u_xlat15 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat15;
  let x_584 : f32 = u_xlat15;
  u_xlat15 = (x_583 * x_584);
  let x_586 : f32 = u_xlat15;
  let x_587 : f32 = u_xlat15;
  u_xlat15 = (x_586 * x_587);
  let x_589 : f32 = u_xlat33;
  u_xlat26 = ((-(x_589) * 0.699999988f) + 1.700000048f);
  let x_595 : f32 = u_xlat33;
  let x_596 : f32 = u_xlat26;
  u_xlat33 = (x_595 * x_596);
  let x_598 : f32 = u_xlat33;
  u_xlat33 = (x_598 * 6.0f);
  let x_609 : vec4<f32> = u_xlat8;
  let x_611 : f32 = u_xlat33;
  let x_612 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_609.x, x_609.y, x_609.z), x_611);
  u_xlat8 = x_612;
  let x_614 : f32 = u_xlat8.w;
  u_xlat33 = (x_614 + -1.0f);
  let x_621 : f32 = x_619.unity_SpecCube0_HDR.w;
  let x_622 : f32 = u_xlat33;
  u_xlat33 = ((x_621 * x_622) + 1.0f);
  let x_625 : f32 = u_xlat33;
  u_xlat33 = max(x_625, 0.0f);
  let x_627 : f32 = u_xlat33;
  u_xlat33 = log2(x_627);
  let x_629 : f32 = u_xlat33;
  let x_631 : f32 = x_619.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_629 * x_631);
  let x_633 : f32 = u_xlat33;
  u_xlat33 = exp2(x_633);
  let x_635 : f32 = u_xlat33;
  let x_637 : f32 = x_619.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_635 * x_637);
  let x_639 : vec4<f32> = u_xlat8;
  let x_641 : f32 = u_xlat33;
  let x_643 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641, x_641, x_641));
  let x_644 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_648 : f32 = u_xlat36;
  let x_650 : f32 = u_xlat36;
  u_xlat28 = ((vec2<f32>(x_648, x_648) * vec2<f32>(x_650, x_650)) + vec2<f32>(-1.0f, 1.0f));
  let x_656 : f32 = u_xlat28.y;
  u_xlat33 = (1.0f / x_656);
  let x_659 : vec4<f32> = u_xlat0;
  let x_662 : f32 = u_xlat35;
  u_xlat9 = (-(vec3<f32>(x_659.x, x_659.y, x_659.z)) + vec3<f32>(x_662, x_662, x_662));
  let x_665 : f32 = u_xlat15;
  let x_667 : vec3<f32> = u_xlat9;
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_665, x_665, x_665) * x_667) + vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : f32 = u_xlat33;
  let x_674 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_672, x_672, x_672) * x_674);
  let x_676 : vec4<f32> = u_xlat8;
  let x_678 : vec3<f32> = u_xlat9;
  let x_679 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * x_678);
  let x_680 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat5;
  let x_684 : vec3<f32> = u_xlat12;
  let x_686 : vec4<f32> = u_xlat8;
  let x_688 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.y, x_682.z) * x_684) + vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_692 : f32 = u_xlat4.x;
  let x_694 : f32 = x_619.unity_LightData.z;
  u_xlat33 = (x_692 * x_694);
  let x_696 : vec3<f32> = u_xlat2;
  let x_698 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_696, vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : f32 = u_xlat35;
  u_xlat35 = clamp(x_701, 0.0f, 1.0f);
  let x_703 : f32 = u_xlat33;
  let x_704 : f32 = u_xlat35;
  u_xlat33 = (x_703 * x_704);
  let x_706 : f32 = u_xlat33;
  let x_708 : vec3<f32> = u_xlat7;
  let x_709 : vec3<f32> = (vec3<f32>(x_706, x_706, x_706) * x_708);
  let x_710 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec3<f32> = u_xlat3;
  let x_714 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_712 + vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec3<f32> = u_xlat7;
  let x_718 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_717, x_718);
  let x_720 : f32 = u_xlat33;
  u_xlat33 = max(x_720, 1.17549435e-37f);
  let x_723 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_723);
  let x_725 : f32 = u_xlat33;
  let x_727 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_725, x_725, x_725) * x_727);
  let x_729 : vec3<f32> = u_xlat2;
  let x_730 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_729, x_730);
  let x_732 : f32 = u_xlat33;
  u_xlat33 = clamp(x_732, 0.0f, 1.0f);
  let x_735 : vec4<f32> = x_44.x_MainLightPosition;
  let x_737 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), x_737);
  let x_739 : f32 = u_xlat35;
  u_xlat35 = clamp(x_739, 0.0f, 1.0f);
  let x_741 : f32 = u_xlat33;
  let x_742 : f32 = u_xlat33;
  u_xlat33 = (x_741 * x_742);
  let x_744 : f32 = u_xlat33;
  let x_746 : f32 = u_xlat28.x;
  u_xlat33 = ((x_744 * x_746) + 1.000010014f);
  let x_750 : f32 = u_xlat35;
  let x_751 : f32 = u_xlat35;
  u_xlat35 = (x_750 * x_751);
  let x_753 : f32 = u_xlat33;
  let x_754 : f32 = u_xlat33;
  u_xlat33 = (x_753 * x_754);
  let x_756 : f32 = u_xlat35;
  u_xlat35 = max(x_756, 0.100000001f);
  let x_759 : f32 = u_xlat33;
  let x_760 : f32 = u_xlat35;
  u_xlat33 = (x_759 * x_760);
  let x_762 : f32 = u_xlat38;
  let x_763 : f32 = u_xlat33;
  u_xlat33 = (x_762 * x_763);
  let x_765 : f32 = u_xlat37;
  let x_766 : f32 = u_xlat33;
  u_xlat33 = (x_765 / x_766);
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : f32 = u_xlat33;
  let x_773 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770, x_770, x_770)) + x_773);
  let x_775 : vec4<f32> = u_xlat4;
  let x_777 : vec3<f32> = u_xlat7;
  let x_778 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * x_777);
  let x_779 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_782 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_784 : f32 = x_619.unity_LightData.y;
  u_xlat33 = min(x_782, x_784);
  let x_786 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_786));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_798 : u32 = u_xlatu_loop_1;
    let x_799 : u32 = u_xlatu33;
    if ((x_798 < x_799)) {
    } else {
      break;
    }
    let x_802 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_802 >> 2u);
    let x_805 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_805 & 3u));
    let x_808 : u32 = u_xlatu36;
    let x_811 : vec4<f32> = x_619.unity_LightIndices[bitcast<i32>(x_808)];
    let x_821 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_826 : vec4<u32> = indexable[x_821];
    u_xlat36 = dot(x_811, bitcast<vec4<f32>>(x_826));
    let x_830 : f32 = u_xlat36;
    u_xlati36 = i32(x_830);
    let x_832 : vec3<f32> = vs_TEXCOORD1;
    let x_844 : i32 = u_xlati36;
    let x_846 : vec4<f32> = x_843.x_AdditionalLightsPosition[x_844];
    let x_849 : i32 = u_xlati36;
    let x_851 : vec4<f32> = x_843.x_AdditionalLightsPosition[x_849];
    let x_853 : vec3<f32> = ((-(x_832) * vec3<f32>(x_846.w, x_846.w, x_846.w)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
    let x_854 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
    let x_857 : vec4<f32> = u_xlat8;
    let x_859 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(x_859.x, x_859.y, x_859.z));
    let x_862 : f32 = u_xlat39;
    u_xlat39 = max(x_862, 6.10351562e-05f);
    let x_866 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_866);
    let x_868 : f32 = u_xlat40;
    let x_870 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_868, x_868, x_868) * vec3<f32>(x_870.x, x_870.y, x_870.z));
    let x_874 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_874);
    let x_876 : f32 = u_xlat39;
    let x_877 : i32 = u_xlati36;
    let x_879 : f32 = x_843.x_AdditionalLightsAttenuation[x_877].x;
    u_xlat39 = (x_876 * x_879);
    let x_881 : f32 = u_xlat39;
    let x_883 : f32 = u_xlat39;
    u_xlat39 = ((-(x_881) * x_883) + 1.0f);
    let x_886 : f32 = u_xlat39;
    u_xlat39 = max(x_886, 0.0f);
    let x_888 : f32 = u_xlat39;
    let x_889 : f32 = u_xlat39;
    u_xlat39 = (x_888 * x_889);
    let x_891 : f32 = u_xlat39;
    let x_892 : f32 = u_xlat41;
    u_xlat39 = (x_891 * x_892);
    let x_894 : i32 = u_xlati36;
    let x_896 : vec4<f32> = x_843.x_AdditionalLightsSpotDir[x_894];
    let x_898 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_896.x, x_896.y, x_896.z), x_898);
    let x_900 : f32 = u_xlat41;
    let x_901 : i32 = u_xlati36;
    let x_903 : f32 = x_843.x_AdditionalLightsAttenuation[x_901].z;
    let x_905 : i32 = u_xlati36;
    let x_907 : f32 = x_843.x_AdditionalLightsAttenuation[x_905].w;
    u_xlat41 = ((x_900 * x_903) + x_907);
    let x_909 : f32 = u_xlat41;
    u_xlat41 = clamp(x_909, 0.0f, 1.0f);
    let x_911 : f32 = u_xlat41;
    let x_912 : f32 = u_xlat41;
    u_xlat41 = (x_911 * x_912);
    let x_914 : f32 = u_xlat39;
    let x_915 : f32 = u_xlat41;
    u_xlat39 = (x_914 * x_915);
    let x_918 : f32 = u_xlat17;
    let x_920 : i32 = u_xlati36;
    let x_922 : vec4<f32> = x_843.x_AdditionalLightsColor[x_920];
    u_xlat10 = (vec3<f32>(x_918, x_918, x_918) * vec3<f32>(x_922.x, x_922.y, x_922.z));
    let x_925 : vec3<f32> = u_xlat2;
    let x_926 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_925, x_926);
    let x_928 : f32 = u_xlat36;
    u_xlat36 = clamp(x_928, 0.0f, 1.0f);
    let x_930 : f32 = u_xlat36;
    let x_931 : f32 = u_xlat39;
    u_xlat36 = (x_930 * x_931);
    let x_933 : f32 = u_xlat36;
    let x_935 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_933, x_933, x_933) * x_935);
    let x_937 : vec4<f32> = u_xlat8;
    let x_939 : f32 = u_xlat40;
    let x_942 : vec3<f32> = u_xlat3;
    let x_943 : vec3<f32> = ((vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(x_939, x_939, x_939)) + x_942);
    let x_944 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
    let x_946 : vec4<f32> = u_xlat8;
    let x_948 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_946.x, x_946.y, x_946.z), vec3<f32>(x_948.x, x_948.y, x_948.z));
    let x_951 : f32 = u_xlat36;
    u_xlat36 = max(x_951, 1.17549435e-37f);
    let x_953 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_953);
    let x_955 : f32 = u_xlat36;
    let x_957 : vec4<f32> = u_xlat8;
    let x_959 : vec3<f32> = (vec3<f32>(x_955, x_955, x_955) * vec3<f32>(x_957.x, x_957.y, x_957.z));
    let x_960 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
    let x_962 : vec3<f32> = u_xlat2;
    let x_963 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(x_962, vec3<f32>(x_963.x, x_963.y, x_963.z));
    let x_966 : f32 = u_xlat36;
    u_xlat36 = clamp(x_966, 0.0f, 1.0f);
    let x_968 : vec3<f32> = u_xlat9;
    let x_969 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_968, vec3<f32>(x_969.x, x_969.y, x_969.z));
    let x_972 : f32 = u_xlat39;
    u_xlat39 = clamp(x_972, 0.0f, 1.0f);
    let x_974 : f32 = u_xlat36;
    let x_975 : f32 = u_xlat36;
    u_xlat36 = (x_974 * x_975);
    let x_977 : f32 = u_xlat36;
    let x_979 : f32 = u_xlat28.x;
    u_xlat36 = ((x_977 * x_979) + 1.000010014f);
    let x_982 : f32 = u_xlat39;
    let x_983 : f32 = u_xlat39;
    u_xlat39 = (x_982 * x_983);
    let x_985 : f32 = u_xlat36;
    let x_986 : f32 = u_xlat36;
    u_xlat36 = (x_985 * x_986);
    let x_988 : f32 = u_xlat39;
    u_xlat39 = max(x_988, 0.100000001f);
    let x_990 : f32 = u_xlat36;
    let x_991 : f32 = u_xlat39;
    u_xlat36 = (x_990 * x_991);
    let x_993 : f32 = u_xlat38;
    let x_994 : f32 = u_xlat36;
    u_xlat36 = (x_993 * x_994);
    let x_996 : f32 = u_xlat37;
    let x_997 : f32 = u_xlat36;
    u_xlat36 = (x_996 / x_997);
    let x_999 : vec4<f32> = u_xlat0;
    let x_1001 : f32 = u_xlat36;
    let x_1004 : vec3<f32> = u_xlat12;
    let x_1005 : vec3<f32> = ((vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(x_1001, x_1001, x_1001)) + x_1004);
    let x_1006 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
    let x_1008 : vec4<f32> = u_xlat8;
    let x_1010 : vec3<f32> = u_xlat10;
    let x_1012 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1008.x, x_1008.y, x_1008.z) * x_1010) + x_1012);

    continuing {
      let x_1014 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1014 + bitcast<u32>(1i));
    }
  }
  let x_1016 : vec4<f32> = u_xlat5;
  let x_1018 : vec3<f32> = u_xlat6;
  let x_1021 : vec4<f32> = u_xlat4;
  let x_1023 : vec3<f32> = ((vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * vec3<f32>(x_1018.x, x_1018.x, x_1018.x)) + vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1028 : vec3<f32> = u_xlat7;
  let x_1029 : vec4<f32> = u_xlat0;
  let x_1031 : vec3<f32> = (x_1028 + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1037 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1037 == 1.0f);
  let x_1039 : bool = u_xlatb0;
  if (x_1039) {
    let x_1044 : f32 = u_xlat1.x;
    x_1040 = x_1044;
  } else {
    x_1040 = 1.0f;
  }
  let x_1046 : f32 = x_1040;
  SV_Target0.w = x_1046;
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

