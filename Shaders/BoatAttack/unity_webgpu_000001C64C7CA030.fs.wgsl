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

@group(1) @binding(4) var<uniform> x_583 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1027 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1228 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1495 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1604 : AdditionalLightsCookies;

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
  var u_xlatb3 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb31 : bool;
  var x_979 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat31 : f32;
  var x_1109 : f32;
  var x_1120 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb20 : vec2<bool>;
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
  var x_1898 : f32;
  var x_1911 : f32;
  var x_1963 : f32;
  var x_1974 : vec3<f32>;
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
  let x_965 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_965);
  let x_970 : f32 = u_xlat3.z;
  u_xlatb31 = (x_970 >= 1.0f);
  let x_972 : bool = u_xlatb31;
  let x_974 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_972 | x_974);
  let x_978 : bool = u_xlatb17.x;
  if (x_978) {
    x_979 = 1.0f;
  } else {
    let x_984 : f32 = u_xlat3.x;
    x_979 = x_984;
  }
  let x_985 : f32 = x_979;
  u_xlat3.x = x_985;
  let x_988 : vec3<f32> = vs_TEXCOORD7;
  let x_990 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat20 = (x_988 + -(x_990));
  let x_993 : vec3<f32> = u_xlat20;
  let x_994 : vec3<f32> = u_xlat20;
  u_xlat17.x = dot(x_993, x_994);
  let x_998 : f32 = u_xlat17.x;
  let x_1000 : f32 = x_583.x_MainLightShadowParams.z;
  let x_1003 : f32 = x_583.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_998 * x_1000) + x_1003);
  let x_1007 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1007, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1012) + 1.0f);
  let x_1016 : f32 = u_xlat17.x;
  let x_1017 : f32 = u_xlat31;
  let x_1020 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1016 * x_1017) + x_1020);
  let x_1029 : f32 = x_1027.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_1029 == -1.0f));
  let x_1033 : bool = u_xlatb17.x;
  if (x_1033) {
    let x_1036 : vec3<f32> = vs_TEXCOORD7;
    let x_1039 : vec4<f32> = x_1027.x_MainLightWorldToLight[1i];
    let x_1041 : vec2<f32> = (vec2<f32>(x_1036.y, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y));
    let x_1042 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1041.x, x_1041.y, x_1042.z);
    let x_1045 : vec4<f32> = x_1027.x_MainLightWorldToLight[0i];
    let x_1047 : vec3<f32> = vs_TEXCOORD7;
    let x_1050 : vec3<f32> = u_xlat17;
    let x_1052 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1047.x, x_1047.x)) + vec2<f32>(x_1050.x, x_1050.y));
    let x_1053 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1052.x, x_1052.y, x_1053.z);
    let x_1056 : vec4<f32> = x_1027.x_MainLightWorldToLight[2i];
    let x_1058 : vec3<f32> = vs_TEXCOORD7;
    let x_1061 : vec3<f32> = u_xlat17;
    let x_1063 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(x_1058.z, x_1058.z)) + vec2<f32>(x_1061.x, x_1061.y));
    let x_1064 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1063.x, x_1063.y, x_1064.z);
    let x_1066 : vec3<f32> = u_xlat17;
    let x_1069 : vec4<f32> = x_1027.x_MainLightWorldToLight[3i];
    let x_1071 : vec2<f32> = (vec2<f32>(x_1066.x, x_1066.y) + vec2<f32>(x_1069.x, x_1069.y));
    let x_1072 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1071.x, x_1071.y, x_1072.z);
    let x_1074 : vec3<f32> = u_xlat17;
    let x_1077 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1078 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1077.x, x_1077.y, x_1078.z);
    let x_1085 : vec3<f32> = u_xlat17;
    let x_1088 : f32 = x_126.x_GlobalMipBias.x;
    let x_1089 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1085.x, x_1085.y), x_1088);
    u_xlat8 = x_1089;
    let x_1091 : f32 = x_1027.x_MainLightCookieTextureFormat;
    let x_1093 : f32 = x_1027.x_MainLightCookieTextureFormat;
    let x_1095 : f32 = x_1027.x_MainLightCookieTextureFormat;
    let x_1097 : f32 = x_1027.x_MainLightCookieTextureFormat;
    let x_1098 : vec4<f32> = vec4<f32>(x_1091, x_1093, x_1095, x_1097);
    let x_1105 : vec4<bool> = (vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1098.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1105.x, x_1105.y);
    let x_1108 : bool = u_xlatb17.y;
    if (x_1108) {
      let x_1113 : f32 = u_xlat8.w;
      x_1109 = x_1113;
    } else {
      let x_1116 : f32 = u_xlat8.x;
      x_1109 = x_1116;
    }
    let x_1117 : f32 = x_1109;
    u_xlat31 = x_1117;
    let x_1119 : bool = u_xlatb17.x;
    if (x_1119) {
      let x_1123 : vec4<f32> = u_xlat8;
      x_1120 = vec3<f32>(x_1123.x, x_1123.y, x_1123.z);
    } else {
      let x_1126 : f32 = u_xlat31;
      x_1120 = vec3<f32>(x_1126, x_1126, x_1126);
    }
    let x_1128 : vec3<f32> = x_1120;
    u_xlat20 = x_1128;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1133 : vec3<f32> = u_xlat20;
  let x_1135 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat20 = (x_1133 * vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat6;
  let x_1140 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1138.x, x_1138.x, x_1138.x) * x_1140);
  let x_1142 : vec4<f32> = u_xlat1;
  let x_1145 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(-(vec3<f32>(x_1142.x, x_1142.y, x_1142.z)), x_1145);
  let x_1149 : f32 = u_xlat17.x;
  let x_1151 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1149 + x_1151);
  let x_1154 : vec3<f32> = u_xlat2;
  let x_1155 : vec3<f32> = u_xlat17;
  let x_1159 : vec4<f32> = u_xlat1;
  let x_1162 : vec3<f32> = ((x_1154 * -(vec3<f32>(x_1155.x, x_1155.x, x_1155.x))) + -(vec3<f32>(x_1159.x, x_1159.y, x_1159.z)));
  let x_1163 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1165 : vec3<f32> = u_xlat2;
  let x_1166 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(x_1165, vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1171 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1171, 0.0f, 1.0f);
  let x_1175 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_1175) + 1.0f);
  let x_1180 : f32 = u_xlat17.x;
  let x_1182 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1180 * x_1182);
  let x_1186 : f32 = u_xlat17.x;
  let x_1188 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1186 * x_1188);
  let x_1192 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1192) * 0.699999988f) + 1.700000048f);
  let x_1199 : f32 = u_xlat0.x;
  let x_1200 : f32 = u_xlat31;
  u_xlat0.x = (x_1199 * x_1200);
  let x_1204 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1204 * 6.0f);
  let x_1216 : vec4<f32> = u_xlat8;
  let x_1219 : f32 = u_xlat0.x;
  let x_1220 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1216.x, x_1216.y, x_1216.z), x_1219);
  u_xlat8 = x_1220;
  let x_1222 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1222 + -1.0f);
  let x_1230 : f32 = x_1228.unity_SpecCube0_HDR.w;
  let x_1232 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1230 * x_1232) + 1.0f);
  let x_1237 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1237, 0.0f);
  let x_1241 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1241);
  let x_1245 : f32 = u_xlat0.x;
  let x_1247 : f32 = x_1228.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1245 * x_1247);
  let x_1251 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1251);
  let x_1255 : f32 = u_xlat0.x;
  let x_1257 : f32 = x_1228.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1255 * x_1257);
  let x_1260 : vec4<f32> = u_xlat8;
  let x_1262 : vec3<f32> = u_xlat0;
  let x_1264 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * vec3<f32>(x_1262.x, x_1262.x, x_1262.x));
  let x_1265 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1267 : f32 = u_xlat28;
  let x_1269 : f32 = u_xlat28;
  let x_1273 : vec2<f32> = ((vec2<f32>(x_1267, x_1267) * vec2<f32>(x_1269, x_1269)) + vec2<f32>(-1.0f, 1.0f));
  let x_1274 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1273.x, x_1274.y, x_1273.y);
  let x_1277 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1277);
  let x_1279 : vec4<f32> = u_xlat5;
  let x_1282 : f32 = u_xlat45;
  let x_1284 : vec3<f32> = (-(vec3<f32>(x_1279.x, x_1279.y, x_1279.z)) + vec3<f32>(x_1282, x_1282, x_1282));
  let x_1285 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1287 : vec3<f32> = u_xlat17;
  let x_1289 : vec4<f32> = u_xlat9;
  let x_1292 : vec4<f32> = u_xlat5;
  u_xlat17 = ((vec3<f32>(x_1287.x, x_1287.x, x_1287.x) * vec3<f32>(x_1289.x, x_1289.y, x_1289.z)) + vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : f32 = u_xlat28;
  let x_1297 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1295, x_1295, x_1295) * x_1297);
  let x_1299 : vec3<f32> = u_xlat17;
  let x_1300 : vec4<f32> = u_xlat8;
  u_xlat17 = (x_1299 * vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
  let x_1303 : vec4<f32> = u_xlat4;
  let x_1305 : vec4<f32> = u_xlat7;
  let x_1308 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_1303.x, x_1303.y, x_1303.z) * vec3<f32>(x_1305.x, x_1305.y, x_1305.z)) + x_1308);
  let x_1311 : f32 = u_xlat3.x;
  let x_1313 : f32 = x_1228.unity_LightData.z;
  u_xlat28 = (x_1311 * x_1313);
  let x_1315 : vec3<f32> = u_xlat2;
  let x_1317 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_1315, vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1322 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1322, 0.0f, 1.0f);
  let x_1325 : f32 = u_xlat28;
  let x_1327 : f32 = u_xlat3.x;
  u_xlat28 = (x_1325 * x_1327);
  let x_1329 : f32 = u_xlat28;
  let x_1331 : vec3<f32> = u_xlat20;
  let x_1332 : vec3<f32> = (vec3<f32>(x_1329, x_1329, x_1329) * x_1331);
  let x_1333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : vec4<f32> = u_xlat1;
  let x_1338 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) + vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1341 : vec3<f32> = u_xlat20;
  let x_1342 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1341, x_1342);
  let x_1344 : f32 = u_xlat28;
  u_xlat28 = max(x_1344, 1.17549435e-37f);
  let x_1347 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1347);
  let x_1349 : f32 = u_xlat28;
  let x_1351 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1349, x_1349, x_1349) * x_1351);
  let x_1353 : vec3<f32> = u_xlat2;
  let x_1354 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1353, x_1354);
  let x_1356 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1356, 0.0f, 1.0f);
  let x_1359 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1361 : vec3<f32> = u_xlat20;
  u_xlat3.x = dot(vec3<f32>(x_1359.x, x_1359.y, x_1359.z), x_1361);
  let x_1365 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1365, 0.0f, 1.0f);
  let x_1368 : f32 = u_xlat28;
  let x_1369 : f32 = u_xlat28;
  u_xlat28 = (x_1368 * x_1369);
  let x_1371 : f32 = u_xlat28;
  let x_1373 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1371 * x_1373) + 1.000010014f);
  let x_1378 : f32 = u_xlat3.x;
  let x_1380 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1378 * x_1380);
  let x_1383 : f32 = u_xlat28;
  let x_1384 : f32 = u_xlat28;
  u_xlat28 = (x_1383 * x_1384);
  let x_1387 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1387, 0.100000001f);
  let x_1391 : f32 = u_xlat28;
  let x_1393 : f32 = u_xlat3.x;
  u_xlat28 = (x_1391 * x_1393);
  let x_1395 : f32 = u_xlat46;
  let x_1396 : f32 = u_xlat28;
  u_xlat28 = (x_1395 * x_1396);
  let x_1398 : f32 = u_xlat44;
  let x_1399 : f32 = u_xlat28;
  u_xlat28 = (x_1398 / x_1399);
  let x_1401 : vec4<f32> = u_xlat5;
  let x_1403 : f32 = u_xlat28;
  let x_1406 : vec4<f32> = u_xlat7;
  u_xlat20 = ((vec3<f32>(x_1401.x, x_1401.y, x_1401.z) * vec3<f32>(x_1403, x_1403, x_1403)) + vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1409 : vec4<f32> = u_xlat4;
  let x_1411 : vec3<f32> = u_xlat20;
  let x_1412 : vec3<f32> = (vec3<f32>(x_1409.x, x_1409.y, x_1409.z) * x_1411);
  let x_1413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1416 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1418 : f32 = x_1228.unity_LightData.y;
  u_xlat28 = min(x_1416, x_1418);
  let x_1421 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1421));
  let x_1426 : f32 = x_1027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1428 : f32 = x_1027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1430 : f32 = x_1027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1432 : f32 = x_1027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1433 : vec4<f32> = vec4<f32>(x_1426, x_1428, x_1430, x_1432);
  let x_1439 : vec4<bool> = (vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1433.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1439.x, x_1439.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1450 : u32 = u_xlatu_loop_1;
    let x_1451 : u32 = u_xlatu28;
    if ((x_1450 < x_1451)) {
    } else {
      break;
    }
    let x_1454 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1454 >> 2u);
    let x_1457 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1457 & 3u));
    let x_1460 : u32 = u_xlatu47;
    let x_1463 : vec4<f32> = x_1228.unity_LightIndices[bitcast<i32>(x_1460)];
    let x_1473 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1478 : vec4<u32> = indexable[x_1473];
    u_xlat47 = dot(x_1463, bitcast<vec4<f32>>(x_1478));
    let x_1481 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1481));
    let x_1484 : vec3<f32> = vs_TEXCOORD7;
    let x_1496 : u32 = u_xlatu47;
    let x_1499 : vec4<f32> = x_1495.x_AdditionalLightsPosition[bitcast<i32>(x_1496)];
    let x_1502 : u32 = u_xlatu47;
    let x_1505 : vec4<f32> = x_1495.x_AdditionalLightsPosition[bitcast<i32>(x_1502)];
    let x_1507 : vec3<f32> = ((-(x_1484) * vec3<f32>(x_1499.w, x_1499.w, x_1499.w)) + vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
    let x_1511 : vec4<f32> = u_xlat9;
    let x_1513 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1511.x, x_1511.y, x_1511.z), vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
    let x_1516 : f32 = u_xlat48;
    u_xlat48 = max(x_1516, 6.10351562e-05f);
    let x_1519 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1519);
    let x_1521 : f32 = u_xlat49;
    let x_1523 : vec4<f32> = u_xlat9;
    let x_1525 : vec3<f32> = (vec3<f32>(x_1521, x_1521, x_1521) * vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
    let x_1529 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1529);
    let x_1531 : f32 = u_xlat48;
    let x_1532 : u32 = u_xlatu47;
    let x_1535 : f32 = x_1495.x_AdditionalLightsAttenuation[bitcast<i32>(x_1532)].x;
    u_xlat48 = (x_1531 * x_1535);
    let x_1537 : f32 = u_xlat48;
    let x_1539 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1537) * x_1539) + 1.0f);
    let x_1542 : f32 = u_xlat48;
    u_xlat48 = max(x_1542, 0.0f);
    let x_1544 : f32 = u_xlat48;
    let x_1545 : f32 = u_xlat48;
    u_xlat48 = (x_1544 * x_1545);
    let x_1547 : f32 = u_xlat48;
    let x_1548 : f32 = u_xlat50;
    u_xlat48 = (x_1547 * x_1548);
    let x_1550 : u32 = u_xlatu47;
    let x_1553 : vec4<f32> = x_1495.x_AdditionalLightsSpotDir[bitcast<i32>(x_1550)];
    let x_1555 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1553.x, x_1553.y, x_1553.z), vec3<f32>(x_1555.x, x_1555.y, x_1555.z));
    let x_1558 : f32 = u_xlat50;
    let x_1559 : u32 = u_xlatu47;
    let x_1562 : f32 = x_1495.x_AdditionalLightsAttenuation[bitcast<i32>(x_1559)].z;
    let x_1564 : u32 = u_xlatu47;
    let x_1567 : f32 = x_1495.x_AdditionalLightsAttenuation[bitcast<i32>(x_1564)].w;
    u_xlat50 = ((x_1558 * x_1562) + x_1567);
    let x_1569 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1569, 0.0f, 1.0f);
    let x_1571 : f32 = u_xlat50;
    let x_1572 : f32 = u_xlat50;
    u_xlat50 = (x_1571 * x_1572);
    let x_1574 : f32 = u_xlat48;
    let x_1575 : f32 = u_xlat50;
    u_xlat48 = (x_1574 * x_1575);
    let x_1578 : u32 = u_xlatu47;
    u_xlatu50 = (x_1578 >> 5u);
    let x_1581 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1581) & 31i)));
    let x_1586 : i32 = u_xlati51;
    let x_1588 : u32 = u_xlatu50;
    let x_1591 : f32 = x_1027.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1588)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1586) & bitcast<u32>(x_1591)));
    let x_1595 : i32 = u_xlati50;
    if ((x_1595 != 0i)) {
      let x_1605 : u32 = u_xlatu47;
      let x_1608 : f32 = x_1604.x_AdditionalLightsLightTypes[bitcast<i32>(x_1605)].el;
      u_xlati50 = i32(x_1608);
      let x_1610 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1610 != 0i));
      let x_1614 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1614) << bitcast<u32>(2i));
      let x_1617 : i32 = u_xlati51;
      if ((x_1617 != 0i)) {
        let x_1621 : vec3<f32> = vs_TEXCOORD7;
        let x_1623 : i32 = u_xlati52;
        let x_1626 : i32 = u_xlati52;
        let x_1630 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1623 + 1i) / 4i)][((x_1626 + 1i) % 4i)];
        let x_1632 : vec3<f32> = (vec3<f32>(x_1621.y, x_1621.y, x_1621.y) * vec3<f32>(x_1630.x, x_1630.y, x_1630.w));
        let x_1633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
        let x_1635 : i32 = u_xlati52;
        let x_1637 : i32 = u_xlati52;
        let x_1640 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[(x_1635 / 4i)][(x_1637 % 4i)];
        let x_1642 : vec3<f32> = vs_TEXCOORD7;
        let x_1645 : vec4<f32> = u_xlat11;
        let x_1647 : vec3<f32> = ((vec3<f32>(x_1640.x, x_1640.y, x_1640.w) * vec3<f32>(x_1642.x, x_1642.x, x_1642.x)) + vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
        let x_1648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
        let x_1650 : i32 = u_xlati52;
        let x_1653 : i32 = u_xlati52;
        let x_1657 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1650 + 2i) / 4i)][((x_1653 + 2i) % 4i)];
        let x_1659 : vec3<f32> = vs_TEXCOORD7;
        let x_1662 : vec4<f32> = u_xlat11;
        let x_1664 : vec3<f32> = ((vec3<f32>(x_1657.x, x_1657.y, x_1657.w) * vec3<f32>(x_1659.z, x_1659.z, x_1659.z)) + vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
        let x_1665 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
        let x_1667 : vec4<f32> = u_xlat11;
        let x_1669 : i32 = u_xlati52;
        let x_1672 : i32 = u_xlati52;
        let x_1676 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1669 + 3i) / 4i)][((x_1672 + 3i) % 4i)];
        let x_1678 : vec3<f32> = (vec3<f32>(x_1667.x, x_1667.y, x_1667.z) + vec3<f32>(x_1676.x, x_1676.y, x_1676.w));
        let x_1679 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
        let x_1681 : vec4<f32> = u_xlat11;
        let x_1683 : vec4<f32> = u_xlat11;
        let x_1685 : vec2<f32> = (vec2<f32>(x_1681.x, x_1681.y) / vec2<f32>(x_1683.z, x_1683.z));
        let x_1686 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1685.x, x_1685.y, x_1686.z, x_1686.w);
        let x_1688 : vec4<f32> = u_xlat11;
        let x_1691 : vec2<f32> = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1692 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1691.x, x_1691.y, x_1692.z, x_1692.w);
        let x_1694 : vec4<f32> = u_xlat11;
        let x_1698 : vec2<f32> = clamp(vec2<f32>(x_1694.x, x_1694.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1699 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1698.x, x_1698.y, x_1699.z, x_1699.w);
        let x_1701 : u32 = u_xlatu47;
        let x_1704 : vec4<f32> = x_1604.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1701)];
        let x_1706 : vec4<f32> = u_xlat11;
        let x_1709 : u32 = u_xlatu47;
        let x_1712 : vec4<f32> = x_1604.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1709)];
        let x_1714 : vec2<f32> = ((vec2<f32>(x_1704.x, x_1704.y) * vec2<f32>(x_1706.x, x_1706.y)) + vec2<f32>(x_1712.z, x_1712.w));
        let x_1715 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
      } else {
        let x_1719 : i32 = u_xlati50;
        u_xlatb50 = (x_1719 == 1i);
        let x_1721 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1721);
        let x_1723 : i32 = u_xlati50;
        if ((x_1723 != 0i)) {
          let x_1729 : vec3<f32> = vs_TEXCOORD7;
          let x_1731 : i32 = u_xlati52;
          let x_1734 : i32 = u_xlati52;
          let x_1738 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1731 + 1i) / 4i)][((x_1734 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1729.y, x_1729.y) * vec2<f32>(x_1738.x, x_1738.y));
          let x_1741 : i32 = u_xlati52;
          let x_1743 : i32 = u_xlati52;
          let x_1746 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[(x_1741 / 4i)][(x_1743 % 4i)];
          let x_1748 : vec3<f32> = vs_TEXCOORD7;
          let x_1751 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1748.x, x_1748.x)) + x_1751);
          let x_1753 : i32 = u_xlati52;
          let x_1756 : i32 = u_xlati52;
          let x_1760 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1753 + 2i) / 4i)][((x_1756 + 2i) % 4i)];
          let x_1762 : vec3<f32> = vs_TEXCOORD7;
          let x_1765 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1760.x, x_1760.y) * vec2<f32>(x_1762.z, x_1762.z)) + x_1765);
          let x_1767 : vec2<f32> = u_xlat39;
          let x_1768 : i32 = u_xlati52;
          let x_1771 : i32 = u_xlati52;
          let x_1775 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1768 + 3i) / 4i)][((x_1771 + 3i) % 4i)];
          u_xlat39 = (x_1767 + vec2<f32>(x_1775.x, x_1775.y));
          let x_1778 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1778 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1781 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1781);
          let x_1783 : u32 = u_xlatu47;
          let x_1786 : vec4<f32> = x_1604.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1783)];
          let x_1788 : vec2<f32> = u_xlat39;
          let x_1790 : u32 = u_xlatu47;
          let x_1793 : vec4<f32> = x_1604.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1790)];
          let x_1795 : vec2<f32> = ((vec2<f32>(x_1786.x, x_1786.y) * x_1788) + vec2<f32>(x_1793.z, x_1793.w));
          let x_1796 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1796.z, x_1796.w);
        } else {
          let x_1799 : vec3<f32> = vs_TEXCOORD7;
          let x_1801 : i32 = u_xlati52;
          let x_1804 : i32 = u_xlati52;
          let x_1808 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1801 + 1i) / 4i)][((x_1804 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1799.y, x_1799.y, x_1799.y, x_1799.y) * x_1808);
          let x_1810 : i32 = u_xlati52;
          let x_1812 : i32 = u_xlati52;
          let x_1815 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[(x_1810 / 4i)][(x_1812 % 4i)];
          let x_1816 : vec3<f32> = vs_TEXCOORD7;
          let x_1819 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1815 * vec4<f32>(x_1816.x, x_1816.x, x_1816.x, x_1816.x)) + x_1819);
          let x_1821 : i32 = u_xlati52;
          let x_1824 : i32 = u_xlati52;
          let x_1828 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1821 + 2i) / 4i)][((x_1824 + 2i) % 4i)];
          let x_1829 : vec3<f32> = vs_TEXCOORD7;
          let x_1832 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1828 * vec4<f32>(x_1829.z, x_1829.z, x_1829.z, x_1829.z)) + x_1832);
          let x_1834 : vec4<f32> = u_xlat12;
          let x_1835 : i32 = u_xlati52;
          let x_1838 : i32 = u_xlati52;
          let x_1842 : vec4<f32> = x_1604.x_AdditionalLightsWorldToLights[((x_1835 + 3i) / 4i)][((x_1838 + 3i) % 4i)];
          u_xlat12 = (x_1834 + x_1842);
          let x_1844 : vec4<f32> = u_xlat12;
          let x_1846 : vec4<f32> = u_xlat12;
          let x_1848 : vec3<f32> = (vec3<f32>(x_1844.x, x_1844.y, x_1844.z) / vec3<f32>(x_1846.w, x_1846.w, x_1846.w));
          let x_1849 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
          let x_1851 : vec4<f32> = u_xlat12;
          let x_1853 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1851.x, x_1851.y, x_1851.z), vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
          let x_1856 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1856);
          let x_1858 : f32 = u_xlat50;
          let x_1860 : vec4<f32> = u_xlat12;
          let x_1862 : vec3<f32> = (vec3<f32>(x_1858, x_1858, x_1858) * vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
          let x_1863 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
          let x_1865 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1865.x, x_1865.y, x_1865.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1870 : f32 = u_xlat50;
          u_xlat50 = max(x_1870, 0.000001f);
          let x_1873 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1873);
          let x_1875 : f32 = u_xlat50;
          let x_1877 : vec4<f32> = u_xlat12;
          let x_1879 : vec3<f32> = (vec3<f32>(x_1875, x_1875, x_1875) * vec3<f32>(x_1877.z, x_1877.x, x_1877.y));
          let x_1880 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
          let x_1883 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1883);
          let x_1887 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1887, 0.0f, 1.0f);
          let x_1891 : vec4<f32> = u_xlat13;
          let x_1894 : vec4<bool> = (vec4<f32>(x_1891.y, x_1891.z, x_1891.y, x_1891.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1894.x, x_1894.y);
          let x_1897 : bool = u_xlatb39.x;
          if (x_1897) {
            let x_1902 : f32 = u_xlat13.x;
            x_1898 = x_1902;
          } else {
            let x_1905 : f32 = u_xlat13.x;
            x_1898 = -(x_1905);
          }
          let x_1907 : f32 = x_1898;
          u_xlat39.x = x_1907;
          let x_1910 : bool = u_xlatb39.y;
          if (x_1910) {
            let x_1915 : f32 = u_xlat13.x;
            x_1911 = x_1915;
          } else {
            let x_1918 : f32 = u_xlat13.x;
            x_1911 = -(x_1918);
          }
          let x_1920 : f32 = x_1911;
          u_xlat39.y = x_1920;
          let x_1922 : vec4<f32> = u_xlat12;
          let x_1924 : f32 = u_xlat50;
          let x_1927 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1922.x, x_1922.y) * vec2<f32>(x_1924, x_1924)) + x_1927);
          let x_1929 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1929 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1932 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1932, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1936 : u32 = u_xlatu47;
          let x_1939 : vec4<f32> = x_1604.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1936)];
          let x_1941 : vec2<f32> = u_xlat39;
          let x_1943 : u32 = u_xlatu47;
          let x_1946 : vec4<f32> = x_1604.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1943)];
          let x_1948 : vec2<f32> = ((vec2<f32>(x_1939.x, x_1939.y) * x_1941) + vec2<f32>(x_1946.z, x_1946.w));
          let x_1949 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1948.x, x_1948.y, x_1949.z, x_1949.w);
        }
      }
      let x_1956 : vec4<f32> = u_xlat11;
      let x_1959 : f32 = x_126.x_GlobalMipBias.x;
      let x_1960 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1956.x, x_1956.y), x_1959);
      u_xlat11 = x_1960;
      let x_1962 : bool = u_xlatb20.y;
      if (x_1962) {
        let x_1967 : f32 = u_xlat11.w;
        x_1963 = x_1967;
      } else {
        let x_1970 : f32 = u_xlat11.x;
        x_1963 = x_1970;
      }
      let x_1971 : f32 = x_1963;
      u_xlat50 = x_1971;
      let x_1973 : bool = u_xlatb20.x;
      if (x_1973) {
        let x_1977 : vec4<f32> = u_xlat11;
        x_1974 = vec3<f32>(x_1977.x, x_1977.y, x_1977.z);
      } else {
        let x_1980 : f32 = u_xlat50;
        x_1974 = vec3<f32>(x_1980, x_1980, x_1980);
      }
      let x_1982 : vec3<f32> = x_1974;
      let x_1983 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1989 : vec4<f32> = u_xlat11;
    let x_1991 : u32 = u_xlatu47;
    let x_1994 : vec4<f32> = x_1495.x_AdditionalLightsColor[bitcast<i32>(x_1991)];
    let x_1996 : vec3<f32> = (vec3<f32>(x_1989.x, x_1989.y, x_1989.z) * vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
    let x_1997 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
    let x_1999 : vec4<f32> = u_xlat6;
    let x_2001 : vec4<f32> = u_xlat11;
    let x_2003 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.x, x_1999.x) * vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
    let x_2004 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
    let x_2006 : vec3<f32> = u_xlat2;
    let x_2007 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(x_2006, vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
    let x_2010 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2010, 0.0f, 1.0f);
    let x_2012 : f32 = u_xlat47;
    let x_2013 : f32 = u_xlat48;
    u_xlat47 = (x_2012 * x_2013);
    let x_2015 : f32 = u_xlat47;
    let x_2017 : vec4<f32> = u_xlat11;
    let x_2019 : vec3<f32> = (vec3<f32>(x_2015, x_2015, x_2015) * vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
    let x_2020 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
    let x_2022 : vec4<f32> = u_xlat9;
    let x_2024 : f32 = u_xlat49;
    let x_2027 : vec4<f32> = u_xlat1;
    let x_2029 : vec3<f32> = ((vec3<f32>(x_2022.x, x_2022.y, x_2022.z) * vec3<f32>(x_2024, x_2024, x_2024)) + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
    let x_2032 : vec4<f32> = u_xlat9;
    let x_2034 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2032.x, x_2032.y, x_2032.z), vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
    let x_2037 : f32 = u_xlat47;
    u_xlat47 = max(x_2037, 1.17549435e-37f);
    let x_2039 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2039);
    let x_2041 : f32 = u_xlat47;
    let x_2043 : vec4<f32> = u_xlat9;
    let x_2045 : vec3<f32> = (vec3<f32>(x_2041, x_2041, x_2041) * vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
    let x_2046 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
    let x_2048 : vec3<f32> = u_xlat2;
    let x_2049 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_2048, vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
    let x_2052 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2052, 0.0f, 1.0f);
    let x_2054 : vec4<f32> = u_xlat10;
    let x_2056 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2054.x, x_2054.y, x_2054.z), vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
    let x_2059 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2059, 0.0f, 1.0f);
    let x_2061 : f32 = u_xlat47;
    let x_2062 : f32 = u_xlat47;
    u_xlat47 = (x_2061 * x_2062);
    let x_2064 : f32 = u_xlat47;
    let x_2066 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2064 * x_2066) + 1.000010014f);
    let x_2069 : f32 = u_xlat48;
    let x_2070 : f32 = u_xlat48;
    u_xlat48 = (x_2069 * x_2070);
    let x_2072 : f32 = u_xlat47;
    let x_2073 : f32 = u_xlat47;
    u_xlat47 = (x_2072 * x_2073);
    let x_2075 : f32 = u_xlat48;
    u_xlat48 = max(x_2075, 0.100000001f);
    let x_2077 : f32 = u_xlat47;
    let x_2078 : f32 = u_xlat48;
    u_xlat47 = (x_2077 * x_2078);
    let x_2080 : f32 = u_xlat46;
    let x_2081 : f32 = u_xlat47;
    u_xlat47 = (x_2080 * x_2081);
    let x_2083 : f32 = u_xlat44;
    let x_2084 : f32 = u_xlat47;
    u_xlat47 = (x_2083 / x_2084);
    let x_2086 : vec4<f32> = u_xlat5;
    let x_2088 : f32 = u_xlat47;
    let x_2091 : vec4<f32> = u_xlat7;
    let x_2093 : vec3<f32> = ((vec3<f32>(x_2086.x, x_2086.y, x_2086.z) * vec3<f32>(x_2088, x_2088, x_2088)) + vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
    let x_2094 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
    let x_2096 : vec4<f32> = u_xlat9;
    let x_2098 : vec4<f32> = u_xlat11;
    let x_2101 : vec4<f32> = u_xlat8;
    let x_2103 : vec3<f32> = ((vec3<f32>(x_2096.x, x_2096.y, x_2096.z) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z)) + vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);

    continuing {
      let x_2106 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2106 + bitcast<u32>(1i));
    }
  }
  let x_2108 : vec3<f32> = u_xlat17;
  let x_2109 : f32 = u_xlat14;
  let x_2112 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_2108 * vec3<f32>(x_2109, x_2109, x_2109)) + vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : vec4<f32> = u_xlat8;
  let x_2117 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2115.x, x_2115.y, x_2115.z) + x_2117);
  let x_2119 : f32 = u_xlat43;
  let x_2120 : f32 = u_xlat43;
  u_xlat1.x = (x_2119 * -(x_2120));
  let x_2125 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2125);
  let x_2128 : vec3<f32> = u_xlat0;
  let x_2129 : f32 = u_xlat42;
  let x_2133 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_2128 * vec3<f32>(x_2129, x_2129, x_2129)) + -(vec3<f32>(x_2133.x, x_2133.y, x_2133.z)));
  let x_2139 : vec4<f32> = u_xlat1;
  let x_2141 : vec3<f32> = u_xlat0;
  let x_2144 : vec4<f32> = x_126.unity_FogColor;
  let x_2146 : vec3<f32> = ((vec3<f32>(x_2139.x, x_2139.x, x_2139.x) * x_2141) + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
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

