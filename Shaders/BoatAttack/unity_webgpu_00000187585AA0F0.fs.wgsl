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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_602 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1053 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1247 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1526 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1635 : AdditionalLightsCookies;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb3 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb31 : bool;
  var x_1002 : f32;
  var u_xlat31 : f32;
  var x_1120 : f32;
  var x_1131 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati34 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat34 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1928 : f32;
  var x_1941 : f32;
  var x_1993 : f32;
  var x_2004 : vec3<f32>;
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
  let x_597 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres0;
  let x_607 : vec3<f32> = (x_597 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres1;
  let x_615 : vec3<f32> = (x_610 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres2;
  let x_624 : vec3<f32> = (x_618 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres3;
  let x_632 : vec3<f32> = (x_627 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = x_602.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_661 < x_663);
  let x_666 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_682);
  let x_687 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_687);
  let x_691 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_691);
  let x_694 : vec4<f32> = u_xlat3;
  let x_696 : vec4<f32> = u_xlat4;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(x_696.y, x_696.z, x_696.w));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = max(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_704.x, x_704.y, x_704.z);
  let x_707 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_707, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_712 : f32 = u_xlat43;
  u_xlat43 = (-(x_712) + 4.0f);
  let x_717 : f32 = u_xlat43;
  u_xlatu43 = u32(x_717);
  let x_721 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_721) << bitcast<u32>(2i));
  let x_724 : vec3<f32> = vs_TEXCOORD7;
  let x_726 : i32 = u_xlati43;
  let x_729 : i32 = u_xlati43;
  let x_733 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_726 + 1i) / 4i)][((x_729 + 1i) % 4i)];
  let x_735 : vec3<f32> = (vec3<f32>(x_724.y, x_724.y, x_724.y) * vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : i32 = u_xlati43;
  let x_740 : i32 = u_xlati43;
  let x_743 : vec4<f32> = x_602.x_MainLightWorldToShadow[(x_738 / 4i)][(x_740 % 4i)];
  let x_745 : vec3<f32> = vs_TEXCOORD7;
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : vec3<f32> = ((vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(x_745.x, x_745.x, x_745.x)) + vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : i32 = u_xlati43;
  let x_756 : i32 = u_xlati43;
  let x_760 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_753 + 2i) / 4i)][((x_756 + 2i) % 4i)];
  let x_762 : vec3<f32> = vs_TEXCOORD7;
  let x_765 : vec4<f32> = u_xlat3;
  let x_767 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762.z, x_762.z, x_762.z)) + vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : i32 = u_xlati43;
  let x_775 : i32 = u_xlati43;
  let x_779 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_772 + 3i) / 4i)][((x_775 + 3i) % 4i)];
  let x_781 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_789 : vec4<f32> = vs_TEXCOORD0;
  let x_792 : f32 = x_126.x_GlobalMipBias.x;
  let x_793 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_789.z, x_789.w), x_792);
  u_xlat4 = x_793;
  let x_798 : vec4<f32> = vs_TEXCOORD0;
  let x_801 : f32 = x_126.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_798.z, x_798.w), x_801);
  let x_803 : vec3<f32> = vec3<f32>(x_802.x, x_802.y, x_802.z);
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat4;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.y, x_806.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : f32 = u_xlat43;
  u_xlat43 = (x_818 + 0.5f);
  let x_820 : f32 = u_xlat43;
  let x_822 : vec4<f32> = u_xlat6;
  let x_824 : vec3<f32> = (vec3<f32>(x_820, x_820, x_820) * vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_828 : f32 = u_xlat4.w;
  u_xlat43 = max(x_828, 0.0001f);
  let x_831 : vec4<f32> = u_xlat4;
  let x_833 : f32 = u_xlat43;
  let x_835 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) / vec3<f32>(x_833, x_833, x_833));
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_840 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
  let x_845 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_841.x, x_841.y));
  let x_846 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat6;
  let x_850 : vec4<f32> = hlslcc_FragCoord;
  let x_852 : vec2<f32> = (vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_850.x, x_850.y));
  let x_853 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
  let x_856 : f32 = u_xlat6.y;
  let x_858 : f32 = x_126.x_ScaleBiasRt.x;
  let x_861 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_856 * x_858) + x_861);
  let x_863 : f32 = u_xlat43;
  u_xlat6.z = (-(x_863) + 1.0f);
  let x_868 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_868) * 0.959999979f) + 0.959999979f);
  let x_874 : f32 = u_xlat28;
  let x_875 : f32 = u_xlat43;
  u_xlat44 = (x_874 + -(x_875));
  let x_878 : f32 = u_xlat43;
  let x_880 : vec4<f32> = u_xlat5;
  let x_882 : vec3<f32> = (vec3<f32>(x_878, x_878, x_878) * vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat5;
  let x_889 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_890 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = u_xlat0;
  let x_894 : vec4<f32> = u_xlat5;
  let x_899 : vec3<f32> = ((vec3<f32>(x_892.x, x_892.x, x_892.x) * vec3<f32>(x_894.x, x_894.y, x_894.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_900 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : f32 = u_xlat28;
  u_xlat0.x = (-(x_902) + 1.0f);
  let x_907 : f32 = u_xlat0.x;
  let x_909 : f32 = u_xlat0.x;
  u_xlat28 = (x_907 * x_909);
  let x_911 : f32 = u_xlat28;
  u_xlat28 = max(x_911, 0.0078125f);
  let x_914 : f32 = u_xlat28;
  let x_915 : f32 = u_xlat28;
  u_xlat43 = (x_914 * x_915);
  let x_917 : f32 = u_xlat44;
  u_xlat44 = (x_917 + 1.0f);
  let x_919 : f32 = u_xlat44;
  u_xlat44 = clamp(x_919, 0.0f, 1.0f);
  let x_922 : f32 = u_xlat28;
  u_xlat45 = ((x_922 * 4.0f) + 2.0f);
  let x_931 : vec4<f32> = u_xlat6;
  let x_934 : f32 = x_126.x_GlobalMipBias.x;
  let x_935 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_931.x, x_931.z), x_934);
  u_xlat46 = x_935.x;
  let x_938 : f32 = u_xlat46;
  u_xlat47 = (x_938 + -1.0f);
  let x_941 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_942 : f32 = u_xlat47;
  u_xlat47 = ((x_941 * x_942) + 1.0f);
  let x_945 : f32 = u_xlat14;
  let x_946 : f32 = u_xlat46;
  u_xlat14 = min(x_945, x_946);
  let x_949 : vec4<f32> = u_xlat3;
  let x_950 : vec2<f32> = vec2<f32>(x_949.x, x_949.y);
  let x_952 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_950.x, x_950.y, x_952);
  let x_964 : vec3<f32> = txVec0;
  let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_964.xy, x_964.z);
  u_xlat3.x = x_966;
  let x_971 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_971) + 1.0f);
  let x_976 : f32 = u_xlat3.x;
  let x_978 : f32 = x_602.x_MainLightShadowParams.x;
  let x_981 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_976 * x_978) + x_981);
  let x_988 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_988);
  let x_993 : f32 = u_xlat3.z;
  u_xlatb31 = (x_993 >= 1.0f);
  let x_995 : bool = u_xlatb31;
  let x_997 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_995 | x_997);
  let x_1001 : bool = u_xlatb17.x;
  if (x_1001) {
    x_1002 = 1.0f;
  } else {
    let x_1007 : f32 = u_xlat3.x;
    x_1002 = x_1007;
  }
  let x_1008 : f32 = x_1002;
  u_xlat3.x = x_1008;
  let x_1010 : vec3<f32> = vs_TEXCOORD7;
  let x_1012 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1014 : vec3<f32> = (x_1010 + -(x_1012));
  let x_1015 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : vec4<f32> = u_xlat6;
  let x_1019 : vec4<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1024 : f32 = u_xlat17.x;
  let x_1026 : f32 = x_602.x_MainLightShadowParams.z;
  let x_1029 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1024 * x_1026) + x_1029);
  let x_1033 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1033, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1038) + 1.0f);
  let x_1042 : f32 = u_xlat17.x;
  let x_1043 : f32 = u_xlat31;
  let x_1046 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1042 * x_1043) + x_1046);
  let x_1055 : f32 = x_1053.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_1055 == -1.0f));
  let x_1059 : bool = u_xlatb17.x;
  if (x_1059) {
    let x_1062 : vec3<f32> = vs_TEXCOORD7;
    let x_1065 : vec4<f32> = x_1053.x_MainLightWorldToLight[1i];
    u_xlat17 = (vec2<f32>(x_1062.y, x_1062.y) * vec2<f32>(x_1065.x, x_1065.y));
    let x_1069 : vec4<f32> = x_1053.x_MainLightWorldToLight[0i];
    let x_1071 : vec3<f32> = vs_TEXCOORD7;
    let x_1074 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(x_1071.x, x_1071.x)) + x_1074);
    let x_1077 : vec4<f32> = x_1053.x_MainLightWorldToLight[2i];
    let x_1079 : vec3<f32> = vs_TEXCOORD7;
    let x_1082 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1079.z, x_1079.z)) + x_1082);
    let x_1084 : vec2<f32> = u_xlat17;
    let x_1086 : vec4<f32> = x_1053.x_MainLightWorldToLight[3i];
    u_xlat17 = (x_1084 + vec2<f32>(x_1086.x, x_1086.y));
    let x_1089 : vec2<f32> = u_xlat17;
    u_xlat17 = ((x_1089 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1097 : vec2<f32> = u_xlat17;
    let x_1099 : f32 = x_126.x_GlobalMipBias.x;
    let x_1100 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1097, x_1099);
    u_xlat6 = x_1100;
    let x_1102 : f32 = x_1053.x_MainLightCookieTextureFormat;
    let x_1104 : f32 = x_1053.x_MainLightCookieTextureFormat;
    let x_1106 : f32 = x_1053.x_MainLightCookieTextureFormat;
    let x_1108 : f32 = x_1053.x_MainLightCookieTextureFormat;
    let x_1109 : vec4<f32> = vec4<f32>(x_1102, x_1104, x_1106, x_1108);
    let x_1116 : vec4<bool> = (vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1109.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1116.x, x_1116.y);
    let x_1119 : bool = u_xlatb17.y;
    if (x_1119) {
      let x_1124 : f32 = u_xlat6.w;
      x_1120 = x_1124;
    } else {
      let x_1127 : f32 = u_xlat6.x;
      x_1120 = x_1127;
    }
    let x_1128 : f32 = x_1120;
    u_xlat31 = x_1128;
    let x_1130 : bool = u_xlatb17.x;
    if (x_1130) {
      let x_1134 : vec4<f32> = u_xlat6;
      x_1131 = vec3<f32>(x_1134.x, x_1134.y, x_1134.z);
    } else {
      let x_1137 : f32 = u_xlat31;
      x_1131 = vec3<f32>(x_1137, x_1137, x_1137);
    }
    let x_1139 : vec3<f32> = x_1131;
    let x_1140 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1146 : vec4<f32> = u_xlat6;
  let x_1149 : vec4<f32> = x_126.x_MainLightColor;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1146.x, x_1146.y, x_1146.z) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : f32 = u_xlat47;
  let x_1156 : vec4<f32> = u_xlat6;
  let x_1158 : vec3<f32> = (vec3<f32>(x_1154, x_1154, x_1154) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec3<f32> = u_xlat2;
  let x_1163 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(-(x_1161), vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1168 : f32 = u_xlat17.x;
  let x_1170 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1168 + x_1170);
  let x_1173 : vec4<f32> = u_xlat1;
  let x_1175 : vec2<f32> = u_xlat17;
  let x_1179 : vec3<f32> = u_xlat2;
  let x_1181 : vec3<f32> = ((vec3<f32>(x_1173.x, x_1173.y, x_1173.z) * -(vec3<f32>(x_1175.x, x_1175.x, x_1175.x))) + -(x_1179));
  let x_1182 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec4<f32> = u_xlat1;
  let x_1186 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), x_1186);
  let x_1190 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1190, 0.0f, 1.0f);
  let x_1194 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_1194) + 1.0f);
  let x_1199 : f32 = u_xlat17.x;
  let x_1201 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1199 * x_1201);
  let x_1205 : f32 = u_xlat17.x;
  let x_1207 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1205 * x_1207);
  let x_1211 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1211) * 0.699999988f) + 1.700000048f);
  let x_1218 : f32 = u_xlat0.x;
  let x_1219 : f32 = u_xlat31;
  u_xlat0.x = (x_1218 * x_1219);
  let x_1223 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1223 * 6.0f);
  let x_1235 : vec4<f32> = u_xlat8;
  let x_1238 : f32 = u_xlat0.x;
  let x_1239 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1235.x, x_1235.y, x_1235.z), x_1238);
  u_xlat8 = x_1239;
  let x_1241 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1241 + -1.0f);
  let x_1249 : f32 = x_1247.unity_SpecCube0_HDR.w;
  let x_1251 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1249 * x_1251) + 1.0f);
  let x_1256 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1256, 0.0f);
  let x_1260 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1260);
  let x_1264 : f32 = u_xlat0.x;
  let x_1266 : f32 = x_1247.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1264 * x_1266);
  let x_1270 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1270);
  let x_1274 : f32 = u_xlat0.x;
  let x_1276 : f32 = x_1247.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1274 * x_1276);
  let x_1279 : vec4<f32> = u_xlat8;
  let x_1281 : vec3<f32> = u_xlat0;
  let x_1283 : vec3<f32> = (vec3<f32>(x_1279.x, x_1279.y, x_1279.z) * vec3<f32>(x_1281.x, x_1281.x, x_1281.x));
  let x_1284 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1286 : f32 = u_xlat28;
  let x_1288 : f32 = u_xlat28;
  let x_1292 : vec2<f32> = ((vec2<f32>(x_1286, x_1286) * vec2<f32>(x_1288, x_1288)) + vec2<f32>(-1.0f, 1.0f));
  let x_1293 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1292.x, x_1293.y, x_1292.y);
  let x_1296 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1296);
  let x_1298 : vec4<f32> = u_xlat5;
  let x_1301 : f32 = u_xlat44;
  let x_1303 : vec3<f32> = (-(vec3<f32>(x_1298.x, x_1298.y, x_1298.z)) + vec3<f32>(x_1301, x_1301, x_1301));
  let x_1304 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec2<f32> = u_xlat17;
  let x_1308 : vec4<f32> = u_xlat9;
  let x_1311 : vec4<f32> = u_xlat5;
  let x_1313 : vec3<f32> = ((vec3<f32>(x_1306.x, x_1306.x, x_1306.x) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z)) + vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1316 : f32 = u_xlat28;
  let x_1318 : vec4<f32> = u_xlat9;
  let x_1320 : vec3<f32> = (vec3<f32>(x_1316, x_1316, x_1316) * vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
  let x_1321 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat8;
  let x_1325 : vec4<f32> = u_xlat9;
  let x_1327 : vec3<f32> = (vec3<f32>(x_1323.x, x_1323.y, x_1323.z) * vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1330 : vec4<f32> = u_xlat4;
  let x_1332 : vec4<f32> = u_xlat7;
  let x_1335 : vec4<f32> = u_xlat8;
  let x_1337 : vec3<f32> = ((vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z)) + vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1341 : f32 = u_xlat3.x;
  let x_1343 : f32 = x_1247.unity_LightData.z;
  u_xlat28 = (x_1341 * x_1343);
  let x_1345 : vec4<f32> = u_xlat1;
  let x_1348 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1345.x, x_1345.y, x_1345.z), vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
  let x_1351 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1351, 0.0f, 1.0f);
  let x_1353 : f32 = u_xlat28;
  let x_1354 : f32 = u_xlat44;
  u_xlat28 = (x_1353 * x_1354);
  let x_1356 : f32 = u_xlat28;
  let x_1358 : vec4<f32> = u_xlat6;
  let x_1360 : vec3<f32> = (vec3<f32>(x_1356, x_1356, x_1356) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1363 : vec3<f32> = u_xlat2;
  let x_1365 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1367 : vec3<f32> = (x_1363 + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : vec4<f32> = u_xlat6;
  let x_1372 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1370.x, x_1370.y, x_1370.z), vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : f32 = u_xlat28;
  u_xlat28 = max(x_1375, 1.17549435e-37f);
  let x_1378 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1378);
  let x_1380 : f32 = u_xlat28;
  let x_1382 : vec4<f32> = u_xlat6;
  let x_1384 : vec3<f32> = (vec3<f32>(x_1380, x_1380, x_1380) * vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
  let x_1385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1387 : vec4<f32> = u_xlat1;
  let x_1389 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1387.x, x_1387.y, x_1387.z), vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1392, 0.0f, 1.0f);
  let x_1395 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1397 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_1395.x, x_1395.y, x_1395.z), vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1400, 0.0f, 1.0f);
  let x_1402 : f32 = u_xlat28;
  let x_1403 : f32 = u_xlat28;
  u_xlat28 = (x_1402 * x_1403);
  let x_1405 : f32 = u_xlat28;
  let x_1407 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1405 * x_1407) + 1.000010014f);
  let x_1411 : f32 = u_xlat44;
  let x_1412 : f32 = u_xlat44;
  u_xlat44 = (x_1411 * x_1412);
  let x_1414 : f32 = u_xlat28;
  let x_1415 : f32 = u_xlat28;
  u_xlat28 = (x_1414 * x_1415);
  let x_1417 : f32 = u_xlat44;
  u_xlat44 = max(x_1417, 0.100000001f);
  let x_1420 : f32 = u_xlat28;
  let x_1421 : f32 = u_xlat44;
  u_xlat28 = (x_1420 * x_1421);
  let x_1423 : f32 = u_xlat45;
  let x_1424 : f32 = u_xlat28;
  u_xlat28 = (x_1423 * x_1424);
  let x_1426 : f32 = u_xlat43;
  let x_1427 : f32 = u_xlat28;
  u_xlat28 = (x_1426 / x_1427);
  let x_1429 : vec4<f32> = u_xlat5;
  let x_1431 : f32 = u_xlat28;
  let x_1434 : vec4<f32> = u_xlat7;
  let x_1436 : vec3<f32> = ((vec3<f32>(x_1429.x, x_1429.y, x_1429.z) * vec3<f32>(x_1431, x_1431, x_1431)) + vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
  let x_1437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
  let x_1439 : vec4<f32> = u_xlat3;
  let x_1441 : vec4<f32> = u_xlat6;
  let x_1443 : vec3<f32> = (vec3<f32>(x_1439.x, x_1439.y, x_1439.z) * vec3<f32>(x_1441.x, x_1441.y, x_1441.z));
  let x_1444 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
  let x_1447 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1449 : f32 = x_1247.unity_LightData.y;
  u_xlat28 = min(x_1447, x_1449);
  let x_1452 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1452));
  let x_1457 : f32 = x_1053.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1459 : f32 = x_1053.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1461 : f32 = x_1053.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1463 : f32 = x_1053.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1464 : vec4<f32> = vec4<f32>(x_1457, x_1459, x_1461, x_1463);
  let x_1470 : vec4<bool> = (vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1464.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1470.x, x_1470.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1481 : u32 = u_xlatu_loop_1;
    let x_1482 : u32 = u_xlatu28;
    if ((x_1481 < x_1482)) {
    } else {
      break;
    }
    let x_1485 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1485 >> 2u);
    let x_1488 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1488 & 3u));
    let x_1491 : u32 = u_xlatu46;
    let x_1494 : vec4<f32> = x_1247.unity_LightIndices[bitcast<i32>(x_1491)];
    let x_1504 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1509 : vec4<u32> = indexable[x_1504];
    u_xlat46 = dot(x_1494, bitcast<vec4<f32>>(x_1509));
    let x_1512 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1512));
    let x_1515 : vec3<f32> = vs_TEXCOORD7;
    let x_1527 : u32 = u_xlatu46;
    let x_1530 : vec4<f32> = x_1526.x_AdditionalLightsPosition[bitcast<i32>(x_1527)];
    let x_1533 : u32 = u_xlatu46;
    let x_1536 : vec4<f32> = x_1526.x_AdditionalLightsPosition[bitcast<i32>(x_1533)];
    let x_1538 : vec3<f32> = ((-(x_1515) * vec3<f32>(x_1530.w, x_1530.w, x_1530.w)) + vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
    let x_1539 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1539.w);
    let x_1542 : vec4<f32> = u_xlat9;
    let x_1544 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_1542.x, x_1542.y, x_1542.z), vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
    let x_1547 : f32 = u_xlat34;
    u_xlat34 = max(x_1547, 6.10351562e-05f);
    let x_1550 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1550);
    let x_1552 : f32 = u_xlat48;
    let x_1554 : vec4<f32> = u_xlat9;
    let x_1556 : vec3<f32> = (vec3<f32>(x_1552, x_1552, x_1552) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1557 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
    let x_1560 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1560);
    let x_1562 : f32 = u_xlat34;
    let x_1563 : u32 = u_xlatu46;
    let x_1566 : f32 = x_1526.x_AdditionalLightsAttenuation[bitcast<i32>(x_1563)].x;
    u_xlat34 = (x_1562 * x_1566);
    let x_1568 : f32 = u_xlat34;
    let x_1570 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1568) * x_1570) + 1.0f);
    let x_1573 : f32 = u_xlat34;
    u_xlat34 = max(x_1573, 0.0f);
    let x_1575 : f32 = u_xlat34;
    let x_1576 : f32 = u_xlat34;
    u_xlat34 = (x_1575 * x_1576);
    let x_1578 : f32 = u_xlat34;
    let x_1579 : f32 = u_xlat49;
    u_xlat34 = (x_1578 * x_1579);
    let x_1581 : u32 = u_xlatu46;
    let x_1584 : vec4<f32> = x_1526.x_AdditionalLightsSpotDir[bitcast<i32>(x_1581)];
    let x_1586 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1584.x, x_1584.y, x_1584.z), vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
    let x_1589 : f32 = u_xlat49;
    let x_1590 : u32 = u_xlatu46;
    let x_1593 : f32 = x_1526.x_AdditionalLightsAttenuation[bitcast<i32>(x_1590)].z;
    let x_1595 : u32 = u_xlatu46;
    let x_1598 : f32 = x_1526.x_AdditionalLightsAttenuation[bitcast<i32>(x_1595)].w;
    u_xlat49 = ((x_1589 * x_1593) + x_1598);
    let x_1600 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1600, 0.0f, 1.0f);
    let x_1602 : f32 = u_xlat49;
    let x_1603 : f32 = u_xlat49;
    u_xlat49 = (x_1602 * x_1603);
    let x_1605 : f32 = u_xlat34;
    let x_1606 : f32 = u_xlat49;
    u_xlat34 = (x_1605 * x_1606);
    let x_1609 : u32 = u_xlatu46;
    u_xlatu49 = (x_1609 >> 5u);
    let x_1612 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1612) & 31i)));
    let x_1617 : i32 = u_xlati50;
    let x_1619 : u32 = u_xlatu49;
    let x_1622 : f32 = x_1053.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1619)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1617) & bitcast<u32>(x_1622)));
    let x_1626 : i32 = u_xlati49;
    if ((x_1626 != 0i)) {
      let x_1636 : u32 = u_xlatu46;
      let x_1639 : f32 = x_1635.x_AdditionalLightsLightTypes[bitcast<i32>(x_1636)].el;
      u_xlati49 = i32(x_1639);
      let x_1641 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1641 != 0i));
      let x_1645 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1645) << bitcast<u32>(2i));
      let x_1648 : i32 = u_xlati50;
      if ((x_1648 != 0i)) {
        let x_1652 : vec3<f32> = vs_TEXCOORD7;
        let x_1654 : i32 = u_xlati51;
        let x_1657 : i32 = u_xlati51;
        let x_1661 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1654 + 1i) / 4i)][((x_1657 + 1i) % 4i)];
        let x_1663 : vec3<f32> = (vec3<f32>(x_1652.y, x_1652.y, x_1652.y) * vec3<f32>(x_1661.x, x_1661.y, x_1661.w));
        let x_1664 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
        let x_1666 : i32 = u_xlati51;
        let x_1668 : i32 = u_xlati51;
        let x_1671 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[(x_1666 / 4i)][(x_1668 % 4i)];
        let x_1673 : vec3<f32> = vs_TEXCOORD7;
        let x_1676 : vec4<f32> = u_xlat11;
        let x_1678 : vec3<f32> = ((vec3<f32>(x_1671.x, x_1671.y, x_1671.w) * vec3<f32>(x_1673.x, x_1673.x, x_1673.x)) + vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
        let x_1679 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
        let x_1681 : i32 = u_xlati51;
        let x_1684 : i32 = u_xlati51;
        let x_1688 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1681 + 2i) / 4i)][((x_1684 + 2i) % 4i)];
        let x_1690 : vec3<f32> = vs_TEXCOORD7;
        let x_1693 : vec4<f32> = u_xlat11;
        let x_1695 : vec3<f32> = ((vec3<f32>(x_1688.x, x_1688.y, x_1688.w) * vec3<f32>(x_1690.z, x_1690.z, x_1690.z)) + vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
        let x_1696 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
        let x_1698 : vec4<f32> = u_xlat11;
        let x_1700 : i32 = u_xlati51;
        let x_1703 : i32 = u_xlati51;
        let x_1707 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1700 + 3i) / 4i)][((x_1703 + 3i) % 4i)];
        let x_1709 : vec3<f32> = (vec3<f32>(x_1698.x, x_1698.y, x_1698.z) + vec3<f32>(x_1707.x, x_1707.y, x_1707.w));
        let x_1710 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
        let x_1712 : vec4<f32> = u_xlat11;
        let x_1714 : vec4<f32> = u_xlat11;
        let x_1716 : vec2<f32> = (vec2<f32>(x_1712.x, x_1712.y) / vec2<f32>(x_1714.z, x_1714.z));
        let x_1717 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1716.x, x_1716.y, x_1717.z, x_1717.w);
        let x_1719 : vec4<f32> = u_xlat11;
        let x_1722 : vec2<f32> = ((vec2<f32>(x_1719.x, x_1719.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1722.x, x_1722.y, x_1723.z, x_1723.w);
        let x_1725 : vec4<f32> = u_xlat11;
        let x_1729 : vec2<f32> = clamp(vec2<f32>(x_1725.x, x_1725.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1730 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1729.x, x_1729.y, x_1730.z, x_1730.w);
        let x_1732 : u32 = u_xlatu46;
        let x_1735 : vec4<f32> = x_1635.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1732)];
        let x_1737 : vec4<f32> = u_xlat11;
        let x_1740 : u32 = u_xlatu46;
        let x_1743 : vec4<f32> = x_1635.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1740)];
        let x_1745 : vec2<f32> = ((vec2<f32>(x_1735.x, x_1735.y) * vec2<f32>(x_1737.x, x_1737.y)) + vec2<f32>(x_1743.z, x_1743.w));
        let x_1746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1745.x, x_1745.y, x_1746.z, x_1746.w);
      } else {
        let x_1750 : i32 = u_xlati49;
        u_xlatb49 = (x_1750 == 1i);
        let x_1752 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1752);
        let x_1754 : i32 = u_xlati49;
        if ((x_1754 != 0i)) {
          let x_1759 : vec3<f32> = vs_TEXCOORD7;
          let x_1761 : i32 = u_xlati51;
          let x_1764 : i32 = u_xlati51;
          let x_1768 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1761 + 1i) / 4i)][((x_1764 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1759.y, x_1759.y) * vec2<f32>(x_1768.x, x_1768.y));
          let x_1771 : i32 = u_xlati51;
          let x_1773 : i32 = u_xlati51;
          let x_1776 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[(x_1771 / 4i)][(x_1773 % 4i)];
          let x_1778 : vec3<f32> = vs_TEXCOORD7;
          let x_1781 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(x_1778.x, x_1778.x)) + x_1781);
          let x_1783 : i32 = u_xlati51;
          let x_1786 : i32 = u_xlati51;
          let x_1790 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1783 + 2i) / 4i)][((x_1786 + 2i) % 4i)];
          let x_1792 : vec3<f32> = vs_TEXCOORD7;
          let x_1795 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(x_1792.z, x_1792.z)) + x_1795);
          let x_1797 : vec2<f32> = u_xlat39;
          let x_1798 : i32 = u_xlati51;
          let x_1801 : i32 = u_xlati51;
          let x_1805 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1798 + 3i) / 4i)][((x_1801 + 3i) % 4i)];
          u_xlat39 = (x_1797 + vec2<f32>(x_1805.x, x_1805.y));
          let x_1808 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1808 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1811 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1811);
          let x_1813 : u32 = u_xlatu46;
          let x_1816 : vec4<f32> = x_1635.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1813)];
          let x_1818 : vec2<f32> = u_xlat39;
          let x_1820 : u32 = u_xlatu46;
          let x_1823 : vec4<f32> = x_1635.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1820)];
          let x_1825 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.y) * x_1818) + vec2<f32>(x_1823.z, x_1823.w));
          let x_1826 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1825.x, x_1825.y, x_1826.z, x_1826.w);
        } else {
          let x_1829 : vec3<f32> = vs_TEXCOORD7;
          let x_1831 : i32 = u_xlati51;
          let x_1834 : i32 = u_xlati51;
          let x_1838 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1831 + 1i) / 4i)][((x_1834 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1829.y, x_1829.y, x_1829.y, x_1829.y) * x_1838);
          let x_1840 : i32 = u_xlati51;
          let x_1842 : i32 = u_xlati51;
          let x_1845 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[(x_1840 / 4i)][(x_1842 % 4i)];
          let x_1846 : vec3<f32> = vs_TEXCOORD7;
          let x_1849 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1845 * vec4<f32>(x_1846.x, x_1846.x, x_1846.x, x_1846.x)) + x_1849);
          let x_1851 : i32 = u_xlati51;
          let x_1854 : i32 = u_xlati51;
          let x_1858 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1851 + 2i) / 4i)][((x_1854 + 2i) % 4i)];
          let x_1859 : vec3<f32> = vs_TEXCOORD7;
          let x_1862 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1858 * vec4<f32>(x_1859.z, x_1859.z, x_1859.z, x_1859.z)) + x_1862);
          let x_1864 : vec4<f32> = u_xlat12;
          let x_1865 : i32 = u_xlati51;
          let x_1868 : i32 = u_xlati51;
          let x_1872 : vec4<f32> = x_1635.x_AdditionalLightsWorldToLights[((x_1865 + 3i) / 4i)][((x_1868 + 3i) % 4i)];
          u_xlat12 = (x_1864 + x_1872);
          let x_1874 : vec4<f32> = u_xlat12;
          let x_1876 : vec4<f32> = u_xlat12;
          let x_1878 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.y, x_1874.z) / vec3<f32>(x_1876.w, x_1876.w, x_1876.w));
          let x_1879 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
          let x_1881 : vec4<f32> = u_xlat12;
          let x_1883 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
          let x_1886 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1886);
          let x_1888 : f32 = u_xlat49;
          let x_1890 : vec4<f32> = u_xlat12;
          let x_1892 : vec3<f32> = (vec3<f32>(x_1888, x_1888, x_1888) * vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
          let x_1893 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
          let x_1895 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1895.x, x_1895.y, x_1895.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1900 : f32 = u_xlat49;
          u_xlat49 = max(x_1900, 0.000001f);
          let x_1903 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1903);
          let x_1905 : f32 = u_xlat49;
          let x_1907 : vec4<f32> = u_xlat12;
          let x_1909 : vec3<f32> = (vec3<f32>(x_1905, x_1905, x_1905) * vec3<f32>(x_1907.z, x_1907.x, x_1907.y));
          let x_1910 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
          let x_1913 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1913);
          let x_1917 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1917, 0.0f, 1.0f);
          let x_1921 : vec4<f32> = u_xlat13;
          let x_1924 : vec4<bool> = (vec4<f32>(x_1921.y, x_1921.z, x_1921.y, x_1921.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1924.x, x_1924.y);
          let x_1927 : bool = u_xlatb39.x;
          if (x_1927) {
            let x_1932 : f32 = u_xlat13.x;
            x_1928 = x_1932;
          } else {
            let x_1935 : f32 = u_xlat13.x;
            x_1928 = -(x_1935);
          }
          let x_1937 : f32 = x_1928;
          u_xlat39.x = x_1937;
          let x_1940 : bool = u_xlatb39.y;
          if (x_1940) {
            let x_1945 : f32 = u_xlat13.x;
            x_1941 = x_1945;
          } else {
            let x_1948 : f32 = u_xlat13.x;
            x_1941 = -(x_1948);
          }
          let x_1950 : f32 = x_1941;
          u_xlat39.y = x_1950;
          let x_1952 : vec4<f32> = u_xlat12;
          let x_1954 : f32 = u_xlat49;
          let x_1957 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1954, x_1954)) + x_1957);
          let x_1959 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1959 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1962 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1962, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1966 : u32 = u_xlatu46;
          let x_1969 : vec4<f32> = x_1635.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1966)];
          let x_1971 : vec2<f32> = u_xlat39;
          let x_1973 : u32 = u_xlatu46;
          let x_1976 : vec4<f32> = x_1635.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1973)];
          let x_1978 : vec2<f32> = ((vec2<f32>(x_1969.x, x_1969.y) * x_1971) + vec2<f32>(x_1976.z, x_1976.w));
          let x_1979 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1978.x, x_1978.y, x_1979.z, x_1979.w);
        }
      }
      let x_1986 : vec4<f32> = u_xlat11;
      let x_1989 : f32 = x_126.x_GlobalMipBias.x;
      let x_1990 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1986.x, x_1986.y), x_1989);
      u_xlat11 = x_1990;
      let x_1992 : bool = u_xlatb6.y;
      if (x_1992) {
        let x_1997 : f32 = u_xlat11.w;
        x_1993 = x_1997;
      } else {
        let x_2000 : f32 = u_xlat11.x;
        x_1993 = x_2000;
      }
      let x_2001 : f32 = x_1993;
      u_xlat49 = x_2001;
      let x_2003 : bool = u_xlatb6.x;
      if (x_2003) {
        let x_2007 : vec4<f32> = u_xlat11;
        x_2004 = vec3<f32>(x_2007.x, x_2007.y, x_2007.z);
      } else {
        let x_2010 : f32 = u_xlat49;
        x_2004 = vec3<f32>(x_2010, x_2010, x_2010);
      }
      let x_2012 : vec3<f32> = x_2004;
      let x_2013 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2019 : vec4<f32> = u_xlat11;
    let x_2021 : u32 = u_xlatu46;
    let x_2024 : vec4<f32> = x_1526.x_AdditionalLightsColor[bitcast<i32>(x_2021)];
    let x_2026 : vec3<f32> = (vec3<f32>(x_2019.x, x_2019.y, x_2019.z) * vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2027 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
    let x_2029 : f32 = u_xlat47;
    let x_2031 : vec4<f32> = u_xlat11;
    let x_2033 : vec3<f32> = (vec3<f32>(x_2029, x_2029, x_2029) * vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2034 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
    let x_2036 : vec4<f32> = u_xlat1;
    let x_2038 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2036.x, x_2036.y, x_2036.z), vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2041 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2041, 0.0f, 1.0f);
    let x_2043 : f32 = u_xlat46;
    let x_2044 : f32 = u_xlat34;
    u_xlat46 = (x_2043 * x_2044);
    let x_2046 : f32 = u_xlat46;
    let x_2048 : vec4<f32> = u_xlat11;
    let x_2050 : vec3<f32> = (vec3<f32>(x_2046, x_2046, x_2046) * vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
    let x_2051 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
    let x_2053 : vec4<f32> = u_xlat9;
    let x_2055 : f32 = u_xlat48;
    let x_2058 : vec3<f32> = u_xlat2;
    let x_2059 : vec3<f32> = ((vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * vec3<f32>(x_2055, x_2055, x_2055)) + x_2058);
    let x_2060 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
    let x_2062 : vec4<f32> = u_xlat9;
    let x_2064 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2062.x, x_2062.y, x_2062.z), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
    let x_2067 : f32 = u_xlat46;
    u_xlat46 = max(x_2067, 1.17549435e-37f);
    let x_2069 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2069);
    let x_2071 : f32 = u_xlat46;
    let x_2073 : vec4<f32> = u_xlat9;
    let x_2075 : vec3<f32> = (vec3<f32>(x_2071, x_2071, x_2071) * vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
    let x_2076 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
    let x_2078 : vec4<f32> = u_xlat1;
    let x_2080 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2078.x, x_2078.y, x_2078.z), vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2083, 0.0f, 1.0f);
    let x_2085 : vec4<f32> = u_xlat10;
    let x_2087 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_2085.x, x_2085.y, x_2085.z), vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
    let x_2090 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2090, 0.0f, 1.0f);
    let x_2092 : f32 = u_xlat46;
    let x_2093 : f32 = u_xlat46;
    u_xlat46 = (x_2092 * x_2093);
    let x_2095 : f32 = u_xlat46;
    let x_2097 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2095 * x_2097) + 1.000010014f);
    let x_2100 : f32 = u_xlat34;
    let x_2101 : f32 = u_xlat34;
    u_xlat34 = (x_2100 * x_2101);
    let x_2103 : f32 = u_xlat46;
    let x_2104 : f32 = u_xlat46;
    u_xlat46 = (x_2103 * x_2104);
    let x_2106 : f32 = u_xlat34;
    u_xlat34 = max(x_2106, 0.100000001f);
    let x_2108 : f32 = u_xlat46;
    let x_2109 : f32 = u_xlat34;
    u_xlat46 = (x_2108 * x_2109);
    let x_2111 : f32 = u_xlat45;
    let x_2112 : f32 = u_xlat46;
    u_xlat46 = (x_2111 * x_2112);
    let x_2114 : f32 = u_xlat43;
    let x_2115 : f32 = u_xlat46;
    u_xlat46 = (x_2114 / x_2115);
    let x_2117 : vec4<f32> = u_xlat5;
    let x_2119 : f32 = u_xlat46;
    let x_2122 : vec4<f32> = u_xlat7;
    let x_2124 : vec3<f32> = ((vec3<f32>(x_2117.x, x_2117.y, x_2117.z) * vec3<f32>(x_2119, x_2119, x_2119)) + vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
    let x_2125 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
    let x_2127 : vec4<f32> = u_xlat9;
    let x_2129 : vec4<f32> = u_xlat11;
    let x_2132 : vec4<f32> = u_xlat8;
    let x_2134 : vec3<f32> = ((vec3<f32>(x_2127.x, x_2127.y, x_2127.z) * vec3<f32>(x_2129.x, x_2129.y, x_2129.z)) + vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
    let x_2135 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);

    continuing {
      let x_2137 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2137 + bitcast<u32>(1i));
    }
  }
  let x_2139 : vec4<f32> = u_xlat4;
  let x_2141 : f32 = u_xlat14;
  let x_2144 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2139.x, x_2139.y, x_2139.z) * vec3<f32>(x_2141, x_2141, x_2141)) + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : vec4<f32> = u_xlat8;
  let x_2149 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2147.x, x_2147.y, x_2147.z) + x_2149);
  let x_2153 : f32 = u_xlat42;
  let x_2155 : vec3<f32> = u_xlat0;
  let x_2156 : vec3<f32> = (vec3<f32>(x_2153, x_2153, x_2153) * x_2155);
  let x_2157 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2156.x, x_2156.y, x_2156.z, x_2157.w);
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

