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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_601 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_815 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_899 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1373 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1482 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat32 : vec2<f32>;
  var u_xlatb32 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_848 : f32;
  var u_xlat46 : f32;
  var x_967 : f32;
  var x_978 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat48 : f32;
  var u_xlat35 : f32;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1775 : f32;
  var x_1788 : f32;
  var x_1840 : f32;
  var x_1851 : vec3<f32>;
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
  let x_817 : f32 = x_815.x_MainLightShadowParams.x;
  u_xlat32.x = (-(x_817) + 1.0f);
  let x_822 : f32 = u_xlat4.x;
  let x_824 : f32 = x_815.x_MainLightShadowParams.x;
  let x_827 : f32 = u_xlat32.x;
  u_xlat4.x = ((x_822 * x_824) + x_827);
  let x_834 : f32 = vs_TEXCOORD8.z;
  u_xlatb32.x = (0.0f >= x_834);
  let x_839 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_839 >= 1.0f);
  let x_841 : bool = u_xlatb46;
  let x_843 : bool = u_xlatb32.x;
  u_xlatb32.x = (x_841 | x_843);
  let x_847 : bool = u_xlatb32.x;
  if (x_847) {
    x_848 = 1.0f;
  } else {
    let x_853 : f32 = u_xlat4.x;
    x_848 = x_853;
  }
  let x_854 : f32 = x_848;
  u_xlat4.x = x_854;
  let x_856 : vec3<f32> = vs_TEXCOORD7;
  let x_858 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_860 : vec3<f32> = (x_856 + -(x_858));
  let x_861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat7;
  let x_865 : vec4<f32> = u_xlat7;
  u_xlat32.x = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_870 : f32 = u_xlat32.x;
  let x_872 : f32 = x_815.x_MainLightShadowParams.z;
  let x_875 : f32 = x_815.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_870 * x_872) + x_875);
  let x_879 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_879, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_884) + 1.0f);
  let x_888 : f32 = u_xlat32.x;
  let x_889 : f32 = u_xlat46;
  let x_892 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_888 * x_889) + x_892);
  let x_901 : f32 = x_899.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_901 == -1.0f));
  let x_905 : bool = u_xlatb32.x;
  if (x_905) {
    let x_908 : vec3<f32> = vs_TEXCOORD7;
    let x_911 : vec4<f32> = x_899.x_MainLightWorldToLight[1i];
    u_xlat32 = (vec2<f32>(x_908.y, x_908.y) * vec2<f32>(x_911.x, x_911.y));
    let x_915 : vec4<f32> = x_899.x_MainLightWorldToLight[0i];
    let x_917 : vec3<f32> = vs_TEXCOORD7;
    let x_920 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_915.x, x_915.y) * vec2<f32>(x_917.x, x_917.x)) + x_920);
    let x_923 : vec4<f32> = x_899.x_MainLightWorldToLight[2i];
    let x_925 : vec3<f32> = vs_TEXCOORD7;
    let x_928 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_925.z, x_925.z)) + x_928);
    let x_930 : vec2<f32> = u_xlat32;
    let x_933 : vec4<f32> = x_899.x_MainLightWorldToLight[3i];
    u_xlat32 = (x_930 + vec2<f32>(x_933.x, x_933.y));
    let x_936 : vec2<f32> = u_xlat32;
    u_xlat32 = ((x_936 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_944 : vec2<f32> = u_xlat32;
    let x_946 : f32 = x_126.x_GlobalMipBias.x;
    let x_947 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_944, x_946);
    u_xlat7 = x_947;
    let x_949 : f32 = x_899.x_MainLightCookieTextureFormat;
    let x_951 : f32 = x_899.x_MainLightCookieTextureFormat;
    let x_953 : f32 = x_899.x_MainLightCookieTextureFormat;
    let x_955 : f32 = x_899.x_MainLightCookieTextureFormat;
    let x_956 : vec4<f32> = vec4<f32>(x_949, x_951, x_953, x_955);
    let x_963 : vec4<bool> = (vec4<f32>(x_956.x, x_956.y, x_956.z, x_956.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb32 = vec2<bool>(x_963.x, x_963.y);
    let x_966 : bool = u_xlatb32.y;
    if (x_966) {
      let x_971 : f32 = u_xlat7.w;
      x_967 = x_971;
    } else {
      let x_974 : f32 = u_xlat7.x;
      x_967 = x_974;
    }
    let x_975 : f32 = x_967;
    u_xlat46 = x_975;
    let x_977 : bool = u_xlatb32.x;
    if (x_977) {
      let x_981 : vec4<f32> = u_xlat7;
      x_978 = vec3<f32>(x_981.x, x_981.y, x_981.z);
    } else {
      let x_984 : f32 = u_xlat46;
      x_978 = vec3<f32>(x_984, x_984, x_984);
    }
    let x_986 : vec3<f32> = x_978;
    let x_987 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_993 : vec4<f32> = u_xlat7;
  let x_996 : vec4<f32> = x_126.x_MainLightColor;
  let x_998 : vec3<f32> = (vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : f32 = u_xlat18;
  let x_1003 : vec4<f32> = u_xlat7;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001, x_1001, x_1001) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec3<f32> = u_xlat2;
  let x_1010 : vec4<f32> = u_xlat1;
  u_xlat32.x = dot(-(x_1008), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1015 : f32 = u_xlat32.x;
  let x_1017 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1015 + x_1017);
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1022 : vec2<f32> = u_xlat32;
  let x_1026 : vec3<f32> = u_xlat2;
  let x_1028 : vec3<f32> = ((vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * -(vec3<f32>(x_1022.x, x_1022.x, x_1022.x))) + -(x_1026));
  let x_1029 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
  let x_1031 : vec4<f32> = u_xlat1;
  let x_1033 : vec3<f32> = u_xlat2;
  u_xlat32.x = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), x_1033);
  let x_1037 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_1037, 0.0f, 1.0f);
  let x_1041 : f32 = u_xlat32.x;
  u_xlat32.x = (-(x_1041) + 1.0f);
  let x_1046 : f32 = u_xlat32.x;
  let x_1048 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1046 * x_1048);
  let x_1052 : f32 = u_xlat32.x;
  let x_1054 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1052 * x_1054);
  let x_1058 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1058) * 0.699999988f) + 1.700000048f);
  let x_1065 : f32 = u_xlat0.x;
  let x_1066 : f32 = u_xlat46;
  u_xlat0.x = (x_1065 * x_1066);
  let x_1070 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1070 * 6.0f);
  let x_1082 : vec4<f32> = u_xlat8;
  let x_1085 : f32 = u_xlat0.x;
  let x_1086 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1082.x, x_1082.y, x_1082.z), x_1085);
  u_xlat8 = x_1086;
  let x_1088 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1088 + -1.0f);
  let x_1092 : f32 = x_601.unity_SpecCube0_HDR.w;
  let x_1094 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1092 * x_1094) + 1.0f);
  let x_1099 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1099, 0.0f);
  let x_1103 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1103);
  let x_1107 : f32 = u_xlat0.x;
  let x_1109 : f32 = x_601.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1107 * x_1109);
  let x_1113 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1113);
  let x_1117 : f32 = u_xlat0.x;
  let x_1119 : f32 = x_601.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1117 * x_1119);
  let x_1122 : vec4<f32> = u_xlat8;
  let x_1124 : vec3<f32> = u_xlat0;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1124.x, x_1124.x, x_1124.x));
  let x_1127 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : f32 = u_xlat28;
  let x_1131 : f32 = u_xlat28;
  let x_1135 : vec2<f32> = ((vec2<f32>(x_1129, x_1129) * vec2<f32>(x_1131, x_1131)) + vec2<f32>(-1.0f, 1.0f));
  let x_1136 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1135.x, x_1136.y, x_1135.y);
  let x_1139 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1139);
  let x_1141 : vec4<f32> = u_xlat5;
  let x_1144 : f32 = u_xlat44;
  let x_1146 : vec3<f32> = (-(vec3<f32>(x_1141.x, x_1141.y, x_1141.z)) + vec3<f32>(x_1144, x_1144, x_1144));
  let x_1147 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec2<f32> = u_xlat32;
  let x_1151 : vec4<f32> = u_xlat9;
  let x_1154 : vec4<f32> = u_xlat5;
  let x_1156 : vec3<f32> = ((vec3<f32>(x_1149.x, x_1149.x, x_1149.x) * vec3<f32>(x_1151.x, x_1151.y, x_1151.z)) + vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : f32 = u_xlat28;
  let x_1161 : vec4<f32> = u_xlat9;
  let x_1163 : vec3<f32> = (vec3<f32>(x_1159, x_1159, x_1159) * vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec4<f32> = u_xlat8;
  let x_1168 : vec4<f32> = u_xlat9;
  let x_1170 : vec3<f32> = (vec3<f32>(x_1166.x, x_1166.y, x_1166.z) * vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
  let x_1173 : vec4<f32> = u_xlat3;
  let x_1175 : vec4<f32> = u_xlat6;
  let x_1178 : vec4<f32> = u_xlat8;
  let x_1180 : vec3<f32> = ((vec3<f32>(x_1173.x, x_1173.y, x_1173.z) * vec3<f32>(x_1175.x, x_1175.y, x_1175.z)) + vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1184 : f32 = u_xlat4.x;
  let x_1186 : f32 = x_601.unity_LightData.z;
  u_xlat28 = (x_1184 * x_1186);
  let x_1188 : vec4<f32> = u_xlat1;
  let x_1191 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1188.x, x_1188.y, x_1188.z), vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1194, 0.0f, 1.0f);
  let x_1196 : f32 = u_xlat28;
  let x_1197 : f32 = u_xlat44;
  u_xlat28 = (x_1196 * x_1197);
  let x_1199 : f32 = u_xlat28;
  let x_1201 : vec4<f32> = u_xlat7;
  let x_1203 : vec3<f32> = (vec3<f32>(x_1199, x_1199, x_1199) * vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1203.z);
  let x_1206 : vec3<f32> = u_xlat2;
  let x_1208 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1210 : vec3<f32> = (x_1206 + vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec4<f32> = u_xlat7;
  let x_1215 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1213.x, x_1213.y, x_1213.z), vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : f32 = u_xlat28;
  u_xlat28 = max(x_1218, 1.17549435e-37f);
  let x_1221 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1221);
  let x_1223 : f32 = u_xlat28;
  let x_1225 : vec4<f32> = u_xlat7;
  let x_1227 : vec3<f32> = (vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1230 : vec4<f32> = u_xlat1;
  let x_1232 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1235, 0.0f, 1.0f);
  let x_1238 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1240 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1243, 0.0f, 1.0f);
  let x_1245 : f32 = u_xlat28;
  let x_1246 : f32 = u_xlat28;
  u_xlat28 = (x_1245 * x_1246);
  let x_1248 : f32 = u_xlat28;
  let x_1250 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1248 * x_1250) + 1.000010014f);
  let x_1254 : f32 = u_xlat44;
  let x_1255 : f32 = u_xlat44;
  u_xlat44 = (x_1254 * x_1255);
  let x_1257 : f32 = u_xlat28;
  let x_1258 : f32 = u_xlat28;
  u_xlat28 = (x_1257 * x_1258);
  let x_1260 : f32 = u_xlat44;
  u_xlat44 = max(x_1260, 0.100000001f);
  let x_1263 : f32 = u_xlat28;
  let x_1264 : f32 = u_xlat44;
  u_xlat28 = (x_1263 * x_1264);
  let x_1266 : f32 = u_xlat45;
  let x_1267 : f32 = u_xlat28;
  u_xlat28 = (x_1266 * x_1267);
  let x_1269 : f32 = u_xlat43;
  let x_1270 : f32 = u_xlat28;
  u_xlat28 = (x_1269 / x_1270);
  let x_1272 : vec4<f32> = u_xlat5;
  let x_1274 : f32 = u_xlat28;
  let x_1277 : vec4<f32> = u_xlat6;
  let x_1279 : vec3<f32> = ((vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * vec3<f32>(x_1274, x_1274, x_1274)) + vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat4;
  let x_1284 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = (vec3<f32>(x_1282.x, x_1282.z, x_1282.w) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1286.x, x_1287.y, x_1286.y, x_1286.z);
  let x_1290 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1292 : f32 = x_601.unity_LightData.y;
  u_xlat28 = min(x_1290, x_1292);
  let x_1296 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1296));
  let x_1301 : f32 = x_899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1303 : f32 = x_899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1305 : f32 = x_899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1307 : f32 = x_899.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1308 : vec4<f32> = vec4<f32>(x_1301, x_1303, x_1305, x_1307);
  let x_1315 : vec4<bool> = (vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1315.x, x_1315.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1326 : u32 = u_xlatu_loop_1;
    let x_1327 : u32 = u_xlatu28;
    if ((x_1326 < x_1327)) {
    } else {
      break;
    }
    let x_1330 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1330 >> 2u);
    let x_1334 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1334 & 3u));
    let x_1338 : u32 = u_xlatu47;
    let x_1341 : vec4<f32> = x_601.unity_LightIndices[bitcast<i32>(x_1338)];
    let x_1351 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1356 : vec4<u32> = indexable[x_1351];
    u_xlat47 = dot(x_1341, bitcast<vec4<f32>>(x_1356));
    let x_1359 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1359));
    let x_1362 : vec3<f32> = vs_TEXCOORD7;
    let x_1374 : u32 = u_xlatu47;
    let x_1377 : vec4<f32> = x_1373.x_AdditionalLightsPosition[bitcast<i32>(x_1374)];
    let x_1380 : u32 = u_xlatu47;
    let x_1383 : vec4<f32> = x_1373.x_AdditionalLightsPosition[bitcast<i32>(x_1380)];
    let x_1385 : vec3<f32> = ((-(x_1362) * vec3<f32>(x_1377.w, x_1377.w, x_1377.w)) + vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
    let x_1386 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
    let x_1389 : vec4<f32> = u_xlat9;
    let x_1391 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
    let x_1394 : f32 = u_xlat48;
    u_xlat48 = max(x_1394, 6.10351562e-05f);
    let x_1397 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1397);
    let x_1399 : f32 = u_xlat35;
    let x_1401 : vec4<f32> = u_xlat9;
    let x_1403 : vec3<f32> = (vec3<f32>(x_1399, x_1399, x_1399) * vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
    let x_1404 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
    let x_1407 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1407);
    let x_1409 : f32 = u_xlat48;
    let x_1410 : u32 = u_xlatu47;
    let x_1413 : f32 = x_1373.x_AdditionalLightsAttenuation[bitcast<i32>(x_1410)].x;
    u_xlat48 = (x_1409 * x_1413);
    let x_1415 : f32 = u_xlat48;
    let x_1417 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1415) * x_1417) + 1.0f);
    let x_1420 : f32 = u_xlat48;
    u_xlat48 = max(x_1420, 0.0f);
    let x_1422 : f32 = u_xlat48;
    let x_1423 : f32 = u_xlat48;
    u_xlat48 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat48;
    let x_1426 : f32 = u_xlat49;
    u_xlat48 = (x_1425 * x_1426);
    let x_1428 : u32 = u_xlatu47;
    let x_1431 : vec4<f32> = x_1373.x_AdditionalLightsSpotDir[bitcast<i32>(x_1428)];
    let x_1433 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1431.x, x_1431.y, x_1431.z), vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
    let x_1436 : f32 = u_xlat49;
    let x_1437 : u32 = u_xlatu47;
    let x_1440 : f32 = x_1373.x_AdditionalLightsAttenuation[bitcast<i32>(x_1437)].z;
    let x_1442 : u32 = u_xlatu47;
    let x_1445 : f32 = x_1373.x_AdditionalLightsAttenuation[bitcast<i32>(x_1442)].w;
    u_xlat49 = ((x_1436 * x_1440) + x_1445);
    let x_1447 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1447, 0.0f, 1.0f);
    let x_1449 : f32 = u_xlat49;
    let x_1450 : f32 = u_xlat49;
    u_xlat49 = (x_1449 * x_1450);
    let x_1452 : f32 = u_xlat48;
    let x_1453 : f32 = u_xlat49;
    u_xlat48 = (x_1452 * x_1453);
    let x_1456 : u32 = u_xlatu47;
    u_xlatu49 = (x_1456 >> 5u);
    let x_1459 : u32 = u_xlatu47;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1459) & 31i)));
    let x_1464 : i32 = u_xlati50;
    let x_1466 : u32 = u_xlatu49;
    let x_1469 : f32 = x_899.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1466)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1464) & bitcast<u32>(x_1469)));
    let x_1473 : i32 = u_xlati49;
    if ((x_1473 != 0i)) {
      let x_1483 : u32 = u_xlatu47;
      let x_1486 : f32 = x_1482.x_AdditionalLightsLightTypes[bitcast<i32>(x_1483)].el;
      u_xlati49 = i32(x_1486);
      let x_1488 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1488 != 0i));
      let x_1492 : u32 = u_xlatu47;
      u_xlati51 = (bitcast<i32>(x_1492) << bitcast<u32>(2i));
      let x_1495 : i32 = u_xlati50;
      if ((x_1495 != 0i)) {
        let x_1499 : vec3<f32> = vs_TEXCOORD7;
        let x_1501 : i32 = u_xlati51;
        let x_1504 : i32 = u_xlati51;
        let x_1508 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1501 + 1i) / 4i)][((x_1504 + 1i) % 4i)];
        let x_1510 : vec3<f32> = (vec3<f32>(x_1499.y, x_1499.y, x_1499.y) * vec3<f32>(x_1508.x, x_1508.y, x_1508.w));
        let x_1511 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
        let x_1513 : i32 = u_xlati51;
        let x_1515 : i32 = u_xlati51;
        let x_1518 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[(x_1513 / 4i)][(x_1515 % 4i)];
        let x_1520 : vec3<f32> = vs_TEXCOORD7;
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec3<f32> = ((vec3<f32>(x_1518.x, x_1518.y, x_1518.w) * vec3<f32>(x_1520.x, x_1520.x, x_1520.x)) + vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
        let x_1526 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
        let x_1528 : i32 = u_xlati51;
        let x_1531 : i32 = u_xlati51;
        let x_1535 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1528 + 2i) / 4i)][((x_1531 + 2i) % 4i)];
        let x_1537 : vec3<f32> = vs_TEXCOORD7;
        let x_1540 : vec4<f32> = u_xlat11;
        let x_1542 : vec3<f32> = ((vec3<f32>(x_1535.x, x_1535.y, x_1535.w) * vec3<f32>(x_1537.z, x_1537.z, x_1537.z)) + vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
        let x_1543 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
        let x_1545 : vec4<f32> = u_xlat11;
        let x_1547 : i32 = u_xlati51;
        let x_1550 : i32 = u_xlati51;
        let x_1554 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1547 + 3i) / 4i)][((x_1550 + 3i) % 4i)];
        let x_1556 : vec3<f32> = (vec3<f32>(x_1545.x, x_1545.y, x_1545.z) + vec3<f32>(x_1554.x, x_1554.y, x_1554.w));
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
        let x_1559 : vec4<f32> = u_xlat11;
        let x_1561 : vec4<f32> = u_xlat11;
        let x_1563 : vec2<f32> = (vec2<f32>(x_1559.x, x_1559.y) / vec2<f32>(x_1561.z, x_1561.z));
        let x_1564 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1563.x, x_1563.y, x_1564.z, x_1564.w);
        let x_1566 : vec4<f32> = u_xlat11;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1570 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1572 : vec4<f32> = u_xlat11;
        let x_1576 : vec2<f32> = clamp(vec2<f32>(x_1572.x, x_1572.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1577 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
        let x_1579 : u32 = u_xlatu47;
        let x_1582 : vec4<f32> = x_1482.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1579)];
        let x_1584 : vec4<f32> = u_xlat11;
        let x_1587 : u32 = u_xlatu47;
        let x_1590 : vec4<f32> = x_1482.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1587)];
        let x_1592 : vec2<f32> = ((vec2<f32>(x_1582.x, x_1582.y) * vec2<f32>(x_1584.x, x_1584.y)) + vec2<f32>(x_1590.z, x_1590.w));
        let x_1593 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
      } else {
        let x_1597 : i32 = u_xlati49;
        u_xlatb49 = (x_1597 == 1i);
        let x_1599 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1599);
        let x_1601 : i32 = u_xlati49;
        if ((x_1601 != 0i)) {
          let x_1606 : vec3<f32> = vs_TEXCOORD7;
          let x_1608 : i32 = u_xlati51;
          let x_1611 : i32 = u_xlati51;
          let x_1615 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1608 + 1i) / 4i)][((x_1611 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1606.y, x_1606.y) * vec2<f32>(x_1615.x, x_1615.y));
          let x_1618 : i32 = u_xlati51;
          let x_1620 : i32 = u_xlati51;
          let x_1623 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[(x_1618 / 4i)][(x_1620 % 4i)];
          let x_1625 : vec3<f32> = vs_TEXCOORD7;
          let x_1628 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1623.x, x_1623.y) * vec2<f32>(x_1625.x, x_1625.x)) + x_1628);
          let x_1630 : i32 = u_xlati51;
          let x_1633 : i32 = u_xlati51;
          let x_1637 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1630 + 2i) / 4i)][((x_1633 + 2i) % 4i)];
          let x_1639 : vec3<f32> = vs_TEXCOORD7;
          let x_1642 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(x_1639.z, x_1639.z)) + x_1642);
          let x_1644 : vec2<f32> = u_xlat39;
          let x_1645 : i32 = u_xlati51;
          let x_1648 : i32 = u_xlati51;
          let x_1652 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1645 + 3i) / 4i)][((x_1648 + 3i) % 4i)];
          u_xlat39 = (x_1644 + vec2<f32>(x_1652.x, x_1652.y));
          let x_1655 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1655 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1658 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1658);
          let x_1660 : u32 = u_xlatu47;
          let x_1663 : vec4<f32> = x_1482.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1660)];
          let x_1665 : vec2<f32> = u_xlat39;
          let x_1667 : u32 = u_xlatu47;
          let x_1670 : vec4<f32> = x_1482.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1667)];
          let x_1672 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.y) * x_1665) + vec2<f32>(x_1670.z, x_1670.w));
          let x_1673 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
        } else {
          let x_1676 : vec3<f32> = vs_TEXCOORD7;
          let x_1678 : i32 = u_xlati51;
          let x_1681 : i32 = u_xlati51;
          let x_1685 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1678 + 1i) / 4i)][((x_1681 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1676.y, x_1676.y, x_1676.y, x_1676.y) * x_1685);
          let x_1687 : i32 = u_xlati51;
          let x_1689 : i32 = u_xlati51;
          let x_1692 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[(x_1687 / 4i)][(x_1689 % 4i)];
          let x_1693 : vec3<f32> = vs_TEXCOORD7;
          let x_1696 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1692 * vec4<f32>(x_1693.x, x_1693.x, x_1693.x, x_1693.x)) + x_1696);
          let x_1698 : i32 = u_xlati51;
          let x_1701 : i32 = u_xlati51;
          let x_1705 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1698 + 2i) / 4i)][((x_1701 + 2i) % 4i)];
          let x_1706 : vec3<f32> = vs_TEXCOORD7;
          let x_1709 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1705 * vec4<f32>(x_1706.z, x_1706.z, x_1706.z, x_1706.z)) + x_1709);
          let x_1711 : vec4<f32> = u_xlat12;
          let x_1712 : i32 = u_xlati51;
          let x_1715 : i32 = u_xlati51;
          let x_1719 : vec4<f32> = x_1482.x_AdditionalLightsWorldToLights[((x_1712 + 3i) / 4i)][((x_1715 + 3i) % 4i)];
          u_xlat12 = (x_1711 + x_1719);
          let x_1721 : vec4<f32> = u_xlat12;
          let x_1723 : vec4<f32> = u_xlat12;
          let x_1725 : vec3<f32> = (vec3<f32>(x_1721.x, x_1721.y, x_1721.z) / vec3<f32>(x_1723.w, x_1723.w, x_1723.w));
          let x_1726 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1730 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1728.x, x_1728.y, x_1728.z), vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
          let x_1733 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1733);
          let x_1735 : f32 = u_xlat49;
          let x_1737 : vec4<f32> = u_xlat12;
          let x_1739 : vec3<f32> = (vec3<f32>(x_1735, x_1735, x_1735) * vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
          let x_1740 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
          let x_1742 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1742.x, x_1742.y, x_1742.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1747 : f32 = u_xlat49;
          u_xlat49 = max(x_1747, 0.000001f);
          let x_1750 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1750);
          let x_1752 : f32 = u_xlat49;
          let x_1754 : vec4<f32> = u_xlat12;
          let x_1756 : vec3<f32> = (vec3<f32>(x_1752, x_1752, x_1752) * vec3<f32>(x_1754.z, x_1754.x, x_1754.y));
          let x_1757 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1757.w);
          let x_1760 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1760);
          let x_1764 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1764, 0.0f, 1.0f);
          let x_1768 : vec4<f32> = u_xlat13;
          let x_1771 : vec4<bool> = (vec4<f32>(x_1768.y, x_1768.z, x_1768.y, x_1768.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1771.x, x_1771.y);
          let x_1774 : bool = u_xlatb39.x;
          if (x_1774) {
            let x_1779 : f32 = u_xlat13.x;
            x_1775 = x_1779;
          } else {
            let x_1782 : f32 = u_xlat13.x;
            x_1775 = -(x_1782);
          }
          let x_1784 : f32 = x_1775;
          u_xlat39.x = x_1784;
          let x_1787 : bool = u_xlatb39.y;
          if (x_1787) {
            let x_1792 : f32 = u_xlat13.x;
            x_1788 = x_1792;
          } else {
            let x_1795 : f32 = u_xlat13.x;
            x_1788 = -(x_1795);
          }
          let x_1797 : f32 = x_1788;
          u_xlat39.y = x_1797;
          let x_1799 : vec4<f32> = u_xlat12;
          let x_1801 : f32 = u_xlat49;
          let x_1804 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(x_1801, x_1801)) + x_1804);
          let x_1806 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1806 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1809 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1809, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1813 : u32 = u_xlatu47;
          let x_1816 : vec4<f32> = x_1482.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1813)];
          let x_1818 : vec2<f32> = u_xlat39;
          let x_1820 : u32 = u_xlatu47;
          let x_1823 : vec4<f32> = x_1482.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1820)];
          let x_1825 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.y) * x_1818) + vec2<f32>(x_1823.z, x_1823.w));
          let x_1826 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1825.x, x_1825.y, x_1826.z, x_1826.w);
        }
      }
      let x_1833 : vec4<f32> = u_xlat11;
      let x_1836 : f32 = x_126.x_GlobalMipBias.x;
      let x_1837 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1833.x, x_1833.y), x_1836);
      u_xlat11 = x_1837;
      let x_1839 : bool = u_xlatb7.y;
      if (x_1839) {
        let x_1844 : f32 = u_xlat11.w;
        x_1840 = x_1844;
      } else {
        let x_1847 : f32 = u_xlat11.x;
        x_1840 = x_1847;
      }
      let x_1848 : f32 = x_1840;
      u_xlat49 = x_1848;
      let x_1850 : bool = u_xlatb7.x;
      if (x_1850) {
        let x_1854 : vec4<f32> = u_xlat11;
        x_1851 = vec3<f32>(x_1854.x, x_1854.y, x_1854.z);
      } else {
        let x_1857 : f32 = u_xlat49;
        x_1851 = vec3<f32>(x_1857, x_1857, x_1857);
      }
      let x_1859 : vec3<f32> = x_1851;
      let x_1860 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1866 : vec4<f32> = u_xlat11;
    let x_1868 : u32 = u_xlatu47;
    let x_1871 : vec4<f32> = x_1373.x_AdditionalLightsColor[bitcast<i32>(x_1868)];
    let x_1873 : vec3<f32> = (vec3<f32>(x_1866.x, x_1866.y, x_1866.z) * vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
    let x_1874 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
    let x_1876 : f32 = u_xlat18;
    let x_1878 : vec4<f32> = u_xlat11;
    let x_1880 : vec3<f32> = (vec3<f32>(x_1876, x_1876, x_1876) * vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
    let x_1881 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
    let x_1883 : vec4<f32> = u_xlat1;
    let x_1885 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1883.x, x_1883.y, x_1883.z), vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1888, 0.0f, 1.0f);
    let x_1890 : f32 = u_xlat47;
    let x_1891 : f32 = u_xlat48;
    u_xlat47 = (x_1890 * x_1891);
    let x_1893 : f32 = u_xlat47;
    let x_1895 : vec4<f32> = u_xlat11;
    let x_1897 : vec3<f32> = (vec3<f32>(x_1893, x_1893, x_1893) * vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
    let x_1898 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
    let x_1900 : vec4<f32> = u_xlat9;
    let x_1902 : f32 = u_xlat35;
    let x_1905 : vec3<f32> = u_xlat2;
    let x_1906 : vec3<f32> = ((vec3<f32>(x_1900.x, x_1900.y, x_1900.z) * vec3<f32>(x_1902, x_1902, x_1902)) + x_1905);
    let x_1907 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
    let x_1909 : vec4<f32> = u_xlat9;
    let x_1911 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
    let x_1914 : f32 = u_xlat47;
    u_xlat47 = max(x_1914, 1.17549435e-37f);
    let x_1916 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1916);
    let x_1918 : f32 = u_xlat47;
    let x_1920 : vec4<f32> = u_xlat9;
    let x_1922 : vec3<f32> = (vec3<f32>(x_1918, x_1918, x_1918) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
    let x_1925 : vec4<f32> = u_xlat1;
    let x_1927 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1925.x, x_1925.y, x_1925.z), vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
    let x_1930 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1930, 0.0f, 1.0f);
    let x_1932 : vec4<f32> = u_xlat10;
    let x_1934 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1932.x, x_1932.y, x_1932.z), vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
    let x_1937 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1937, 0.0f, 1.0f);
    let x_1939 : f32 = u_xlat47;
    let x_1940 : f32 = u_xlat47;
    u_xlat47 = (x_1939 * x_1940);
    let x_1942 : f32 = u_xlat47;
    let x_1944 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1942 * x_1944) + 1.000010014f);
    let x_1947 : f32 = u_xlat48;
    let x_1948 : f32 = u_xlat48;
    u_xlat48 = (x_1947 * x_1948);
    let x_1950 : f32 = u_xlat47;
    let x_1951 : f32 = u_xlat47;
    u_xlat47 = (x_1950 * x_1951);
    let x_1953 : f32 = u_xlat48;
    u_xlat48 = max(x_1953, 0.100000001f);
    let x_1955 : f32 = u_xlat47;
    let x_1956 : f32 = u_xlat48;
    u_xlat47 = (x_1955 * x_1956);
    let x_1958 : f32 = u_xlat45;
    let x_1959 : f32 = u_xlat47;
    u_xlat47 = (x_1958 * x_1959);
    let x_1961 : f32 = u_xlat43;
    let x_1962 : f32 = u_xlat47;
    u_xlat47 = (x_1961 / x_1962);
    let x_1964 : vec4<f32> = u_xlat5;
    let x_1966 : f32 = u_xlat47;
    let x_1969 : vec4<f32> = u_xlat6;
    let x_1971 : vec3<f32> = ((vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1966, x_1966, x_1966)) + vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
    let x_1972 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
    let x_1974 : vec4<f32> = u_xlat9;
    let x_1976 : vec4<f32> = u_xlat11;
    let x_1979 : vec4<f32> = u_xlat8;
    let x_1981 : vec3<f32> = ((vec3<f32>(x_1974.x, x_1974.y, x_1974.z) * vec3<f32>(x_1976.x, x_1976.y, x_1976.z)) + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
    let x_1982 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1981.x, x_1981.y, x_1981.z, x_1982.w);

    continuing {
      let x_1984 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1984 + bitcast<u32>(1i));
    }
  }
  let x_1986 : vec4<f32> = u_xlat3;
  let x_1988 : f32 = u_xlat14;
  let x_1991 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(x_1988, x_1988, x_1988)) + vec3<f32>(x_1991.x, x_1991.z, x_1991.w));
  let x_1994 : vec4<f32> = u_xlat8;
  let x_1996 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1994.x, x_1994.y, x_1994.z) + x_1996);
  let x_2000 : f32 = u_xlat42;
  let x_2002 : vec3<f32> = u_xlat0;
  let x_2003 : vec3<f32> = (vec3<f32>(x_2000, x_2000, x_2000) * x_2002);
  let x_2004 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
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

