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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_595 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1161 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1411 : AdditionalLights;

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
  var x_571 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb31 : bool;
  var x_1025 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati47 : i32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat51 : f32;
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
  let x_561 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_561;
  let x_564 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_564;
  let x_568 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_574 : vec3<f32> = u_xlat15;
    x_571 = x_574;
  } else {
    let x_576 : vec3<f32> = u_xlat2;
    x_571 = x_576;
  }
  let x_577 : vec3<f32> = x_571;
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_581 : vec3<f32> = vs_TEXCOORD3;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_581, x_582);
  let x_584 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_584);
  let x_586 : f32 = u_xlat43;
  let x_588 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_586, x_586, x_586) * x_588);
  let x_590 : vec3<f32> = vs_TEXCOORD7;
  let x_597 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres0;
  let x_600 : vec3<f32> = (x_590 + -(vec3<f32>(x_597.x, x_597.y, x_597.z)));
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = vs_TEXCOORD7;
  let x_605 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres1;
  let x_608 : vec3<f32> = (x_603 + -(vec3<f32>(x_605.x, x_605.y, x_605.z)));
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec3<f32> = vs_TEXCOORD7;
  let x_614 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres2;
  let x_617 : vec3<f32> = (x_611 + -(vec3<f32>(x_614.x, x_614.y, x_614.z)));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec3<f32> = vs_TEXCOORD7;
  let x_622 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres3;
  let x_625 : vec3<f32> = (x_620 + -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
  let x_626 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat3;
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_646 : vec4<f32> = u_xlat7;
  let x_648 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_646.x, x_646.y, x_646.z), vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec4<f32> = x_595.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_654 < x_656);
  let x_659 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_663);
  let x_667 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_667);
  let x_671 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_671);
  let x_675 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_675);
  let x_680 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_680);
  let x_684 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_684);
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec4<f32> = u_xlat4;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) + vec3<f32>(x_689.y, x_689.z, x_689.w));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat3;
  let x_697 : vec3<f32> = max(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_698 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_698.x, x_697.x, x_697.y, x_697.z);
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_700, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_705 : f32 = u_xlat43;
  u_xlat43 = (-(x_705) + 4.0f);
  let x_710 : f32 = u_xlat43;
  u_xlatu43 = u32(x_710);
  let x_714 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_714) << bitcast<u32>(2i));
  let x_717 : vec3<f32> = vs_TEXCOORD7;
  let x_719 : i32 = u_xlati43;
  let x_722 : i32 = u_xlati43;
  let x_726 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
  let x_728 : vec3<f32> = (vec3<f32>(x_717.y, x_717.y, x_717.y) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati43;
  let x_733 : i32 = u_xlati43;
  let x_736 : vec4<f32> = x_595.x_MainLightWorldToShadow[(x_731 / 4i)][(x_733 % 4i)];
  let x_738 : vec3<f32> = vs_TEXCOORD7;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati43;
  let x_749 : i32 = u_xlati43;
  let x_753 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
  let x_755 : vec3<f32> = vs_TEXCOORD7;
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.z, x_755.z, x_755.z)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : i32 = u_xlati43;
  let x_768 : i32 = u_xlati43;
  let x_772 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
  let x_774 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_778 : f32 = vs_TEXCOORD7.y;
  let x_780 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat43 = (x_778 * x_780);
  let x_783 : f32 = x_126.unity_MatrixV[0i].z;
  let x_785 : f32 = vs_TEXCOORD7.x;
  let x_787 : f32 = u_xlat43;
  u_xlat43 = ((x_783 * x_785) + x_787);
  let x_790 : f32 = x_126.unity_MatrixV[2i].z;
  let x_792 : f32 = vs_TEXCOORD7.z;
  let x_794 : f32 = u_xlat43;
  u_xlat43 = ((x_790 * x_792) + x_794);
  let x_796 : f32 = u_xlat43;
  let x_798 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat43 = (x_796 + x_798);
  let x_800 : f32 = u_xlat43;
  let x_803 : f32 = x_126.x_ProjectionParams.y;
  u_xlat43 = (-(x_800) + -(x_803));
  let x_806 : f32 = u_xlat43;
  u_xlat43 = max(x_806, 0.0f);
  let x_808 : f32 = u_xlat43;
  let x_810 : f32 = x_126.unity_FogParams.x;
  u_xlat43 = (x_808 * x_810);
  let x_817 : vec4<f32> = vs_TEXCOORD0;
  let x_820 : f32 = x_126.x_GlobalMipBias.x;
  let x_821 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_817.z, x_817.w), x_820);
  u_xlat4 = x_821;
  let x_826 : vec4<f32> = vs_TEXCOORD0;
  let x_829 : f32 = x_126.x_GlobalMipBias.x;
  let x_830 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_826.z, x_826.w), x_829);
  let x_831 : vec3<f32> = vec3<f32>(x_830.x, x_830.y, x_830.z);
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat4;
  let x_838 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_839 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_842 : vec3<f32> = u_xlat2;
  let x_843 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_842, vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : f32 = u_xlat44;
  u_xlat44 = (x_846 + 0.5f);
  let x_848 : f32 = u_xlat44;
  let x_850 : vec4<f32> = u_xlat6;
  let x_852 : vec3<f32> = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = u_xlat4.w;
  u_xlat44 = max(x_856, 0.0001f);
  let x_859 : vec4<f32> = u_xlat4;
  let x_861 : f32 = u_xlat44;
  let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) / vec3<f32>(x_861, x_861, x_861));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_868 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
  let x_873 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_869.x, x_869.y));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat6;
  let x_878 : vec4<f32> = hlslcc_FragCoord;
  let x_880 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_878.x, x_878.y));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
  let x_884 : f32 = u_xlat6.y;
  let x_886 : f32 = x_126.x_ScaleBiasRt.x;
  let x_889 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat44 = ((x_884 * x_886) + x_889);
  let x_891 : f32 = u_xlat44;
  u_xlat6.z = (-(x_891) + 1.0f);
  let x_896 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_896) * 0.959999979f) + 0.959999979f);
  let x_902 : f32 = u_xlat28;
  let x_903 : f32 = u_xlat44;
  u_xlat45 = (x_902 + -(x_903));
  let x_906 : f32 = u_xlat44;
  let x_908 : vec4<f32> = u_xlat5;
  let x_910 : vec3<f32> = (vec3<f32>(x_906, x_906, x_906) * vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_911 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat5;
  let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_918 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec3<f32> = u_xlat0;
  let x_922 : vec4<f32> = u_xlat5;
  let x_927 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.x, x_920.x) * vec3<f32>(x_922.x, x_922.y, x_922.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_928 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : f32 = u_xlat28;
  u_xlat0.x = (-(x_930) + 1.0f);
  let x_935 : f32 = u_xlat0.x;
  let x_937 : f32 = u_xlat0.x;
  u_xlat28 = (x_935 * x_937);
  let x_939 : f32 = u_xlat28;
  u_xlat28 = max(x_939, 0.0078125f);
  let x_942 : f32 = u_xlat28;
  let x_943 : f32 = u_xlat28;
  u_xlat44 = (x_942 * x_943);
  let x_945 : f32 = u_xlat45;
  u_xlat45 = (x_945 + 1.0f);
  let x_947 : f32 = u_xlat45;
  u_xlat45 = clamp(x_947, 0.0f, 1.0f);
  let x_950 : f32 = u_xlat28;
  u_xlat46 = ((x_950 * 4.0f) + 2.0f);
  let x_959 : vec4<f32> = u_xlat6;
  let x_962 : f32 = x_126.x_GlobalMipBias.x;
  let x_963 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_959.x, x_959.z), x_962);
  u_xlat47 = x_963.x;
  let x_965 : f32 = u_xlat47;
  u_xlat6.x = (x_965 + -1.0f);
  let x_969 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_971 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_969 * x_971) + 1.0f);
  let x_975 : f32 = u_xlat14;
  let x_976 : f32 = u_xlat47;
  u_xlat14 = min(x_975, x_976);
  let x_979 : vec4<f32> = u_xlat3;
  let x_980 : vec2<f32> = vec2<f32>(x_979.x, x_979.y);
  let x_982 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_980.x, x_980.y, x_982);
  let x_994 : vec3<f32> = txVec0;
  let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
  u_xlat3.x = x_996;
  let x_1000 : f32 = x_595.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_1000) + 1.0f);
  let x_1005 : f32 = u_xlat3.x;
  let x_1007 : f32 = x_595.x_MainLightShadowParams.x;
  let x_1010 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_1005 * x_1007) + x_1010);
  let x_1015 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_1015);
  let x_1019 : f32 = u_xlat3.z;
  u_xlatb31 = (x_1019 >= 1.0f);
  let x_1021 : bool = u_xlatb31;
  let x_1022 : bool = u_xlatb17;
  u_xlatb17 = (x_1021 | x_1022);
  let x_1024 : bool = u_xlatb17;
  if (x_1024) {
    x_1025 = 1.0f;
  } else {
    let x_1030 : f32 = u_xlat3.x;
    x_1025 = x_1030;
  }
  let x_1031 : f32 = x_1025;
  u_xlat3.x = x_1031;
  let x_1034 : vec3<f32> = vs_TEXCOORD7;
  let x_1036 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat20 = (x_1034 + -(x_1036));
  let x_1039 : vec3<f32> = u_xlat20;
  let x_1040 : vec3<f32> = u_xlat20;
  u_xlat17.x = dot(x_1039, x_1040);
  let x_1044 : f32 = u_xlat17.x;
  let x_1046 : f32 = x_595.x_MainLightShadowParams.z;
  let x_1049 : f32 = x_595.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1044 * x_1046) + x_1049);
  let x_1053 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1053, 0.0f, 1.0f);
  let x_1058 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1058) + 1.0f);
  let x_1062 : f32 = u_xlat17.x;
  let x_1063 : f32 = u_xlat31;
  let x_1066 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1062 * x_1063) + x_1066);
  let x_1069 : vec4<f32> = u_xlat6;
  let x_1072 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat20 = (vec3<f32>(x_1069.x, x_1069.x, x_1069.x) * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat1;
  let x_1078 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(-(vec3<f32>(x_1075.x, x_1075.y, x_1075.z)), x_1078);
  let x_1082 : f32 = u_xlat17.x;
  let x_1084 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1082 + x_1084);
  let x_1087 : vec3<f32> = u_xlat2;
  let x_1088 : vec3<f32> = u_xlat17;
  let x_1092 : vec4<f32> = u_xlat1;
  let x_1095 : vec3<f32> = ((x_1087 * -(vec3<f32>(x_1088.x, x_1088.x, x_1088.x))) + -(vec3<f32>(x_1092.x, x_1092.y, x_1092.z)));
  let x_1096 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec3<f32> = u_xlat2;
  let x_1099 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(x_1098, vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1104 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1104, 0.0f, 1.0f);
  let x_1108 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_1108) + 1.0f);
  let x_1113 : f32 = u_xlat17.x;
  let x_1115 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1113 * x_1115);
  let x_1119 : f32 = u_xlat17.x;
  let x_1121 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1119 * x_1121);
  let x_1125 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1125) * 0.699999988f) + 1.700000048f);
  let x_1132 : f32 = u_xlat0.x;
  let x_1133 : f32 = u_xlat31;
  u_xlat0.x = (x_1132 * x_1133);
  let x_1137 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1137 * 6.0f);
  let x_1149 : vec4<f32> = u_xlat8;
  let x_1152 : f32 = u_xlat0.x;
  let x_1153 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1149.x, x_1149.y, x_1149.z), x_1152);
  u_xlat8 = x_1153;
  let x_1155 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1155 + -1.0f);
  let x_1163 : f32 = x_1161.unity_SpecCube0_HDR.w;
  let x_1165 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1163 * x_1165) + 1.0f);
  let x_1170 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1170, 0.0f);
  let x_1174 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1174);
  let x_1178 : f32 = u_xlat0.x;
  let x_1180 : f32 = x_1161.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1178 * x_1180);
  let x_1184 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1184);
  let x_1188 : f32 = u_xlat0.x;
  let x_1190 : f32 = x_1161.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1188 * x_1190);
  let x_1193 : vec4<f32> = u_xlat8;
  let x_1195 : vec3<f32> = u_xlat0;
  let x_1197 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * vec3<f32>(x_1195.x, x_1195.x, x_1195.x));
  let x_1198 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
  let x_1200 : f32 = u_xlat28;
  let x_1202 : f32 = u_xlat28;
  let x_1206 : vec2<f32> = ((vec2<f32>(x_1200, x_1200) * vec2<f32>(x_1202, x_1202)) + vec2<f32>(-1.0f, 1.0f));
  let x_1207 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1206.x, x_1207.y, x_1206.y);
  let x_1210 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1210);
  let x_1212 : vec4<f32> = u_xlat5;
  let x_1215 : f32 = u_xlat45;
  let x_1217 : vec3<f32> = (-(vec3<f32>(x_1212.x, x_1212.y, x_1212.z)) + vec3<f32>(x_1215, x_1215, x_1215));
  let x_1218 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec3<f32> = u_xlat17;
  let x_1222 : vec4<f32> = u_xlat9;
  let x_1225 : vec4<f32> = u_xlat5;
  u_xlat17 = ((vec3<f32>(x_1220.x, x_1220.x, x_1220.x) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z)) + vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : f32 = u_xlat28;
  let x_1230 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1228, x_1228, x_1228) * x_1230);
  let x_1232 : vec3<f32> = u_xlat17;
  let x_1233 : vec4<f32> = u_xlat8;
  u_xlat17 = (x_1232 * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = u_xlat4;
  let x_1238 : vec4<f32> = u_xlat7;
  let x_1241 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_1236.x, x_1236.y, x_1236.z) * vec3<f32>(x_1238.x, x_1238.y, x_1238.z)) + x_1241);
  let x_1244 : f32 = u_xlat3.x;
  let x_1246 : f32 = x_1161.unity_LightData.z;
  u_xlat28 = (x_1244 * x_1246);
  let x_1248 : vec3<f32> = u_xlat2;
  let x_1250 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_1248, vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1255 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1255, 0.0f, 1.0f);
  let x_1258 : f32 = u_xlat28;
  let x_1260 : f32 = u_xlat3.x;
  u_xlat28 = (x_1258 * x_1260);
  let x_1262 : f32 = u_xlat28;
  let x_1264 : vec3<f32> = u_xlat20;
  let x_1265 : vec3<f32> = (vec3<f32>(x_1262, x_1262, x_1262) * x_1264);
  let x_1266 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  let x_1268 : vec4<f32> = u_xlat1;
  let x_1271 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) + vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : vec3<f32> = u_xlat20;
  let x_1275 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1274, x_1275);
  let x_1277 : f32 = u_xlat28;
  u_xlat28 = max(x_1277, 1.17549435e-37f);
  let x_1280 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1280);
  let x_1282 : f32 = u_xlat28;
  let x_1284 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1282, x_1282, x_1282) * x_1284);
  let x_1286 : vec3<f32> = u_xlat2;
  let x_1287 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1286, x_1287);
  let x_1289 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1289, 0.0f, 1.0f);
  let x_1292 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1294 : vec3<f32> = u_xlat20;
  u_xlat3.x = dot(vec3<f32>(x_1292.x, x_1292.y, x_1292.z), x_1294);
  let x_1298 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1298, 0.0f, 1.0f);
  let x_1301 : f32 = u_xlat28;
  let x_1302 : f32 = u_xlat28;
  u_xlat28 = (x_1301 * x_1302);
  let x_1304 : f32 = u_xlat28;
  let x_1306 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1304 * x_1306) + 1.000010014f);
  let x_1311 : f32 = u_xlat3.x;
  let x_1313 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1311 * x_1313);
  let x_1316 : f32 = u_xlat28;
  let x_1317 : f32 = u_xlat28;
  u_xlat28 = (x_1316 * x_1317);
  let x_1320 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1320, 0.100000001f);
  let x_1324 : f32 = u_xlat28;
  let x_1326 : f32 = u_xlat3.x;
  u_xlat28 = (x_1324 * x_1326);
  let x_1328 : f32 = u_xlat46;
  let x_1329 : f32 = u_xlat28;
  u_xlat28 = (x_1328 * x_1329);
  let x_1331 : f32 = u_xlat44;
  let x_1332 : f32 = u_xlat28;
  u_xlat28 = (x_1331 / x_1332);
  let x_1334 : vec4<f32> = u_xlat5;
  let x_1336 : f32 = u_xlat28;
  let x_1339 : vec4<f32> = u_xlat7;
  u_xlat20 = ((vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(x_1336, x_1336, x_1336)) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat4;
  let x_1344 : vec3<f32> = u_xlat20;
  let x_1345 : vec3<f32> = (vec3<f32>(x_1342.x, x_1342.y, x_1342.z) * x_1344);
  let x_1346 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1349 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1351 : f32 = x_1161.unity_LightData.y;
  u_xlat28 = min(x_1349, x_1351);
  let x_1354 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1354));
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1366 : u32 = u_xlatu_loop_1;
    let x_1367 : u32 = u_xlatu28;
    if ((x_1366 < x_1367)) {
    } else {
      break;
    }
    let x_1370 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1370 >> 2u);
    let x_1373 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1373 & 3u));
    let x_1376 : u32 = u_xlatu47;
    let x_1379 : vec4<f32> = x_1161.unity_LightIndices[bitcast<i32>(x_1376)];
    let x_1389 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1394 : vec4<u32> = indexable[x_1389];
    u_xlat47 = dot(x_1379, bitcast<vec4<f32>>(x_1394));
    let x_1398 : f32 = u_xlat47;
    u_xlati47 = i32(x_1398);
    let x_1400 : vec3<f32> = vs_TEXCOORD7;
    let x_1412 : i32 = u_xlati47;
    let x_1414 : vec4<f32> = x_1411.x_AdditionalLightsPosition[x_1412];
    let x_1417 : i32 = u_xlati47;
    let x_1419 : vec4<f32> = x_1411.x_AdditionalLightsPosition[x_1417];
    let x_1421 : vec3<f32> = ((-(x_1400) * vec3<f32>(x_1414.w, x_1414.w, x_1414.w)) + vec3<f32>(x_1419.x, x_1419.y, x_1419.z));
    let x_1422 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
    let x_1425 : vec4<f32> = u_xlat8;
    let x_1427 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1425.x, x_1425.y, x_1425.z), vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
    let x_1430 : f32 = u_xlat49;
    u_xlat49 = max(x_1430, 6.10351562e-05f);
    let x_1433 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1433);
    let x_1435 : f32 = u_xlat50;
    let x_1437 : vec4<f32> = u_xlat8;
    let x_1439 : vec3<f32> = (vec3<f32>(x_1435, x_1435, x_1435) * vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
    let x_1440 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
    let x_1443 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1443);
    let x_1445 : f32 = u_xlat49;
    let x_1446 : i32 = u_xlati47;
    let x_1448 : f32 = x_1411.x_AdditionalLightsAttenuation[x_1446].x;
    u_xlat49 = (x_1445 * x_1448);
    let x_1450 : f32 = u_xlat49;
    let x_1452 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1450) * x_1452) + 1.0f);
    let x_1455 : f32 = u_xlat49;
    u_xlat49 = max(x_1455, 0.0f);
    let x_1457 : f32 = u_xlat49;
    let x_1458 : f32 = u_xlat49;
    u_xlat49 = (x_1457 * x_1458);
    let x_1460 : f32 = u_xlat49;
    let x_1461 : f32 = u_xlat51;
    u_xlat49 = (x_1460 * x_1461);
    let x_1463 : i32 = u_xlati47;
    let x_1465 : vec4<f32> = x_1411.x_AdditionalLightsSpotDir[x_1463];
    let x_1467 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1465.x, x_1465.y, x_1465.z), vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
    let x_1470 : f32 = u_xlat51;
    let x_1471 : i32 = u_xlati47;
    let x_1473 : f32 = x_1411.x_AdditionalLightsAttenuation[x_1471].z;
    let x_1475 : i32 = u_xlati47;
    let x_1477 : f32 = x_1411.x_AdditionalLightsAttenuation[x_1475].w;
    u_xlat51 = ((x_1470 * x_1473) + x_1477);
    let x_1479 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1479, 0.0f, 1.0f);
    let x_1481 : f32 = u_xlat51;
    let x_1482 : f32 = u_xlat51;
    u_xlat51 = (x_1481 * x_1482);
    let x_1484 : f32 = u_xlat49;
    let x_1485 : f32 = u_xlat51;
    u_xlat49 = (x_1484 * x_1485);
    let x_1487 : vec4<f32> = u_xlat6;
    let x_1489 : i32 = u_xlati47;
    let x_1491 : vec4<f32> = x_1411.x_AdditionalLightsColor[x_1489];
    let x_1493 : vec3<f32> = (vec3<f32>(x_1487.x, x_1487.x, x_1487.x) * vec3<f32>(x_1491.x, x_1491.y, x_1491.z));
    let x_1494 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
    let x_1496 : vec3<f32> = u_xlat2;
    let x_1497 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_1496, vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
    let x_1500 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1500, 0.0f, 1.0f);
    let x_1502 : f32 = u_xlat47;
    let x_1503 : f32 = u_xlat49;
    u_xlat47 = (x_1502 * x_1503);
    let x_1505 : f32 = u_xlat47;
    let x_1507 : vec4<f32> = u_xlat10;
    let x_1509 : vec3<f32> = (vec3<f32>(x_1505, x_1505, x_1505) * vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
    let x_1510 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
    let x_1512 : vec4<f32> = u_xlat8;
    let x_1514 : f32 = u_xlat50;
    let x_1517 : vec4<f32> = u_xlat1;
    let x_1519 : vec3<f32> = ((vec3<f32>(x_1512.x, x_1512.y, x_1512.z) * vec3<f32>(x_1514, x_1514, x_1514)) + vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
    let x_1520 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
    let x_1522 : vec4<f32> = u_xlat8;
    let x_1524 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1522.x, x_1522.y, x_1522.z), vec3<f32>(x_1524.x, x_1524.y, x_1524.z));
    let x_1527 : f32 = u_xlat47;
    u_xlat47 = max(x_1527, 1.17549435e-37f);
    let x_1529 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1529);
    let x_1531 : f32 = u_xlat47;
    let x_1533 : vec4<f32> = u_xlat8;
    let x_1535 : vec3<f32> = (vec3<f32>(x_1531, x_1531, x_1531) * vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
    let x_1536 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
    let x_1538 : vec3<f32> = u_xlat2;
    let x_1539 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(x_1538, vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
    let x_1542 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1542, 0.0f, 1.0f);
    let x_1544 : vec4<f32> = u_xlat9;
    let x_1546 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1544.x, x_1544.y, x_1544.z), vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1549, 0.0f, 1.0f);
    let x_1551 : f32 = u_xlat47;
    let x_1552 : f32 = u_xlat47;
    u_xlat47 = (x_1551 * x_1552);
    let x_1554 : f32 = u_xlat47;
    let x_1556 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1554 * x_1556) + 1.000010014f);
    let x_1559 : f32 = u_xlat49;
    let x_1560 : f32 = u_xlat49;
    u_xlat49 = (x_1559 * x_1560);
    let x_1562 : f32 = u_xlat47;
    let x_1563 : f32 = u_xlat47;
    u_xlat47 = (x_1562 * x_1563);
    let x_1565 : f32 = u_xlat49;
    u_xlat49 = max(x_1565, 0.100000001f);
    let x_1567 : f32 = u_xlat47;
    let x_1568 : f32 = u_xlat49;
    u_xlat47 = (x_1567 * x_1568);
    let x_1570 : f32 = u_xlat46;
    let x_1571 : f32 = u_xlat47;
    u_xlat47 = (x_1570 * x_1571);
    let x_1573 : f32 = u_xlat44;
    let x_1574 : f32 = u_xlat47;
    u_xlat47 = (x_1573 / x_1574);
    let x_1576 : vec4<f32> = u_xlat5;
    let x_1578 : f32 = u_xlat47;
    let x_1581 : vec4<f32> = u_xlat7;
    let x_1583 : vec3<f32> = ((vec3<f32>(x_1576.x, x_1576.y, x_1576.z) * vec3<f32>(x_1578, x_1578, x_1578)) + vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
    let x_1584 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
    let x_1586 : vec4<f32> = u_xlat8;
    let x_1588 : vec4<f32> = u_xlat10;
    let x_1591 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_1586.x, x_1586.y, x_1586.z) * vec3<f32>(x_1588.x, x_1588.y, x_1588.z)) + x_1591);

    continuing {
      let x_1593 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1593 + bitcast<u32>(1i));
    }
  }
  let x_1595 : vec3<f32> = u_xlat17;
  let x_1596 : f32 = u_xlat14;
  let x_1599 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_1595 * vec3<f32>(x_1596, x_1596, x_1596)) + vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
  let x_1602 : vec3<f32> = u_xlat20;
  let x_1603 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1602 + x_1603);
  let x_1605 : f32 = u_xlat42;
  let x_1607 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1605, x_1605, x_1605) * x_1607);
  let x_1609 : f32 = u_xlat43;
  let x_1610 : f32 = u_xlat43;
  u_xlat42 = (x_1609 * -(x_1610));
  let x_1613 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1613);
  let x_1617 : vec3<f32> = u_xlat0;
  let x_1618 : f32 = u_xlat42;
  let x_1620 : vec3<f32> = (x_1617 * vec3<f32>(x_1618, x_1618, x_1618));
  let x_1621 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
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

