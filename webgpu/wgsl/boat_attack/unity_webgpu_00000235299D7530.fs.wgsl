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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_899 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1104 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1533 : AdditionalLights;

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
  var u_xlat16 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlat45 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_1129 : f32;
  var u_xlat47 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu17 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati17 : i32;
  var u_xlat48 : f32;
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
  let x_383 : vec4<f32> = vs_TEXCOORD1;
  let x_386 : f32 = x_126.x_GlobalMipBias.x;
  let x_387 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_383.x, x_383.y), x_386);
  let x_388 : vec3<f32> = vec3<f32>(x_387.x, x_387.y, x_387.w);
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat6.x;
  let x_394 : f32 = u_xlat6.z;
  u_xlat6.x = (x_392 * x_394);
  let x_397 : vec4<f32> = u_xlat6;
  let x_402 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_403 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat6;
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_405.x, x_405.y), vec2<f32>(x_407.x, x_407.y));
  let x_410 : f32 = u_xlat43;
  u_xlat43 = min(x_410, 1.0f);
  let x_412 : f32 = u_xlat43;
  u_xlat43 = (-(x_412) + 1.0f);
  let x_415 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_415);
  let x_417 : f32 = u_xlat43;
  u_xlat7.z = max(x_417, 1.00000002e-16f);
  let x_421 : vec4<f32> = u_xlat6;
  let x_424 : f32 = x_30.x_NormalScale0;
  let x_426 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_424, x_424));
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_433 : vec4<f32> = vs_TEXCOORD1;
  let x_436 : f32 = x_126.x_GlobalMipBias.x;
  let x_437 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_433.z, x_433.w), x_436);
  let x_438 : vec3<f32> = vec3<f32>(x_437.x, x_437.y, x_437.w);
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : f32 = u_xlat6.x;
  let x_444 : f32 = u_xlat6.z;
  u_xlat6.x = (x_442 * x_444);
  let x_447 : vec4<f32> = u_xlat6;
  let x_450 : vec2<f32> = ((vec2<f32>(x_447.x, x_447.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat6;
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_453.x, x_453.y), vec2<f32>(x_455.x, x_455.y));
  let x_458 : f32 = u_xlat43;
  u_xlat43 = min(x_458, 1.0f);
  let x_460 : f32 = u_xlat43;
  u_xlat43 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_463);
  let x_465 : f32 = u_xlat43;
  u_xlat8.z = max(x_465, 1.00000002e-16f);
  let x_468 : vec4<f32> = u_xlat6;
  let x_471 : f32 = x_30.x_NormalScale1;
  let x_473 : f32 = x_30.x_NormalScale1;
  let x_474 : vec2<f32> = vec2<f32>(x_471, x_473);
  let x_478 : vec2<f32> = (vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_474.x, x_474.y));
  let x_479 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec4<f32> = u_xlat8;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.y, x_481.y, x_481.y) * vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  let x_493 : vec4<f32> = u_xlat6;
  let x_495 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.x, x_488.x) * vec3<f32>(x_490.x, x_490.y, x_490.z)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_502 : vec4<f32> = vs_TEXCOORD2;
  let x_505 : f32 = x_126.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_502.x, x_502.y), x_505);
  let x_507 : vec3<f32> = vec3<f32>(x_506.x, x_506.y, x_506.w);
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = u_xlat7.x;
  let x_513 : f32 = u_xlat7.z;
  u_xlat7.x = (x_511 * x_513);
  let x_516 : vec4<f32> = u_xlat7;
  let x_519 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat7;
  let x_524 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_522.x, x_522.y), vec2<f32>(x_524.x, x_524.y));
  let x_527 : f32 = u_xlat43;
  u_xlat43 = min(x_527, 1.0f);
  let x_529 : f32 = u_xlat43;
  u_xlat43 = (-(x_529) + 1.0f);
  let x_532 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_532);
  let x_534 : f32 = u_xlat43;
  u_xlat8.z = max(x_534, 1.00000002e-16f);
  let x_537 : vec4<f32> = u_xlat7;
  let x_541 : f32 = x_30.x_NormalScale2;
  let x_543 : f32 = x_30.x_NormalScale2;
  let x_544 : vec2<f32> = vec2<f32>(x_541, x_543);
  let x_548 : vec2<f32> = (vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_544.x, x_544.y));
  let x_549 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec4<f32> = u_xlat8;
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.z, x_551.z, x_551.z) * vec3<f32>(x_553.x, x_553.y, x_553.z)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_565 : vec4<f32> = vs_TEXCOORD2;
  let x_568 : f32 = x_126.x_GlobalMipBias.x;
  let x_569 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_565.z, x_565.w), x_568);
  let x_570 : vec3<f32> = vec3<f32>(x_569.x, x_569.y, x_569.w);
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = u_xlat7.x;
  let x_576 : f32 = u_xlat7.z;
  u_xlat7.x = (x_574 * x_576);
  let x_579 : vec4<f32> = u_xlat7;
  let x_582 : vec2<f32> = ((vec2<f32>(x_579.x, x_579.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat7;
  let x_587 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_585.x, x_585.y), vec2<f32>(x_587.x, x_587.y));
  let x_590 : f32 = u_xlat43;
  u_xlat43 = min(x_590, 1.0f);
  let x_592 : f32 = u_xlat43;
  u_xlat43 = (-(x_592) + 1.0f);
  let x_595 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_595);
  let x_597 : f32 = u_xlat43;
  u_xlat8.z = max(x_597, 1.00000002e-16f);
  let x_600 : vec4<f32> = u_xlat7;
  let x_604 : f32 = x_30.x_NormalScale3;
  let x_606 : f32 = x_30.x_NormalScale3;
  let x_607 : vec2<f32> = vec2<f32>(x_604, x_606);
  let x_611 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(x_607.x, x_607.y));
  let x_612 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat8;
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.w, x_614.w, x_614.w) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat6.z;
  u_xlat6.w = (x_625 + 0.00001f);
  let x_629 : vec4<f32> = u_xlat6;
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_629.x, x_629.y, x_629.w), vec3<f32>(x_631.x, x_631.y, x_631.w));
  let x_634 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_634);
  let x_636 : f32 = u_xlat43;
  let x_638 : vec4<f32> = u_xlat6;
  let x_640 : vec3<f32> = (vec3<f32>(x_636, x_636, x_636) * vec3<f32>(x_638.x, x_638.y, x_638.w));
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_644 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_644;
  let x_647 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_647;
  let x_650 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_650;
  let x_653 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_653;
  let x_656 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_656;
  let x_659 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_659;
  let x_662 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_662;
  let x_665 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_665;
  let x_667 : vec4<f32> = u_xlat7;
  let x_668 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_667 + x_668);
  let x_671 : f32 = u_xlat0.z;
  u_xlat8.x = x_671;
  let x_674 : f32 = u_xlat1.z;
  u_xlat8.y = x_674;
  let x_677 : f32 = u_xlat2.z;
  u_xlat8.z = x_677;
  let x_680 : f32 = u_xlat3.y;
  u_xlat8.w = x_680;
  let x_682 : vec4<f32> = u_xlat9;
  let x_685 : f32 = x_30.x_Smoothness0;
  let x_687 : f32 = x_30.x_Smoothness1;
  let x_689 : f32 = x_30.x_Smoothness2;
  let x_691 : f32 = x_30.x_Smoothness3;
  let x_694 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_682) * vec4<f32>(x_685, x_687, x_689, x_691)) + x_694);
  let x_698 : f32 = x_30.x_LayerHasMask0;
  let x_701 : f32 = x_30.x_LayerHasMask1;
  let x_704 : f32 = x_30.x_LayerHasMask2;
  let x_707 : f32 = x_30.x_LayerHasMask3;
  let x_709 : vec4<f32> = u_xlat8;
  let x_711 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_698, x_701, x_704, x_707) * x_709) + x_711);
  let x_714 : vec4<f32> = u_xlat4;
  let x_715 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_714, x_715);
  let x_718 : f32 = u_xlat0.x;
  u_xlat8.x = x_718;
  let x_721 : f32 = u_xlat1.x;
  u_xlat8.y = x_721;
  let x_724 : f32 = u_xlat2.x;
  u_xlat8.z = x_724;
  let x_727 : f32 = u_xlat3.x;
  u_xlat8.w = x_727;
  let x_729 : vec4<f32> = u_xlat8;
  let x_732 : f32 = x_30.x_Metallic0;
  let x_735 : f32 = x_30.x_Metallic1;
  let x_738 : f32 = x_30.x_Metallic2;
  let x_741 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_729 + -(vec4<f32>(x_732, x_735, x_738, x_741)));
  let x_746 : f32 = x_30.x_LayerHasMask0;
  let x_748 : f32 = x_30.x_LayerHasMask1;
  let x_750 : f32 = x_30.x_LayerHasMask2;
  let x_752 : f32 = x_30.x_LayerHasMask3;
  let x_754 : vec4<f32> = u_xlat8;
  let x_757 : f32 = x_30.x_Metallic0;
  let x_759 : f32 = x_30.x_Metallic1;
  let x_761 : f32 = x_30.x_Metallic2;
  let x_763 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_746, x_748, x_750, x_752) * x_754) + vec4<f32>(x_757, x_759, x_761, x_763));
  let x_766 : vec4<f32> = u_xlat4;
  let x_767 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_766, x_767);
  let x_771 : f32 = u_xlat0.y;
  u_xlat3.x = x_771;
  let x_774 : f32 = u_xlat1.y;
  u_xlat3.y = x_774;
  let x_777 : f32 = u_xlat2.y;
  u_xlat3.z = x_777;
  let x_779 : vec4<f32> = u_xlat7;
  let x_781 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_779) + x_781);
  let x_784 : f32 = x_30.x_LayerHasMask0;
  let x_786 : f32 = x_30.x_LayerHasMask1;
  let x_788 : f32 = x_30.x_LayerHasMask2;
  let x_790 : f32 = x_30.x_LayerHasMask3;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_784, x_786, x_788, x_790) * x_792) + x_794);
  let x_797 : vec4<f32> = u_xlat4;
  let x_798 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_797, x_798);
  let x_800 : vec4<f32> = u_xlat6;
  let x_803 : vec4<f32> = vs_TEXCOORD5;
  let x_805 : vec3<f32> = (vec3<f32>(x_800.y, x_800.y, x_800.y) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD4;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * -(vec3<f32>(x_811.x, x_811.y, x_811.z))) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD3;
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = ((vec3<f32>(x_820.z, x_820.z, x_820.z) * vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat1;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_831.x, x_831.y, x_831.z), vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_836);
  let x_838 : f32 = u_xlat43;
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec3<f32> = (vec3<f32>(x_838, x_838, x_838) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_848 : f32 = vs_TEXCOORD7.y;
  let x_850 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.x = (x_848 * x_850);
  let x_854 : f32 = x_126.unity_MatrixV[0i].z;
  let x_856 : f32 = vs_TEXCOORD7.x;
  let x_859 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_854 * x_856) + x_859);
  let x_863 : f32 = x_126.unity_MatrixV[2i].z;
  let x_865 : f32 = vs_TEXCOORD7.z;
  let x_868 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_863 * x_865) + x_868);
  let x_872 : f32 = u_xlat2.x;
  let x_874 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat2.x = (x_872 + x_874);
  let x_878 : f32 = u_xlat2.x;
  let x_881 : f32 = x_126.x_ProjectionParams.y;
  u_xlat2.x = (-(x_878) + -(x_881));
  let x_886 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_886, 0.0f);
  let x_890 : f32 = u_xlat2.x;
  let x_892 : f32 = x_126.unity_FogParams.x;
  u_xlat2.x = (x_890 * x_892);
  u_xlat1.w = 1.0f;
  let x_901 : vec4<f32> = x_899.unity_SHAr;
  let x_902 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_901, x_902);
  let x_906 : vec4<f32> = x_899.unity_SHAg;
  let x_907 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_906, x_907);
  let x_911 : vec4<f32> = x_899.unity_SHAb;
  let x_912 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_911, x_912);
  let x_915 : vec4<f32> = u_xlat1;
  let x_917 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_915.y, x_915.z, x_915.z, x_915.x) * vec4<f32>(x_917.x, x_917.y, x_917.z, x_917.z));
  let x_921 : vec4<f32> = x_899.unity_SHBr;
  let x_922 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_921, x_922);
  let x_926 : vec4<f32> = x_899.unity_SHBg;
  let x_927 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_926, x_927);
  let x_931 : vec4<f32> = x_899.unity_SHBb;
  let x_932 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_931, x_932);
  let x_936 : f32 = u_xlat1.y;
  let x_938 : f32 = u_xlat1.y;
  u_xlat43 = (x_936 * x_938);
  let x_941 : f32 = u_xlat1.x;
  let x_943 : f32 = u_xlat1.x;
  let x_945 : f32 = u_xlat43;
  u_xlat43 = ((x_941 * x_943) + -(x_945));
  let x_951 : vec4<f32> = x_899.unity_SHC;
  let x_953 : f32 = u_xlat43;
  let x_956 : vec4<f32> = u_xlat6;
  u_xlat16 = ((vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(x_953, x_953, x_953)) + vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec3<f32> = u_xlat16;
  let x_960 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_959 + vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_963, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_968 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
  let x_973 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_969.x, x_969.y));
  let x_974 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat3;
  let x_978 : vec4<f32> = hlslcc_FragCoord;
  let x_980 : vec2<f32> = (vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_978.x, x_978.y));
  let x_981 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
  let x_984 : f32 = u_xlat3.y;
  let x_986 : f32 = x_126.x_ScaleBiasRt.x;
  let x_989 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_984 * x_986) + x_989);
  let x_991 : f32 = u_xlat43;
  u_xlat3.z = (-(x_991) + 1.0f);
  let x_996 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_996) * 0.959999979f) + 0.959999979f);
  let x_1002 : f32 = u_xlat28;
  let x_1003 : f32 = u_xlat43;
  u_xlat17 = (x_1002 + -(x_1003));
  let x_1006 : f32 = u_xlat43;
  let x_1008 : vec4<f32> = u_xlat5;
  let x_1010 : vec3<f32> = (vec3<f32>(x_1006, x_1006, x_1006) * vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat5;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1018 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec3<f32> = u_xlat0;
  let x_1022 : vec4<f32> = u_xlat5;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1020.x, x_1020.x, x_1020.x) * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1028 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1030) + 1.0f);
  let x_1035 : f32 = u_xlat0.x;
  let x_1037 : f32 = u_xlat0.x;
  u_xlat28 = (x_1035 * x_1037);
  let x_1039 : f32 = u_xlat28;
  u_xlat28 = max(x_1039, 0.0078125f);
  let x_1042 : f32 = u_xlat28;
  let x_1043 : f32 = u_xlat28;
  u_xlat43 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat17;
  u_xlat17 = (x_1045 + 1.0f);
  let x_1047 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1047, 0.0f, 1.0f);
  let x_1050 : f32 = u_xlat28;
  u_xlat45 = ((x_1050 * 4.0f) + 2.0f);
  let x_1058 : vec4<f32> = u_xlat3;
  let x_1061 : f32 = x_126.x_GlobalMipBias.x;
  let x_1062 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1058.x, x_1058.z), x_1061);
  u_xlat3.x = x_1062.x;
  let x_1067 : f32 = u_xlat3.x;
  u_xlat31 = (x_1067 + -1.0f);
  let x_1070 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_1071 : f32 = u_xlat31;
  u_xlat31 = ((x_1070 * x_1071) + 1.0f);
  let x_1074 : f32 = u_xlat14;
  let x_1076 : f32 = u_xlat3.x;
  u_xlat14 = min(x_1074, x_1076);
  let x_1080 : vec4<f32> = vs_TEXCOORD8;
  let x_1081 : vec2<f32> = vec2<f32>(x_1080.x, x_1080.y);
  let x_1083 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1081.x, x_1081.y, x_1083);
  let x_1095 : vec3<f32> = txVec0;
  let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1095.xy, x_1095.z);
  u_xlat3.x = x_1097;
  let x_1106 : f32 = x_1104.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_1106) + 1.0f);
  let x_1110 : f32 = u_xlat3.x;
  let x_1112 : f32 = x_1104.x_MainLightShadowParams.x;
  let x_1114 : f32 = u_xlat46;
  u_xlat3.x = ((x_1110 * x_1112) + x_1114);
  let x_1119 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_1119);
  let x_1123 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_1123 >= 1.0f);
  let x_1125 : bool = u_xlatb46;
  let x_1126 : bool = u_xlatb47;
  u_xlatb46 = (x_1125 | x_1126);
  let x_1128 : bool = u_xlatb46;
  if (x_1128) {
    x_1129 = 1.0f;
  } else {
    let x_1134 : f32 = u_xlat3.x;
    x_1129 = x_1134;
  }
  let x_1135 : f32 = x_1129;
  u_xlat3.x = x_1135;
  let x_1137 : vec3<f32> = vs_TEXCOORD7;
  let x_1140 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1142 : vec3<f32> = (x_1137 + -(x_1140));
  let x_1143 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec4<f32> = u_xlat6;
  let x_1147 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1145.x, x_1145.y, x_1145.z), vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : f32 = u_xlat46;
  let x_1152 : f32 = x_1104.x_MainLightShadowParams.z;
  let x_1155 : f32 = x_1104.x_MainLightShadowParams.w;
  u_xlat46 = ((x_1150 * x_1152) + x_1155);
  let x_1157 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1157, 0.0f, 1.0f);
  let x_1161 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1161) + 1.0f);
  let x_1164 : f32 = u_xlat46;
  let x_1165 : f32 = u_xlat47;
  let x_1168 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1164 * x_1165) + x_1168);
  let x_1171 : f32 = u_xlat31;
  let x_1174 : vec4<f32> = x_126.x_MainLightColor;
  let x_1176 : vec3<f32> = (vec3<f32>(x_1171, x_1171, x_1171) * vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1180 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1180;
  let x_1183 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1183;
  let x_1186 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1186;
  let x_1188 : vec4<f32> = u_xlat7;
  let x_1191 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(-(vec3<f32>(x_1188.x, x_1188.y, x_1188.z)), vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : f32 = u_xlat46;
  let x_1195 : f32 = u_xlat46;
  u_xlat46 = (x_1194 + x_1195);
  let x_1197 : vec4<f32> = u_xlat1;
  let x_1199 : f32 = u_xlat46;
  let x_1203 : vec4<f32> = u_xlat7;
  let x_1206 : vec3<f32> = ((vec3<f32>(x_1197.x, x_1197.y, x_1197.z) * -(vec3<f32>(x_1199, x_1199, x_1199))) + -(vec3<f32>(x_1203.x, x_1203.y, x_1203.z)));
  let x_1207 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1209 : vec4<f32> = u_xlat1;
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_1209.x, x_1209.y, x_1209.z), vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1214, 0.0f, 1.0f);
  let x_1216 : f32 = u_xlat46;
  u_xlat46 = (-(x_1216) + 1.0f);
  let x_1219 : f32 = u_xlat46;
  let x_1220 : f32 = u_xlat46;
  u_xlat46 = (x_1219 * x_1220);
  let x_1222 : f32 = u_xlat46;
  let x_1223 : f32 = u_xlat46;
  u_xlat46 = (x_1222 * x_1223);
  let x_1226 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1226) * 0.699999988f) + 1.700000048f);
  let x_1233 : f32 = u_xlat0.x;
  let x_1234 : f32 = u_xlat47;
  u_xlat0.x = (x_1233 * x_1234);
  let x_1238 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1238 * 6.0f);
  let x_1250 : vec4<f32> = u_xlat8;
  let x_1253 : f32 = u_xlat0.x;
  let x_1254 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1250.x, x_1250.y, x_1250.z), x_1253);
  u_xlat8 = x_1254;
  let x_1256 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1256 + -1.0f);
  let x_1260 : f32 = x_899.unity_SpecCube0_HDR.w;
  let x_1262 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1260 * x_1262) + 1.0f);
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1267, 0.0f);
  let x_1271 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1271);
  let x_1275 : f32 = u_xlat0.x;
  let x_1277 : f32 = x_899.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1275 * x_1277);
  let x_1281 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1281);
  let x_1285 : f32 = u_xlat0.x;
  let x_1287 : f32 = x_899.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1285 * x_1287);
  let x_1290 : vec4<f32> = u_xlat8;
  let x_1292 : vec3<f32> = u_xlat0;
  let x_1294 : vec3<f32> = (vec3<f32>(x_1290.x, x_1290.y, x_1290.z) * vec3<f32>(x_1292.x, x_1292.x, x_1292.x));
  let x_1295 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
  let x_1297 : f32 = u_xlat28;
  let x_1299 : f32 = u_xlat28;
  let x_1303 : vec2<f32> = ((vec2<f32>(x_1297, x_1297) * vec2<f32>(x_1299, x_1299)) + vec2<f32>(-1.0f, 1.0f));
  let x_1304 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1303.x, x_1304.y, x_1303.y);
  let x_1307 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1307);
  let x_1309 : vec4<f32> = u_xlat5;
  let x_1312 : f32 = u_xlat17;
  let x_1314 : vec3<f32> = (-(vec3<f32>(x_1309.x, x_1309.y, x_1309.z)) + vec3<f32>(x_1312, x_1312, x_1312));
  let x_1315 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
  let x_1317 : f32 = u_xlat46;
  let x_1319 : vec4<f32> = u_xlat9;
  let x_1322 : vec4<f32> = u_xlat5;
  let x_1324 : vec3<f32> = ((vec3<f32>(x_1317, x_1317, x_1317) * vec3<f32>(x_1319.x, x_1319.y, x_1319.z)) + vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1327 : f32 = u_xlat28;
  let x_1329 : vec4<f32> = u_xlat9;
  let x_1331 : vec3<f32> = (vec3<f32>(x_1327, x_1327, x_1327) * vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1334 : vec4<f32> = u_xlat8;
  let x_1336 : vec4<f32> = u_xlat9;
  let x_1338 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
  let x_1339 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec3<f32> = u_xlat16;
  let x_1342 : vec4<f32> = u_xlat4;
  let x_1345 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_1341 * vec3<f32>(x_1342.x, x_1342.y, x_1342.z)) + vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1349 : f32 = u_xlat3.x;
  let x_1351 : f32 = x_899.unity_LightData.z;
  u_xlat28 = (x_1349 * x_1351);
  let x_1353 : vec4<f32> = u_xlat1;
  let x_1356 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1353.x, x_1353.y, x_1353.z), vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1361 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1361, 0.0f, 1.0f);
  let x_1364 : f32 = u_xlat28;
  let x_1366 : f32 = u_xlat3.x;
  u_xlat28 = (x_1364 * x_1366);
  let x_1368 : f32 = u_xlat28;
  let x_1370 : vec4<f32> = u_xlat6;
  let x_1372 : vec3<f32> = (vec3<f32>(x_1368, x_1368, x_1368) * vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1375 : vec4<f32> = u_xlat7;
  let x_1378 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1380 : vec3<f32> = (vec3<f32>(x_1375.x, x_1375.y, x_1375.z) + vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1381 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : vec4<f32> = u_xlat8;
  let x_1385 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1383.x, x_1383.y, x_1383.z), vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : f32 = u_xlat28;
  u_xlat28 = max(x_1388, 1.17549435e-37f);
  let x_1391 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1391);
  let x_1393 : f32 = u_xlat28;
  let x_1395 : vec4<f32> = u_xlat8;
  let x_1397 : vec3<f32> = (vec3<f32>(x_1393, x_1393, x_1393) * vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
  let x_1398 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
  let x_1400 : vec4<f32> = u_xlat1;
  let x_1402 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1400.x, x_1400.y, x_1400.z), vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
  let x_1405 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1405, 0.0f, 1.0f);
  let x_1408 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1410 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1408.x, x_1408.y, x_1408.z), vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
  let x_1415 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1415, 0.0f, 1.0f);
  let x_1418 : f32 = u_xlat28;
  let x_1419 : f32 = u_xlat28;
  u_xlat28 = (x_1418 * x_1419);
  let x_1421 : f32 = u_xlat28;
  let x_1423 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1421 * x_1423) + 1.000010014f);
  let x_1428 : f32 = u_xlat3.x;
  let x_1430 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1428 * x_1430);
  let x_1433 : f32 = u_xlat28;
  let x_1434 : f32 = u_xlat28;
  u_xlat28 = (x_1433 * x_1434);
  let x_1437 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1437, 0.100000001f);
  let x_1441 : f32 = u_xlat28;
  let x_1443 : f32 = u_xlat3.x;
  u_xlat28 = (x_1441 * x_1443);
  let x_1445 : f32 = u_xlat45;
  let x_1446 : f32 = u_xlat28;
  u_xlat28 = (x_1445 * x_1446);
  let x_1448 : f32 = u_xlat43;
  let x_1449 : f32 = u_xlat28;
  u_xlat28 = (x_1448 / x_1449);
  let x_1451 : vec4<f32> = u_xlat5;
  let x_1453 : f32 = u_xlat28;
  let x_1456 : vec4<f32> = u_xlat4;
  let x_1458 : vec3<f32> = ((vec3<f32>(x_1451.x, x_1451.y, x_1451.z) * vec3<f32>(x_1453, x_1453, x_1453)) + vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
  let x_1459 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
  let x_1461 : vec4<f32> = u_xlat6;
  let x_1463 : vec4<f32> = u_xlat8;
  let x_1465 : vec3<f32> = (vec3<f32>(x_1461.x, x_1461.y, x_1461.z) * vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
  let x_1466 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
  let x_1469 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1471 : f32 = x_899.unity_LightData.y;
  u_xlat28 = min(x_1469, x_1471);
  let x_1475 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1475));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1487 : u32 = u_xlatu_loop_1;
    let x_1488 : u32 = u_xlatu28;
    if ((x_1487 < x_1488)) {
    } else {
      break;
    }
    let x_1491 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1491 >> 2u);
    let x_1495 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1495 & 3u));
    let x_1498 : u32 = u_xlatu17;
    let x_1501 : vec4<f32> = x_899.unity_LightIndices[bitcast<i32>(x_1498)];
    let x_1511 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1516 : vec4<u32> = indexable[x_1511];
    u_xlat17 = dot(x_1501, bitcast<vec4<f32>>(x_1516));
    let x_1520 : f32 = u_xlat17;
    u_xlati17 = i32(x_1520);
    let x_1522 : vec3<f32> = vs_TEXCOORD7;
    let x_1534 : i32 = u_xlati17;
    let x_1536 : vec4<f32> = x_1533.x_AdditionalLightsPosition[x_1534];
    let x_1539 : i32 = u_xlati17;
    let x_1541 : vec4<f32> = x_1533.x_AdditionalLightsPosition[x_1539];
    let x_1543 : vec3<f32> = ((-(x_1522) * vec3<f32>(x_1536.w, x_1536.w, x_1536.w)) + vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
    let x_1544 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
    let x_1546 : vec4<f32> = u_xlat9;
    let x_1548 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1546.x, x_1546.y, x_1546.z), vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
    let x_1551 : f32 = u_xlat46;
    u_xlat46 = max(x_1551, 6.10351562e-05f);
    let x_1553 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1553);
    let x_1555 : f32 = u_xlat47;
    let x_1557 : vec4<f32> = u_xlat9;
    let x_1559 : vec3<f32> = (vec3<f32>(x_1555, x_1555, x_1555) * vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
    let x_1560 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
    let x_1563 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1563);
    let x_1565 : f32 = u_xlat46;
    let x_1566 : i32 = u_xlati17;
    let x_1568 : f32 = x_1533.x_AdditionalLightsAttenuation[x_1566].x;
    u_xlat46 = (x_1565 * x_1568);
    let x_1570 : f32 = u_xlat46;
    let x_1572 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1570) * x_1572) + 1.0f);
    let x_1575 : f32 = u_xlat46;
    u_xlat46 = max(x_1575, 0.0f);
    let x_1577 : f32 = u_xlat46;
    let x_1578 : f32 = u_xlat46;
    u_xlat46 = (x_1577 * x_1578);
    let x_1580 : f32 = u_xlat46;
    let x_1581 : f32 = u_xlat48;
    u_xlat46 = (x_1580 * x_1581);
    let x_1583 : i32 = u_xlati17;
    let x_1585 : vec4<f32> = x_1533.x_AdditionalLightsSpotDir[x_1583];
    let x_1587 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1585.x, x_1585.y, x_1585.z), vec3<f32>(x_1587.x, x_1587.y, x_1587.z));
    let x_1590 : f32 = u_xlat48;
    let x_1591 : i32 = u_xlati17;
    let x_1593 : f32 = x_1533.x_AdditionalLightsAttenuation[x_1591].z;
    let x_1595 : i32 = u_xlati17;
    let x_1597 : f32 = x_1533.x_AdditionalLightsAttenuation[x_1595].w;
    u_xlat48 = ((x_1590 * x_1593) + x_1597);
    let x_1599 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1599, 0.0f, 1.0f);
    let x_1601 : f32 = u_xlat48;
    let x_1602 : f32 = u_xlat48;
    u_xlat48 = (x_1601 * x_1602);
    let x_1604 : f32 = u_xlat46;
    let x_1605 : f32 = u_xlat48;
    u_xlat46 = (x_1604 * x_1605);
    let x_1607 : f32 = u_xlat31;
    let x_1609 : i32 = u_xlati17;
    let x_1611 : vec4<f32> = x_1533.x_AdditionalLightsColor[x_1609];
    let x_1613 : vec3<f32> = (vec3<f32>(x_1607, x_1607, x_1607) * vec3<f32>(x_1611.x, x_1611.y, x_1611.z));
    let x_1614 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
    let x_1616 : vec4<f32> = u_xlat1;
    let x_1618 : vec4<f32> = u_xlat10;
    u_xlat17 = dot(vec3<f32>(x_1616.x, x_1616.y, x_1616.z), vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1621 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1621, 0.0f, 1.0f);
    let x_1623 : f32 = u_xlat17;
    let x_1624 : f32 = u_xlat46;
    u_xlat17 = (x_1623 * x_1624);
    let x_1626 : f32 = u_xlat17;
    let x_1628 : vec4<f32> = u_xlat11;
    let x_1630 : vec3<f32> = (vec3<f32>(x_1626, x_1626, x_1626) * vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
    let x_1631 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
    let x_1633 : vec4<f32> = u_xlat9;
    let x_1635 : f32 = u_xlat47;
    let x_1638 : vec4<f32> = u_xlat7;
    let x_1640 : vec3<f32> = ((vec3<f32>(x_1633.x, x_1633.y, x_1633.z) * vec3<f32>(x_1635, x_1635, x_1635)) + vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
    let x_1641 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
    let x_1643 : vec4<f32> = u_xlat9;
    let x_1645 : vec4<f32> = u_xlat9;
    u_xlat17 = dot(vec3<f32>(x_1643.x, x_1643.y, x_1643.z), vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
    let x_1648 : f32 = u_xlat17;
    u_xlat17 = max(x_1648, 1.17549435e-37f);
    let x_1650 : f32 = u_xlat17;
    u_xlat17 = inverseSqrt(x_1650);
    let x_1652 : f32 = u_xlat17;
    let x_1654 : vec4<f32> = u_xlat9;
    let x_1656 : vec3<f32> = (vec3<f32>(x_1652, x_1652, x_1652) * vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
    let x_1657 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
    let x_1659 : vec4<f32> = u_xlat1;
    let x_1661 : vec4<f32> = u_xlat9;
    u_xlat17 = dot(vec3<f32>(x_1659.x, x_1659.y, x_1659.z), vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
    let x_1664 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1664, 0.0f, 1.0f);
    let x_1666 : vec4<f32> = u_xlat10;
    let x_1668 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1666.x, x_1666.y, x_1666.z), vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
    let x_1671 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1671, 0.0f, 1.0f);
    let x_1673 : f32 = u_xlat17;
    let x_1674 : f32 = u_xlat17;
    u_xlat17 = (x_1673 * x_1674);
    let x_1676 : f32 = u_xlat17;
    let x_1678 : f32 = u_xlat0.x;
    u_xlat17 = ((x_1676 * x_1678) + 1.000010014f);
    let x_1681 : f32 = u_xlat46;
    let x_1682 : f32 = u_xlat46;
    u_xlat46 = (x_1681 * x_1682);
    let x_1684 : f32 = u_xlat17;
    let x_1685 : f32 = u_xlat17;
    u_xlat17 = (x_1684 * x_1685);
    let x_1687 : f32 = u_xlat46;
    u_xlat46 = max(x_1687, 0.100000001f);
    let x_1689 : f32 = u_xlat17;
    let x_1690 : f32 = u_xlat46;
    u_xlat17 = (x_1689 * x_1690);
    let x_1692 : f32 = u_xlat45;
    let x_1693 : f32 = u_xlat17;
    u_xlat17 = (x_1692 * x_1693);
    let x_1695 : f32 = u_xlat43;
    let x_1696 : f32 = u_xlat17;
    u_xlat17 = (x_1695 / x_1696);
    let x_1698 : vec4<f32> = u_xlat5;
    let x_1700 : f32 = u_xlat17;
    let x_1703 : vec4<f32> = u_xlat4;
    let x_1705 : vec3<f32> = ((vec3<f32>(x_1698.x, x_1698.y, x_1698.z) * vec3<f32>(x_1700, x_1700, x_1700)) + vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
    let x_1706 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
    let x_1708 : vec4<f32> = u_xlat9;
    let x_1710 : vec4<f32> = u_xlat11;
    let x_1713 : vec4<f32> = u_xlat8;
    let x_1715 : vec3<f32> = ((vec3<f32>(x_1708.x, x_1708.y, x_1708.z) * vec3<f32>(x_1710.x, x_1710.y, x_1710.z)) + vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
    let x_1716 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);

    continuing {
      let x_1718 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1718 + bitcast<u32>(1i));
    }
  }
  let x_1720 : vec3<f32> = u_xlat16;
  let x_1721 : f32 = u_xlat14;
  let x_1724 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_1720 * vec3<f32>(x_1721, x_1721, x_1721)) + vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : vec4<f32> = u_xlat8;
  let x_1729 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1727.x, x_1727.y, x_1727.z) + x_1729);
  let x_1731 : f32 = u_xlat42;
  let x_1733 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1731, x_1731, x_1731) * x_1733);
  let x_1736 : f32 = u_xlat2.x;
  let x_1738 : f32 = u_xlat2.x;
  u_xlat42 = (x_1736 * -(x_1738));
  let x_1741 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1741);
  let x_1745 : vec3<f32> = u_xlat0;
  let x_1746 : f32 = u_xlat42;
  let x_1748 : vec3<f32> = (x_1745 * vec3<f32>(x_1746, x_1746, x_1746));
  let x_1749 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

