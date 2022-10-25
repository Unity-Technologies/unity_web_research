struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
}

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

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_614 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_801 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1428 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlatb44 : bool;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb1 : bool;
  var u_xlat15 : vec3<f32>;
  var x_561 : f32;
  var x_572 : f32;
  var x_583 : f32;
  var u_xlatb3 : vec4<bool>;
  var u_xlat44 : f32;
  var u_xlatu44 : u32;
  var u_xlati44 : i32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb31 : bool;
  var x_1028 : f32;
  var u_xlat31 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu43 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati43 : i32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb43;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_291);
  let x_293 : bool = u_xlatb44;
  if (((select(0i, 1i, x_293) * -1i) != 0i)) {
    discard;
  }
  let x_302 : f32 = u_xlat43;
  u_xlat43 = (x_302 + 6.10351562e-05f);
  let x_305 : vec4<f32> = u_xlat4;
  let x_306 : f32 = u_xlat43;
  u_xlat4 = (x_305 / vec4<f32>(x_306, x_306, x_306, x_306));
  let x_309 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.x, x_309.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat12;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec4<f32> = u_xlat11;
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.x, x_334.y, x_334.z)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat4;
  let x_345 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_347 : vec3<f32> = (vec3<f32>(x_342.z, x_342.z, x_342.z) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat7;
  let x_352 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = u_xlat5;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.x, x_352.y, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat4;
  let x_363 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_365 : vec3<f32> = (vec3<f32>(x_360.w, x_360.w, x_360.w) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat8;
  let x_370 : vec4<f32> = u_xlat6;
  let x_373 : vec4<f32> = u_xlat5;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_379;
  let x_382 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_382;
  let x_385 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_385;
  let x_388 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_388;
  let x_391 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_391;
  let x_394 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_394;
  let x_397 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_397;
  let x_400 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_400;
  let x_402 : vec4<f32> = u_xlat6;
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_402 + x_403);
  let x_406 : f32 = u_xlat0.z;
  u_xlat7.x = x_406;
  let x_409 : f32 = u_xlat1.z;
  u_xlat7.y = x_409;
  let x_412 : f32 = u_xlat2.z;
  u_xlat7.z = x_412;
  let x_415 : f32 = u_xlat3.y;
  u_xlat7.w = x_415;
  let x_417 : vec4<f32> = u_xlat9;
  let x_420 : f32 = x_30.x_Smoothness0;
  let x_422 : f32 = x_30.x_Smoothness1;
  let x_424 : f32 = x_30.x_Smoothness2;
  let x_426 : f32 = x_30.x_Smoothness3;
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_417) * vec4<f32>(x_420, x_422, x_424, x_426)) + x_429);
  let x_433 : f32 = x_30.x_LayerHasMask0;
  let x_436 : f32 = x_30.x_LayerHasMask1;
  let x_439 : f32 = x_30.x_LayerHasMask2;
  let x_442 : f32 = x_30.x_LayerHasMask3;
  let x_444 : vec4<f32> = u_xlat7;
  let x_446 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_433, x_436, x_439, x_442) * x_444) + x_446);
  let x_449 : vec4<f32> = u_xlat4;
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_449, x_450);
  let x_453 : f32 = u_xlat0.x;
  u_xlat7.x = x_453;
  let x_456 : f32 = u_xlat1.x;
  u_xlat7.y = x_456;
  let x_459 : f32 = u_xlat2.x;
  u_xlat7.z = x_459;
  let x_462 : f32 = u_xlat3.x;
  u_xlat7.w = x_462;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_30.x_Metallic0;
  let x_470 : f32 = x_30.x_Metallic1;
  let x_473 : f32 = x_30.x_Metallic2;
  let x_476 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_464 + -(vec4<f32>(x_467, x_470, x_473, x_476)));
  let x_481 : f32 = x_30.x_LayerHasMask0;
  let x_483 : f32 = x_30.x_LayerHasMask1;
  let x_485 : f32 = x_30.x_LayerHasMask2;
  let x_487 : f32 = x_30.x_LayerHasMask3;
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : f32 = x_30.x_Metallic0;
  let x_494 : f32 = x_30.x_Metallic1;
  let x_496 : f32 = x_30.x_Metallic2;
  let x_498 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_481, x_483, x_485, x_487) * x_489) + vec4<f32>(x_492, x_494, x_496, x_498));
  let x_501 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_501, x_502);
  let x_506 : f32 = u_xlat0.y;
  u_xlat3.x = x_506;
  let x_509 : f32 = u_xlat1.y;
  u_xlat3.y = x_509;
  let x_512 : f32 = u_xlat2.y;
  u_xlat3.z = x_512;
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_514) + x_516);
  let x_519 : f32 = x_30.x_LayerHasMask0;
  let x_521 : f32 = x_30.x_LayerHasMask1;
  let x_523 : f32 = x_30.x_LayerHasMask2;
  let x_525 : f32 = x_30.x_LayerHasMask3;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_519, x_521, x_523, x_525) * x_527) + x_529);
  let x_532 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_532, x_533);
  let x_537 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_537 == 0.0f);
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_546 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_542) + x_546);
  let x_548 : vec3<f32> = u_xlat15;
  let x_549 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_548, x_549);
  let x_553 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_553);
  let x_556 : vec3<f32> = u_xlat15;
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_556 * vec3<f32>(x_557.x, x_557.x, x_557.x));
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat15.x;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_126.unity_MatrixV[0i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.x = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat15.y;
    x_572 = x_576;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[1i].z;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat2.y = x_580;
  let x_582 : bool = u_xlatb1;
  if (x_582) {
    let x_587 : f32 = u_xlat15.z;
    x_583 = x_587;
  } else {
    let x_591 : f32 = x_126.unity_MatrixV[2i].z;
    x_583 = x_591;
  }
  let x_592 : f32 = x_583;
  u_xlat2.z = x_592;
  let x_595 : vec3<f32> = vs_TEXCOORD3;
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = vs_TEXCOORD3;
  let x_606 : vec3<f32> = (vec3<f32>(x_603.x, x_603.x, x_603.x) * x_605);
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres0;
  let x_619 : vec3<f32> = (x_609 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_624 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres1;
  let x_627 : vec3<f32> = (x_622 + -(vec3<f32>(x_624.x, x_624.y, x_624.z)));
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres2;
  let x_636 : vec3<f32> = (x_630 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec3<f32> = vs_TEXCOORD7;
  let x_641 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres3;
  let x_644 : vec3<f32> = (x_639 + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_659 : vec4<f32> = u_xlat6;
  let x_661 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_673 : vec4<f32> = u_xlat3;
  let x_675 : vec4<f32> = x_614.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_673 < x_675);
  let x_678 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_686);
  let x_690 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_690);
  let x_694 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_694);
  let x_699 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_699);
  let x_703 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_703);
  let x_706 : vec4<f32> = u_xlat3;
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(x_708.y, x_708.z, x_708.w));
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = max(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_717 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_716.x, x_716.y, x_716.z);
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_720, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_725 : f32 = u_xlat44;
  u_xlat44 = (-(x_725) + 4.0f);
  let x_730 : f32 = u_xlat44;
  u_xlatu44 = u32(x_730);
  let x_734 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_734) << bitcast<u32>(2i));
  let x_737 : vec3<f32> = vs_TEXCOORD7;
  let x_739 : i32 = u_xlati44;
  let x_742 : i32 = u_xlati44;
  let x_746 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_739 + 1i) / 4i)][((x_742 + 1i) % 4i)];
  let x_748 : vec3<f32> = (vec3<f32>(x_737.y, x_737.y, x_737.y) * vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : i32 = u_xlati44;
  let x_753 : i32 = u_xlati44;
  let x_756 : vec4<f32> = x_614.x_MainLightWorldToShadow[(x_751 / 4i)][(x_753 % 4i)];
  let x_758 : vec3<f32> = vs_TEXCOORD7;
  let x_761 : vec4<f32> = u_xlat3;
  let x_763 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758.x, x_758.x, x_758.x)) + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : i32 = u_xlati44;
  let x_769 : i32 = u_xlati44;
  let x_773 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_766 + 2i) / 4i)][((x_769 + 2i) % 4i)];
  let x_775 : vec3<f32> = vs_TEXCOORD7;
  let x_778 : vec4<f32> = u_xlat3;
  let x_780 : vec3<f32> = ((vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(x_775.z, x_775.z, x_775.z)) + vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat3;
  let x_785 : i32 = u_xlati44;
  let x_788 : i32 = u_xlati44;
  let x_792 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_785 + 3i) / 4i)][((x_788 + 3i) % 4i)];
  let x_794 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  u_xlat1.w = 1.0f;
  let x_803 : vec4<f32> = x_801.unity_SHAr;
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_803, x_804);
  let x_808 : vec4<f32> = x_801.unity_SHAg;
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_808, x_809);
  let x_813 : vec4<f32> = x_801.unity_SHAb;
  let x_814 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_813, x_814);
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_817.y, x_817.z, x_817.z, x_817.x) * vec4<f32>(x_819.x, x_819.y, x_819.z, x_819.z));
  let x_823 : vec4<f32> = x_801.unity_SHBr;
  let x_824 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_823, x_824);
  let x_828 : vec4<f32> = x_801.unity_SHBg;
  let x_829 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_828, x_829);
  let x_833 : vec4<f32> = x_801.unity_SHBb;
  let x_834 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_833, x_834);
  let x_838 : f32 = u_xlat1.y;
  let x_840 : f32 = u_xlat1.y;
  u_xlat43 = (x_838 * x_840);
  let x_843 : f32 = u_xlat1.x;
  let x_845 : f32 = u_xlat1.x;
  let x_847 : f32 = u_xlat43;
  u_xlat43 = ((x_843 * x_845) + -(x_847));
  let x_852 : vec4<f32> = x_801.unity_SHC;
  let x_854 : f32 = u_xlat43;
  let x_857 : vec4<f32> = u_xlat7;
  let x_859 : vec3<f32> = ((vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(x_854, x_854, x_854)) + vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat4;
  let x_864 : vec4<f32> = u_xlat6;
  let x_866 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) + vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat4;
  let x_871 : vec3<f32> = max(vec3<f32>(x_869.x, x_869.y, x_869.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_872 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_876 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_877 : vec2<f32> = vec2<f32>(x_876.x, x_876.y);
  let x_881 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_877.x, x_877.y));
  let x_882 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_881.x, x_881.y, x_882.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat6;
  let x_886 : vec4<f32> = hlslcc_FragCoord;
  let x_888 : vec2<f32> = (vec2<f32>(x_884.x, x_884.y) * vec2<f32>(x_886.x, x_886.y));
  let x_889 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
  let x_892 : f32 = u_xlat6.y;
  let x_894 : f32 = x_126.x_ScaleBiasRt.x;
  let x_897 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_892 * x_894) + x_897);
  let x_899 : f32 = u_xlat43;
  u_xlat6.z = (-(x_899) + 1.0f);
  let x_904 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_904) * 0.959999979f) + 0.959999979f);
  let x_909 : f32 = u_xlat43;
  u_xlat44 = (-(x_909) + 1.0f);
  let x_912 : f32 = u_xlat43;
  let x_914 : vec4<f32> = u_xlat5;
  let x_916 : vec3<f32> = (vec3<f32>(x_912, x_912, x_912) * vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : vec4<f32> = u_xlat5;
  let x_923 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_924 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec3<f32> = u_xlat0;
  let x_928 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = ((vec3<f32>(x_926.x, x_926.x, x_926.x) * vec3<f32>(x_928.x, x_928.y, x_928.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_934 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : f32 = u_xlat28;
  u_xlat0.x = (-(x_936) + 1.0f);
  let x_941 : f32 = u_xlat0.x;
  let x_943 : f32 = u_xlat0.x;
  u_xlat43 = (x_941 * x_943);
  let x_945 : f32 = u_xlat43;
  u_xlat43 = max(x_945, 0.0078125f);
  let x_949 : f32 = u_xlat43;
  let x_950 : f32 = u_xlat43;
  u_xlat45 = (x_949 * x_950);
  let x_952 : f32 = u_xlat28;
  let x_953 : f32 = u_xlat44;
  u_xlat28 = (x_952 + x_953);
  let x_955 : f32 = u_xlat28;
  u_xlat28 = clamp(x_955, 0.0f, 1.0f);
  let x_957 : f32 = u_xlat43;
  u_xlat44 = ((x_957 * 4.0f) + 2.0f);
  let x_966 : vec4<f32> = u_xlat6;
  let x_969 : f32 = x_126.x_GlobalMipBias.x;
  let x_970 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_966.x, x_966.z), x_969);
  u_xlat46 = x_970.x;
  let x_973 : f32 = u_xlat46;
  u_xlat47 = (x_973 + -1.0f);
  let x_976 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_977 : f32 = u_xlat47;
  u_xlat47 = ((x_976 * x_977) + 1.0f);
  let x_980 : f32 = u_xlat14;
  let x_981 : f32 = u_xlat46;
  u_xlat14 = min(x_980, x_981);
  let x_984 : vec4<f32> = u_xlat3;
  let x_985 : vec2<f32> = vec2<f32>(x_984.x, x_984.y);
  let x_987 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_985.x, x_985.y, x_987);
  let x_999 : vec3<f32> = txVec0;
  let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_999.xy, x_999.z);
  u_xlat3.x = x_1001;
  let x_1005 : f32 = x_614.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_1005) + 1.0f);
  let x_1009 : f32 = u_xlat3.x;
  let x_1011 : f32 = x_614.x_MainLightShadowParams.x;
  let x_1013 : f32 = u_xlat17;
  u_xlat3.x = ((x_1009 * x_1011) + x_1013);
  let x_1018 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_1018);
  let x_1022 : f32 = u_xlat3.z;
  u_xlatb31 = (x_1022 >= 1.0f);
  let x_1024 : bool = u_xlatb31;
  let x_1025 : bool = u_xlatb17;
  u_xlatb17 = (x_1024 | x_1025);
  let x_1027 : bool = u_xlatb17;
  if (x_1027) {
    x_1028 = 1.0f;
  } else {
    let x_1033 : f32 = u_xlat3.x;
    x_1028 = x_1033;
  }
  let x_1034 : f32 = x_1028;
  u_xlat3.x = x_1034;
  let x_1036 : vec3<f32> = vs_TEXCOORD7;
  let x_1038 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1040 : vec3<f32> = (x_1036 + -(x_1038));
  let x_1041 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : vec4<f32> = u_xlat6;
  let x_1045 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : f32 = u_xlat17;
  let x_1050 : f32 = x_614.x_MainLightShadowParams.z;
  let x_1053 : f32 = x_614.x_MainLightShadowParams.w;
  u_xlat17 = ((x_1048 * x_1050) + x_1053);
  let x_1055 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1055, 0.0f, 1.0f);
  let x_1059 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1059) + 1.0f);
  let x_1062 : f32 = u_xlat17;
  let x_1063 : f32 = u_xlat31;
  let x_1066 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1062 * x_1063) + x_1066);
  let x_1069 : f32 = u_xlat47;
  let x_1072 : vec4<f32> = x_126.x_MainLightColor;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1077 : vec3<f32> = u_xlat2;
  let x_1079 : vec4<f32> = u_xlat1;
  u_xlat17 = dot(-(x_1077), vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : f32 = u_xlat17;
  let x_1083 : f32 = u_xlat17;
  u_xlat17 = (x_1082 + x_1083);
  let x_1085 : vec4<f32> = u_xlat1;
  let x_1087 : f32 = u_xlat17;
  let x_1091 : vec3<f32> = u_xlat2;
  let x_1093 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * -(vec3<f32>(x_1087, x_1087, x_1087))) + -(x_1091));
  let x_1094 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1096 : vec4<f32> = u_xlat1;
  let x_1098 : vec3<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), x_1098);
  let x_1100 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1100, 0.0f, 1.0f);
  let x_1102 : f32 = u_xlat17;
  u_xlat17 = (-(x_1102) + 1.0f);
  let x_1105 : f32 = u_xlat17;
  let x_1106 : f32 = u_xlat17;
  u_xlat17 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat17;
  let x_1109 : f32 = u_xlat17;
  u_xlat17 = (x_1108 * x_1109);
  let x_1112 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1112) * 0.699999988f) + 1.700000048f);
  let x_1119 : f32 = u_xlat0.x;
  let x_1120 : f32 = u_xlat31;
  u_xlat0.x = (x_1119 * x_1120);
  let x_1124 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1124 * 6.0f);
  let x_1136 : vec4<f32> = u_xlat8;
  let x_1139 : f32 = u_xlat0.x;
  let x_1140 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1136.x, x_1136.y, x_1136.z), x_1139);
  u_xlat8 = x_1140;
  let x_1142 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1142 + -1.0f);
  let x_1146 : f32 = x_801.unity_SpecCube0_HDR.w;
  let x_1148 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1146 * x_1148) + 1.0f);
  let x_1153 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1153, 0.0f);
  let x_1157 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1157);
  let x_1161 : f32 = u_xlat0.x;
  let x_1163 : f32 = x_801.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1161 * x_1163);
  let x_1167 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1167);
  let x_1171 : f32 = u_xlat0.x;
  let x_1173 : f32 = x_801.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1171 * x_1173);
  let x_1176 : vec4<f32> = u_xlat8;
  let x_1178 : vec3<f32> = u_xlat0;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * vec3<f32>(x_1178.x, x_1178.x, x_1178.x));
  let x_1181 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1183 : f32 = u_xlat43;
  let x_1185 : f32 = u_xlat43;
  let x_1189 : vec2<f32> = ((vec2<f32>(x_1183, x_1183) * vec2<f32>(x_1185, x_1185)) + vec2<f32>(-1.0f, 1.0f));
  let x_1190 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
  let x_1193 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1193);
  let x_1197 : vec4<f32> = u_xlat5;
  let x_1200 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1197.x, x_1197.y, x_1197.z)) + vec3<f32>(x_1200, x_1200, x_1200));
  let x_1203 : f32 = u_xlat17;
  let x_1205 : vec3<f32> = u_xlat23;
  let x_1207 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1203, x_1203, x_1203) * x_1205) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec3<f32> = u_xlat0;
  let x_1212 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1210.x, x_1210.x, x_1210.x) * x_1212);
  let x_1214 : vec4<f32> = u_xlat8;
  let x_1216 : vec3<f32> = u_xlat23;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.y, x_1214.z) * x_1216);
  let x_1218 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec4<f32> = u_xlat4;
  let x_1222 : vec4<f32> = u_xlat7;
  let x_1225 : vec4<f32> = u_xlat8;
  let x_1227 : vec3<f32> = ((vec3<f32>(x_1220.x, x_1220.y, x_1220.z) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z)) + vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1231 : f32 = u_xlat3.x;
  let x_1233 : f32 = x_801.unity_LightData.z;
  u_xlat0.x = (x_1231 * x_1233);
  let x_1236 : vec4<f32> = u_xlat1;
  let x_1239 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1236.x, x_1236.y, x_1236.z), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1242, 0.0f, 1.0f);
  let x_1244 : f32 = u_xlat28;
  let x_1246 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1244 * x_1246);
  let x_1249 : vec3<f32> = u_xlat0;
  let x_1251 : vec4<f32> = u_xlat6;
  let x_1253 : vec3<f32> = (vec3<f32>(x_1249.x, x_1249.x, x_1249.x) * vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : vec3<f32> = u_xlat2;
  let x_1258 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1260 : vec3<f32> = (x_1256 + vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec4<f32> = u_xlat6;
  let x_1265 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1270 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1270, 1.17549435e-37f);
  let x_1275 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1275);
  let x_1278 : vec3<f32> = u_xlat0;
  let x_1280 : vec4<f32> = u_xlat6;
  let x_1282 : vec3<f32> = (vec3<f32>(x_1278.x, x_1278.x, x_1278.x) * vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1283 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  let x_1285 : vec4<f32> = u_xlat1;
  let x_1287 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_1285.x, x_1285.y, x_1285.z), vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1292 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1292, 0.0f, 1.0f);
  let x_1296 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1298 : vec4<f32> = u_xlat6;
  u_xlat0.z = dot(vec3<f32>(x_1296.x, x_1296.y, x_1296.z), vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1303 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1303, 0.0f, 1.0f);
  let x_1306 : vec3<f32> = u_xlat0;
  let x_1308 : vec3<f32> = u_xlat0;
  let x_1310 : vec2<f32> = (vec2<f32>(x_1306.x, x_1306.z) * vec2<f32>(x_1308.x, x_1308.z));
  let x_1311 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1310.x, x_1311.y, x_1310.y);
  let x_1314 : f32 = u_xlat0.x;
  let x_1316 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1314 * x_1316) + 1.000010014f);
  let x_1322 : f32 = u_xlat0.x;
  let x_1324 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1322 * x_1324);
  let x_1328 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1328, 0.100000001f);
  let x_1331 : f32 = u_xlat28;
  let x_1333 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1331 * x_1333);
  let x_1336 : f32 = u_xlat44;
  let x_1338 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1336 * x_1338);
  let x_1341 : f32 = u_xlat45;
  let x_1343 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1341 / x_1343);
  let x_1346 : vec4<f32> = u_xlat5;
  let x_1348 : vec3<f32> = u_xlat0;
  let x_1351 : vec4<f32> = u_xlat7;
  let x_1353 : vec3<f32> = ((vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1348.x, x_1348.x, x_1348.x)) + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1356 : vec4<f32> = u_xlat3;
  let x_1358 : vec4<f32> = u_xlat6;
  let x_1360 : vec3<f32> = (vec3<f32>(x_1356.x, x_1356.y, x_1356.z) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1364 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1366 : f32 = x_801.unity_LightData.y;
  u_xlat0.x = min(x_1364, x_1366);
  let x_1371 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1371));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1383 : u32 = u_xlatu_loop_1;
    let x_1384 : u32 = u_xlatu0;
    if ((x_1383 < x_1384)) {
    } else {
      break;
    }
    let x_1387 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1387 >> 2u);
    let x_1390 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1390 & 3u));
    let x_1393 : u32 = u_xlatu43;
    let x_1396 : vec4<f32> = x_801.unity_LightIndices[bitcast<i32>(x_1393)];
    let x_1406 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1411 : vec4<u32> = indexable[x_1406];
    u_xlat43 = dot(x_1396, bitcast<vec4<f32>>(x_1411));
    let x_1415 : f32 = u_xlat43;
    u_xlati43 = i32(x_1415);
    let x_1417 : vec3<f32> = vs_TEXCOORD7;
    let x_1429 : i32 = u_xlati43;
    let x_1431 : vec4<f32> = x_1428.x_AdditionalLightsPosition[x_1429];
    let x_1434 : i32 = u_xlati43;
    let x_1436 : vec4<f32> = x_1428.x_AdditionalLightsPosition[x_1434];
    let x_1438 : vec3<f32> = ((-(x_1417) * vec3<f32>(x_1431.w, x_1431.w, x_1431.w)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
    let x_1441 : vec4<f32> = u_xlat8;
    let x_1443 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1441.x, x_1441.y, x_1441.z), vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
    let x_1446 : f32 = u_xlat46;
    u_xlat46 = max(x_1446, 6.10351562e-05f);
    let x_1449 : f32 = u_xlat46;
    u_xlat48 = inverseSqrt(x_1449);
    let x_1451 : f32 = u_xlat48;
    let x_1453 : vec4<f32> = u_xlat8;
    u_xlat23 = (vec3<f32>(x_1451, x_1451, x_1451) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
    let x_1457 : f32 = u_xlat46;
    u_xlat49 = (1.0f / x_1457);
    let x_1459 : f32 = u_xlat46;
    let x_1460 : i32 = u_xlati43;
    let x_1462 : f32 = x_1428.x_AdditionalLightsAttenuation[x_1460].x;
    u_xlat46 = (x_1459 * x_1462);
    let x_1464 : f32 = u_xlat46;
    let x_1466 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1464) * x_1466) + 1.0f);
    let x_1469 : f32 = u_xlat46;
    u_xlat46 = max(x_1469, 0.0f);
    let x_1471 : f32 = u_xlat46;
    let x_1472 : f32 = u_xlat46;
    u_xlat46 = (x_1471 * x_1472);
    let x_1474 : f32 = u_xlat46;
    let x_1475 : f32 = u_xlat49;
    u_xlat46 = (x_1474 * x_1475);
    let x_1477 : i32 = u_xlati43;
    let x_1479 : vec4<f32> = x_1428.x_AdditionalLightsSpotDir[x_1477];
    let x_1481 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1479.x, x_1479.y, x_1479.z), x_1481);
    let x_1483 : f32 = u_xlat49;
    let x_1484 : i32 = u_xlati43;
    let x_1486 : f32 = x_1428.x_AdditionalLightsAttenuation[x_1484].z;
    let x_1488 : i32 = u_xlati43;
    let x_1490 : f32 = x_1428.x_AdditionalLightsAttenuation[x_1488].w;
    u_xlat49 = ((x_1483 * x_1486) + x_1490);
    let x_1492 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1492, 0.0f, 1.0f);
    let x_1494 : f32 = u_xlat49;
    let x_1495 : f32 = u_xlat49;
    u_xlat49 = (x_1494 * x_1495);
    let x_1497 : f32 = u_xlat46;
    let x_1498 : f32 = u_xlat49;
    u_xlat46 = (x_1497 * x_1498);
    let x_1500 : f32 = u_xlat47;
    let x_1502 : i32 = u_xlati43;
    let x_1504 : vec4<f32> = x_1428.x_AdditionalLightsColor[x_1502];
    let x_1506 : vec3<f32> = (vec3<f32>(x_1500, x_1500, x_1500) * vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
    let x_1507 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
    let x_1509 : vec4<f32> = u_xlat1;
    let x_1511 : vec3<f32> = u_xlat23;
    u_xlat43 = dot(vec3<f32>(x_1509.x, x_1509.y, x_1509.z), x_1511);
    let x_1513 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1513, 0.0f, 1.0f);
    let x_1515 : f32 = u_xlat43;
    let x_1516 : f32 = u_xlat46;
    u_xlat43 = (x_1515 * x_1516);
    let x_1518 : f32 = u_xlat43;
    let x_1520 : vec4<f32> = u_xlat10;
    let x_1522 : vec3<f32> = (vec3<f32>(x_1518, x_1518, x_1518) * vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
    let x_1523 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
    let x_1525 : vec4<f32> = u_xlat8;
    let x_1527 : f32 = u_xlat48;
    let x_1530 : vec3<f32> = u_xlat2;
    let x_1531 : vec3<f32> = ((vec3<f32>(x_1525.x, x_1525.y, x_1525.z) * vec3<f32>(x_1527, x_1527, x_1527)) + x_1530);
    let x_1532 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
    let x_1534 : vec4<f32> = u_xlat8;
    let x_1536 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1534.x, x_1534.y, x_1534.z), vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
    let x_1539 : f32 = u_xlat43;
    u_xlat43 = max(x_1539, 1.17549435e-37f);
    let x_1541 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1541);
    let x_1543 : f32 = u_xlat43;
    let x_1545 : vec4<f32> = u_xlat8;
    let x_1547 : vec3<f32> = (vec3<f32>(x_1543, x_1543, x_1543) * vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1548 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
    let x_1550 : vec4<f32> = u_xlat1;
    let x_1552 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1550.x, x_1550.y, x_1550.z), vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
    let x_1555 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1555, 0.0f, 1.0f);
    let x_1557 : vec3<f32> = u_xlat23;
    let x_1558 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(x_1557, vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
    let x_1561 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1561, 0.0f, 1.0f);
    let x_1563 : f32 = u_xlat43;
    let x_1564 : f32 = u_xlat43;
    u_xlat43 = (x_1563 * x_1564);
    let x_1566 : f32 = u_xlat43;
    let x_1568 : f32 = u_xlat9.x;
    u_xlat43 = ((x_1566 * x_1568) + 1.000010014f);
    let x_1571 : f32 = u_xlat46;
    let x_1572 : f32 = u_xlat46;
    u_xlat46 = (x_1571 * x_1572);
    let x_1574 : f32 = u_xlat43;
    let x_1575 : f32 = u_xlat43;
    u_xlat43 = (x_1574 * x_1575);
    let x_1577 : f32 = u_xlat46;
    u_xlat46 = max(x_1577, 0.100000001f);
    let x_1579 : f32 = u_xlat43;
    let x_1580 : f32 = u_xlat46;
    u_xlat43 = (x_1579 * x_1580);
    let x_1582 : f32 = u_xlat44;
    let x_1583 : f32 = u_xlat43;
    u_xlat43 = (x_1582 * x_1583);
    let x_1585 : f32 = u_xlat45;
    let x_1586 : f32 = u_xlat43;
    u_xlat43 = (x_1585 / x_1586);
    let x_1588 : vec4<f32> = u_xlat5;
    let x_1590 : f32 = u_xlat43;
    let x_1593 : vec4<f32> = u_xlat7;
    let x_1595 : vec3<f32> = ((vec3<f32>(x_1588.x, x_1588.y, x_1588.z) * vec3<f32>(x_1590, x_1590, x_1590)) + vec3<f32>(x_1593.x, x_1593.y, x_1593.z));
    let x_1596 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
    let x_1598 : vec4<f32> = u_xlat8;
    let x_1600 : vec4<f32> = u_xlat10;
    let x_1603 : vec4<f32> = u_xlat6;
    let x_1605 : vec3<f32> = ((vec3<f32>(x_1598.x, x_1598.y, x_1598.z) * vec3<f32>(x_1600.x, x_1600.y, x_1600.z)) + vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
    let x_1606 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);

    continuing {
      let x_1608 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1608 + bitcast<u32>(1i));
    }
  }
  let x_1610 : vec4<f32> = u_xlat4;
  let x_1612 : f32 = u_xlat14;
  let x_1615 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_1610.x, x_1610.y, x_1610.z) * vec3<f32>(x_1612, x_1612, x_1612)) + vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
  let x_1618 : vec4<f32> = u_xlat6;
  let x_1620 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1618.x, x_1618.y, x_1618.z) + x_1620);
  let x_1624 : f32 = u_xlat42;
  let x_1626 : vec3<f32> = u_xlat0;
  let x_1627 : vec3<f32> = (vec3<f32>(x_1624, x_1624, x_1624) * x_1626);
  let x_1628 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

