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

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_761 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_907 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1172 : AdditionalLights;

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
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlatb32 : bool;
  var u_xlatb46 : bool;
  var x_786 : f32;
  var u_xlat46 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati47 : i32;
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
  let x_614 : vec4<f32> = vs_TEXCOORD0;
  let x_617 : f32 = x_126.x_GlobalMipBias.x;
  let x_618 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_614.z, x_614.w), x_617);
  let x_619 : vec3<f32> = vec3<f32>(x_618.x, x_618.y, x_618.z);
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_624 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
  let x_629 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_625.x, x_625.y));
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec4<f32> = hlslcc_FragCoord;
  let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.y) * vec2<f32>(x_634.x, x_634.y));
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
  let x_640 : f32 = u_xlat4.y;
  let x_642 : f32 = x_126.x_ScaleBiasRt.x;
  let x_645 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_640 * x_642) + x_645);
  let x_647 : f32 = u_xlat43;
  u_xlat4.z = (-(x_647) + 1.0f);
  let x_652 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_652) * 0.959999979f) + 0.959999979f);
  let x_658 : f32 = u_xlat28;
  let x_659 : f32 = u_xlat43;
  u_xlat44 = (x_658 + -(x_659));
  let x_662 : f32 = u_xlat43;
  let x_664 : vec4<f32> = u_xlat5;
  let x_666 : vec3<f32> = (vec3<f32>(x_662, x_662, x_662) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_674 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec3<f32> = u_xlat0;
  let x_678 : vec4<f32> = u_xlat5;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.x, x_676.x) * vec3<f32>(x_678.x, x_678.y, x_678.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_684 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : f32 = u_xlat28;
  u_xlat0.x = (-(x_686) + 1.0f);
  let x_691 : f32 = u_xlat0.x;
  let x_693 : f32 = u_xlat0.x;
  u_xlat28 = (x_691 * x_693);
  let x_695 : f32 = u_xlat28;
  u_xlat28 = max(x_695, 0.0078125f);
  let x_698 : f32 = u_xlat28;
  let x_699 : f32 = u_xlat28;
  u_xlat43 = (x_698 * x_699);
  let x_701 : f32 = u_xlat44;
  u_xlat44 = (x_701 + 1.0f);
  let x_703 : f32 = u_xlat44;
  u_xlat44 = clamp(x_703, 0.0f, 1.0f);
  let x_706 : f32 = u_xlat28;
  u_xlat45 = ((x_706 * 4.0f) + 2.0f);
  let x_715 : vec4<f32> = u_xlat4;
  let x_718 : f32 = x_126.x_GlobalMipBias.x;
  let x_719 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_715.x, x_715.z), x_718);
  u_xlat4.x = x_719.x;
  let x_724 : f32 = u_xlat4.x;
  u_xlat18 = (x_724 + -1.0f);
  let x_727 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_728 : f32 = u_xlat18;
  u_xlat18 = ((x_727 * x_728) + 1.0f);
  let x_731 : f32 = u_xlat14;
  let x_733 : f32 = u_xlat4.x;
  u_xlat14 = min(x_731, x_733);
  let x_737 : vec4<f32> = vs_TEXCOORD8;
  let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
  let x_740 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_738.x, x_738.y, x_740);
  let x_752 : vec3<f32> = txVec0;
  let x_754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_752.xy, x_752.z);
  u_xlat4.x = x_754;
  let x_763 : f32 = x_761.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_763) + 1.0f);
  let x_767 : f32 = u_xlat4.x;
  let x_769 : f32 = x_761.x_MainLightShadowParams.x;
  let x_771 : f32 = u_xlat32;
  u_xlat4.x = ((x_767 * x_769) + x_771);
  let x_776 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_776);
  let x_780 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_780 >= 1.0f);
  let x_782 : bool = u_xlatb46;
  let x_783 : bool = u_xlatb32;
  u_xlatb32 = (x_782 | x_783);
  let x_785 : bool = u_xlatb32;
  if (x_785) {
    x_786 = 1.0f;
  } else {
    let x_791 : f32 = u_xlat4.x;
    x_786 = x_791;
  }
  let x_792 : f32 = x_786;
  u_xlat4.x = x_792;
  let x_794 : vec3<f32> = vs_TEXCOORD7;
  let x_796 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_798 : vec3<f32> = (x_794 + -(x_796));
  let x_799 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat7;
  let x_803 : vec4<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_801.x, x_801.y, x_801.z), vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : f32 = u_xlat32;
  let x_808 : f32 = x_761.x_MainLightShadowParams.z;
  let x_811 : f32 = x_761.x_MainLightShadowParams.w;
  u_xlat32 = ((x_806 * x_808) + x_811);
  let x_813 : f32 = u_xlat32;
  u_xlat32 = clamp(x_813, 0.0f, 1.0f);
  let x_817 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_817) + 1.0f);
  let x_820 : f32 = u_xlat32;
  let x_821 : f32 = u_xlat46;
  let x_824 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_820 * x_821) + x_824);
  let x_827 : f32 = u_xlat18;
  let x_831 : vec4<f32> = x_126.x_MainLightColor;
  let x_833 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec3<f32> = u_xlat2;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat32 = dot(-(x_836), vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : f32 = u_xlat32;
  let x_842 : f32 = u_xlat32;
  u_xlat32 = (x_841 + x_842);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : f32 = u_xlat32;
  let x_850 : vec3<f32> = u_xlat2;
  let x_852 : vec3<f32> = ((vec3<f32>(x_844.x, x_844.y, x_844.z) * -(vec3<f32>(x_846, x_846, x_846))) + -(x_850));
  let x_853 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat1;
  let x_857 : vec3<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_855.x, x_855.y, x_855.z), x_857);
  let x_859 : f32 = u_xlat32;
  u_xlat32 = clamp(x_859, 0.0f, 1.0f);
  let x_861 : f32 = u_xlat32;
  u_xlat32 = (-(x_861) + 1.0f);
  let x_864 : f32 = u_xlat32;
  let x_865 : f32 = u_xlat32;
  u_xlat32 = (x_864 * x_865);
  let x_867 : f32 = u_xlat32;
  let x_868 : f32 = u_xlat32;
  u_xlat32 = (x_867 * x_868);
  let x_871 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_871) * 0.699999988f) + 1.700000048f);
  let x_878 : f32 = u_xlat0.x;
  let x_879 : f32 = u_xlat46;
  u_xlat0.x = (x_878 * x_879);
  let x_883 : f32 = u_xlat0.x;
  u_xlat0.x = (x_883 * 6.0f);
  let x_895 : vec4<f32> = u_xlat8;
  let x_898 : f32 = u_xlat0.x;
  let x_899 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_895.x, x_895.y, x_895.z), x_898);
  u_xlat8 = x_899;
  let x_901 : f32 = u_xlat8.w;
  u_xlat0.x = (x_901 + -1.0f);
  let x_909 : f32 = x_907.unity_SpecCube0_HDR.w;
  let x_911 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_909 * x_911) + 1.0f);
  let x_916 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_916, 0.0f);
  let x_920 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_920);
  let x_924 : f32 = u_xlat0.x;
  let x_926 : f32 = x_907.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_924 * x_926);
  let x_930 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_930);
  let x_934 : f32 = u_xlat0.x;
  let x_936 : f32 = x_907.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_934 * x_936);
  let x_939 : vec4<f32> = u_xlat8;
  let x_941 : vec3<f32> = u_xlat0;
  let x_943 : vec3<f32> = (vec3<f32>(x_939.x, x_939.y, x_939.z) * vec3<f32>(x_941.x, x_941.x, x_941.x));
  let x_944 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat28;
  let x_948 : f32 = u_xlat28;
  let x_952 : vec2<f32> = ((vec2<f32>(x_946, x_946) * vec2<f32>(x_948, x_948)) + vec2<f32>(-1.0f, 1.0f));
  let x_953 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_952.x, x_953.y, x_952.y);
  let x_956 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_956);
  let x_958 : vec4<f32> = u_xlat5;
  let x_961 : f32 = u_xlat44;
  let x_963 : vec3<f32> = (-(vec3<f32>(x_958.x, x_958.y, x_958.z)) + vec3<f32>(x_961, x_961, x_961));
  let x_964 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : f32 = u_xlat32;
  let x_968 : vec4<f32> = u_xlat9;
  let x_971 : vec4<f32> = u_xlat5;
  let x_973 : vec3<f32> = ((vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z)) + vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : f32 = u_xlat28;
  let x_978 : vec4<f32> = u_xlat9;
  let x_980 : vec3<f32> = (vec3<f32>(x_976, x_976, x_976) * vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_983 : vec4<f32> = u_xlat8;
  let x_985 : vec4<f32> = u_xlat9;
  let x_987 : vec3<f32> = (vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat3;
  let x_992 : vec4<f32> = u_xlat6;
  let x_995 : vec4<f32> = u_xlat8;
  let x_997 : vec3<f32> = ((vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(x_992.x, x_992.y, x_992.z)) + vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1001 : f32 = u_xlat4.x;
  let x_1003 : f32 = x_907.unity_LightData.z;
  u_xlat28 = (x_1001 * x_1003);
  let x_1005 : vec4<f32> = u_xlat1;
  let x_1008 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1011, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat28;
  let x_1014 : f32 = u_xlat44;
  u_xlat28 = (x_1013 * x_1014);
  let x_1016 : f32 = u_xlat28;
  let x_1018 : vec4<f32> = u_xlat7;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1016, x_1016, x_1016) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1020.z);
  let x_1023 : vec3<f32> = u_xlat2;
  let x_1025 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1027 : vec3<f32> = (x_1023 + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : vec4<f32> = u_xlat7;
  let x_1032 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1030.x, x_1030.y, x_1030.z), vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : f32 = u_xlat28;
  u_xlat28 = max(x_1035, 1.17549435e-37f);
  let x_1038 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1038);
  let x_1040 : f32 = u_xlat28;
  let x_1042 : vec4<f32> = u_xlat7;
  let x_1044 : vec3<f32> = (vec3<f32>(x_1040, x_1040, x_1040) * vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat1;
  let x_1049 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1052, 0.0f, 1.0f);
  let x_1055 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1057 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1060, 0.0f, 1.0f);
  let x_1062 : f32 = u_xlat28;
  let x_1063 : f32 = u_xlat28;
  u_xlat28 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat28;
  let x_1067 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1065 * x_1067) + 1.000010014f);
  let x_1071 : f32 = u_xlat44;
  let x_1072 : f32 = u_xlat44;
  u_xlat44 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat28;
  let x_1075 : f32 = u_xlat28;
  u_xlat28 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat44;
  u_xlat44 = max(x_1077, 0.100000001f);
  let x_1080 : f32 = u_xlat28;
  let x_1081 : f32 = u_xlat44;
  u_xlat28 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat45;
  let x_1084 : f32 = u_xlat28;
  u_xlat28 = (x_1083 * x_1084);
  let x_1086 : f32 = u_xlat43;
  let x_1087 : f32 = u_xlat28;
  u_xlat28 = (x_1086 / x_1087);
  let x_1089 : vec4<f32> = u_xlat5;
  let x_1091 : f32 = u_xlat28;
  let x_1094 : vec4<f32> = u_xlat6;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1089.x, x_1089.y, x_1089.z) * vec3<f32>(x_1091, x_1091, x_1091)) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec4<f32> = u_xlat4;
  let x_1101 : vec4<f32> = u_xlat7;
  let x_1103 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.z, x_1099.w) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1103.z);
  let x_1107 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1109 : f32 = x_907.unity_LightData.y;
  u_xlat28 = min(x_1107, x_1109);
  let x_1113 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1113));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1125 : u32 = u_xlatu_loop_1;
    let x_1126 : u32 = u_xlatu28;
    if ((x_1125 < x_1126)) {
    } else {
      break;
    }
    let x_1129 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1129 >> 2u);
    let x_1133 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1133 & 3u));
    let x_1137 : u32 = u_xlatu47;
    let x_1140 : vec4<f32> = x_907.unity_LightIndices[bitcast<i32>(x_1137)];
    let x_1150 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1155 : vec4<u32> = indexable[x_1150];
    u_xlat47 = dot(x_1140, bitcast<vec4<f32>>(x_1155));
    let x_1159 : f32 = u_xlat47;
    u_xlati47 = i32(x_1159);
    let x_1161 : vec3<f32> = vs_TEXCOORD7;
    let x_1173 : i32 = u_xlati47;
    let x_1175 : vec4<f32> = x_1172.x_AdditionalLightsPosition[x_1173];
    let x_1178 : i32 = u_xlati47;
    let x_1180 : vec4<f32> = x_1172.x_AdditionalLightsPosition[x_1178];
    let x_1182 : vec3<f32> = ((-(x_1161) * vec3<f32>(x_1175.w, x_1175.w, x_1175.w)) + vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1186 : vec4<f32> = u_xlat8;
    let x_1188 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1186.x, x_1186.y, x_1186.z), vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
    let x_1191 : f32 = u_xlat48;
    u_xlat48 = max(x_1191, 6.10351562e-05f);
    let x_1194 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1194);
    let x_1196 : f32 = u_xlat49;
    let x_1198 : vec4<f32> = u_xlat8;
    let x_1200 : vec3<f32> = (vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
    let x_1201 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
    let x_1204 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1204);
    let x_1206 : f32 = u_xlat48;
    let x_1207 : i32 = u_xlati47;
    let x_1209 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1207].x;
    u_xlat48 = (x_1206 * x_1209);
    let x_1211 : f32 = u_xlat48;
    let x_1213 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1211) * x_1213) + 1.0f);
    let x_1216 : f32 = u_xlat48;
    u_xlat48 = max(x_1216, 0.0f);
    let x_1218 : f32 = u_xlat48;
    let x_1219 : f32 = u_xlat48;
    u_xlat48 = (x_1218 * x_1219);
    let x_1221 : f32 = u_xlat48;
    let x_1222 : f32 = u_xlat50;
    u_xlat48 = (x_1221 * x_1222);
    let x_1224 : i32 = u_xlati47;
    let x_1226 : vec4<f32> = x_1172.x_AdditionalLightsSpotDir[x_1224];
    let x_1228 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
    let x_1231 : f32 = u_xlat50;
    let x_1232 : i32 = u_xlati47;
    let x_1234 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1232].z;
    let x_1236 : i32 = u_xlati47;
    let x_1238 : f32 = x_1172.x_AdditionalLightsAttenuation[x_1236].w;
    u_xlat50 = ((x_1231 * x_1234) + x_1238);
    let x_1240 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1240, 0.0f, 1.0f);
    let x_1242 : f32 = u_xlat50;
    let x_1243 : f32 = u_xlat50;
    u_xlat50 = (x_1242 * x_1243);
    let x_1245 : f32 = u_xlat48;
    let x_1246 : f32 = u_xlat50;
    u_xlat48 = (x_1245 * x_1246);
    let x_1248 : f32 = u_xlat18;
    let x_1250 : i32 = u_xlati47;
    let x_1252 : vec4<f32> = x_1172.x_AdditionalLightsColor[x_1250];
    let x_1254 : vec3<f32> = (vec3<f32>(x_1248, x_1248, x_1248) * vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
    let x_1255 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
    let x_1257 : vec4<f32> = u_xlat1;
    let x_1259 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1257.x, x_1257.y, x_1257.z), vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
    let x_1262 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1262, 0.0f, 1.0f);
    let x_1264 : f32 = u_xlat47;
    let x_1265 : f32 = u_xlat48;
    u_xlat47 = (x_1264 * x_1265);
    let x_1267 : f32 = u_xlat47;
    let x_1269 : vec4<f32> = u_xlat10;
    let x_1271 : vec3<f32> = (vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
    let x_1272 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
    let x_1274 : vec4<f32> = u_xlat8;
    let x_1276 : f32 = u_xlat49;
    let x_1279 : vec3<f32> = u_xlat2;
    let x_1280 : vec3<f32> = ((vec3<f32>(x_1274.x, x_1274.y, x_1274.z) * vec3<f32>(x_1276, x_1276, x_1276)) + x_1279);
    let x_1281 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
    let x_1283 : vec4<f32> = u_xlat8;
    let x_1285 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1283.x, x_1283.y, x_1283.z), vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
    let x_1288 : f32 = u_xlat47;
    u_xlat47 = max(x_1288, 1.17549435e-37f);
    let x_1290 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1290);
    let x_1292 : f32 = u_xlat47;
    let x_1294 : vec4<f32> = u_xlat8;
    let x_1296 : vec3<f32> = (vec3<f32>(x_1292, x_1292, x_1292) * vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
    let x_1297 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
    let x_1299 : vec4<f32> = u_xlat1;
    let x_1301 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1299.x, x_1299.y, x_1299.z), vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
    let x_1304 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1304, 0.0f, 1.0f);
    let x_1306 : vec4<f32> = u_xlat9;
    let x_1308 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
    let x_1311 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1311, 0.0f, 1.0f);
    let x_1313 : f32 = u_xlat47;
    let x_1314 : f32 = u_xlat47;
    u_xlat47 = (x_1313 * x_1314);
    let x_1316 : f32 = u_xlat47;
    let x_1318 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1316 * x_1318) + 1.000010014f);
    let x_1321 : f32 = u_xlat48;
    let x_1322 : f32 = u_xlat48;
    u_xlat48 = (x_1321 * x_1322);
    let x_1324 : f32 = u_xlat47;
    let x_1325 : f32 = u_xlat47;
    u_xlat47 = (x_1324 * x_1325);
    let x_1327 : f32 = u_xlat48;
    u_xlat48 = max(x_1327, 0.100000001f);
    let x_1329 : f32 = u_xlat47;
    let x_1330 : f32 = u_xlat48;
    u_xlat47 = (x_1329 * x_1330);
    let x_1332 : f32 = u_xlat45;
    let x_1333 : f32 = u_xlat47;
    u_xlat47 = (x_1332 * x_1333);
    let x_1335 : f32 = u_xlat43;
    let x_1336 : f32 = u_xlat47;
    u_xlat47 = (x_1335 / x_1336);
    let x_1338 : vec4<f32> = u_xlat5;
    let x_1340 : f32 = u_xlat47;
    let x_1343 : vec4<f32> = u_xlat6;
    let x_1345 : vec3<f32> = ((vec3<f32>(x_1338.x, x_1338.y, x_1338.z) * vec3<f32>(x_1340, x_1340, x_1340)) + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
    let x_1346 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
    let x_1348 : vec4<f32> = u_xlat8;
    let x_1350 : vec4<f32> = u_xlat10;
    let x_1353 : vec4<f32> = u_xlat7;
    let x_1355 : vec3<f32> = ((vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z)) + vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
    let x_1356 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);

    continuing {
      let x_1358 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1358 + bitcast<u32>(1i));
    }
  }
  let x_1360 : vec4<f32> = u_xlat3;
  let x_1362 : f32 = u_xlat14;
  let x_1365 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1360.x, x_1360.y, x_1360.z) * vec3<f32>(x_1362, x_1362, x_1362)) + vec3<f32>(x_1365.x, x_1365.z, x_1365.w));
  let x_1368 : vec4<f32> = u_xlat7;
  let x_1370 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1368.x, x_1368.y, x_1368.z) + x_1370);
  let x_1374 : f32 = u_xlat42;
  let x_1376 : vec3<f32> = u_xlat0;
  let x_1377 : vec3<f32> = (vec3<f32>(x_1374, x_1374, x_1374) * x_1376);
  let x_1378 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1378.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

