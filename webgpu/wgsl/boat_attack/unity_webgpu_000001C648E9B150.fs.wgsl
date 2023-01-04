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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_802 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_948 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1213 : AdditionalLights;

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
  var x_827 : f32;
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
  let x_618 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_614.z, x_614.w), x_617);
  u_xlat3 = x_618;
  let x_623 : vec4<f32> = vs_TEXCOORD0;
  let x_626 : f32 = x_126.x_GlobalMipBias.x;
  let x_627 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_623.z, x_623.w), x_626);
  let x_628 : vec3<f32> = vec3<f32>(x_627.x, x_627.y, x_627.z);
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat3;
  let x_635 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat1;
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : f32 = u_xlat43;
  u_xlat43 = (x_643 + 0.5f);
  let x_645 : f32 = u_xlat43;
  let x_647 : vec4<f32> = u_xlat4;
  let x_649 : vec3<f32> = (vec3<f32>(x_645, x_645, x_645) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : f32 = u_xlat3.w;
  u_xlat43 = max(x_653, 0.0001f);
  let x_656 : vec4<f32> = u_xlat3;
  let x_658 : f32 = u_xlat43;
  let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.y, x_656.z) / vec3<f32>(x_658, x_658, x_658));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_665 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
  let x_670 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_666.x, x_666.y));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : vec4<f32> = hlslcc_FragCoord;
  let x_677 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(x_675.x, x_675.y));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
  let x_681 : f32 = u_xlat4.y;
  let x_683 : f32 = x_126.x_ScaleBiasRt.x;
  let x_686 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_681 * x_683) + x_686);
  let x_688 : f32 = u_xlat43;
  u_xlat4.z = (-(x_688) + 1.0f);
  let x_693 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_693) * 0.959999979f) + 0.959999979f);
  let x_699 : f32 = u_xlat28;
  let x_700 : f32 = u_xlat43;
  u_xlat44 = (x_699 + -(x_700));
  let x_703 : f32 = u_xlat43;
  let x_705 : vec4<f32> = u_xlat5;
  let x_707 : vec3<f32> = (vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec3<f32> = u_xlat0;
  let x_719 : vec4<f32> = u_xlat5;
  let x_724 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.x, x_717.x) * vec3<f32>(x_719.x, x_719.y, x_719.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_725 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : f32 = u_xlat28;
  u_xlat0.x = (-(x_727) + 1.0f);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat0.x;
  u_xlat28 = (x_732 * x_734);
  let x_736 : f32 = u_xlat28;
  u_xlat28 = max(x_736, 0.0078125f);
  let x_739 : f32 = u_xlat28;
  let x_740 : f32 = u_xlat28;
  u_xlat43 = (x_739 * x_740);
  let x_742 : f32 = u_xlat44;
  u_xlat44 = (x_742 + 1.0f);
  let x_744 : f32 = u_xlat44;
  u_xlat44 = clamp(x_744, 0.0f, 1.0f);
  let x_747 : f32 = u_xlat28;
  u_xlat45 = ((x_747 * 4.0f) + 2.0f);
  let x_756 : vec4<f32> = u_xlat4;
  let x_759 : f32 = x_126.x_GlobalMipBias.x;
  let x_760 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_756.x, x_756.z), x_759);
  u_xlat4.x = x_760.x;
  let x_765 : f32 = u_xlat4.x;
  u_xlat18 = (x_765 + -1.0f);
  let x_768 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_769 : f32 = u_xlat18;
  u_xlat18 = ((x_768 * x_769) + 1.0f);
  let x_772 : f32 = u_xlat14;
  let x_774 : f32 = u_xlat4.x;
  u_xlat14 = min(x_772, x_774);
  let x_778 : vec4<f32> = vs_TEXCOORD8;
  let x_779 : vec2<f32> = vec2<f32>(x_778.x, x_778.y);
  let x_781 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_779.x, x_779.y, x_781);
  let x_793 : vec3<f32> = txVec0;
  let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_793.xy, x_793.z);
  u_xlat4.x = x_795;
  let x_804 : f32 = x_802.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_804) + 1.0f);
  let x_808 : f32 = u_xlat4.x;
  let x_810 : f32 = x_802.x_MainLightShadowParams.x;
  let x_812 : f32 = u_xlat32;
  u_xlat4.x = ((x_808 * x_810) + x_812);
  let x_817 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_817);
  let x_821 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_821 >= 1.0f);
  let x_823 : bool = u_xlatb46;
  let x_824 : bool = u_xlatb32;
  u_xlatb32 = (x_823 | x_824);
  let x_826 : bool = u_xlatb32;
  if (x_826) {
    x_827 = 1.0f;
  } else {
    let x_832 : f32 = u_xlat4.x;
    x_827 = x_832;
  }
  let x_833 : f32 = x_827;
  u_xlat4.x = x_833;
  let x_835 : vec3<f32> = vs_TEXCOORD7;
  let x_837 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_839 : vec3<f32> = (x_835 + -(x_837));
  let x_840 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat7;
  let x_844 : vec4<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : f32 = u_xlat32;
  let x_849 : f32 = x_802.x_MainLightShadowParams.z;
  let x_852 : f32 = x_802.x_MainLightShadowParams.w;
  u_xlat32 = ((x_847 * x_849) + x_852);
  let x_854 : f32 = u_xlat32;
  u_xlat32 = clamp(x_854, 0.0f, 1.0f);
  let x_858 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_858) + 1.0f);
  let x_861 : f32 = u_xlat32;
  let x_862 : f32 = u_xlat46;
  let x_865 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_861 * x_862) + x_865);
  let x_868 : f32 = u_xlat18;
  let x_872 : vec4<f32> = x_126.x_MainLightColor;
  let x_874 : vec3<f32> = (vec3<f32>(x_868, x_868, x_868) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec3<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat32 = dot(-(x_877), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : f32 = u_xlat32;
  let x_883 : f32 = u_xlat32;
  u_xlat32 = (x_882 + x_883);
  let x_885 : vec4<f32> = u_xlat1;
  let x_887 : f32 = u_xlat32;
  let x_891 : vec3<f32> = u_xlat2;
  let x_893 : vec3<f32> = ((vec3<f32>(x_885.x, x_885.y, x_885.z) * -(vec3<f32>(x_887, x_887, x_887))) + -(x_891));
  let x_894 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat1;
  let x_898 : vec3<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_896.x, x_896.y, x_896.z), x_898);
  let x_900 : f32 = u_xlat32;
  u_xlat32 = clamp(x_900, 0.0f, 1.0f);
  let x_902 : f32 = u_xlat32;
  u_xlat32 = (-(x_902) + 1.0f);
  let x_905 : f32 = u_xlat32;
  let x_906 : f32 = u_xlat32;
  u_xlat32 = (x_905 * x_906);
  let x_908 : f32 = u_xlat32;
  let x_909 : f32 = u_xlat32;
  u_xlat32 = (x_908 * x_909);
  let x_912 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_912) * 0.699999988f) + 1.700000048f);
  let x_919 : f32 = u_xlat0.x;
  let x_920 : f32 = u_xlat46;
  u_xlat0.x = (x_919 * x_920);
  let x_924 : f32 = u_xlat0.x;
  u_xlat0.x = (x_924 * 6.0f);
  let x_936 : vec4<f32> = u_xlat8;
  let x_939 : f32 = u_xlat0.x;
  let x_940 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_936.x, x_936.y, x_936.z), x_939);
  u_xlat8 = x_940;
  let x_942 : f32 = u_xlat8.w;
  u_xlat0.x = (x_942 + -1.0f);
  let x_950 : f32 = x_948.unity_SpecCube0_HDR.w;
  let x_952 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_950 * x_952) + 1.0f);
  let x_957 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_957, 0.0f);
  let x_961 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_961);
  let x_965 : f32 = u_xlat0.x;
  let x_967 : f32 = x_948.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_965 * x_967);
  let x_971 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_971);
  let x_975 : f32 = u_xlat0.x;
  let x_977 : f32 = x_948.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_975 * x_977);
  let x_980 : vec4<f32> = u_xlat8;
  let x_982 : vec3<f32> = u_xlat0;
  let x_984 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(x_982.x, x_982.x, x_982.x));
  let x_985 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : f32 = u_xlat28;
  let x_989 : f32 = u_xlat28;
  let x_993 : vec2<f32> = ((vec2<f32>(x_987, x_987) * vec2<f32>(x_989, x_989)) + vec2<f32>(-1.0f, 1.0f));
  let x_994 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_993.x, x_994.y, x_993.y);
  let x_997 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_997);
  let x_999 : vec4<f32> = u_xlat5;
  let x_1002 : f32 = u_xlat44;
  let x_1004 : vec3<f32> = (-(vec3<f32>(x_999.x, x_999.y, x_999.z)) + vec3<f32>(x_1002, x_1002, x_1002));
  let x_1005 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : f32 = u_xlat32;
  let x_1009 : vec4<f32> = u_xlat9;
  let x_1012 : vec4<f32> = u_xlat5;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : f32 = u_xlat28;
  let x_1019 : vec4<f32> = u_xlat9;
  let x_1021 : vec3<f32> = (vec3<f32>(x_1017, x_1017, x_1017) * vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec4<f32> = u_xlat8;
  let x_1026 : vec4<f32> = u_xlat9;
  let x_1028 : vec3<f32> = (vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
  let x_1029 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
  let x_1031 : vec4<f32> = u_xlat3;
  let x_1033 : vec4<f32> = u_xlat6;
  let x_1036 : vec4<f32> = u_xlat8;
  let x_1038 : vec3<f32> = ((vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z)) + vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1042 : f32 = u_xlat4.x;
  let x_1044 : f32 = x_948.unity_LightData.z;
  u_xlat28 = (x_1042 * x_1044);
  let x_1046 : vec4<f32> = u_xlat1;
  let x_1049 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1046.x, x_1046.y, x_1046.z), vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1052, 0.0f, 1.0f);
  let x_1054 : f32 = u_xlat28;
  let x_1055 : f32 = u_xlat44;
  u_xlat28 = (x_1054 * x_1055);
  let x_1057 : f32 = u_xlat28;
  let x_1059 : vec4<f32> = u_xlat7;
  let x_1061 : vec3<f32> = (vec3<f32>(x_1057, x_1057, x_1057) * vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1061.x, x_1062.y, x_1061.y, x_1061.z);
  let x_1064 : vec3<f32> = u_xlat2;
  let x_1066 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1068 : vec3<f32> = (x_1064 + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat7;
  let x_1073 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : f32 = u_xlat28;
  u_xlat28 = max(x_1076, 1.17549435e-37f);
  let x_1079 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1079);
  let x_1081 : f32 = u_xlat28;
  let x_1083 : vec4<f32> = u_xlat7;
  let x_1085 : vec3<f32> = (vec3<f32>(x_1081, x_1081, x_1081) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1088 : vec4<f32> = u_xlat1;
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1088.x, x_1088.y, x_1088.z), vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1093, 0.0f, 1.0f);
  let x_1096 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1101, 0.0f, 1.0f);
  let x_1103 : f32 = u_xlat28;
  let x_1104 : f32 = u_xlat28;
  u_xlat28 = (x_1103 * x_1104);
  let x_1106 : f32 = u_xlat28;
  let x_1108 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1106 * x_1108) + 1.000010014f);
  let x_1112 : f32 = u_xlat44;
  let x_1113 : f32 = u_xlat44;
  u_xlat44 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat28;
  let x_1116 : f32 = u_xlat28;
  u_xlat28 = (x_1115 * x_1116);
  let x_1118 : f32 = u_xlat44;
  u_xlat44 = max(x_1118, 0.100000001f);
  let x_1121 : f32 = u_xlat28;
  let x_1122 : f32 = u_xlat44;
  u_xlat28 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat45;
  let x_1125 : f32 = u_xlat28;
  u_xlat28 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat43;
  let x_1128 : f32 = u_xlat28;
  u_xlat28 = (x_1127 / x_1128);
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1132 : f32 = u_xlat28;
  let x_1135 : vec4<f32> = u_xlat6;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(x_1132, x_1132, x_1132)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec4<f32> = u_xlat4;
  let x_1142 : vec4<f32> = u_xlat7;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.z, x_1140.w) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1144.z);
  let x_1148 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1150 : f32 = x_948.unity_LightData.y;
  u_xlat28 = min(x_1148, x_1150);
  let x_1154 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1154));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1166 : u32 = u_xlatu_loop_1;
    let x_1167 : u32 = u_xlatu28;
    if ((x_1166 < x_1167)) {
    } else {
      break;
    }
    let x_1170 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1170 >> 2u);
    let x_1174 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1174 & 3u));
    let x_1178 : u32 = u_xlatu47;
    let x_1181 : vec4<f32> = x_948.unity_LightIndices[bitcast<i32>(x_1178)];
    let x_1191 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1196 : vec4<u32> = indexable[x_1191];
    u_xlat47 = dot(x_1181, bitcast<vec4<f32>>(x_1196));
    let x_1200 : f32 = u_xlat47;
    u_xlati47 = i32(x_1200);
    let x_1202 : vec3<f32> = vs_TEXCOORD7;
    let x_1214 : i32 = u_xlati47;
    let x_1216 : vec4<f32> = x_1213.x_AdditionalLightsPosition[x_1214];
    let x_1219 : i32 = u_xlati47;
    let x_1221 : vec4<f32> = x_1213.x_AdditionalLightsPosition[x_1219];
    let x_1223 : vec3<f32> = ((-(x_1202) * vec3<f32>(x_1216.w, x_1216.w, x_1216.w)) + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
    let x_1224 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
    let x_1227 : vec4<f32> = u_xlat8;
    let x_1229 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1227.x, x_1227.y, x_1227.z), vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
    let x_1232 : f32 = u_xlat48;
    u_xlat48 = max(x_1232, 6.10351562e-05f);
    let x_1235 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1235);
    let x_1237 : f32 = u_xlat49;
    let x_1239 : vec4<f32> = u_xlat8;
    let x_1241 : vec3<f32> = (vec3<f32>(x_1237, x_1237, x_1237) * vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
    let x_1242 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
    let x_1245 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1245);
    let x_1247 : f32 = u_xlat48;
    let x_1248 : i32 = u_xlati47;
    let x_1250 : f32 = x_1213.x_AdditionalLightsAttenuation[x_1248].x;
    u_xlat48 = (x_1247 * x_1250);
    let x_1252 : f32 = u_xlat48;
    let x_1254 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1252) * x_1254) + 1.0f);
    let x_1257 : f32 = u_xlat48;
    u_xlat48 = max(x_1257, 0.0f);
    let x_1259 : f32 = u_xlat48;
    let x_1260 : f32 = u_xlat48;
    u_xlat48 = (x_1259 * x_1260);
    let x_1262 : f32 = u_xlat48;
    let x_1263 : f32 = u_xlat50;
    u_xlat48 = (x_1262 * x_1263);
    let x_1265 : i32 = u_xlati47;
    let x_1267 : vec4<f32> = x_1213.x_AdditionalLightsSpotDir[x_1265];
    let x_1269 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1267.x, x_1267.y, x_1267.z), vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
    let x_1272 : f32 = u_xlat50;
    let x_1273 : i32 = u_xlati47;
    let x_1275 : f32 = x_1213.x_AdditionalLightsAttenuation[x_1273].z;
    let x_1277 : i32 = u_xlati47;
    let x_1279 : f32 = x_1213.x_AdditionalLightsAttenuation[x_1277].w;
    u_xlat50 = ((x_1272 * x_1275) + x_1279);
    let x_1281 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1281, 0.0f, 1.0f);
    let x_1283 : f32 = u_xlat50;
    let x_1284 : f32 = u_xlat50;
    u_xlat50 = (x_1283 * x_1284);
    let x_1286 : f32 = u_xlat48;
    let x_1287 : f32 = u_xlat50;
    u_xlat48 = (x_1286 * x_1287);
    let x_1289 : f32 = u_xlat18;
    let x_1291 : i32 = u_xlati47;
    let x_1293 : vec4<f32> = x_1213.x_AdditionalLightsColor[x_1291];
    let x_1295 : vec3<f32> = (vec3<f32>(x_1289, x_1289, x_1289) * vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
    let x_1296 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
    let x_1298 : vec4<f32> = u_xlat1;
    let x_1300 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1298.x, x_1298.y, x_1298.z), vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
    let x_1303 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1303, 0.0f, 1.0f);
    let x_1305 : f32 = u_xlat47;
    let x_1306 : f32 = u_xlat48;
    u_xlat47 = (x_1305 * x_1306);
    let x_1308 : f32 = u_xlat47;
    let x_1310 : vec4<f32> = u_xlat10;
    let x_1312 : vec3<f32> = (vec3<f32>(x_1308, x_1308, x_1308) * vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
    let x_1313 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
    let x_1315 : vec4<f32> = u_xlat8;
    let x_1317 : f32 = u_xlat49;
    let x_1320 : vec3<f32> = u_xlat2;
    let x_1321 : vec3<f32> = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317, x_1317, x_1317)) + x_1320);
    let x_1322 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
    let x_1324 : vec4<f32> = u_xlat8;
    let x_1326 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1324.x, x_1324.y, x_1324.z), vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : f32 = u_xlat47;
    u_xlat47 = max(x_1329, 1.17549435e-37f);
    let x_1331 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1331);
    let x_1333 : f32 = u_xlat47;
    let x_1335 : vec4<f32> = u_xlat8;
    let x_1337 : vec3<f32> = (vec3<f32>(x_1333, x_1333, x_1333) * vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
    let x_1338 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
    let x_1340 : vec4<f32> = u_xlat1;
    let x_1342 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1340.x, x_1340.y, x_1340.z), vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
    let x_1345 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1345, 0.0f, 1.0f);
    let x_1347 : vec4<f32> = u_xlat9;
    let x_1349 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1347.x, x_1347.y, x_1347.z), vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
    let x_1352 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1352, 0.0f, 1.0f);
    let x_1354 : f32 = u_xlat47;
    let x_1355 : f32 = u_xlat47;
    u_xlat47 = (x_1354 * x_1355);
    let x_1357 : f32 = u_xlat47;
    let x_1359 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1357 * x_1359) + 1.000010014f);
    let x_1362 : f32 = u_xlat48;
    let x_1363 : f32 = u_xlat48;
    u_xlat48 = (x_1362 * x_1363);
    let x_1365 : f32 = u_xlat47;
    let x_1366 : f32 = u_xlat47;
    u_xlat47 = (x_1365 * x_1366);
    let x_1368 : f32 = u_xlat48;
    u_xlat48 = max(x_1368, 0.100000001f);
    let x_1370 : f32 = u_xlat47;
    let x_1371 : f32 = u_xlat48;
    u_xlat47 = (x_1370 * x_1371);
    let x_1373 : f32 = u_xlat45;
    let x_1374 : f32 = u_xlat47;
    u_xlat47 = (x_1373 * x_1374);
    let x_1376 : f32 = u_xlat43;
    let x_1377 : f32 = u_xlat47;
    u_xlat47 = (x_1376 / x_1377);
    let x_1379 : vec4<f32> = u_xlat5;
    let x_1381 : f32 = u_xlat47;
    let x_1384 : vec4<f32> = u_xlat6;
    let x_1386 : vec3<f32> = ((vec3<f32>(x_1379.x, x_1379.y, x_1379.z) * vec3<f32>(x_1381, x_1381, x_1381)) + vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
    let x_1387 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
    let x_1389 : vec4<f32> = u_xlat8;
    let x_1391 : vec4<f32> = u_xlat10;
    let x_1394 : vec4<f32> = u_xlat7;
    let x_1396 : vec3<f32> = ((vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * vec3<f32>(x_1391.x, x_1391.y, x_1391.z)) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);

    continuing {
      let x_1399 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1399 + bitcast<u32>(1i));
    }
  }
  let x_1401 : vec4<f32> = u_xlat3;
  let x_1403 : f32 = u_xlat14;
  let x_1406 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1401.x, x_1401.y, x_1401.z) * vec3<f32>(x_1403, x_1403, x_1403)) + vec3<f32>(x_1406.x, x_1406.z, x_1406.w));
  let x_1409 : vec4<f32> = u_xlat7;
  let x_1411 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1409.x, x_1409.y, x_1409.z) + x_1411);
  let x_1415 : f32 = u_xlat42;
  let x_1417 : vec3<f32> = u_xlat0;
  let x_1418 : vec3<f32> = (vec3<f32>(x_1415, x_1415, x_1415) * x_1417);
  let x_1419 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
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

