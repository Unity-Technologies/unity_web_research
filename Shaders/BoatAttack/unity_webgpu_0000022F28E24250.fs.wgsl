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
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_583 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1109 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1359 : AdditionalLights;

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
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb1 : bool;
  var u_xlat15 : vec3<f32>;
  var x_559 : vec3<f32>;
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
  var x_973 : f32;
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
  let x_289 : f32 = u_xlat43;
  u_xlat43 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat43;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat15;
  let x_536 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat15;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_562 : vec3<f32> = u_xlat15;
    x_559 = x_562;
  } else {
    let x_564 : vec3<f32> = u_xlat2;
    x_559 = x_564;
  }
  let x_565 : vec3<f32> = x_559;
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : vec3<f32> = vs_TEXCOORD3;
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat43;
  let x_576 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres0;
  let x_588 : vec3<f32> = (x_578 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_593 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres1;
  let x_596 : vec3<f32> = (x_591 + -(vec3<f32>(x_593.x, x_593.y, x_593.z)));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres2;
  let x_605 : vec3<f32> = (x_599 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_610 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres3;
  let x_613 : vec3<f32> = (x_608 + -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
  let x_614 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_634 : vec4<f32> = u_xlat7;
  let x_636 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec4<f32> = x_583.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_642 < x_644);
  let x_647 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_655);
  let x_659 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_663);
  let x_668 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_668);
  let x_672 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_672);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(x_677.y, x_677.z, x_677.w));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = max(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_686.x, x_685.x, x_685.y, x_685.z);
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_688, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_693 : f32 = u_xlat43;
  u_xlat43 = (-(x_693) + 4.0f);
  let x_698 : f32 = u_xlat43;
  u_xlatu43 = u32(x_698);
  let x_702 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_702) << bitcast<u32>(2i));
  let x_705 : vec3<f32> = vs_TEXCOORD7;
  let x_707 : i32 = u_xlati43;
  let x_710 : i32 = u_xlati43;
  let x_714 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_707 + 1i) / 4i)][((x_710 + 1i) % 4i)];
  let x_716 : vec3<f32> = (vec3<f32>(x_705.y, x_705.y, x_705.y) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : i32 = u_xlati43;
  let x_721 : i32 = u_xlati43;
  let x_724 : vec4<f32> = x_583.x_MainLightWorldToShadow[(x_719 / 4i)][(x_721 % 4i)];
  let x_726 : vec3<f32> = vs_TEXCOORD7;
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.x, x_726.x, x_726.x)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : i32 = u_xlati43;
  let x_737 : i32 = u_xlati43;
  let x_741 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_734 + 2i) / 4i)][((x_737 + 2i) % 4i)];
  let x_743 : vec3<f32> = vs_TEXCOORD7;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.z, x_743.z, x_743.z)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat3;
  let x_753 : i32 = u_xlati43;
  let x_756 : i32 = u_xlati43;
  let x_760 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_753 + 3i) / 4i)][((x_756 + 3i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = vs_TEXCOORD7.y;
  let x_768 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat43 = (x_766 * x_768);
  let x_771 : f32 = x_126.unity_MatrixV[0i].z;
  let x_773 : f32 = vs_TEXCOORD7.x;
  let x_775 : f32 = u_xlat43;
  u_xlat43 = ((x_771 * x_773) + x_775);
  let x_778 : f32 = x_126.unity_MatrixV[2i].z;
  let x_780 : f32 = vs_TEXCOORD7.z;
  let x_782 : f32 = u_xlat43;
  u_xlat43 = ((x_778 * x_780) + x_782);
  let x_784 : f32 = u_xlat43;
  let x_786 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat43 = (x_784 + x_786);
  let x_788 : f32 = u_xlat43;
  let x_791 : f32 = x_126.x_ProjectionParams.y;
  u_xlat43 = (-(x_788) + -(x_791));
  let x_794 : f32 = u_xlat43;
  u_xlat43 = max(x_794, 0.0f);
  let x_796 : f32 = u_xlat43;
  let x_798 : f32 = x_126.unity_FogParams.x;
  u_xlat43 = (x_796 * x_798);
  let x_805 : vec4<f32> = vs_TEXCOORD0;
  let x_808 : f32 = x_126.x_GlobalMipBias.x;
  let x_809 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_805.z, x_805.w), x_808);
  let x_810 : vec3<f32> = vec3<f32>(x_809.x, x_809.y, x_809.z);
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_815 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
  let x_820 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_816.x, x_816.y));
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = hlslcc_FragCoord;
  let x_827 : vec2<f32> = (vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_825.x, x_825.y));
  let x_828 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
  let x_832 : f32 = u_xlat6.y;
  let x_834 : f32 = x_126.x_ScaleBiasRt.x;
  let x_837 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat44 = ((x_832 * x_834) + x_837);
  let x_839 : f32 = u_xlat44;
  u_xlat6.z = (-(x_839) + 1.0f);
  let x_844 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_844) * 0.959999979f) + 0.959999979f);
  let x_850 : f32 = u_xlat28;
  let x_851 : f32 = u_xlat44;
  u_xlat45 = (x_850 + -(x_851));
  let x_854 : f32 = u_xlat44;
  let x_856 : vec4<f32> = u_xlat5;
  let x_858 : vec3<f32> = (vec3<f32>(x_854, x_854, x_854) * vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat5;
  let x_865 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_866 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec3<f32> = u_xlat0;
  let x_870 : vec4<f32> = u_xlat5;
  let x_875 : vec3<f32> = ((vec3<f32>(x_868.x, x_868.x, x_868.x) * vec3<f32>(x_870.x, x_870.y, x_870.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_876 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : f32 = u_xlat28;
  u_xlat0.x = (-(x_878) + 1.0f);
  let x_883 : f32 = u_xlat0.x;
  let x_885 : f32 = u_xlat0.x;
  u_xlat28 = (x_883 * x_885);
  let x_887 : f32 = u_xlat28;
  u_xlat28 = max(x_887, 0.0078125f);
  let x_890 : f32 = u_xlat28;
  let x_891 : f32 = u_xlat28;
  u_xlat44 = (x_890 * x_891);
  let x_893 : f32 = u_xlat45;
  u_xlat45 = (x_893 + 1.0f);
  let x_895 : f32 = u_xlat45;
  u_xlat45 = clamp(x_895, 0.0f, 1.0f);
  let x_898 : f32 = u_xlat28;
  u_xlat46 = ((x_898 * 4.0f) + 2.0f);
  let x_907 : vec4<f32> = u_xlat6;
  let x_910 : f32 = x_126.x_GlobalMipBias.x;
  let x_911 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_907.x, x_907.z), x_910);
  u_xlat47 = x_911.x;
  let x_913 : f32 = u_xlat47;
  u_xlat6.x = (x_913 + -1.0f);
  let x_917 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_919 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_917 * x_919) + 1.0f);
  let x_923 : f32 = u_xlat14;
  let x_924 : f32 = u_xlat47;
  u_xlat14 = min(x_923, x_924);
  let x_927 : vec4<f32> = u_xlat3;
  let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
  let x_930 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_928.x, x_928.y, x_930);
  let x_942 : vec3<f32> = txVec0;
  let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_942.xy, x_942.z);
  u_xlat3.x = x_944;
  let x_948 : f32 = x_583.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_948) + 1.0f);
  let x_953 : f32 = u_xlat3.x;
  let x_955 : f32 = x_583.x_MainLightShadowParams.x;
  let x_958 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_953 * x_955) + x_958);
  let x_963 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_963);
  let x_967 : f32 = u_xlat3.z;
  u_xlatb31 = (x_967 >= 1.0f);
  let x_969 : bool = u_xlatb31;
  let x_970 : bool = u_xlatb17;
  u_xlatb17 = (x_969 | x_970);
  let x_972 : bool = u_xlatb17;
  if (x_972) {
    x_973 = 1.0f;
  } else {
    let x_978 : f32 = u_xlat3.x;
    x_973 = x_978;
  }
  let x_979 : f32 = x_973;
  u_xlat3.x = x_979;
  let x_982 : vec3<f32> = vs_TEXCOORD7;
  let x_984 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat20 = (x_982 + -(x_984));
  let x_987 : vec3<f32> = u_xlat20;
  let x_988 : vec3<f32> = u_xlat20;
  u_xlat17.x = dot(x_987, x_988);
  let x_992 : f32 = u_xlat17.x;
  let x_994 : f32 = x_583.x_MainLightShadowParams.z;
  let x_997 : f32 = x_583.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_992 * x_994) + x_997);
  let x_1001 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1001, 0.0f, 1.0f);
  let x_1006 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1006) + 1.0f);
  let x_1010 : f32 = u_xlat17.x;
  let x_1011 : f32 = u_xlat31;
  let x_1014 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1010 * x_1011) + x_1014);
  let x_1017 : vec4<f32> = u_xlat6;
  let x_1020 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat20 = (vec3<f32>(x_1017.x, x_1017.x, x_1017.x) * vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat1;
  let x_1026 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(-(vec3<f32>(x_1023.x, x_1023.y, x_1023.z)), x_1026);
  let x_1030 : f32 = u_xlat17.x;
  let x_1032 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1030 + x_1032);
  let x_1035 : vec3<f32> = u_xlat2;
  let x_1036 : vec3<f32> = u_xlat17;
  let x_1040 : vec4<f32> = u_xlat1;
  let x_1043 : vec3<f32> = ((x_1035 * -(vec3<f32>(x_1036.x, x_1036.x, x_1036.x))) + -(vec3<f32>(x_1040.x, x_1040.y, x_1040.z)));
  let x_1044 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec3<f32> = u_xlat2;
  let x_1047 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(x_1046, vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1052 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1052, 0.0f, 1.0f);
  let x_1056 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_1056) + 1.0f);
  let x_1061 : f32 = u_xlat17.x;
  let x_1063 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1061 * x_1063);
  let x_1067 : f32 = u_xlat17.x;
  let x_1069 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1067 * x_1069);
  let x_1073 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1073) * 0.699999988f) + 1.700000048f);
  let x_1080 : f32 = u_xlat0.x;
  let x_1081 : f32 = u_xlat31;
  u_xlat0.x = (x_1080 * x_1081);
  let x_1085 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1085 * 6.0f);
  let x_1097 : vec4<f32> = u_xlat8;
  let x_1100 : f32 = u_xlat0.x;
  let x_1101 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1097.x, x_1097.y, x_1097.z), x_1100);
  u_xlat8 = x_1101;
  let x_1103 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1103 + -1.0f);
  let x_1111 : f32 = x_1109.unity_SpecCube0_HDR.w;
  let x_1113 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1111 * x_1113) + 1.0f);
  let x_1118 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1118, 0.0f);
  let x_1122 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1122);
  let x_1126 : f32 = u_xlat0.x;
  let x_1128 : f32 = x_1109.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1126 * x_1128);
  let x_1132 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1132);
  let x_1136 : f32 = u_xlat0.x;
  let x_1138 : f32 = x_1109.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1136 * x_1138);
  let x_1141 : vec4<f32> = u_xlat8;
  let x_1143 : vec3<f32> = u_xlat0;
  let x_1145 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) * vec3<f32>(x_1143.x, x_1143.x, x_1143.x));
  let x_1146 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : f32 = u_xlat28;
  let x_1150 : f32 = u_xlat28;
  let x_1154 : vec2<f32> = ((vec2<f32>(x_1148, x_1148) * vec2<f32>(x_1150, x_1150)) + vec2<f32>(-1.0f, 1.0f));
  let x_1155 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1154.x, x_1155.y, x_1154.y);
  let x_1158 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1158);
  let x_1160 : vec4<f32> = u_xlat5;
  let x_1163 : f32 = u_xlat45;
  let x_1165 : vec3<f32> = (-(vec3<f32>(x_1160.x, x_1160.y, x_1160.z)) + vec3<f32>(x_1163, x_1163, x_1163));
  let x_1166 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1168 : vec3<f32> = u_xlat17;
  let x_1170 : vec4<f32> = u_xlat9;
  let x_1173 : vec4<f32> = u_xlat5;
  u_xlat17 = ((vec3<f32>(x_1168.x, x_1168.x, x_1168.x) * vec3<f32>(x_1170.x, x_1170.y, x_1170.z)) + vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : f32 = u_xlat28;
  let x_1178 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1176, x_1176, x_1176) * x_1178);
  let x_1180 : vec3<f32> = u_xlat17;
  let x_1181 : vec4<f32> = u_xlat8;
  u_xlat17 = (x_1180 * vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat4;
  let x_1186 : vec4<f32> = u_xlat7;
  let x_1189 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z)) + x_1189);
  let x_1192 : f32 = u_xlat3.x;
  let x_1194 : f32 = x_1109.unity_LightData.z;
  u_xlat28 = (x_1192 * x_1194);
  let x_1196 : vec3<f32> = u_xlat2;
  let x_1198 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_1196, vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1203 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1203, 0.0f, 1.0f);
  let x_1206 : f32 = u_xlat28;
  let x_1208 : f32 = u_xlat3.x;
  u_xlat28 = (x_1206 * x_1208);
  let x_1210 : f32 = u_xlat28;
  let x_1212 : vec3<f32> = u_xlat20;
  let x_1213 : vec3<f32> = (vec3<f32>(x_1210, x_1210, x_1210) * x_1212);
  let x_1214 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec4<f32> = u_xlat1;
  let x_1219 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_1216.x, x_1216.y, x_1216.z) + vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : vec3<f32> = u_xlat20;
  let x_1223 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1222, x_1223);
  let x_1225 : f32 = u_xlat28;
  u_xlat28 = max(x_1225, 1.17549435e-37f);
  let x_1228 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1228);
  let x_1230 : f32 = u_xlat28;
  let x_1232 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1230, x_1230, x_1230) * x_1232);
  let x_1234 : vec3<f32> = u_xlat2;
  let x_1235 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1234, x_1235);
  let x_1237 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1237, 0.0f, 1.0f);
  let x_1240 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1242 : vec3<f32> = u_xlat20;
  u_xlat3.x = dot(vec3<f32>(x_1240.x, x_1240.y, x_1240.z), x_1242);
  let x_1246 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1246, 0.0f, 1.0f);
  let x_1249 : f32 = u_xlat28;
  let x_1250 : f32 = u_xlat28;
  u_xlat28 = (x_1249 * x_1250);
  let x_1252 : f32 = u_xlat28;
  let x_1254 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1252 * x_1254) + 1.000010014f);
  let x_1259 : f32 = u_xlat3.x;
  let x_1261 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1259 * x_1261);
  let x_1264 : f32 = u_xlat28;
  let x_1265 : f32 = u_xlat28;
  u_xlat28 = (x_1264 * x_1265);
  let x_1268 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1268, 0.100000001f);
  let x_1272 : f32 = u_xlat28;
  let x_1274 : f32 = u_xlat3.x;
  u_xlat28 = (x_1272 * x_1274);
  let x_1276 : f32 = u_xlat46;
  let x_1277 : f32 = u_xlat28;
  u_xlat28 = (x_1276 * x_1277);
  let x_1279 : f32 = u_xlat44;
  let x_1280 : f32 = u_xlat28;
  u_xlat28 = (x_1279 / x_1280);
  let x_1282 : vec4<f32> = u_xlat5;
  let x_1284 : f32 = u_xlat28;
  let x_1287 : vec4<f32> = u_xlat7;
  u_xlat20 = ((vec3<f32>(x_1282.x, x_1282.y, x_1282.z) * vec3<f32>(x_1284, x_1284, x_1284)) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1290 : vec4<f32> = u_xlat4;
  let x_1292 : vec3<f32> = u_xlat20;
  let x_1293 : vec3<f32> = (vec3<f32>(x_1290.x, x_1290.y, x_1290.z) * x_1292);
  let x_1294 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
  let x_1297 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1299 : f32 = x_1109.unity_LightData.y;
  u_xlat28 = min(x_1297, x_1299);
  let x_1302 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1302));
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1314 : u32 = u_xlatu_loop_1;
    let x_1315 : u32 = u_xlatu28;
    if ((x_1314 < x_1315)) {
    } else {
      break;
    }
    let x_1318 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1318 >> 2u);
    let x_1321 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1321 & 3u));
    let x_1324 : u32 = u_xlatu47;
    let x_1327 : vec4<f32> = x_1109.unity_LightIndices[bitcast<i32>(x_1324)];
    let x_1337 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1342 : vec4<u32> = indexable[x_1337];
    u_xlat47 = dot(x_1327, bitcast<vec4<f32>>(x_1342));
    let x_1346 : f32 = u_xlat47;
    u_xlati47 = i32(x_1346);
    let x_1348 : vec3<f32> = vs_TEXCOORD7;
    let x_1360 : i32 = u_xlati47;
    let x_1362 : vec4<f32> = x_1359.x_AdditionalLightsPosition[x_1360];
    let x_1365 : i32 = u_xlati47;
    let x_1367 : vec4<f32> = x_1359.x_AdditionalLightsPosition[x_1365];
    let x_1369 : vec3<f32> = ((-(x_1348) * vec3<f32>(x_1362.w, x_1362.w, x_1362.w)) + vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
    let x_1370 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
    let x_1373 : vec4<f32> = u_xlat8;
    let x_1375 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1373.x, x_1373.y, x_1373.z), vec3<f32>(x_1375.x, x_1375.y, x_1375.z));
    let x_1378 : f32 = u_xlat49;
    u_xlat49 = max(x_1378, 6.10351562e-05f);
    let x_1381 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1381);
    let x_1383 : f32 = u_xlat50;
    let x_1385 : vec4<f32> = u_xlat8;
    let x_1387 : vec3<f32> = (vec3<f32>(x_1383, x_1383, x_1383) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
    let x_1388 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
    let x_1391 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1391);
    let x_1393 : f32 = u_xlat49;
    let x_1394 : i32 = u_xlati47;
    let x_1396 : f32 = x_1359.x_AdditionalLightsAttenuation[x_1394].x;
    u_xlat49 = (x_1393 * x_1396);
    let x_1398 : f32 = u_xlat49;
    let x_1400 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1398) * x_1400) + 1.0f);
    let x_1403 : f32 = u_xlat49;
    u_xlat49 = max(x_1403, 0.0f);
    let x_1405 : f32 = u_xlat49;
    let x_1406 : f32 = u_xlat49;
    u_xlat49 = (x_1405 * x_1406);
    let x_1408 : f32 = u_xlat49;
    let x_1409 : f32 = u_xlat51;
    u_xlat49 = (x_1408 * x_1409);
    let x_1411 : i32 = u_xlati47;
    let x_1413 : vec4<f32> = x_1359.x_AdditionalLightsSpotDir[x_1411];
    let x_1415 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1413.x, x_1413.y, x_1413.z), vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
    let x_1418 : f32 = u_xlat51;
    let x_1419 : i32 = u_xlati47;
    let x_1421 : f32 = x_1359.x_AdditionalLightsAttenuation[x_1419].z;
    let x_1423 : i32 = u_xlati47;
    let x_1425 : f32 = x_1359.x_AdditionalLightsAttenuation[x_1423].w;
    u_xlat51 = ((x_1418 * x_1421) + x_1425);
    let x_1427 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1427, 0.0f, 1.0f);
    let x_1429 : f32 = u_xlat51;
    let x_1430 : f32 = u_xlat51;
    u_xlat51 = (x_1429 * x_1430);
    let x_1432 : f32 = u_xlat49;
    let x_1433 : f32 = u_xlat51;
    u_xlat49 = (x_1432 * x_1433);
    let x_1435 : vec4<f32> = u_xlat6;
    let x_1437 : i32 = u_xlati47;
    let x_1439 : vec4<f32> = x_1359.x_AdditionalLightsColor[x_1437];
    let x_1441 : vec3<f32> = (vec3<f32>(x_1435.x, x_1435.x, x_1435.x) * vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
    let x_1442 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
    let x_1444 : vec3<f32> = u_xlat2;
    let x_1445 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_1444, vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
    let x_1448 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1448, 0.0f, 1.0f);
    let x_1450 : f32 = u_xlat47;
    let x_1451 : f32 = u_xlat49;
    u_xlat47 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat47;
    let x_1455 : vec4<f32> = u_xlat10;
    let x_1457 : vec3<f32> = (vec3<f32>(x_1453, x_1453, x_1453) * vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
    let x_1458 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
    let x_1460 : vec4<f32> = u_xlat8;
    let x_1462 : f32 = u_xlat50;
    let x_1465 : vec4<f32> = u_xlat1;
    let x_1467 : vec3<f32> = ((vec3<f32>(x_1460.x, x_1460.y, x_1460.z) * vec3<f32>(x_1462, x_1462, x_1462)) + vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
    let x_1468 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
    let x_1470 : vec4<f32> = u_xlat8;
    let x_1472 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1470.x, x_1470.y, x_1470.z), vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
    let x_1475 : f32 = u_xlat47;
    u_xlat47 = max(x_1475, 1.17549435e-37f);
    let x_1477 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1477);
    let x_1479 : f32 = u_xlat47;
    let x_1481 : vec4<f32> = u_xlat8;
    let x_1483 : vec3<f32> = (vec3<f32>(x_1479, x_1479, x_1479) * vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
    let x_1484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
    let x_1486 : vec3<f32> = u_xlat2;
    let x_1487 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(x_1486, vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
    let x_1490 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1490, 0.0f, 1.0f);
    let x_1492 : vec4<f32> = u_xlat9;
    let x_1494 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1492.x, x_1492.y, x_1492.z), vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
    let x_1497 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1497, 0.0f, 1.0f);
    let x_1499 : f32 = u_xlat47;
    let x_1500 : f32 = u_xlat47;
    u_xlat47 = (x_1499 * x_1500);
    let x_1502 : f32 = u_xlat47;
    let x_1504 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1502 * x_1504) + 1.000010014f);
    let x_1507 : f32 = u_xlat49;
    let x_1508 : f32 = u_xlat49;
    u_xlat49 = (x_1507 * x_1508);
    let x_1510 : f32 = u_xlat47;
    let x_1511 : f32 = u_xlat47;
    u_xlat47 = (x_1510 * x_1511);
    let x_1513 : f32 = u_xlat49;
    u_xlat49 = max(x_1513, 0.100000001f);
    let x_1515 : f32 = u_xlat47;
    let x_1516 : f32 = u_xlat49;
    u_xlat47 = (x_1515 * x_1516);
    let x_1518 : f32 = u_xlat46;
    let x_1519 : f32 = u_xlat47;
    u_xlat47 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat44;
    let x_1522 : f32 = u_xlat47;
    u_xlat47 = (x_1521 / x_1522);
    let x_1524 : vec4<f32> = u_xlat5;
    let x_1526 : f32 = u_xlat47;
    let x_1529 : vec4<f32> = u_xlat7;
    let x_1531 : vec3<f32> = ((vec3<f32>(x_1524.x, x_1524.y, x_1524.z) * vec3<f32>(x_1526, x_1526, x_1526)) + vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
    let x_1532 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
    let x_1534 : vec4<f32> = u_xlat8;
    let x_1536 : vec4<f32> = u_xlat10;
    let x_1539 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_1534.x, x_1534.y, x_1534.z) * vec3<f32>(x_1536.x, x_1536.y, x_1536.z)) + x_1539);

    continuing {
      let x_1541 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1541 + bitcast<u32>(1i));
    }
  }
  let x_1543 : vec3<f32> = u_xlat17;
  let x_1544 : f32 = u_xlat14;
  let x_1547 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_1543 * vec3<f32>(x_1544, x_1544, x_1544)) + vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
  let x_1550 : vec3<f32> = u_xlat20;
  let x_1551 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1550 + x_1551);
  let x_1553 : f32 = u_xlat43;
  let x_1554 : f32 = u_xlat43;
  u_xlat1.x = (x_1553 * -(x_1554));
  let x_1559 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1559);
  let x_1562 : vec3<f32> = u_xlat0;
  let x_1563 : f32 = u_xlat42;
  let x_1567 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_1562 * vec3<f32>(x_1563, x_1563, x_1563)) + -(vec3<f32>(x_1567.x, x_1567.y, x_1567.z)));
  let x_1573 : vec4<f32> = u_xlat1;
  let x_1575 : vec3<f32> = u_xlat0;
  let x_1578 : vec4<f32> = x_126.unity_FogColor;
  let x_1580 : vec3<f32> = ((vec3<f32>(x_1573.x, x_1573.x, x_1573.x) * x_1575) + vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
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

