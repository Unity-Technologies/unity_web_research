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
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_614 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1125 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1387 : AdditionalLights;

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
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb31 : bool;
  var x_1005 : f32;
  var u_xlat31 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati46 : i32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
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
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_719, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_724 : f32 = u_xlat43;
  u_xlat43 = (-(x_724) + 4.0f);
  let x_729 : f32 = u_xlat43;
  u_xlatu43 = u32(x_729);
  let x_733 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_733) << bitcast<u32>(2i));
  let x_736 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : i32 = u_xlati43;
  let x_741 : i32 = u_xlati43;
  let x_745 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_738 + 1i) / 4i)][((x_741 + 1i) % 4i)];
  let x_747 : vec3<f32> = (vec3<f32>(x_736.y, x_736.y, x_736.y) * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : i32 = u_xlati43;
  let x_752 : i32 = u_xlati43;
  let x_755 : vec4<f32> = x_614.x_MainLightWorldToShadow[(x_750 / 4i)][(x_752 % 4i)];
  let x_757 : vec3<f32> = vs_TEXCOORD7;
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757.x, x_757.x, x_757.x)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati43;
  let x_768 : i32 = u_xlati43;
  let x_772 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_765 + 2i) / 4i)][((x_768 + 2i) % 4i)];
  let x_774 : vec3<f32> = vs_TEXCOORD7;
  let x_777 : vec4<f32> = u_xlat3;
  let x_779 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774.z, x_774.z, x_774.z)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat3;
  let x_784 : i32 = u_xlati43;
  let x_787 : i32 = u_xlati43;
  let x_791 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_784 + 3i) / 4i)][((x_787 + 3i) % 4i)];
  let x_793 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_801 : vec4<f32> = vs_TEXCOORD0;
  let x_804 : f32 = x_126.x_GlobalMipBias.x;
  let x_805 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_801.z, x_801.w), x_804);
  u_xlat4 = x_805;
  let x_810 : vec4<f32> = vs_TEXCOORD0;
  let x_813 : f32 = x_126.x_GlobalMipBias.x;
  let x_814 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_810.z, x_810.w), x_813);
  let x_815 : vec3<f32> = vec3<f32>(x_814.x, x_814.y, x_814.z);
  let x_816 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_825.x, x_825.y, x_825.z), vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : f32 = u_xlat43;
  u_xlat43 = (x_830 + 0.5f);
  let x_832 : f32 = u_xlat43;
  let x_834 : vec4<f32> = u_xlat6;
  let x_836 : vec3<f32> = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = u_xlat4.w;
  u_xlat43 = max(x_840, 0.0001f);
  let x_843 : vec4<f32> = u_xlat4;
  let x_845 : f32 = u_xlat43;
  let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) / vec3<f32>(x_845, x_845, x_845));
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_852 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
  let x_857 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_853.x, x_853.y));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat6;
  let x_862 : vec4<f32> = hlslcc_FragCoord;
  let x_864 : vec2<f32> = (vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_862.x, x_862.y));
  let x_865 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
  let x_868 : f32 = u_xlat6.y;
  let x_870 : f32 = x_126.x_ScaleBiasRt.x;
  let x_873 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_868 * x_870) + x_873);
  let x_875 : f32 = u_xlat43;
  u_xlat6.z = (-(x_875) + 1.0f);
  let x_880 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_880) * 0.959999979f) + 0.959999979f);
  let x_886 : f32 = u_xlat28;
  let x_887 : f32 = u_xlat43;
  u_xlat44 = (x_886 + -(x_887));
  let x_890 : f32 = u_xlat43;
  let x_892 : vec4<f32> = u_xlat5;
  let x_894 : vec3<f32> = (vec3<f32>(x_890, x_890, x_890) * vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat5;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec3<f32> = u_xlat0;
  let x_906 : vec4<f32> = u_xlat5;
  let x_911 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.x, x_904.x) * vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_912 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : f32 = u_xlat28;
  u_xlat0.x = (-(x_914) + 1.0f);
  let x_919 : f32 = u_xlat0.x;
  let x_921 : f32 = u_xlat0.x;
  u_xlat28 = (x_919 * x_921);
  let x_923 : f32 = u_xlat28;
  u_xlat28 = max(x_923, 0.0078125f);
  let x_926 : f32 = u_xlat28;
  let x_927 : f32 = u_xlat28;
  u_xlat43 = (x_926 * x_927);
  let x_929 : f32 = u_xlat44;
  u_xlat44 = (x_929 + 1.0f);
  let x_931 : f32 = u_xlat44;
  u_xlat44 = clamp(x_931, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat28;
  u_xlat45 = ((x_934 * 4.0f) + 2.0f);
  let x_943 : vec4<f32> = u_xlat6;
  let x_946 : f32 = x_126.x_GlobalMipBias.x;
  let x_947 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_943.x, x_943.z), x_946);
  u_xlat46 = x_947.x;
  let x_950 : f32 = u_xlat46;
  u_xlat47 = (x_950 + -1.0f);
  let x_953 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_954 : f32 = u_xlat47;
  u_xlat47 = ((x_953 * x_954) + 1.0f);
  let x_957 : f32 = u_xlat14;
  let x_958 : f32 = u_xlat46;
  u_xlat14 = min(x_957, x_958);
  let x_961 : vec4<f32> = u_xlat3;
  let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
  let x_964 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_962.x, x_962.y, x_964);
  let x_976 : vec3<f32> = txVec0;
  let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_976.xy, x_976.z);
  u_xlat3.x = x_978;
  let x_982 : f32 = x_614.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_982) + 1.0f);
  let x_986 : f32 = u_xlat3.x;
  let x_988 : f32 = x_614.x_MainLightShadowParams.x;
  let x_990 : f32 = u_xlat17;
  u_xlat3.x = ((x_986 * x_988) + x_990);
  let x_995 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_995);
  let x_999 : f32 = u_xlat3.z;
  u_xlatb31 = (x_999 >= 1.0f);
  let x_1001 : bool = u_xlatb31;
  let x_1002 : bool = u_xlatb17;
  u_xlatb17 = (x_1001 | x_1002);
  let x_1004 : bool = u_xlatb17;
  if (x_1004) {
    x_1005 = 1.0f;
  } else {
    let x_1010 : f32 = u_xlat3.x;
    x_1005 = x_1010;
  }
  let x_1011 : f32 = x_1005;
  u_xlat3.x = x_1011;
  let x_1013 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1017 : vec3<f32> = (x_1013 + -(x_1015));
  let x_1018 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat6;
  let x_1022 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : f32 = u_xlat17;
  let x_1027 : f32 = x_614.x_MainLightShadowParams.z;
  let x_1030 : f32 = x_614.x_MainLightShadowParams.w;
  u_xlat17 = ((x_1025 * x_1027) + x_1030);
  let x_1032 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1032, 0.0f, 1.0f);
  let x_1036 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1036) + 1.0f);
  let x_1039 : f32 = u_xlat17;
  let x_1040 : f32 = u_xlat31;
  let x_1043 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1039 * x_1040) + x_1043);
  let x_1046 : f32 = u_xlat47;
  let x_1049 : vec4<f32> = x_126.x_MainLightColor;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1046, x_1046, x_1046) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec3<f32> = u_xlat2;
  let x_1056 : vec4<f32> = u_xlat1;
  u_xlat17 = dot(-(x_1054), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat17;
  let x_1060 : f32 = u_xlat17;
  u_xlat17 = (x_1059 + x_1060);
  let x_1062 : vec4<f32> = u_xlat1;
  let x_1064 : f32 = u_xlat17;
  let x_1068 : vec3<f32> = u_xlat2;
  let x_1070 : vec3<f32> = ((vec3<f32>(x_1062.x, x_1062.y, x_1062.z) * -(vec3<f32>(x_1064, x_1064, x_1064))) + -(x_1068));
  let x_1071 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat1;
  let x_1075 : vec3<f32> = u_xlat2;
  u_xlat17 = dot(vec3<f32>(x_1073.x, x_1073.y, x_1073.z), x_1075);
  let x_1077 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1077, 0.0f, 1.0f);
  let x_1079 : f32 = u_xlat17;
  u_xlat17 = (-(x_1079) + 1.0f);
  let x_1082 : f32 = u_xlat17;
  let x_1083 : f32 = u_xlat17;
  u_xlat17 = (x_1082 * x_1083);
  let x_1085 : f32 = u_xlat17;
  let x_1086 : f32 = u_xlat17;
  u_xlat17 = (x_1085 * x_1086);
  let x_1089 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1089) * 0.699999988f) + 1.700000048f);
  let x_1096 : f32 = u_xlat0.x;
  let x_1097 : f32 = u_xlat31;
  u_xlat0.x = (x_1096 * x_1097);
  let x_1101 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1101 * 6.0f);
  let x_1113 : vec4<f32> = u_xlat8;
  let x_1116 : f32 = u_xlat0.x;
  let x_1117 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1113.x, x_1113.y, x_1113.z), x_1116);
  u_xlat8 = x_1117;
  let x_1119 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1119 + -1.0f);
  let x_1127 : f32 = x_1125.unity_SpecCube0_HDR.w;
  let x_1129 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1127 * x_1129) + 1.0f);
  let x_1134 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1134, 0.0f);
  let x_1138 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1138);
  let x_1142 : f32 = u_xlat0.x;
  let x_1144 : f32 = x_1125.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1142 * x_1144);
  let x_1148 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1148);
  let x_1152 : f32 = u_xlat0.x;
  let x_1154 : f32 = x_1125.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1152 * x_1154);
  let x_1157 : vec4<f32> = u_xlat8;
  let x_1159 : vec3<f32> = u_xlat0;
  let x_1161 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * vec3<f32>(x_1159.x, x_1159.x, x_1159.x));
  let x_1162 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : f32 = u_xlat28;
  let x_1166 : f32 = u_xlat28;
  let x_1170 : vec2<f32> = ((vec2<f32>(x_1164, x_1164) * vec2<f32>(x_1166, x_1166)) + vec2<f32>(-1.0f, 1.0f));
  let x_1171 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1170.x, x_1171.y, x_1170.y);
  let x_1174 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1174);
  let x_1176 : vec4<f32> = u_xlat5;
  let x_1179 : f32 = u_xlat44;
  let x_1181 : vec3<f32> = (-(vec3<f32>(x_1176.x, x_1176.y, x_1176.z)) + vec3<f32>(x_1179, x_1179, x_1179));
  let x_1182 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : f32 = u_xlat17;
  let x_1186 : vec4<f32> = u_xlat9;
  let x_1189 : vec4<f32> = u_xlat5;
  let x_1191 : vec3<f32> = ((vec3<f32>(x_1184, x_1184, x_1184) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z)) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1194 : f32 = u_xlat28;
  let x_1196 : vec4<f32> = u_xlat9;
  let x_1198 : vec3<f32> = (vec3<f32>(x_1194, x_1194, x_1194) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : vec4<f32> = u_xlat8;
  let x_1203 : vec4<f32> = u_xlat9;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1201.x, x_1201.y, x_1201.z) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec4<f32> = u_xlat4;
  let x_1210 : vec4<f32> = u_xlat7;
  let x_1213 : vec4<f32> = u_xlat8;
  let x_1215 : vec3<f32> = ((vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210.x, x_1210.y, x_1210.z)) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1219 : f32 = u_xlat3.x;
  let x_1221 : f32 = x_1125.unity_LightData.z;
  u_xlat28 = (x_1219 * x_1221);
  let x_1223 : vec4<f32> = u_xlat1;
  let x_1226 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1223.x, x_1223.y, x_1223.z), vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1229, 0.0f, 1.0f);
  let x_1231 : f32 = u_xlat28;
  let x_1232 : f32 = u_xlat44;
  u_xlat28 = (x_1231 * x_1232);
  let x_1234 : f32 = u_xlat28;
  let x_1236 : vec4<f32> = u_xlat6;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1234, x_1234, x_1234) * vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
  let x_1239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : vec3<f32> = u_xlat2;
  let x_1243 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1245 : vec3<f32> = (x_1241 + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat6;
  let x_1250 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : f32 = u_xlat28;
  u_xlat28 = max(x_1253, 1.17549435e-37f);
  let x_1256 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1256);
  let x_1258 : f32 = u_xlat28;
  let x_1260 : vec4<f32> = u_xlat6;
  let x_1262 : vec3<f32> = (vec3<f32>(x_1258, x_1258, x_1258) * vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : vec4<f32> = u_xlat1;
  let x_1267 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1265.x, x_1265.y, x_1265.z), vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1270, 0.0f, 1.0f);
  let x_1273 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1275 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_1273.x, x_1273.y, x_1273.z), vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1278, 0.0f, 1.0f);
  let x_1280 : f32 = u_xlat28;
  let x_1281 : f32 = u_xlat28;
  u_xlat28 = (x_1280 * x_1281);
  let x_1283 : f32 = u_xlat28;
  let x_1285 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1283 * x_1285) + 1.000010014f);
  let x_1289 : f32 = u_xlat44;
  let x_1290 : f32 = u_xlat44;
  u_xlat44 = (x_1289 * x_1290);
  let x_1292 : f32 = u_xlat28;
  let x_1293 : f32 = u_xlat28;
  u_xlat28 = (x_1292 * x_1293);
  let x_1295 : f32 = u_xlat44;
  u_xlat44 = max(x_1295, 0.100000001f);
  let x_1298 : f32 = u_xlat28;
  let x_1299 : f32 = u_xlat44;
  u_xlat28 = (x_1298 * x_1299);
  let x_1301 : f32 = u_xlat45;
  let x_1302 : f32 = u_xlat28;
  u_xlat28 = (x_1301 * x_1302);
  let x_1304 : f32 = u_xlat43;
  let x_1305 : f32 = u_xlat28;
  u_xlat28 = (x_1304 / x_1305);
  let x_1307 : vec4<f32> = u_xlat5;
  let x_1309 : f32 = u_xlat28;
  let x_1312 : vec4<f32> = u_xlat7;
  let x_1314 : vec3<f32> = ((vec3<f32>(x_1307.x, x_1307.y, x_1307.z) * vec3<f32>(x_1309, x_1309, x_1309)) + vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
  let x_1315 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
  let x_1317 : vec4<f32> = u_xlat3;
  let x_1319 : vec4<f32> = u_xlat6;
  let x_1321 : vec3<f32> = (vec3<f32>(x_1317.x, x_1317.y, x_1317.z) * vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1325 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1327 : f32 = x_1125.unity_LightData.y;
  u_xlat28 = min(x_1325, x_1327);
  let x_1330 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1330));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1342 : u32 = u_xlatu_loop_1;
    let x_1343 : u32 = u_xlatu28;
    if ((x_1342 < x_1343)) {
    } else {
      break;
    }
    let x_1346 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1346 >> 2u);
    let x_1349 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1349 & 3u));
    let x_1352 : u32 = u_xlatu46;
    let x_1355 : vec4<f32> = x_1125.unity_LightIndices[bitcast<i32>(x_1352)];
    let x_1365 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1370 : vec4<u32> = indexable[x_1365];
    u_xlat46 = dot(x_1355, bitcast<vec4<f32>>(x_1370));
    let x_1374 : f32 = u_xlat46;
    u_xlati46 = i32(x_1374);
    let x_1376 : vec3<f32> = vs_TEXCOORD7;
    let x_1388 : i32 = u_xlati46;
    let x_1390 : vec4<f32> = x_1387.x_AdditionalLightsPosition[x_1388];
    let x_1393 : i32 = u_xlati46;
    let x_1395 : vec4<f32> = x_1387.x_AdditionalLightsPosition[x_1393];
    let x_1397 : vec3<f32> = ((-(x_1376) * vec3<f32>(x_1390.w, x_1390.w, x_1390.w)) + vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1401 : vec4<f32> = u_xlat8;
    let x_1403 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1401.x, x_1401.y, x_1401.z), vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
    let x_1406 : f32 = u_xlat48;
    u_xlat48 = max(x_1406, 6.10351562e-05f);
    let x_1409 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1409);
    let x_1411 : f32 = u_xlat49;
    let x_1413 : vec4<f32> = u_xlat8;
    let x_1415 : vec3<f32> = (vec3<f32>(x_1411, x_1411, x_1411) * vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
    let x_1416 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
    let x_1419 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1419);
    let x_1421 : f32 = u_xlat48;
    let x_1422 : i32 = u_xlati46;
    let x_1424 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1422].x;
    u_xlat48 = (x_1421 * x_1424);
    let x_1426 : f32 = u_xlat48;
    let x_1428 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1426) * x_1428) + 1.0f);
    let x_1431 : f32 = u_xlat48;
    u_xlat48 = max(x_1431, 0.0f);
    let x_1433 : f32 = u_xlat48;
    let x_1434 : f32 = u_xlat48;
    u_xlat48 = (x_1433 * x_1434);
    let x_1436 : f32 = u_xlat48;
    let x_1437 : f32 = u_xlat50;
    u_xlat48 = (x_1436 * x_1437);
    let x_1439 : i32 = u_xlati46;
    let x_1441 : vec4<f32> = x_1387.x_AdditionalLightsSpotDir[x_1439];
    let x_1443 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1441.x, x_1441.y, x_1441.z), vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
    let x_1446 : f32 = u_xlat50;
    let x_1447 : i32 = u_xlati46;
    let x_1449 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1447].z;
    let x_1451 : i32 = u_xlati46;
    let x_1453 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1451].w;
    u_xlat50 = ((x_1446 * x_1449) + x_1453);
    let x_1455 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1455, 0.0f, 1.0f);
    let x_1457 : f32 = u_xlat50;
    let x_1458 : f32 = u_xlat50;
    u_xlat50 = (x_1457 * x_1458);
    let x_1460 : f32 = u_xlat48;
    let x_1461 : f32 = u_xlat50;
    u_xlat48 = (x_1460 * x_1461);
    let x_1463 : f32 = u_xlat47;
    let x_1465 : i32 = u_xlati46;
    let x_1467 : vec4<f32> = x_1387.x_AdditionalLightsColor[x_1465];
    let x_1469 : vec3<f32> = (vec3<f32>(x_1463, x_1463, x_1463) * vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
    let x_1470 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
    let x_1472 : vec4<f32> = u_xlat1;
    let x_1474 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1472.x, x_1472.y, x_1472.z), vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
    let x_1477 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1477, 0.0f, 1.0f);
    let x_1479 : f32 = u_xlat46;
    let x_1480 : f32 = u_xlat48;
    u_xlat46 = (x_1479 * x_1480);
    let x_1482 : f32 = u_xlat46;
    let x_1484 : vec4<f32> = u_xlat10;
    let x_1486 : vec3<f32> = (vec3<f32>(x_1482, x_1482, x_1482) * vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
    let x_1487 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
    let x_1489 : vec4<f32> = u_xlat8;
    let x_1491 : f32 = u_xlat49;
    let x_1494 : vec3<f32> = u_xlat2;
    let x_1495 : vec3<f32> = ((vec3<f32>(x_1489.x, x_1489.y, x_1489.z) * vec3<f32>(x_1491, x_1491, x_1491)) + x_1494);
    let x_1496 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
    let x_1498 : vec4<f32> = u_xlat8;
    let x_1500 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1498.x, x_1498.y, x_1498.z), vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
    let x_1503 : f32 = u_xlat46;
    u_xlat46 = max(x_1503, 1.17549435e-37f);
    let x_1505 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1505);
    let x_1507 : f32 = u_xlat46;
    let x_1509 : vec4<f32> = u_xlat8;
    let x_1511 : vec3<f32> = (vec3<f32>(x_1507, x_1507, x_1507) * vec3<f32>(x_1509.x, x_1509.y, x_1509.z));
    let x_1512 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
    let x_1514 : vec4<f32> = u_xlat1;
    let x_1516 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1514.x, x_1514.y, x_1514.z), vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
    let x_1519 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1519, 0.0f, 1.0f);
    let x_1521 : vec4<f32> = u_xlat9;
    let x_1523 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1521.x, x_1521.y, x_1521.z), vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1526, 0.0f, 1.0f);
    let x_1528 : f32 = u_xlat46;
    let x_1529 : f32 = u_xlat46;
    u_xlat46 = (x_1528 * x_1529);
    let x_1531 : f32 = u_xlat46;
    let x_1533 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1531 * x_1533) + 1.000010014f);
    let x_1536 : f32 = u_xlat48;
    let x_1537 : f32 = u_xlat48;
    u_xlat48 = (x_1536 * x_1537);
    let x_1539 : f32 = u_xlat46;
    let x_1540 : f32 = u_xlat46;
    u_xlat46 = (x_1539 * x_1540);
    let x_1542 : f32 = u_xlat48;
    u_xlat48 = max(x_1542, 0.100000001f);
    let x_1544 : f32 = u_xlat46;
    let x_1545 : f32 = u_xlat48;
    u_xlat46 = (x_1544 * x_1545);
    let x_1547 : f32 = u_xlat45;
    let x_1548 : f32 = u_xlat46;
    u_xlat46 = (x_1547 * x_1548);
    let x_1550 : f32 = u_xlat43;
    let x_1551 : f32 = u_xlat46;
    u_xlat46 = (x_1550 / x_1551);
    let x_1553 : vec4<f32> = u_xlat5;
    let x_1555 : f32 = u_xlat46;
    let x_1558 : vec4<f32> = u_xlat7;
    let x_1560 : vec3<f32> = ((vec3<f32>(x_1553.x, x_1553.y, x_1553.z) * vec3<f32>(x_1555, x_1555, x_1555)) + vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
    let x_1561 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
    let x_1563 : vec4<f32> = u_xlat8;
    let x_1565 : vec4<f32> = u_xlat10;
    let x_1568 : vec4<f32> = u_xlat6;
    let x_1570 : vec3<f32> = ((vec3<f32>(x_1563.x, x_1563.y, x_1563.z) * vec3<f32>(x_1565.x, x_1565.y, x_1565.z)) + vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
    let x_1571 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);

    continuing {
      let x_1573 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1573 + bitcast<u32>(1i));
    }
  }
  let x_1575 : vec4<f32> = u_xlat4;
  let x_1577 : f32 = u_xlat14;
  let x_1580 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_1575.x, x_1575.y, x_1575.z) * vec3<f32>(x_1577, x_1577, x_1577)) + vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
  let x_1583 : vec4<f32> = u_xlat6;
  let x_1585 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1583.x, x_1583.y, x_1583.z) + x_1585);
  let x_1589 : f32 = u_xlat42;
  let x_1591 : vec3<f32> = u_xlat0;
  let x_1592 : vec3<f32> = (vec3<f32>(x_1589, x_1589, x_1589) * x_1591);
  let x_1593 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
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

