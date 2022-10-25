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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_790 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_936 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1201 : AdditionalLights;

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
  var x_548 : f32;
  var x_560 : f32;
  var x_571 : f32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlatb32 : bool;
  var u_xlatb46 : bool;
  var x_815 : f32;
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
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat15.x;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_126.unity_MatrixV[0i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.x = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat15.y;
    x_560 = x_564;
  } else {
    let x_567 : f32 = x_126.unity_MatrixV[1i].z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat2.y = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_575 : f32 = u_xlat15.z;
    x_571 = x_575;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[2i].z;
    x_571 = x_579;
  }
  let x_580 : f32 = x_571;
  u_xlat2.z = x_580;
  let x_583 : vec3<f32> = vs_TEXCOORD3;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_583, x_584);
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_588);
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = (vec3<f32>(x_591.x, x_591.x, x_591.x) * x_593);
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_602 : vec4<f32> = vs_TEXCOORD0;
  let x_605 : f32 = x_126.x_GlobalMipBias.x;
  let x_606 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_602.z, x_602.w), x_605);
  u_xlat3 = x_606;
  let x_611 : vec4<f32> = vs_TEXCOORD0;
  let x_614 : f32 = x_126.x_GlobalMipBias.x;
  let x_615 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_611.z, x_611.w), x_614);
  let x_616 : vec3<f32> = vec3<f32>(x_615.x, x_615.y, x_615.z);
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat3;
  let x_623 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat1;
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat43;
  u_xlat43 = (x_631 + 0.5f);
  let x_633 : f32 = u_xlat43;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : f32 = u_xlat3.w;
  u_xlat43 = max(x_641, 0.0001f);
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : f32 = u_xlat43;
  let x_648 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) / vec3<f32>(x_646, x_646, x_646));
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_653 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_654 : vec2<f32> = vec2<f32>(x_653.x, x_653.y);
  let x_658 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_654.x, x_654.y));
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec4<f32> = hlslcc_FragCoord;
  let x_665 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_663.x, x_663.y));
  let x_666 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
  let x_669 : f32 = u_xlat4.y;
  let x_671 : f32 = x_126.x_ScaleBiasRt.x;
  let x_674 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_669 * x_671) + x_674);
  let x_676 : f32 = u_xlat43;
  u_xlat4.z = (-(x_676) + 1.0f);
  let x_681 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_681) * 0.959999979f) + 0.959999979f);
  let x_687 : f32 = u_xlat28;
  let x_688 : f32 = u_xlat43;
  u_xlat44 = (x_687 + -(x_688));
  let x_691 : f32 = u_xlat43;
  let x_693 : vec4<f32> = u_xlat5;
  let x_695 : vec3<f32> = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat5;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec3<f32> = u_xlat0;
  let x_707 : vec4<f32> = u_xlat5;
  let x_712 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.x, x_705.x) * vec3<f32>(x_707.x, x_707.y, x_707.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_713 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : f32 = u_xlat28;
  u_xlat0.x = (-(x_715) + 1.0f);
  let x_720 : f32 = u_xlat0.x;
  let x_722 : f32 = u_xlat0.x;
  u_xlat28 = (x_720 * x_722);
  let x_724 : f32 = u_xlat28;
  u_xlat28 = max(x_724, 0.0078125f);
  let x_727 : f32 = u_xlat28;
  let x_728 : f32 = u_xlat28;
  u_xlat43 = (x_727 * x_728);
  let x_730 : f32 = u_xlat44;
  u_xlat44 = (x_730 + 1.0f);
  let x_732 : f32 = u_xlat44;
  u_xlat44 = clamp(x_732, 0.0f, 1.0f);
  let x_735 : f32 = u_xlat28;
  u_xlat45 = ((x_735 * 4.0f) + 2.0f);
  let x_744 : vec4<f32> = u_xlat4;
  let x_747 : f32 = x_126.x_GlobalMipBias.x;
  let x_748 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_744.x, x_744.z), x_747);
  u_xlat4.x = x_748.x;
  let x_753 : f32 = u_xlat4.x;
  u_xlat18 = (x_753 + -1.0f);
  let x_756 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_757 : f32 = u_xlat18;
  u_xlat18 = ((x_756 * x_757) + 1.0f);
  let x_760 : f32 = u_xlat14;
  let x_762 : f32 = u_xlat4.x;
  u_xlat14 = min(x_760, x_762);
  let x_766 : vec4<f32> = vs_TEXCOORD8;
  let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
  let x_769 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_767.x, x_767.y, x_769);
  let x_781 : vec3<f32> = txVec0;
  let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_781.xy, x_781.z);
  u_xlat4.x = x_783;
  let x_792 : f32 = x_790.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_792) + 1.0f);
  let x_796 : f32 = u_xlat4.x;
  let x_798 : f32 = x_790.x_MainLightShadowParams.x;
  let x_800 : f32 = u_xlat32;
  u_xlat4.x = ((x_796 * x_798) + x_800);
  let x_805 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_805);
  let x_809 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_809 >= 1.0f);
  let x_811 : bool = u_xlatb46;
  let x_812 : bool = u_xlatb32;
  u_xlatb32 = (x_811 | x_812);
  let x_814 : bool = u_xlatb32;
  if (x_814) {
    x_815 = 1.0f;
  } else {
    let x_820 : f32 = u_xlat4.x;
    x_815 = x_820;
  }
  let x_821 : f32 = x_815;
  u_xlat4.x = x_821;
  let x_823 : vec3<f32> = vs_TEXCOORD7;
  let x_825 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_827 : vec3<f32> = (x_823 + -(x_825));
  let x_828 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat7;
  let x_832 : vec4<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : f32 = u_xlat32;
  let x_837 : f32 = x_790.x_MainLightShadowParams.z;
  let x_840 : f32 = x_790.x_MainLightShadowParams.w;
  u_xlat32 = ((x_835 * x_837) + x_840);
  let x_842 : f32 = u_xlat32;
  u_xlat32 = clamp(x_842, 0.0f, 1.0f);
  let x_846 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_846) + 1.0f);
  let x_849 : f32 = u_xlat32;
  let x_850 : f32 = u_xlat46;
  let x_853 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_849 * x_850) + x_853);
  let x_856 : f32 = u_xlat18;
  let x_860 : vec4<f32> = x_126.x_MainLightColor;
  let x_862 : vec3<f32> = (vec3<f32>(x_856, x_856, x_856) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec3<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat1;
  u_xlat32 = dot(-(x_865), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : f32 = u_xlat32;
  let x_871 : f32 = u_xlat32;
  u_xlat32 = (x_870 + x_871);
  let x_873 : vec4<f32> = u_xlat1;
  let x_875 : f32 = u_xlat32;
  let x_879 : vec3<f32> = u_xlat2;
  let x_881 : vec3<f32> = ((vec3<f32>(x_873.x, x_873.y, x_873.z) * -(vec3<f32>(x_875, x_875, x_875))) + -(x_879));
  let x_882 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat1;
  let x_886 : vec3<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_884.x, x_884.y, x_884.z), x_886);
  let x_888 : f32 = u_xlat32;
  u_xlat32 = clamp(x_888, 0.0f, 1.0f);
  let x_890 : f32 = u_xlat32;
  u_xlat32 = (-(x_890) + 1.0f);
  let x_893 : f32 = u_xlat32;
  let x_894 : f32 = u_xlat32;
  u_xlat32 = (x_893 * x_894);
  let x_896 : f32 = u_xlat32;
  let x_897 : f32 = u_xlat32;
  u_xlat32 = (x_896 * x_897);
  let x_900 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_900) * 0.699999988f) + 1.700000048f);
  let x_907 : f32 = u_xlat0.x;
  let x_908 : f32 = u_xlat46;
  u_xlat0.x = (x_907 * x_908);
  let x_912 : f32 = u_xlat0.x;
  u_xlat0.x = (x_912 * 6.0f);
  let x_924 : vec4<f32> = u_xlat8;
  let x_927 : f32 = u_xlat0.x;
  let x_928 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_924.x, x_924.y, x_924.z), x_927);
  u_xlat8 = x_928;
  let x_930 : f32 = u_xlat8.w;
  u_xlat0.x = (x_930 + -1.0f);
  let x_938 : f32 = x_936.unity_SpecCube0_HDR.w;
  let x_940 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_938 * x_940) + 1.0f);
  let x_945 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_945, 0.0f);
  let x_949 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_949);
  let x_953 : f32 = u_xlat0.x;
  let x_955 : f32 = x_936.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_953 * x_955);
  let x_959 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_959);
  let x_963 : f32 = u_xlat0.x;
  let x_965 : f32 = x_936.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_963 * x_965);
  let x_968 : vec4<f32> = u_xlat8;
  let x_970 : vec3<f32> = u_xlat0;
  let x_972 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) * vec3<f32>(x_970.x, x_970.x, x_970.x));
  let x_973 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_975 : f32 = u_xlat28;
  let x_977 : f32 = u_xlat28;
  let x_981 : vec2<f32> = ((vec2<f32>(x_975, x_975) * vec2<f32>(x_977, x_977)) + vec2<f32>(-1.0f, 1.0f));
  let x_982 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_981.x, x_982.y, x_981.y);
  let x_985 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_985);
  let x_987 : vec4<f32> = u_xlat5;
  let x_990 : f32 = u_xlat44;
  let x_992 : vec3<f32> = (-(vec3<f32>(x_987.x, x_987.y, x_987.z)) + vec3<f32>(x_990, x_990, x_990));
  let x_993 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : f32 = u_xlat32;
  let x_997 : vec4<f32> = u_xlat9;
  let x_1000 : vec4<f32> = u_xlat5;
  let x_1002 : vec3<f32> = ((vec3<f32>(x_995, x_995, x_995) * vec3<f32>(x_997.x, x_997.y, x_997.z)) + vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : f32 = u_xlat28;
  let x_1007 : vec4<f32> = u_xlat9;
  let x_1009 : vec3<f32> = (vec3<f32>(x_1005, x_1005, x_1005) * vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : vec4<f32> = u_xlat8;
  let x_1014 : vec4<f32> = u_xlat9;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec4<f32> = u_xlat3;
  let x_1021 : vec4<f32> = u_xlat6;
  let x_1024 : vec4<f32> = u_xlat8;
  let x_1026 : vec3<f32> = ((vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(x_1021.x, x_1021.y, x_1021.z)) + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1030 : f32 = u_xlat4.x;
  let x_1032 : f32 = x_936.unity_LightData.z;
  u_xlat28 = (x_1030 * x_1032);
  let x_1034 : vec4<f32> = u_xlat1;
  let x_1037 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1034.x, x_1034.y, x_1034.z), vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1040, 0.0f, 1.0f);
  let x_1042 : f32 = u_xlat28;
  let x_1043 : f32 = u_xlat44;
  u_xlat28 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat28;
  let x_1047 : vec4<f32> = u_xlat7;
  let x_1049 : vec3<f32> = (vec3<f32>(x_1045, x_1045, x_1045) * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1049.z);
  let x_1052 : vec3<f32> = u_xlat2;
  let x_1054 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1056 : vec3<f32> = (x_1052 + vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat7;
  let x_1061 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : f32 = u_xlat28;
  u_xlat28 = max(x_1064, 1.17549435e-37f);
  let x_1067 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1067);
  let x_1069 : f32 = u_xlat28;
  let x_1071 : vec4<f32> = u_xlat7;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat1;
  let x_1078 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1081, 0.0f, 1.0f);
  let x_1084 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1086 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1084.x, x_1084.y, x_1084.z), vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1089, 0.0f, 1.0f);
  let x_1091 : f32 = u_xlat28;
  let x_1092 : f32 = u_xlat28;
  u_xlat28 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat28;
  let x_1096 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1094 * x_1096) + 1.000010014f);
  let x_1100 : f32 = u_xlat44;
  let x_1101 : f32 = u_xlat44;
  u_xlat44 = (x_1100 * x_1101);
  let x_1103 : f32 = u_xlat28;
  let x_1104 : f32 = u_xlat28;
  u_xlat28 = (x_1103 * x_1104);
  let x_1106 : f32 = u_xlat44;
  u_xlat44 = max(x_1106, 0.100000001f);
  let x_1109 : f32 = u_xlat28;
  let x_1110 : f32 = u_xlat44;
  u_xlat28 = (x_1109 * x_1110);
  let x_1112 : f32 = u_xlat45;
  let x_1113 : f32 = u_xlat28;
  u_xlat28 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat43;
  let x_1116 : f32 = u_xlat28;
  u_xlat28 = (x_1115 / x_1116);
  let x_1118 : vec4<f32> = u_xlat5;
  let x_1120 : f32 = u_xlat28;
  let x_1123 : vec4<f32> = u_xlat6;
  let x_1125 : vec3<f32> = ((vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1120, x_1120, x_1120)) + vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1128 : vec4<f32> = u_xlat4;
  let x_1130 : vec4<f32> = u_xlat7;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1128.x, x_1128.z, x_1128.w) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1132.x, x_1133.y, x_1132.y, x_1132.z);
  let x_1136 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1138 : f32 = x_936.unity_LightData.y;
  u_xlat28 = min(x_1136, x_1138);
  let x_1142 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1142));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1154 : u32 = u_xlatu_loop_1;
    let x_1155 : u32 = u_xlatu28;
    if ((x_1154 < x_1155)) {
    } else {
      break;
    }
    let x_1158 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1158 >> 2u);
    let x_1162 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1162 & 3u));
    let x_1166 : u32 = u_xlatu47;
    let x_1169 : vec4<f32> = x_936.unity_LightIndices[bitcast<i32>(x_1166)];
    let x_1179 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1184 : vec4<u32> = indexable[x_1179];
    u_xlat47 = dot(x_1169, bitcast<vec4<f32>>(x_1184));
    let x_1188 : f32 = u_xlat47;
    u_xlati47 = i32(x_1188);
    let x_1190 : vec3<f32> = vs_TEXCOORD7;
    let x_1202 : i32 = u_xlati47;
    let x_1204 : vec4<f32> = x_1201.x_AdditionalLightsPosition[x_1202];
    let x_1207 : i32 = u_xlati47;
    let x_1209 : vec4<f32> = x_1201.x_AdditionalLightsPosition[x_1207];
    let x_1211 : vec3<f32> = ((-(x_1190) * vec3<f32>(x_1204.w, x_1204.w, x_1204.w)) + vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
    let x_1212 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
    let x_1215 : vec4<f32> = u_xlat8;
    let x_1217 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1215.x, x_1215.y, x_1215.z), vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
    let x_1220 : f32 = u_xlat48;
    u_xlat48 = max(x_1220, 6.10351562e-05f);
    let x_1223 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1223);
    let x_1225 : f32 = u_xlat49;
    let x_1227 : vec4<f32> = u_xlat8;
    let x_1229 : vec3<f32> = (vec3<f32>(x_1225, x_1225, x_1225) * vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
    let x_1230 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
    let x_1233 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1233);
    let x_1235 : f32 = u_xlat48;
    let x_1236 : i32 = u_xlati47;
    let x_1238 : f32 = x_1201.x_AdditionalLightsAttenuation[x_1236].x;
    u_xlat48 = (x_1235 * x_1238);
    let x_1240 : f32 = u_xlat48;
    let x_1242 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1240) * x_1242) + 1.0f);
    let x_1245 : f32 = u_xlat48;
    u_xlat48 = max(x_1245, 0.0f);
    let x_1247 : f32 = u_xlat48;
    let x_1248 : f32 = u_xlat48;
    u_xlat48 = (x_1247 * x_1248);
    let x_1250 : f32 = u_xlat48;
    let x_1251 : f32 = u_xlat50;
    u_xlat48 = (x_1250 * x_1251);
    let x_1253 : i32 = u_xlati47;
    let x_1255 : vec4<f32> = x_1201.x_AdditionalLightsSpotDir[x_1253];
    let x_1257 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1255.x, x_1255.y, x_1255.z), vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
    let x_1260 : f32 = u_xlat50;
    let x_1261 : i32 = u_xlati47;
    let x_1263 : f32 = x_1201.x_AdditionalLightsAttenuation[x_1261].z;
    let x_1265 : i32 = u_xlati47;
    let x_1267 : f32 = x_1201.x_AdditionalLightsAttenuation[x_1265].w;
    u_xlat50 = ((x_1260 * x_1263) + x_1267);
    let x_1269 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1269, 0.0f, 1.0f);
    let x_1271 : f32 = u_xlat50;
    let x_1272 : f32 = u_xlat50;
    u_xlat50 = (x_1271 * x_1272);
    let x_1274 : f32 = u_xlat48;
    let x_1275 : f32 = u_xlat50;
    u_xlat48 = (x_1274 * x_1275);
    let x_1277 : f32 = u_xlat18;
    let x_1279 : i32 = u_xlati47;
    let x_1281 : vec4<f32> = x_1201.x_AdditionalLightsColor[x_1279];
    let x_1283 : vec3<f32> = (vec3<f32>(x_1277, x_1277, x_1277) * vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
    let x_1284 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
    let x_1286 : vec4<f32> = u_xlat1;
    let x_1288 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1286.x, x_1286.y, x_1286.z), vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
    let x_1291 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1291, 0.0f, 1.0f);
    let x_1293 : f32 = u_xlat47;
    let x_1294 : f32 = u_xlat48;
    u_xlat47 = (x_1293 * x_1294);
    let x_1296 : f32 = u_xlat47;
    let x_1298 : vec4<f32> = u_xlat10;
    let x_1300 : vec3<f32> = (vec3<f32>(x_1296, x_1296, x_1296) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
    let x_1301 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
    let x_1303 : vec4<f32> = u_xlat8;
    let x_1305 : f32 = u_xlat49;
    let x_1308 : vec3<f32> = u_xlat2;
    let x_1309 : vec3<f32> = ((vec3<f32>(x_1303.x, x_1303.y, x_1303.z) * vec3<f32>(x_1305, x_1305, x_1305)) + x_1308);
    let x_1310 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
    let x_1312 : vec4<f32> = u_xlat8;
    let x_1314 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1312.x, x_1312.y, x_1312.z), vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
    let x_1317 : f32 = u_xlat47;
    u_xlat47 = max(x_1317, 1.17549435e-37f);
    let x_1319 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1319);
    let x_1321 : f32 = u_xlat47;
    let x_1323 : vec4<f32> = u_xlat8;
    let x_1325 : vec3<f32> = (vec3<f32>(x_1321, x_1321, x_1321) * vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
    let x_1326 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
    let x_1328 : vec4<f32> = u_xlat1;
    let x_1330 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1328.x, x_1328.y, x_1328.z), vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
    let x_1333 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1333, 0.0f, 1.0f);
    let x_1335 : vec4<f32> = u_xlat9;
    let x_1337 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1335.x, x_1335.y, x_1335.z), vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
    let x_1340 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1340, 0.0f, 1.0f);
    let x_1342 : f32 = u_xlat47;
    let x_1343 : f32 = u_xlat47;
    u_xlat47 = (x_1342 * x_1343);
    let x_1345 : f32 = u_xlat47;
    let x_1347 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1345 * x_1347) + 1.000010014f);
    let x_1350 : f32 = u_xlat48;
    let x_1351 : f32 = u_xlat48;
    u_xlat48 = (x_1350 * x_1351);
    let x_1353 : f32 = u_xlat47;
    let x_1354 : f32 = u_xlat47;
    u_xlat47 = (x_1353 * x_1354);
    let x_1356 : f32 = u_xlat48;
    u_xlat48 = max(x_1356, 0.100000001f);
    let x_1358 : f32 = u_xlat47;
    let x_1359 : f32 = u_xlat48;
    u_xlat47 = (x_1358 * x_1359);
    let x_1361 : f32 = u_xlat45;
    let x_1362 : f32 = u_xlat47;
    u_xlat47 = (x_1361 * x_1362);
    let x_1364 : f32 = u_xlat43;
    let x_1365 : f32 = u_xlat47;
    u_xlat47 = (x_1364 / x_1365);
    let x_1367 : vec4<f32> = u_xlat5;
    let x_1369 : f32 = u_xlat47;
    let x_1372 : vec4<f32> = u_xlat6;
    let x_1374 : vec3<f32> = ((vec3<f32>(x_1367.x, x_1367.y, x_1367.z) * vec3<f32>(x_1369, x_1369, x_1369)) + vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
    let x_1375 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
    let x_1377 : vec4<f32> = u_xlat8;
    let x_1379 : vec4<f32> = u_xlat10;
    let x_1382 : vec4<f32> = u_xlat7;
    let x_1384 : vec3<f32> = ((vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z)) + vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
    let x_1385 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);

    continuing {
      let x_1387 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1387 + bitcast<u32>(1i));
    }
  }
  let x_1389 : vec4<f32> = u_xlat3;
  let x_1391 : f32 = u_xlat14;
  let x_1394 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * vec3<f32>(x_1391, x_1391, x_1391)) + vec3<f32>(x_1394.x, x_1394.z, x_1394.w));
  let x_1397 : vec4<f32> = u_xlat7;
  let x_1399 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1397.x, x_1397.y, x_1397.z) + x_1399);
  let x_1403 : f32 = u_xlat42;
  let x_1405 : vec3<f32> = u_xlat0;
  let x_1406 : vec3<f32> = (vec3<f32>(x_1403, x_1403, x_1403) * x_1405);
  let x_1407 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
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

