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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_767 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_837 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1032 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1316 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1425 : AdditionalLightsCookies;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_792 : f32;
  var u_xlat47 : f32;
  var u_xlatb8 : vec2<bool>;
  var x_920 : f32;
  var x_931 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1719 : f32;
  var x_1732 : f32;
  var x_1784 : f32;
  var x_1795 : vec3<f32>;
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
  let x_579 : f32 = vs_TEXCOORD7.y;
  let x_581 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat43 = (x_579 * x_581);
  let x_584 : f32 = x_126.unity_MatrixV[0i].z;
  let x_586 : f32 = vs_TEXCOORD7.x;
  let x_588 : f32 = u_xlat43;
  u_xlat43 = ((x_584 * x_586) + x_588);
  let x_591 : f32 = x_126.unity_MatrixV[2i].z;
  let x_593 : f32 = vs_TEXCOORD7.z;
  let x_595 : f32 = u_xlat43;
  u_xlat43 = ((x_591 * x_593) + x_595);
  let x_597 : f32 = u_xlat43;
  let x_600 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat43 = (x_597 + x_600);
  let x_602 : f32 = u_xlat43;
  let x_605 : f32 = x_126.x_ProjectionParams.y;
  u_xlat43 = (-(x_602) + -(x_605));
  let x_608 : f32 = u_xlat43;
  u_xlat43 = max(x_608, 0.0f);
  let x_610 : f32 = u_xlat43;
  let x_612 : f32 = x_126.unity_FogParams.x;
  u_xlat43 = (x_610 * x_612);
  let x_619 : vec4<f32> = vs_TEXCOORD0;
  let x_622 : f32 = x_126.x_GlobalMipBias.x;
  let x_623 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_619.z, x_619.w), x_622);
  let x_624 : vec3<f32> = vec3<f32>(x_623.x, x_623.y, x_623.z);
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_629 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
  let x_634 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_630.x, x_630.y));
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = hlslcc_FragCoord;
  let x_641 : vec2<f32> = (vec2<f32>(x_637.x, x_637.y) * vec2<f32>(x_639.x, x_639.y));
  let x_642 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
  let x_646 : f32 = u_xlat4.y;
  let x_648 : f32 = x_126.x_ScaleBiasRt.x;
  let x_651 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat44 = ((x_646 * x_648) + x_651);
  let x_653 : f32 = u_xlat44;
  u_xlat4.z = (-(x_653) + 1.0f);
  let x_658 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_658) * 0.959999979f) + 0.959999979f);
  let x_664 : f32 = u_xlat28;
  let x_665 : f32 = u_xlat44;
  u_xlat45 = (x_664 + -(x_665));
  let x_668 : f32 = u_xlat44;
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec3<f32> = (vec3<f32>(x_668, x_668, x_668) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat5;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_680 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec3<f32> = u_xlat0;
  let x_684 : vec4<f32> = u_xlat5;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_690 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : f32 = u_xlat28;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat28 = (x_697 * x_699);
  let x_701 : f32 = u_xlat28;
  u_xlat28 = max(x_701, 0.0078125f);
  let x_704 : f32 = u_xlat28;
  let x_705 : f32 = u_xlat28;
  u_xlat44 = (x_704 * x_705);
  let x_707 : f32 = u_xlat45;
  u_xlat45 = (x_707 + 1.0f);
  let x_709 : f32 = u_xlat45;
  u_xlat45 = clamp(x_709, 0.0f, 1.0f);
  let x_712 : f32 = u_xlat28;
  u_xlat18 = ((x_712 * 4.0f) + 2.0f);
  let x_721 : vec4<f32> = u_xlat4;
  let x_724 : f32 = x_126.x_GlobalMipBias.x;
  let x_725 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_721.x, x_721.z), x_724);
  u_xlat4.x = x_725.x;
  let x_730 : f32 = u_xlat4.x;
  u_xlat32 = (x_730 + -1.0f);
  let x_733 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_734 : f32 = u_xlat32;
  u_xlat32 = ((x_733 * x_734) + 1.0f);
  let x_737 : f32 = u_xlat14;
  let x_739 : f32 = u_xlat4.x;
  u_xlat14 = min(x_737, x_739);
  let x_743 : vec4<f32> = vs_TEXCOORD8;
  let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
  let x_746 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_744.x, x_744.y, x_746);
  let x_758 : vec3<f32> = txVec0;
  let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
  u_xlat4.x = x_760;
  let x_769 : f32 = x_767.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_769) + 1.0f);
  let x_773 : f32 = u_xlat4.x;
  let x_775 : f32 = x_767.x_MainLightShadowParams.x;
  let x_777 : f32 = u_xlat46;
  u_xlat4.x = ((x_773 * x_775) + x_777);
  let x_782 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_782);
  let x_786 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_786 >= 1.0f);
  let x_788 : bool = u_xlatb46;
  let x_789 : bool = u_xlatb47;
  u_xlatb46 = (x_788 | x_789);
  let x_791 : bool = u_xlatb46;
  if (x_791) {
    x_792 = 1.0f;
  } else {
    let x_797 : f32 = u_xlat4.x;
    x_792 = x_797;
  }
  let x_798 : f32 = x_792;
  u_xlat4.x = x_798;
  let x_800 : vec3<f32> = vs_TEXCOORD7;
  let x_802 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_804 : vec3<f32> = (x_800 + -(x_802));
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat7;
  let x_809 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : f32 = u_xlat46;
  let x_814 : f32 = x_767.x_MainLightShadowParams.z;
  let x_817 : f32 = x_767.x_MainLightShadowParams.w;
  u_xlat46 = ((x_812 * x_814) + x_817);
  let x_819 : f32 = u_xlat46;
  u_xlat46 = clamp(x_819, 0.0f, 1.0f);
  let x_823 : f32 = u_xlat4.x;
  u_xlat47 = (-(x_823) + 1.0f);
  let x_826 : f32 = u_xlat46;
  let x_827 : f32 = u_xlat47;
  let x_830 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_826 * x_827) + x_830);
  let x_839 : f32 = x_837.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_839 == -1.0f));
  let x_841 : bool = u_xlatb46;
  if (x_841) {
    let x_844 : vec3<f32> = vs_TEXCOORD7;
    let x_847 : vec4<f32> = x_837.x_MainLightWorldToLight[1i];
    let x_849 : vec2<f32> = (vec2<f32>(x_844.y, x_844.y) * vec2<f32>(x_847.x, x_847.y));
    let x_850 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
    let x_853 : vec4<f32> = x_837.x_MainLightWorldToLight[0i];
    let x_855 : vec3<f32> = vs_TEXCOORD7;
    let x_858 : vec4<f32> = u_xlat7;
    let x_860 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_855.x, x_855.x)) + vec2<f32>(x_858.x, x_858.y));
    let x_861 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
    let x_864 : vec4<f32> = x_837.x_MainLightWorldToLight[2i];
    let x_866 : vec3<f32> = vs_TEXCOORD7;
    let x_869 : vec4<f32> = u_xlat7;
    let x_871 : vec2<f32> = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_866.z, x_866.z)) + vec2<f32>(x_869.x, x_869.y));
    let x_872 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
    let x_874 : vec4<f32> = u_xlat7;
    let x_877 : vec4<f32> = x_837.x_MainLightWorldToLight[3i];
    let x_879 : vec2<f32> = (vec2<f32>(x_874.x, x_874.y) + vec2<f32>(x_877.x, x_877.y));
    let x_880 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
    let x_882 : vec4<f32> = u_xlat7;
    let x_885 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_886 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
    let x_893 : vec4<f32> = u_xlat7;
    let x_896 : f32 = x_126.x_GlobalMipBias.x;
    let x_897 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_893.x, x_893.y), x_896);
    u_xlat7 = x_897;
    let x_902 : f32 = x_837.x_MainLightCookieTextureFormat;
    let x_904 : f32 = x_837.x_MainLightCookieTextureFormat;
    let x_906 : f32 = x_837.x_MainLightCookieTextureFormat;
    let x_908 : f32 = x_837.x_MainLightCookieTextureFormat;
    let x_909 : vec4<f32> = vec4<f32>(x_902, x_904, x_906, x_908);
    let x_916 : vec4<bool> = (vec4<f32>(x_909.x, x_909.y, x_909.z, x_909.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_916.x, x_916.y);
    let x_919 : bool = u_xlatb8.y;
    if (x_919) {
      let x_924 : f32 = u_xlat7.w;
      x_920 = x_924;
    } else {
      let x_927 : f32 = u_xlat7.x;
      x_920 = x_927;
    }
    let x_928 : f32 = x_920;
    u_xlat46 = x_928;
    let x_930 : bool = u_xlatb8.x;
    if (x_930) {
      let x_934 : vec4<f32> = u_xlat7;
      x_931 = vec3<f32>(x_934.x, x_934.y, x_934.z);
    } else {
      let x_937 : f32 = u_xlat46;
      x_931 = vec3<f32>(x_937, x_937, x_937);
    }
    let x_939 : vec3<f32> = x_931;
    let x_940 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_946 : vec4<f32> = u_xlat7;
  let x_949 : vec4<f32> = x_126.x_MainLightColor;
  let x_951 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.z) * vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : f32 = u_xlat32;
  let x_956 : vec4<f32> = u_xlat7;
  let x_958 : vec3<f32> = (vec3<f32>(x_954, x_954, x_954) * vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec4<f32> = u_xlat1;
  let x_964 : vec3<f32> = u_xlat2;
  u_xlat46 = dot(-(vec3<f32>(x_961.x, x_961.y, x_961.z)), x_964);
  let x_966 : f32 = u_xlat46;
  let x_967 : f32 = u_xlat46;
  u_xlat46 = (x_966 + x_967);
  let x_969 : vec3<f32> = u_xlat2;
  let x_970 : f32 = u_xlat46;
  let x_974 : vec4<f32> = u_xlat1;
  let x_977 : vec3<f32> = ((x_969 * -(vec3<f32>(x_970, x_970, x_970))) + -(vec3<f32>(x_974.x, x_974.y, x_974.z)));
  let x_978 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec3<f32> = u_xlat2;
  let x_981 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(x_980, vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : f32 = u_xlat46;
  u_xlat46 = clamp(x_984, 0.0f, 1.0f);
  let x_986 : f32 = u_xlat46;
  u_xlat46 = (-(x_986) + 1.0f);
  let x_989 : f32 = u_xlat46;
  let x_990 : f32 = u_xlat46;
  u_xlat46 = (x_989 * x_990);
  let x_992 : f32 = u_xlat46;
  let x_993 : f32 = u_xlat46;
  u_xlat46 = (x_992 * x_993);
  let x_996 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_996) * 0.699999988f) + 1.700000048f);
  let x_1003 : f32 = u_xlat0.x;
  let x_1004 : f32 = u_xlat47;
  u_xlat0.x = (x_1003 * x_1004);
  let x_1008 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1008 * 6.0f);
  let x_1020 : vec4<f32> = u_xlat8;
  let x_1023 : f32 = u_xlat0.x;
  let x_1024 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1020.x, x_1020.y, x_1020.z), x_1023);
  u_xlat8 = x_1024;
  let x_1026 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1026 + -1.0f);
  let x_1034 : f32 = x_1032.unity_SpecCube0_HDR.w;
  let x_1036 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1034 * x_1036) + 1.0f);
  let x_1041 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1041, 0.0f);
  let x_1045 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1045);
  let x_1049 : f32 = u_xlat0.x;
  let x_1051 : f32 = x_1032.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1049 * x_1051);
  let x_1055 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1055);
  let x_1059 : f32 = u_xlat0.x;
  let x_1061 : f32 = x_1032.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1059 * x_1061);
  let x_1064 : vec4<f32> = u_xlat8;
  let x_1066 : vec3<f32> = u_xlat0;
  let x_1068 : vec3<f32> = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066.x, x_1066.x, x_1066.x));
  let x_1069 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : f32 = u_xlat28;
  let x_1073 : f32 = u_xlat28;
  let x_1077 : vec2<f32> = ((vec2<f32>(x_1071, x_1071) * vec2<f32>(x_1073, x_1073)) + vec2<f32>(-1.0f, 1.0f));
  let x_1078 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1077.x, x_1078.y, x_1077.y);
  let x_1081 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1081);
  let x_1083 : vec4<f32> = u_xlat5;
  let x_1086 : f32 = u_xlat45;
  let x_1088 : vec3<f32> = (-(vec3<f32>(x_1083.x, x_1083.y, x_1083.z)) + vec3<f32>(x_1086, x_1086, x_1086));
  let x_1089 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : f32 = u_xlat46;
  let x_1093 : vec4<f32> = u_xlat9;
  let x_1096 : vec4<f32> = u_xlat5;
  let x_1098 : vec3<f32> = ((vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z)) + vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1099 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : f32 = u_xlat28;
  let x_1103 : vec4<f32> = u_xlat9;
  let x_1105 : vec3<f32> = (vec3<f32>(x_1101, x_1101, x_1101) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
  let x_1106 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1108 : vec4<f32> = u_xlat8;
  let x_1110 : vec4<f32> = u_xlat9;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1108.x, x_1108.y, x_1108.z) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat3;
  let x_1117 : vec4<f32> = u_xlat6;
  let x_1120 : vec4<f32> = u_xlat8;
  let x_1122 : vec3<f32> = ((vec3<f32>(x_1115.x, x_1115.y, x_1115.z) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z)) + vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1126 : f32 = u_xlat4.x;
  let x_1128 : f32 = x_1032.unity_LightData.z;
  u_xlat28 = (x_1126 * x_1128);
  let x_1130 : vec3<f32> = u_xlat2;
  let x_1132 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat45 = dot(x_1130, vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1135, 0.0f, 1.0f);
  let x_1137 : f32 = u_xlat28;
  let x_1138 : f32 = u_xlat45;
  u_xlat28 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat28;
  let x_1142 : vec4<f32> = u_xlat7;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec4<f32> = u_xlat1;
  let x_1150 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1147.x, x_1147.y, x_1147.z) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec4<f32> = u_xlat8;
  let x_1157 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1155.x, x_1155.y, x_1155.z), vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : f32 = u_xlat28;
  u_xlat28 = max(x_1160, 1.17549435e-37f);
  let x_1163 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1163);
  let x_1165 : f32 = u_xlat28;
  let x_1167 : vec4<f32> = u_xlat8;
  let x_1169 : vec3<f32> = (vec3<f32>(x_1165, x_1165, x_1165) * vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1170 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1172 : vec3<f32> = u_xlat2;
  let x_1173 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_1172, vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1176, 0.0f, 1.0f);
  let x_1179 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1181 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_1179.x, x_1179.y, x_1179.z), vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1184, 0.0f, 1.0f);
  let x_1186 : f32 = u_xlat28;
  let x_1187 : f32 = u_xlat28;
  u_xlat28 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat28;
  let x_1191 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1189 * x_1191) + 1.000010014f);
  let x_1195 : f32 = u_xlat45;
  let x_1196 : f32 = u_xlat45;
  u_xlat45 = (x_1195 * x_1196);
  let x_1198 : f32 = u_xlat28;
  let x_1199 : f32 = u_xlat28;
  u_xlat28 = (x_1198 * x_1199);
  let x_1201 : f32 = u_xlat45;
  u_xlat45 = max(x_1201, 0.100000001f);
  let x_1204 : f32 = u_xlat28;
  let x_1205 : f32 = u_xlat45;
  u_xlat28 = (x_1204 * x_1205);
  let x_1207 : f32 = u_xlat18;
  let x_1208 : f32 = u_xlat28;
  u_xlat28 = (x_1207 * x_1208);
  let x_1210 : f32 = u_xlat44;
  let x_1211 : f32 = u_xlat28;
  u_xlat28 = (x_1210 / x_1211);
  let x_1213 : vec4<f32> = u_xlat5;
  let x_1215 : f32 = u_xlat28;
  let x_1218 : vec4<f32> = u_xlat6;
  let x_1220 : vec3<f32> = ((vec3<f32>(x_1213.x, x_1213.y, x_1213.z) * vec3<f32>(x_1215, x_1215, x_1215)) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1223 : vec4<f32> = u_xlat7;
  let x_1225 : vec4<f32> = u_xlat8;
  let x_1227 : vec3<f32> = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) * vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1231 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1233 : f32 = x_1032.unity_LightData.y;
  u_xlat28 = min(x_1231, x_1233);
  let x_1237 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1237));
  let x_1243 : f32 = x_837.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1245 : f32 = x_837.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1247 : f32 = x_837.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1249 : f32 = x_837.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1250 : vec4<f32> = vec4<f32>(x_1243, x_1245, x_1247, x_1249);
  let x_1257 : vec4<bool> = (vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1258 : vec2<bool> = vec2<bool>(x_1257.x, x_1257.w);
  let x_1259 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_1258.x, x_1259.y, x_1259.z, x_1258.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1270 : u32 = u_xlatu_loop_1;
    let x_1271 : u32 = u_xlatu28;
    if ((x_1270 < x_1271)) {
    } else {
      break;
    }
    let x_1274 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1274 >> 2u);
    let x_1278 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1278 & 3u));
    let x_1281 : u32 = u_xlatu47;
    let x_1284 : vec4<f32> = x_1032.unity_LightIndices[bitcast<i32>(x_1281)];
    let x_1294 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1299 : vec4<u32> = indexable[x_1294];
    u_xlat47 = dot(x_1284, bitcast<vec4<f32>>(x_1299));
    let x_1302 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1302));
    let x_1305 : vec3<f32> = vs_TEXCOORD7;
    let x_1317 : u32 = u_xlatu47;
    let x_1320 : vec4<f32> = x_1316.x_AdditionalLightsPosition[bitcast<i32>(x_1317)];
    let x_1323 : u32 = u_xlatu47;
    let x_1326 : vec4<f32> = x_1316.x_AdditionalLightsPosition[bitcast<i32>(x_1323)];
    let x_1328 : vec3<f32> = ((-(x_1305) * vec3<f32>(x_1320.w, x_1320.w, x_1320.w)) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
    let x_1332 : vec4<f32> = u_xlat9;
    let x_1334 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1332.x, x_1332.y, x_1332.z), vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
    let x_1337 : f32 = u_xlat48;
    u_xlat48 = max(x_1337, 6.10351562e-05f);
    let x_1340 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1340);
    let x_1342 : f32 = u_xlat49;
    let x_1344 : vec4<f32> = u_xlat9;
    let x_1346 : vec3<f32> = (vec3<f32>(x_1342, x_1342, x_1342) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
    let x_1347 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
    let x_1350 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1350);
    let x_1352 : f32 = u_xlat48;
    let x_1353 : u32 = u_xlatu47;
    let x_1356 : f32 = x_1316.x_AdditionalLightsAttenuation[bitcast<i32>(x_1353)].x;
    u_xlat48 = (x_1352 * x_1356);
    let x_1358 : f32 = u_xlat48;
    let x_1360 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1358) * x_1360) + 1.0f);
    let x_1363 : f32 = u_xlat48;
    u_xlat48 = max(x_1363, 0.0f);
    let x_1365 : f32 = u_xlat48;
    let x_1366 : f32 = u_xlat48;
    u_xlat48 = (x_1365 * x_1366);
    let x_1368 : f32 = u_xlat48;
    let x_1369 : f32 = u_xlat50;
    u_xlat48 = (x_1368 * x_1369);
    let x_1371 : u32 = u_xlatu47;
    let x_1374 : vec4<f32> = x_1316.x_AdditionalLightsSpotDir[bitcast<i32>(x_1371)];
    let x_1376 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1374.x, x_1374.y, x_1374.z), vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
    let x_1379 : f32 = u_xlat50;
    let x_1380 : u32 = u_xlatu47;
    let x_1383 : f32 = x_1316.x_AdditionalLightsAttenuation[bitcast<i32>(x_1380)].z;
    let x_1385 : u32 = u_xlatu47;
    let x_1388 : f32 = x_1316.x_AdditionalLightsAttenuation[bitcast<i32>(x_1385)].w;
    u_xlat50 = ((x_1379 * x_1383) + x_1388);
    let x_1390 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1390, 0.0f, 1.0f);
    let x_1392 : f32 = u_xlat50;
    let x_1393 : f32 = u_xlat50;
    u_xlat50 = (x_1392 * x_1393);
    let x_1395 : f32 = u_xlat48;
    let x_1396 : f32 = u_xlat50;
    u_xlat48 = (x_1395 * x_1396);
    let x_1399 : u32 = u_xlatu47;
    u_xlatu50 = (x_1399 >> 5u);
    let x_1402 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1402) & 31i)));
    let x_1407 : i32 = u_xlati51;
    let x_1409 : u32 = u_xlatu50;
    let x_1412 : f32 = x_837.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1409)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1407) & bitcast<u32>(x_1412)));
    let x_1416 : i32 = u_xlati50;
    if ((x_1416 != 0i)) {
      let x_1426 : u32 = u_xlatu47;
      let x_1429 : f32 = x_1425.x_AdditionalLightsLightTypes[bitcast<i32>(x_1426)].el;
      u_xlati50 = i32(x_1429);
      let x_1431 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1431 != 0i));
      let x_1435 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1435) << bitcast<u32>(2i));
      let x_1438 : i32 = u_xlati51;
      if ((x_1438 != 0i)) {
        let x_1442 : vec3<f32> = vs_TEXCOORD7;
        let x_1444 : i32 = u_xlati52;
        let x_1447 : i32 = u_xlati52;
        let x_1451 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1444 + 1i) / 4i)][((x_1447 + 1i) % 4i)];
        let x_1453 : vec3<f32> = (vec3<f32>(x_1442.y, x_1442.y, x_1442.y) * vec3<f32>(x_1451.x, x_1451.y, x_1451.w));
        let x_1454 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
        let x_1456 : i32 = u_xlati52;
        let x_1458 : i32 = u_xlati52;
        let x_1461 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[(x_1456 / 4i)][(x_1458 % 4i)];
        let x_1463 : vec3<f32> = vs_TEXCOORD7;
        let x_1466 : vec4<f32> = u_xlat11;
        let x_1468 : vec3<f32> = ((vec3<f32>(x_1461.x, x_1461.y, x_1461.w) * vec3<f32>(x_1463.x, x_1463.x, x_1463.x)) + vec3<f32>(x_1466.x, x_1466.y, x_1466.z));
        let x_1469 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
        let x_1471 : i32 = u_xlati52;
        let x_1474 : i32 = u_xlati52;
        let x_1478 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1471 + 2i) / 4i)][((x_1474 + 2i) % 4i)];
        let x_1480 : vec3<f32> = vs_TEXCOORD7;
        let x_1483 : vec4<f32> = u_xlat11;
        let x_1485 : vec3<f32> = ((vec3<f32>(x_1478.x, x_1478.y, x_1478.w) * vec3<f32>(x_1480.z, x_1480.z, x_1480.z)) + vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
        let x_1486 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
        let x_1488 : vec4<f32> = u_xlat11;
        let x_1490 : i32 = u_xlati52;
        let x_1493 : i32 = u_xlati52;
        let x_1497 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1490 + 3i) / 4i)][((x_1493 + 3i) % 4i)];
        let x_1499 : vec3<f32> = (vec3<f32>(x_1488.x, x_1488.y, x_1488.z) + vec3<f32>(x_1497.x, x_1497.y, x_1497.w));
        let x_1500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
        let x_1502 : vec4<f32> = u_xlat11;
        let x_1504 : vec4<f32> = u_xlat11;
        let x_1506 : vec2<f32> = (vec2<f32>(x_1502.x, x_1502.y) / vec2<f32>(x_1504.z, x_1504.z));
        let x_1507 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1506.x, x_1506.y, x_1507.z, x_1507.w);
        let x_1509 : vec4<f32> = u_xlat11;
        let x_1512 : vec2<f32> = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1513 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1512.x, x_1512.y, x_1513.z, x_1513.w);
        let x_1515 : vec4<f32> = u_xlat11;
        let x_1519 : vec2<f32> = clamp(vec2<f32>(x_1515.x, x_1515.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1520 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
        let x_1522 : u32 = u_xlatu47;
        let x_1525 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1522)];
        let x_1527 : vec4<f32> = u_xlat11;
        let x_1530 : u32 = u_xlatu47;
        let x_1533 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1530)];
        let x_1535 : vec2<f32> = ((vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(x_1527.x, x_1527.y)) + vec2<f32>(x_1533.z, x_1533.w));
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1535.x, x_1535.y, x_1536.z, x_1536.w);
      } else {
        let x_1540 : i32 = u_xlati50;
        u_xlatb50 = (x_1540 == 1i);
        let x_1542 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1542);
        let x_1544 : i32 = u_xlati50;
        if ((x_1544 != 0i)) {
          let x_1550 : vec3<f32> = vs_TEXCOORD7;
          let x_1552 : i32 = u_xlati52;
          let x_1555 : i32 = u_xlati52;
          let x_1559 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1552 + 1i) / 4i)][((x_1555 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1550.y, x_1550.y) * vec2<f32>(x_1559.x, x_1559.y));
          let x_1562 : i32 = u_xlati52;
          let x_1564 : i32 = u_xlati52;
          let x_1567 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[(x_1562 / 4i)][(x_1564 % 4i)];
          let x_1569 : vec3<f32> = vs_TEXCOORD7;
          let x_1572 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1567.x, x_1567.y) * vec2<f32>(x_1569.x, x_1569.x)) + x_1572);
          let x_1574 : i32 = u_xlati52;
          let x_1577 : i32 = u_xlati52;
          let x_1581 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1574 + 2i) / 4i)][((x_1577 + 2i) % 4i)];
          let x_1583 : vec3<f32> = vs_TEXCOORD7;
          let x_1586 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(x_1583.z, x_1583.z)) + x_1586);
          let x_1588 : vec2<f32> = u_xlat39;
          let x_1589 : i32 = u_xlati52;
          let x_1592 : i32 = u_xlati52;
          let x_1596 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1589 + 3i) / 4i)][((x_1592 + 3i) % 4i)];
          u_xlat39 = (x_1588 + vec2<f32>(x_1596.x, x_1596.y));
          let x_1599 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1599 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1602 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1602);
          let x_1604 : u32 = u_xlatu47;
          let x_1607 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1604)];
          let x_1609 : vec2<f32> = u_xlat39;
          let x_1611 : u32 = u_xlatu47;
          let x_1614 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1611)];
          let x_1616 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.y) * x_1609) + vec2<f32>(x_1614.z, x_1614.w));
          let x_1617 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
        } else {
          let x_1620 : vec3<f32> = vs_TEXCOORD7;
          let x_1622 : i32 = u_xlati52;
          let x_1625 : i32 = u_xlati52;
          let x_1629 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1622 + 1i) / 4i)][((x_1625 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1620.y, x_1620.y, x_1620.y, x_1620.y) * x_1629);
          let x_1631 : i32 = u_xlati52;
          let x_1633 : i32 = u_xlati52;
          let x_1636 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[(x_1631 / 4i)][(x_1633 % 4i)];
          let x_1637 : vec3<f32> = vs_TEXCOORD7;
          let x_1640 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1636 * vec4<f32>(x_1637.x, x_1637.x, x_1637.x, x_1637.x)) + x_1640);
          let x_1642 : i32 = u_xlati52;
          let x_1645 : i32 = u_xlati52;
          let x_1649 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1642 + 2i) / 4i)][((x_1645 + 2i) % 4i)];
          let x_1650 : vec3<f32> = vs_TEXCOORD7;
          let x_1653 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1649 * vec4<f32>(x_1650.z, x_1650.z, x_1650.z, x_1650.z)) + x_1653);
          let x_1655 : vec4<f32> = u_xlat12;
          let x_1656 : i32 = u_xlati52;
          let x_1659 : i32 = u_xlati52;
          let x_1663 : vec4<f32> = x_1425.x_AdditionalLightsWorldToLights[((x_1656 + 3i) / 4i)][((x_1659 + 3i) % 4i)];
          u_xlat12 = (x_1655 + x_1663);
          let x_1665 : vec4<f32> = u_xlat12;
          let x_1667 : vec4<f32> = u_xlat12;
          let x_1669 : vec3<f32> = (vec3<f32>(x_1665.x, x_1665.y, x_1665.z) / vec3<f32>(x_1667.w, x_1667.w, x_1667.w));
          let x_1670 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
          let x_1672 : vec4<f32> = u_xlat12;
          let x_1674 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1672.x, x_1672.y, x_1672.z), vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
          let x_1677 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1677);
          let x_1679 : f32 = u_xlat50;
          let x_1681 : vec4<f32> = u_xlat12;
          let x_1683 : vec3<f32> = (vec3<f32>(x_1679, x_1679, x_1679) * vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
          let x_1684 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
          let x_1686 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1686.x, x_1686.y, x_1686.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1691 : f32 = u_xlat50;
          u_xlat50 = max(x_1691, 0.000001f);
          let x_1694 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1694);
          let x_1696 : f32 = u_xlat50;
          let x_1698 : vec4<f32> = u_xlat12;
          let x_1700 : vec3<f32> = (vec3<f32>(x_1696, x_1696, x_1696) * vec3<f32>(x_1698.z, x_1698.x, x_1698.y));
          let x_1701 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1701.w);
          let x_1704 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1704);
          let x_1708 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1708, 0.0f, 1.0f);
          let x_1712 : vec4<f32> = u_xlat13;
          let x_1715 : vec4<bool> = (vec4<f32>(x_1712.y, x_1712.z, x_1712.y, x_1712.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1715.x, x_1715.y);
          let x_1718 : bool = u_xlatb39.x;
          if (x_1718) {
            let x_1723 : f32 = u_xlat13.x;
            x_1719 = x_1723;
          } else {
            let x_1726 : f32 = u_xlat13.x;
            x_1719 = -(x_1726);
          }
          let x_1728 : f32 = x_1719;
          u_xlat39.x = x_1728;
          let x_1731 : bool = u_xlatb39.y;
          if (x_1731) {
            let x_1736 : f32 = u_xlat13.x;
            x_1732 = x_1736;
          } else {
            let x_1739 : f32 = u_xlat13.x;
            x_1732 = -(x_1739);
          }
          let x_1741 : f32 = x_1732;
          u_xlat39.y = x_1741;
          let x_1743 : vec4<f32> = u_xlat12;
          let x_1745 : f32 = u_xlat50;
          let x_1748 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1743.x, x_1743.y) * vec2<f32>(x_1745, x_1745)) + x_1748);
          let x_1750 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1750 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1753 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1753, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1757 : u32 = u_xlatu47;
          let x_1760 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1757)];
          let x_1762 : vec2<f32> = u_xlat39;
          let x_1764 : u32 = u_xlatu47;
          let x_1767 : vec4<f32> = x_1425.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1764)];
          let x_1769 : vec2<f32> = ((vec2<f32>(x_1760.x, x_1760.y) * x_1762) + vec2<f32>(x_1767.z, x_1767.w));
          let x_1770 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1769.x, x_1769.y, x_1770.z, x_1770.w);
        }
      }
      let x_1777 : vec4<f32> = u_xlat11;
      let x_1780 : f32 = x_126.x_GlobalMipBias.x;
      let x_1781 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1777.x, x_1777.y), x_1780);
      u_xlat11 = x_1781;
      let x_1783 : bool = u_xlatb4.w;
      if (x_1783) {
        let x_1788 : f32 = u_xlat11.w;
        x_1784 = x_1788;
      } else {
        let x_1791 : f32 = u_xlat11.x;
        x_1784 = x_1791;
      }
      let x_1792 : f32 = x_1784;
      u_xlat50 = x_1792;
      let x_1794 : bool = u_xlatb4.x;
      if (x_1794) {
        let x_1798 : vec4<f32> = u_xlat11;
        x_1795 = vec3<f32>(x_1798.x, x_1798.y, x_1798.z);
      } else {
        let x_1801 : f32 = u_xlat50;
        x_1795 = vec3<f32>(x_1801, x_1801, x_1801);
      }
      let x_1803 : vec3<f32> = x_1795;
      let x_1804 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1810 : vec4<f32> = u_xlat11;
    let x_1812 : u32 = u_xlatu47;
    let x_1815 : vec4<f32> = x_1316.x_AdditionalLightsColor[bitcast<i32>(x_1812)];
    let x_1817 : vec3<f32> = (vec3<f32>(x_1810.x, x_1810.y, x_1810.z) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
    let x_1818 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
    let x_1820 : f32 = u_xlat32;
    let x_1822 : vec4<f32> = u_xlat11;
    let x_1824 : vec3<f32> = (vec3<f32>(x_1820, x_1820, x_1820) * vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
    let x_1825 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
    let x_1827 : vec3<f32> = u_xlat2;
    let x_1828 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(x_1827, vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1831 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1831, 0.0f, 1.0f);
    let x_1833 : f32 = u_xlat47;
    let x_1834 : f32 = u_xlat48;
    u_xlat47 = (x_1833 * x_1834);
    let x_1836 : f32 = u_xlat47;
    let x_1838 : vec4<f32> = u_xlat11;
    let x_1840 : vec3<f32> = (vec3<f32>(x_1836, x_1836, x_1836) * vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
    let x_1841 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
    let x_1843 : vec4<f32> = u_xlat9;
    let x_1845 : f32 = u_xlat49;
    let x_1848 : vec4<f32> = u_xlat1;
    let x_1850 : vec3<f32> = ((vec3<f32>(x_1843.x, x_1843.y, x_1843.z) * vec3<f32>(x_1845, x_1845, x_1845)) + vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
    let x_1851 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
    let x_1853 : vec4<f32> = u_xlat9;
    let x_1855 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1853.x, x_1853.y, x_1853.z), vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : f32 = u_xlat47;
    u_xlat47 = max(x_1858, 1.17549435e-37f);
    let x_1860 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1860);
    let x_1862 : f32 = u_xlat47;
    let x_1864 : vec4<f32> = u_xlat9;
    let x_1866 : vec3<f32> = (vec3<f32>(x_1862, x_1862, x_1862) * vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
    let x_1867 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
    let x_1869 : vec3<f32> = u_xlat2;
    let x_1870 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_1869, vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
    let x_1873 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1873, 0.0f, 1.0f);
    let x_1875 : vec4<f32> = u_xlat10;
    let x_1877 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1875.x, x_1875.y, x_1875.z), vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
    let x_1880 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1880, 0.0f, 1.0f);
    let x_1882 : f32 = u_xlat47;
    let x_1883 : f32 = u_xlat47;
    u_xlat47 = (x_1882 * x_1883);
    let x_1885 : f32 = u_xlat47;
    let x_1887 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1885 * x_1887) + 1.000010014f);
    let x_1890 : f32 = u_xlat48;
    let x_1891 : f32 = u_xlat48;
    u_xlat48 = (x_1890 * x_1891);
    let x_1893 : f32 = u_xlat47;
    let x_1894 : f32 = u_xlat47;
    u_xlat47 = (x_1893 * x_1894);
    let x_1896 : f32 = u_xlat48;
    u_xlat48 = max(x_1896, 0.100000001f);
    let x_1898 : f32 = u_xlat47;
    let x_1899 : f32 = u_xlat48;
    u_xlat47 = (x_1898 * x_1899);
    let x_1901 : f32 = u_xlat18;
    let x_1902 : f32 = u_xlat47;
    u_xlat47 = (x_1901 * x_1902);
    let x_1904 : f32 = u_xlat44;
    let x_1905 : f32 = u_xlat47;
    u_xlat47 = (x_1904 / x_1905);
    let x_1907 : vec4<f32> = u_xlat5;
    let x_1909 : f32 = u_xlat47;
    let x_1912 : vec4<f32> = u_xlat6;
    let x_1914 : vec3<f32> = ((vec3<f32>(x_1907.x, x_1907.y, x_1907.z) * vec3<f32>(x_1909, x_1909, x_1909)) + vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
    let x_1915 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
    let x_1917 : vec4<f32> = u_xlat9;
    let x_1919 : vec4<f32> = u_xlat11;
    let x_1922 : vec4<f32> = u_xlat8;
    let x_1924 : vec3<f32> = ((vec3<f32>(x_1917.x, x_1917.y, x_1917.z) * vec3<f32>(x_1919.x, x_1919.y, x_1919.z)) + vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);

    continuing {
      let x_1927 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1927 + bitcast<u32>(1i));
    }
  }
  let x_1929 : vec4<f32> = u_xlat3;
  let x_1931 : f32 = u_xlat14;
  let x_1934 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1929.x, x_1929.y, x_1929.z) * vec3<f32>(x_1931, x_1931, x_1931)) + vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat8;
  let x_1939 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1937.x, x_1937.y, x_1937.z) + x_1939);
  let x_1941 : f32 = u_xlat43;
  let x_1942 : f32 = u_xlat43;
  u_xlat1.x = (x_1941 * -(x_1942));
  let x_1947 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1947);
  let x_1950 : vec3<f32> = u_xlat0;
  let x_1951 : f32 = u_xlat42;
  let x_1955 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_1950 * vec3<f32>(x_1951, x_1951, x_1951)) + -(vec3<f32>(x_1955.x, x_1955.y, x_1955.z)));
  let x_1961 : vec4<f32> = u_xlat1;
  let x_1963 : vec3<f32> = u_xlat0;
  let x_1966 : vec4<f32> = x_126.unity_FogColor;
  let x_1968 : vec3<f32> = ((vec3<f32>(x_1961.x, x_1961.x, x_1961.x) * x_1963) + vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
  let x_1969 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1969.w);
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

