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

@group(1) @binding(2) var<uniform> x_601 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_814 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1221 : AdditionalLights;

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
  var x_839 : f32;
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
  u_xlat1.w = 1.0f;
  let x_603 : vec4<f32> = x_601.unity_SHAr;
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_603, x_604);
  let x_608 : vec4<f32> = x_601.unity_SHAg;
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_608, x_609);
  let x_613 : vec4<f32> = x_601.unity_SHAb;
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_613, x_614);
  let x_617 : vec4<f32> = u_xlat1;
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_617.y, x_617.z, x_617.z, x_617.x) * vec4<f32>(x_619.x, x_619.y, x_619.z, x_619.z));
  let x_623 : vec4<f32> = x_601.unity_SHBr;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_623, x_624);
  let x_628 : vec4<f32> = x_601.unity_SHBg;
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_628, x_629);
  let x_633 : vec4<f32> = x_601.unity_SHBb;
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_633, x_634);
  let x_638 : f32 = u_xlat1.y;
  let x_640 : f32 = u_xlat1.y;
  u_xlat43 = (x_638 * x_640);
  let x_643 : f32 = u_xlat1.x;
  let x_645 : f32 = u_xlat1.x;
  let x_647 : f32 = u_xlat43;
  u_xlat43 = ((x_643 * x_645) + -(x_647));
  let x_652 : vec4<f32> = x_601.unity_SHC;
  let x_654 : f32 = u_xlat43;
  let x_657 : vec4<f32> = u_xlat6;
  let x_659 : vec3<f32> = ((vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654, x_654, x_654)) + vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat4;
  let x_666 : vec3<f32> = (vec3<f32>(x_662.x, x_662.y, x_662.z) + vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = max(vec3<f32>(x_669.x, x_669.y, x_669.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_677 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
  let x_682 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_678.x, x_678.y));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat4;
  let x_687 : vec4<f32> = hlslcc_FragCoord;
  let x_689 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) * vec2<f32>(x_687.x, x_687.y));
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
  let x_693 : f32 = u_xlat4.y;
  let x_695 : f32 = x_126.x_ScaleBiasRt.x;
  let x_698 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_693 * x_695) + x_698);
  let x_700 : f32 = u_xlat43;
  u_xlat4.z = (-(x_700) + 1.0f);
  let x_705 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_705) * 0.959999979f) + 0.959999979f);
  let x_711 : f32 = u_xlat28;
  let x_712 : f32 = u_xlat43;
  u_xlat44 = (x_711 + -(x_712));
  let x_715 : f32 = u_xlat43;
  let x_717 : vec4<f32> = u_xlat5;
  let x_719 : vec3<f32> = (vec3<f32>(x_715, x_715, x_715) * vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat5;
  let x_726 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_727 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec3<f32> = u_xlat0;
  let x_731 : vec4<f32> = u_xlat5;
  let x_736 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.x, x_729.x) * vec3<f32>(x_731.x, x_731.y, x_731.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_737 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : f32 = u_xlat28;
  u_xlat0.x = (-(x_739) + 1.0f);
  let x_744 : f32 = u_xlat0.x;
  let x_746 : f32 = u_xlat0.x;
  u_xlat28 = (x_744 * x_746);
  let x_748 : f32 = u_xlat28;
  u_xlat28 = max(x_748, 0.0078125f);
  let x_751 : f32 = u_xlat28;
  let x_752 : f32 = u_xlat28;
  u_xlat43 = (x_751 * x_752);
  let x_754 : f32 = u_xlat44;
  u_xlat44 = (x_754 + 1.0f);
  let x_756 : f32 = u_xlat44;
  u_xlat44 = clamp(x_756, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat28;
  u_xlat45 = ((x_759 * 4.0f) + 2.0f);
  let x_768 : vec4<f32> = u_xlat4;
  let x_771 : f32 = x_126.x_GlobalMipBias.x;
  let x_772 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_768.x, x_768.z), x_771);
  u_xlat4.x = x_772.x;
  let x_777 : f32 = u_xlat4.x;
  u_xlat18 = (x_777 + -1.0f);
  let x_780 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_781 : f32 = u_xlat18;
  u_xlat18 = ((x_780 * x_781) + 1.0f);
  let x_784 : f32 = u_xlat14;
  let x_786 : f32 = u_xlat4.x;
  u_xlat14 = min(x_784, x_786);
  let x_790 : vec4<f32> = vs_TEXCOORD8;
  let x_791 : vec2<f32> = vec2<f32>(x_790.x, x_790.y);
  let x_793 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_791.x, x_791.y, x_793);
  let x_805 : vec3<f32> = txVec0;
  let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
  u_xlat4.x = x_807;
  let x_816 : f32 = x_814.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_816) + 1.0f);
  let x_820 : f32 = u_xlat4.x;
  let x_822 : f32 = x_814.x_MainLightShadowParams.x;
  let x_824 : f32 = u_xlat32;
  u_xlat4.x = ((x_820 * x_822) + x_824);
  let x_829 : f32 = vs_TEXCOORD8.z;
  u_xlatb32 = (0.0f >= x_829);
  let x_833 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_833 >= 1.0f);
  let x_835 : bool = u_xlatb46;
  let x_836 : bool = u_xlatb32;
  u_xlatb32 = (x_835 | x_836);
  let x_838 : bool = u_xlatb32;
  if (x_838) {
    x_839 = 1.0f;
  } else {
    let x_844 : f32 = u_xlat4.x;
    x_839 = x_844;
  }
  let x_845 : f32 = x_839;
  u_xlat4.x = x_845;
  let x_847 : vec3<f32> = vs_TEXCOORD7;
  let x_849 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_851 : vec3<f32> = (x_847 + -(x_849));
  let x_852 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat7;
  let x_856 : vec4<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : f32 = u_xlat32;
  let x_861 : f32 = x_814.x_MainLightShadowParams.z;
  let x_864 : f32 = x_814.x_MainLightShadowParams.w;
  u_xlat32 = ((x_859 * x_861) + x_864);
  let x_866 : f32 = u_xlat32;
  u_xlat32 = clamp(x_866, 0.0f, 1.0f);
  let x_870 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_870) + 1.0f);
  let x_873 : f32 = u_xlat32;
  let x_874 : f32 = u_xlat46;
  let x_877 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_873 * x_874) + x_877);
  let x_880 : f32 = u_xlat18;
  let x_884 : vec4<f32> = x_126.x_MainLightColor;
  let x_886 : vec3<f32> = (vec3<f32>(x_880, x_880, x_880) * vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec3<f32> = u_xlat2;
  let x_891 : vec4<f32> = u_xlat1;
  u_xlat32 = dot(-(x_889), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : f32 = u_xlat32;
  let x_895 : f32 = u_xlat32;
  u_xlat32 = (x_894 + x_895);
  let x_897 : vec4<f32> = u_xlat1;
  let x_899 : f32 = u_xlat32;
  let x_903 : vec3<f32> = u_xlat2;
  let x_905 : vec3<f32> = ((vec3<f32>(x_897.x, x_897.y, x_897.z) * -(vec3<f32>(x_899, x_899, x_899))) + -(x_903));
  let x_906 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat1;
  let x_910 : vec3<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_908.x, x_908.y, x_908.z), x_910);
  let x_912 : f32 = u_xlat32;
  u_xlat32 = clamp(x_912, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat32;
  u_xlat32 = (-(x_914) + 1.0f);
  let x_917 : f32 = u_xlat32;
  let x_918 : f32 = u_xlat32;
  u_xlat32 = (x_917 * x_918);
  let x_920 : f32 = u_xlat32;
  let x_921 : f32 = u_xlat32;
  u_xlat32 = (x_920 * x_921);
  let x_924 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_924) * 0.699999988f) + 1.700000048f);
  let x_931 : f32 = u_xlat0.x;
  let x_932 : f32 = u_xlat46;
  u_xlat0.x = (x_931 * x_932);
  let x_936 : f32 = u_xlat0.x;
  u_xlat0.x = (x_936 * 6.0f);
  let x_948 : vec4<f32> = u_xlat8;
  let x_951 : f32 = u_xlat0.x;
  let x_952 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_948.x, x_948.y, x_948.z), x_951);
  u_xlat8 = x_952;
  let x_954 : f32 = u_xlat8.w;
  u_xlat0.x = (x_954 + -1.0f);
  let x_958 : f32 = x_601.unity_SpecCube0_HDR.w;
  let x_960 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_958 * x_960) + 1.0f);
  let x_965 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_965, 0.0f);
  let x_969 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_969);
  let x_973 : f32 = u_xlat0.x;
  let x_975 : f32 = x_601.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_973 * x_975);
  let x_979 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_979);
  let x_983 : f32 = u_xlat0.x;
  let x_985 : f32 = x_601.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_983 * x_985);
  let x_988 : vec4<f32> = u_xlat8;
  let x_990 : vec3<f32> = u_xlat0;
  let x_992 : vec3<f32> = (vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_990.x, x_990.x, x_990.x));
  let x_993 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : f32 = u_xlat28;
  let x_997 : f32 = u_xlat28;
  let x_1001 : vec2<f32> = ((vec2<f32>(x_995, x_995) * vec2<f32>(x_997, x_997)) + vec2<f32>(-1.0f, 1.0f));
  let x_1002 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1001.x, x_1002.y, x_1001.y);
  let x_1005 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1005);
  let x_1007 : vec4<f32> = u_xlat5;
  let x_1010 : f32 = u_xlat44;
  let x_1012 : vec3<f32> = (-(vec3<f32>(x_1007.x, x_1007.y, x_1007.z)) + vec3<f32>(x_1010, x_1010, x_1010));
  let x_1013 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : f32 = u_xlat32;
  let x_1017 : vec4<f32> = u_xlat9;
  let x_1020 : vec4<f32> = u_xlat5;
  let x_1022 : vec3<f32> = ((vec3<f32>(x_1015, x_1015, x_1015) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z)) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : f32 = u_xlat28;
  let x_1027 : vec4<f32> = u_xlat9;
  let x_1029 : vec3<f32> = (vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat8;
  let x_1034 : vec4<f32> = u_xlat9;
  let x_1036 : vec3<f32> = (vec3<f32>(x_1032.x, x_1032.y, x_1032.z) * vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat3;
  let x_1041 : vec4<f32> = u_xlat6;
  let x_1044 : vec4<f32> = u_xlat8;
  let x_1046 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(x_1041.x, x_1041.y, x_1041.z)) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1050 : f32 = u_xlat4.x;
  let x_1052 : f32 = x_601.unity_LightData.z;
  u_xlat28 = (x_1050 * x_1052);
  let x_1054 : vec4<f32> = u_xlat1;
  let x_1057 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1060, 0.0f, 1.0f);
  let x_1062 : f32 = u_xlat28;
  let x_1063 : f32 = u_xlat44;
  u_xlat28 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat28;
  let x_1067 : vec4<f32> = u_xlat7;
  let x_1069 : vec3<f32> = (vec3<f32>(x_1065, x_1065, x_1065) * vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1069.x, x_1070.y, x_1069.y, x_1069.z);
  let x_1072 : vec3<f32> = u_xlat2;
  let x_1074 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1076 : vec3<f32> = (x_1072 + vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat7;
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat28;
  u_xlat28 = max(x_1084, 1.17549435e-37f);
  let x_1087 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1087);
  let x_1089 : f32 = u_xlat28;
  let x_1091 : vec4<f32> = u_xlat7;
  let x_1093 : vec3<f32> = (vec3<f32>(x_1089, x_1089, x_1089) * vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1094 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1096 : vec4<f32> = u_xlat1;
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1101, 0.0f, 1.0f);
  let x_1104 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1106 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1104.x, x_1104.y, x_1104.z), vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1109, 0.0f, 1.0f);
  let x_1111 : f32 = u_xlat28;
  let x_1112 : f32 = u_xlat28;
  u_xlat28 = (x_1111 * x_1112);
  let x_1114 : f32 = u_xlat28;
  let x_1116 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1114 * x_1116) + 1.000010014f);
  let x_1120 : f32 = u_xlat44;
  let x_1121 : f32 = u_xlat44;
  u_xlat44 = (x_1120 * x_1121);
  let x_1123 : f32 = u_xlat28;
  let x_1124 : f32 = u_xlat28;
  u_xlat28 = (x_1123 * x_1124);
  let x_1126 : f32 = u_xlat44;
  u_xlat44 = max(x_1126, 0.100000001f);
  let x_1129 : f32 = u_xlat28;
  let x_1130 : f32 = u_xlat44;
  u_xlat28 = (x_1129 * x_1130);
  let x_1132 : f32 = u_xlat45;
  let x_1133 : f32 = u_xlat28;
  u_xlat28 = (x_1132 * x_1133);
  let x_1135 : f32 = u_xlat43;
  let x_1136 : f32 = u_xlat28;
  u_xlat28 = (x_1135 / x_1136);
  let x_1138 : vec4<f32> = u_xlat5;
  let x_1140 : f32 = u_xlat28;
  let x_1143 : vec4<f32> = u_xlat6;
  let x_1145 : vec3<f32> = ((vec3<f32>(x_1138.x, x_1138.y, x_1138.z) * vec3<f32>(x_1140, x_1140, x_1140)) + vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec4<f32> = u_xlat4;
  let x_1150 : vec4<f32> = u_xlat7;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1148.x, x_1148.z, x_1148.w) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1152.z);
  let x_1156 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1158 : f32 = x_601.unity_LightData.y;
  u_xlat28 = min(x_1156, x_1158);
  let x_1162 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1162));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1174 : u32 = u_xlatu_loop_1;
    let x_1175 : u32 = u_xlatu28;
    if ((x_1174 < x_1175)) {
    } else {
      break;
    }
    let x_1178 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1178 >> 2u);
    let x_1182 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1182 & 3u));
    let x_1186 : u32 = u_xlatu47;
    let x_1189 : vec4<f32> = x_601.unity_LightIndices[bitcast<i32>(x_1186)];
    let x_1199 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1204 : vec4<u32> = indexable[x_1199];
    u_xlat47 = dot(x_1189, bitcast<vec4<f32>>(x_1204));
    let x_1208 : f32 = u_xlat47;
    u_xlati47 = i32(x_1208);
    let x_1210 : vec3<f32> = vs_TEXCOORD7;
    let x_1222 : i32 = u_xlati47;
    let x_1224 : vec4<f32> = x_1221.x_AdditionalLightsPosition[x_1222];
    let x_1227 : i32 = u_xlati47;
    let x_1229 : vec4<f32> = x_1221.x_AdditionalLightsPosition[x_1227];
    let x_1231 : vec3<f32> = ((-(x_1210) * vec3<f32>(x_1224.w, x_1224.w, x_1224.w)) + vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
    let x_1232 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
    let x_1235 : vec4<f32> = u_xlat8;
    let x_1237 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1235.x, x_1235.y, x_1235.z), vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
    let x_1240 : f32 = u_xlat48;
    u_xlat48 = max(x_1240, 6.10351562e-05f);
    let x_1243 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1243);
    let x_1245 : f32 = u_xlat49;
    let x_1247 : vec4<f32> = u_xlat8;
    let x_1249 : vec3<f32> = (vec3<f32>(x_1245, x_1245, x_1245) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
    let x_1250 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
    let x_1253 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1253);
    let x_1255 : f32 = u_xlat48;
    let x_1256 : i32 = u_xlati47;
    let x_1258 : f32 = x_1221.x_AdditionalLightsAttenuation[x_1256].x;
    u_xlat48 = (x_1255 * x_1258);
    let x_1260 : f32 = u_xlat48;
    let x_1262 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1260) * x_1262) + 1.0f);
    let x_1265 : f32 = u_xlat48;
    u_xlat48 = max(x_1265, 0.0f);
    let x_1267 : f32 = u_xlat48;
    let x_1268 : f32 = u_xlat48;
    u_xlat48 = (x_1267 * x_1268);
    let x_1270 : f32 = u_xlat48;
    let x_1271 : f32 = u_xlat50;
    u_xlat48 = (x_1270 * x_1271);
    let x_1273 : i32 = u_xlati47;
    let x_1275 : vec4<f32> = x_1221.x_AdditionalLightsSpotDir[x_1273];
    let x_1277 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1275.x, x_1275.y, x_1275.z), vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
    let x_1280 : f32 = u_xlat50;
    let x_1281 : i32 = u_xlati47;
    let x_1283 : f32 = x_1221.x_AdditionalLightsAttenuation[x_1281].z;
    let x_1285 : i32 = u_xlati47;
    let x_1287 : f32 = x_1221.x_AdditionalLightsAttenuation[x_1285].w;
    u_xlat50 = ((x_1280 * x_1283) + x_1287);
    let x_1289 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1289, 0.0f, 1.0f);
    let x_1291 : f32 = u_xlat50;
    let x_1292 : f32 = u_xlat50;
    u_xlat50 = (x_1291 * x_1292);
    let x_1294 : f32 = u_xlat48;
    let x_1295 : f32 = u_xlat50;
    u_xlat48 = (x_1294 * x_1295);
    let x_1297 : f32 = u_xlat18;
    let x_1299 : i32 = u_xlati47;
    let x_1301 : vec4<f32> = x_1221.x_AdditionalLightsColor[x_1299];
    let x_1303 : vec3<f32> = (vec3<f32>(x_1297, x_1297, x_1297) * vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
    let x_1304 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
    let x_1306 : vec4<f32> = u_xlat1;
    let x_1308 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
    let x_1311 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1311, 0.0f, 1.0f);
    let x_1313 : f32 = u_xlat47;
    let x_1314 : f32 = u_xlat48;
    u_xlat47 = (x_1313 * x_1314);
    let x_1316 : f32 = u_xlat47;
    let x_1318 : vec4<f32> = u_xlat10;
    let x_1320 : vec3<f32> = (vec3<f32>(x_1316, x_1316, x_1316) * vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
    let x_1321 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
    let x_1323 : vec4<f32> = u_xlat8;
    let x_1325 : f32 = u_xlat49;
    let x_1328 : vec3<f32> = u_xlat2;
    let x_1329 : vec3<f32> = ((vec3<f32>(x_1323.x, x_1323.y, x_1323.z) * vec3<f32>(x_1325, x_1325, x_1325)) + x_1328);
    let x_1330 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
    let x_1332 : vec4<f32> = u_xlat8;
    let x_1334 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1332.x, x_1332.y, x_1332.z), vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
    let x_1337 : f32 = u_xlat47;
    u_xlat47 = max(x_1337, 1.17549435e-37f);
    let x_1339 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1339);
    let x_1341 : f32 = u_xlat47;
    let x_1343 : vec4<f32> = u_xlat8;
    let x_1345 : vec3<f32> = (vec3<f32>(x_1341, x_1341, x_1341) * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
    let x_1346 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
    let x_1348 : vec4<f32> = u_xlat1;
    let x_1350 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1348.x, x_1348.y, x_1348.z), vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
    let x_1353 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1353, 0.0f, 1.0f);
    let x_1355 : vec4<f32> = u_xlat9;
    let x_1357 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1355.x, x_1355.y, x_1355.z), vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
    let x_1360 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1360, 0.0f, 1.0f);
    let x_1362 : f32 = u_xlat47;
    let x_1363 : f32 = u_xlat47;
    u_xlat47 = (x_1362 * x_1363);
    let x_1365 : f32 = u_xlat47;
    let x_1367 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1365 * x_1367) + 1.000010014f);
    let x_1370 : f32 = u_xlat48;
    let x_1371 : f32 = u_xlat48;
    u_xlat48 = (x_1370 * x_1371);
    let x_1373 : f32 = u_xlat47;
    let x_1374 : f32 = u_xlat47;
    u_xlat47 = (x_1373 * x_1374);
    let x_1376 : f32 = u_xlat48;
    u_xlat48 = max(x_1376, 0.100000001f);
    let x_1378 : f32 = u_xlat47;
    let x_1379 : f32 = u_xlat48;
    u_xlat47 = (x_1378 * x_1379);
    let x_1381 : f32 = u_xlat45;
    let x_1382 : f32 = u_xlat47;
    u_xlat47 = (x_1381 * x_1382);
    let x_1384 : f32 = u_xlat43;
    let x_1385 : f32 = u_xlat47;
    u_xlat47 = (x_1384 / x_1385);
    let x_1387 : vec4<f32> = u_xlat5;
    let x_1389 : f32 = u_xlat47;
    let x_1392 : vec4<f32> = u_xlat6;
    let x_1394 : vec3<f32> = ((vec3<f32>(x_1387.x, x_1387.y, x_1387.z) * vec3<f32>(x_1389, x_1389, x_1389)) + vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
    let x_1395 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
    let x_1397 : vec4<f32> = u_xlat8;
    let x_1399 : vec4<f32> = u_xlat10;
    let x_1402 : vec4<f32> = u_xlat7;
    let x_1404 : vec3<f32> = ((vec3<f32>(x_1397.x, x_1397.y, x_1397.z) * vec3<f32>(x_1399.x, x_1399.y, x_1399.z)) + vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
    let x_1405 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);

    continuing {
      let x_1407 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1407 + bitcast<u32>(1i));
    }
  }
  let x_1409 : vec4<f32> = u_xlat3;
  let x_1411 : f32 = u_xlat14;
  let x_1414 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1409.x, x_1409.y, x_1409.z) * vec3<f32>(x_1411, x_1411, x_1411)) + vec3<f32>(x_1414.x, x_1414.z, x_1414.w));
  let x_1417 : vec4<f32> = u_xlat7;
  let x_1419 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1417.x, x_1417.y, x_1417.z) + x_1419);
  let x_1423 : f32 = u_xlat42;
  let x_1425 : vec3<f32> = u_xlat0;
  let x_1426 : vec3<f32> = (vec3<f32>(x_1423, x_1423, x_1423) * x_1425);
  let x_1427 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
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

