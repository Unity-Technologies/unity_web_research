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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_887 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1092 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_1163 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1658 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1767 : AdditionalLightsCookies;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat16 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlat45 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_1117 : f32;
  var u_xlat47 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_1246 : f32;
  var x_1257 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb3 : vec2<bool>;
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
  var x_2061 : f32;
  var x_2074 : f32;
  var x_2126 : f32;
  var x_2137 : vec3<f32>;
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
  let x_370 : vec4<f32> = vs_TEXCOORD1;
  let x_373 : f32 = x_126.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_370.x, x_370.y), x_373);
  let x_375 : vec3<f32> = vec3<f32>(x_374.x, x_374.y, x_374.w);
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = u_xlat6.x;
  let x_381 : f32 = u_xlat6.z;
  u_xlat6.x = (x_379 * x_381);
  let x_384 : vec4<f32> = u_xlat6;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_397 : f32 = u_xlat43;
  u_xlat43 = min(x_397, 1.0f);
  let x_399 : f32 = u_xlat43;
  u_xlat43 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_402);
  let x_404 : f32 = u_xlat43;
  u_xlat7.z = max(x_404, 1.00000002e-16f);
  let x_408 : vec4<f32> = u_xlat6;
  let x_412 : f32 = x_30.x_NormalScale0;
  let x_414 : vec2<f32> = (vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_424 : f32 = x_126.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_421.z, x_421.w), x_424);
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat6.z;
  u_xlat6.x = (x_430 * x_432);
  let x_435 : vec4<f32> = u_xlat6;
  let x_438 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
  let x_446 : f32 = u_xlat43;
  u_xlat43 = min(x_446, 1.0f);
  let x_448 : f32 = u_xlat43;
  u_xlat43 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_451);
  let x_453 : f32 = u_xlat43;
  u_xlat8.z = max(x_453, 1.00000002e-16f);
  let x_456 : vec4<f32> = u_xlat6;
  let x_459 : f32 = x_30.x_NormalScale1;
  let x_461 : f32 = x_30.x_NormalScale1;
  let x_462 : vec2<f32> = vec2<f32>(x_459, x_461);
  let x_466 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.y, x_469.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_490 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : f32 = x_126.x_GlobalMipBias.x;
  let x_494 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_490.x, x_490.y), x_493);
  let x_495 : vec3<f32> = vec3<f32>(x_494.x, x_494.y, x_494.w);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat7.z;
  u_xlat7.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_510.x, x_510.y), vec2<f32>(x_512.x, x_512.y));
  let x_515 : f32 = u_xlat43;
  u_xlat43 = min(x_515, 1.0f);
  let x_517 : f32 = u_xlat43;
  u_xlat43 = (-(x_517) + 1.0f);
  let x_520 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_520);
  let x_522 : f32 = u_xlat43;
  u_xlat8.z = max(x_522, 1.00000002e-16f);
  let x_525 : vec4<f32> = u_xlat7;
  let x_529 : f32 = x_30.x_NormalScale2;
  let x_531 : f32 = x_30.x_NormalScale2;
  let x_532 : vec2<f32> = vec2<f32>(x_529, x_531);
  let x_536 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_532.x, x_532.y));
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.z, x_539.z, x_539.z) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_553 : vec4<f32> = vs_TEXCOORD2;
  let x_556 : f32 = x_126.x_GlobalMipBias.x;
  let x_557 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_553.z, x_553.w), x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.w);
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat7.z;
  u_xlat7.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat7;
  let x_570 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_573.x, x_573.y), vec2<f32>(x_575.x, x_575.y));
  let x_578 : f32 = u_xlat43;
  u_xlat43 = min(x_578, 1.0f);
  let x_580 : f32 = u_xlat43;
  u_xlat43 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_583);
  let x_585 : f32 = u_xlat43;
  u_xlat8.z = max(x_585, 1.00000002e-16f);
  let x_588 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_30.x_NormalScale3;
  let x_594 : f32 = x_30.x_NormalScale3;
  let x_595 : vec2<f32> = vec2<f32>(x_592, x_594);
  let x_599 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.w, x_602.w, x_602.w) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.z;
  u_xlat6.w = (x_613 + 0.00001f);
  let x_617 : vec4<f32> = u_xlat6;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_617.x, x_617.y, x_617.w), vec3<f32>(x_619.x, x_619.y, x_619.w));
  let x_622 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat43;
  let x_626 : vec4<f32> = u_xlat6;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.w));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_632;
  let x_635 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_635;
  let x_638 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_638;
  let x_641 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_641;
  let x_644 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_644;
  let x_647 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_647;
  let x_650 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_650;
  let x_653 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_653;
  let x_655 : vec4<f32> = u_xlat7;
  let x_656 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_655 + x_656);
  let x_659 : f32 = u_xlat0.z;
  u_xlat8.x = x_659;
  let x_662 : f32 = u_xlat1.z;
  u_xlat8.y = x_662;
  let x_665 : f32 = u_xlat2.z;
  u_xlat8.z = x_665;
  let x_668 : f32 = u_xlat3.y;
  u_xlat8.w = x_668;
  let x_670 : vec4<f32> = u_xlat9;
  let x_673 : f32 = x_30.x_Smoothness0;
  let x_675 : f32 = x_30.x_Smoothness1;
  let x_677 : f32 = x_30.x_Smoothness2;
  let x_679 : f32 = x_30.x_Smoothness3;
  let x_682 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_670) * vec4<f32>(x_673, x_675, x_677, x_679)) + x_682);
  let x_686 : f32 = x_30.x_LayerHasMask0;
  let x_689 : f32 = x_30.x_LayerHasMask1;
  let x_692 : f32 = x_30.x_LayerHasMask2;
  let x_695 : f32 = x_30.x_LayerHasMask3;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_686, x_689, x_692, x_695) * x_697) + x_699);
  let x_702 : vec4<f32> = u_xlat4;
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat0.x;
  u_xlat8.x = x_706;
  let x_709 : f32 = u_xlat1.x;
  u_xlat8.y = x_709;
  let x_712 : f32 = u_xlat2.x;
  u_xlat8.z = x_712;
  let x_715 : f32 = u_xlat3.x;
  u_xlat8.w = x_715;
  let x_717 : vec4<f32> = u_xlat8;
  let x_720 : f32 = x_30.x_Metallic0;
  let x_723 : f32 = x_30.x_Metallic1;
  let x_726 : f32 = x_30.x_Metallic2;
  let x_729 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_717 + -(vec4<f32>(x_720, x_723, x_726, x_729)));
  let x_734 : f32 = x_30.x_LayerHasMask0;
  let x_736 : f32 = x_30.x_LayerHasMask1;
  let x_738 : f32 = x_30.x_LayerHasMask2;
  let x_740 : f32 = x_30.x_LayerHasMask3;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_30.x_Metallic0;
  let x_747 : f32 = x_30.x_Metallic1;
  let x_749 : f32 = x_30.x_Metallic2;
  let x_751 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_734, x_736, x_738, x_740) * x_742) + vec4<f32>(x_745, x_747, x_749, x_751));
  let x_754 : vec4<f32> = u_xlat4;
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat0.y;
  u_xlat3.x = x_759;
  let x_762 : f32 = u_xlat1.y;
  u_xlat3.y = x_762;
  let x_765 : f32 = u_xlat2.y;
  u_xlat3.z = x_765;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_767) + x_769);
  let x_772 : f32 = x_30.x_LayerHasMask0;
  let x_774 : f32 = x_30.x_LayerHasMask1;
  let x_776 : f32 = x_30.x_LayerHasMask2;
  let x_778 : f32 = x_30.x_LayerHasMask3;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_772, x_774, x_776, x_778) * x_780) + x_782);
  let x_785 : vec4<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_785, x_786);
  let x_788 : vec4<f32> = u_xlat6;
  let x_791 : vec4<f32> = vs_TEXCOORD5;
  let x_793 : vec3<f32> = (vec3<f32>(x_788.y, x_788.y, x_788.y) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * -(vec3<f32>(x_799.x, x_799.y, x_799.z))) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD3;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_808.z, x_808.z, x_808.z) * vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat43;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_836 : f32 = vs_TEXCOORD7.y;
  let x_838 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.x = (x_836 * x_838);
  let x_842 : f32 = x_126.unity_MatrixV[0i].z;
  let x_844 : f32 = vs_TEXCOORD7.x;
  let x_847 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_842 * x_844) + x_847);
  let x_851 : f32 = x_126.unity_MatrixV[2i].z;
  let x_853 : f32 = vs_TEXCOORD7.z;
  let x_856 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_851 * x_853) + x_856);
  let x_860 : f32 = u_xlat2.x;
  let x_862 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat2.x = (x_860 + x_862);
  let x_866 : f32 = u_xlat2.x;
  let x_869 : f32 = x_126.x_ProjectionParams.y;
  u_xlat2.x = (-(x_866) + -(x_869));
  let x_874 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_874, 0.0f);
  let x_878 : f32 = u_xlat2.x;
  let x_880 : f32 = x_126.unity_FogParams.x;
  u_xlat2.x = (x_878 * x_880);
  u_xlat1.w = 1.0f;
  let x_889 : vec4<f32> = x_887.unity_SHAr;
  let x_890 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_889, x_890);
  let x_894 : vec4<f32> = x_887.unity_SHAg;
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_894, x_895);
  let x_899 : vec4<f32> = x_887.unity_SHAb;
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_899, x_900);
  let x_903 : vec4<f32> = u_xlat1;
  let x_905 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_903.y, x_903.z, x_903.z, x_903.x) * vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.z));
  let x_909 : vec4<f32> = x_887.unity_SHBr;
  let x_910 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_909, x_910);
  let x_914 : vec4<f32> = x_887.unity_SHBg;
  let x_915 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_914, x_915);
  let x_919 : vec4<f32> = x_887.unity_SHBb;
  let x_920 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_919, x_920);
  let x_924 : f32 = u_xlat1.y;
  let x_926 : f32 = u_xlat1.y;
  u_xlat43 = (x_924 * x_926);
  let x_929 : f32 = u_xlat1.x;
  let x_931 : f32 = u_xlat1.x;
  let x_933 : f32 = u_xlat43;
  u_xlat43 = ((x_929 * x_931) + -(x_933));
  let x_939 : vec4<f32> = x_887.unity_SHC;
  let x_941 : f32 = u_xlat43;
  let x_944 : vec4<f32> = u_xlat6;
  u_xlat16 = ((vec3<f32>(x_939.x, x_939.y, x_939.z) * vec3<f32>(x_941, x_941, x_941)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec3<f32> = u_xlat16;
  let x_948 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_947 + vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_951, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
  let x_961 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_957.x, x_957.y));
  let x_962 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat3;
  let x_966 : vec4<f32> = hlslcc_FragCoord;
  let x_968 : vec2<f32> = (vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_966.x, x_966.y));
  let x_969 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
  let x_972 : f32 = u_xlat3.y;
  let x_974 : f32 = x_126.x_ScaleBiasRt.x;
  let x_977 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_972 * x_974) + x_977);
  let x_979 : f32 = u_xlat43;
  u_xlat3.z = (-(x_979) + 1.0f);
  let x_984 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_984) * 0.959999979f) + 0.959999979f);
  let x_990 : f32 = u_xlat28;
  let x_991 : f32 = u_xlat43;
  u_xlat17 = (x_990 + -(x_991));
  let x_994 : f32 = u_xlat43;
  let x_996 : vec4<f32> = u_xlat5;
  let x_998 : vec3<f32> = (vec3<f32>(x_994, x_994, x_994) * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat5;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1006 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec3<f32> = u_xlat0;
  let x_1010 : vec4<f32> = u_xlat5;
  let x_1015 : vec3<f32> = ((vec3<f32>(x_1008.x, x_1008.x, x_1008.x) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1016 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1018) + 1.0f);
  let x_1023 : f32 = u_xlat0.x;
  let x_1025 : f32 = u_xlat0.x;
  u_xlat28 = (x_1023 * x_1025);
  let x_1027 : f32 = u_xlat28;
  u_xlat28 = max(x_1027, 0.0078125f);
  let x_1030 : f32 = u_xlat28;
  let x_1031 : f32 = u_xlat28;
  u_xlat43 = (x_1030 * x_1031);
  let x_1033 : f32 = u_xlat17;
  u_xlat17 = (x_1033 + 1.0f);
  let x_1035 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1035, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat28;
  u_xlat45 = ((x_1038 * 4.0f) + 2.0f);
  let x_1046 : vec4<f32> = u_xlat3;
  let x_1049 : f32 = x_126.x_GlobalMipBias.x;
  let x_1050 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1046.x, x_1046.z), x_1049);
  u_xlat3.x = x_1050.x;
  let x_1055 : f32 = u_xlat3.x;
  u_xlat31 = (x_1055 + -1.0f);
  let x_1058 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_1059 : f32 = u_xlat31;
  u_xlat31 = ((x_1058 * x_1059) + 1.0f);
  let x_1062 : f32 = u_xlat14;
  let x_1064 : f32 = u_xlat3.x;
  u_xlat14 = min(x_1062, x_1064);
  let x_1068 : vec4<f32> = vs_TEXCOORD8;
  let x_1069 : vec2<f32> = vec2<f32>(x_1068.x, x_1068.y);
  let x_1071 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
  let x_1083 : vec3<f32> = txVec0;
  let x_1085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1083.xy, x_1083.z);
  u_xlat3.x = x_1085;
  let x_1094 : f32 = x_1092.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_1094) + 1.0f);
  let x_1098 : f32 = u_xlat3.x;
  let x_1100 : f32 = x_1092.x_MainLightShadowParams.x;
  let x_1102 : f32 = u_xlat46;
  u_xlat3.x = ((x_1098 * x_1100) + x_1102);
  let x_1107 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_1107);
  let x_1111 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_1111 >= 1.0f);
  let x_1113 : bool = u_xlatb46;
  let x_1114 : bool = u_xlatb47;
  u_xlatb46 = (x_1113 | x_1114);
  let x_1116 : bool = u_xlatb46;
  if (x_1116) {
    x_1117 = 1.0f;
  } else {
    let x_1122 : f32 = u_xlat3.x;
    x_1117 = x_1122;
  }
  let x_1123 : f32 = x_1117;
  u_xlat3.x = x_1123;
  let x_1125 : vec3<f32> = vs_TEXCOORD7;
  let x_1128 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1130 : vec3<f32> = (x_1125 + -(x_1128));
  let x_1131 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec4<f32> = u_xlat6;
  let x_1135 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1133.x, x_1133.y, x_1133.z), vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : f32 = u_xlat46;
  let x_1140 : f32 = x_1092.x_MainLightShadowParams.z;
  let x_1143 : f32 = x_1092.x_MainLightShadowParams.w;
  u_xlat46 = ((x_1138 * x_1140) + x_1143);
  let x_1145 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1145, 0.0f, 1.0f);
  let x_1149 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1149) + 1.0f);
  let x_1152 : f32 = u_xlat46;
  let x_1153 : f32 = u_xlat47;
  let x_1156 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1152 * x_1153) + x_1156);
  let x_1165 : f32 = x_1163.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_1165 == -1.0f));
  let x_1167 : bool = u_xlatb46;
  if (x_1167) {
    let x_1170 : vec3<f32> = vs_TEXCOORD7;
    let x_1173 : vec4<f32> = x_1163.x_MainLightWorldToLight[1i];
    let x_1175 : vec2<f32> = (vec2<f32>(x_1170.y, x_1170.y) * vec2<f32>(x_1173.x, x_1173.y));
    let x_1176 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
    let x_1179 : vec4<f32> = x_1163.x_MainLightWorldToLight[0i];
    let x_1181 : vec3<f32> = vs_TEXCOORD7;
    let x_1184 : vec4<f32> = u_xlat6;
    let x_1186 : vec2<f32> = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1181.x, x_1181.x)) + vec2<f32>(x_1184.x, x_1184.y));
    let x_1187 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
    let x_1190 : vec4<f32> = x_1163.x_MainLightWorldToLight[2i];
    let x_1192 : vec3<f32> = vs_TEXCOORD7;
    let x_1195 : vec4<f32> = u_xlat6;
    let x_1197 : vec2<f32> = ((vec2<f32>(x_1190.x, x_1190.y) * vec2<f32>(x_1192.z, x_1192.z)) + vec2<f32>(x_1195.x, x_1195.y));
    let x_1198 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
    let x_1200 : vec4<f32> = u_xlat6;
    let x_1203 : vec4<f32> = x_1163.x_MainLightWorldToLight[3i];
    let x_1205 : vec2<f32> = (vec2<f32>(x_1200.x, x_1200.y) + vec2<f32>(x_1203.x, x_1203.y));
    let x_1206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
    let x_1208 : vec4<f32> = u_xlat6;
    let x_1211 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1212 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
    let x_1219 : vec4<f32> = u_xlat6;
    let x_1222 : f32 = x_126.x_GlobalMipBias.x;
    let x_1223 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1219.x, x_1219.y), x_1222);
    u_xlat6 = x_1223;
    let x_1228 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1230 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1232 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1234 : f32 = x_1163.x_MainLightCookieTextureFormat;
    let x_1235 : vec4<f32> = vec4<f32>(x_1228, x_1230, x_1232, x_1234);
    let x_1242 : vec4<bool> = (vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1242.x, x_1242.y);
    let x_1245 : bool = u_xlatb7.y;
    if (x_1245) {
      let x_1250 : f32 = u_xlat6.w;
      x_1246 = x_1250;
    } else {
      let x_1253 : f32 = u_xlat6.x;
      x_1246 = x_1253;
    }
    let x_1254 : f32 = x_1246;
    u_xlat46 = x_1254;
    let x_1256 : bool = u_xlatb7.x;
    if (x_1256) {
      let x_1260 : vec4<f32> = u_xlat6;
      x_1257 = vec3<f32>(x_1260.x, x_1260.y, x_1260.z);
    } else {
      let x_1263 : f32 = u_xlat46;
      x_1257 = vec3<f32>(x_1263, x_1263, x_1263);
    }
    let x_1265 : vec3<f32> = x_1257;
    let x_1266 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1272 : vec4<f32> = u_xlat6;
  let x_1275 : vec4<f32> = x_126.x_MainLightColor;
  let x_1277 : vec3<f32> = (vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : f32 = u_xlat31;
  let x_1282 : vec4<f32> = u_xlat6;
  let x_1284 : vec3<f32> = (vec3<f32>(x_1280, x_1280, x_1280) * vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1288 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1288;
  let x_1291 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1291;
  let x_1294 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1294;
  let x_1296 : vec4<f32> = u_xlat7;
  let x_1299 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(-(vec3<f32>(x_1296.x, x_1296.y, x_1296.z)), vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
  let x_1302 : f32 = u_xlat46;
  let x_1303 : f32 = u_xlat46;
  u_xlat46 = (x_1302 + x_1303);
  let x_1305 : vec4<f32> = u_xlat1;
  let x_1307 : f32 = u_xlat46;
  let x_1311 : vec4<f32> = u_xlat7;
  let x_1314 : vec3<f32> = ((vec3<f32>(x_1305.x, x_1305.y, x_1305.z) * -(vec3<f32>(x_1307, x_1307, x_1307))) + -(vec3<f32>(x_1311.x, x_1311.y, x_1311.z)));
  let x_1315 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
  let x_1317 : vec4<f32> = u_xlat1;
  let x_1319 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_1317.x, x_1317.y, x_1317.z), vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1322 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1322, 0.0f, 1.0f);
  let x_1324 : f32 = u_xlat46;
  u_xlat46 = (-(x_1324) + 1.0f);
  let x_1327 : f32 = u_xlat46;
  let x_1328 : f32 = u_xlat46;
  u_xlat46 = (x_1327 * x_1328);
  let x_1330 : f32 = u_xlat46;
  let x_1331 : f32 = u_xlat46;
  u_xlat46 = (x_1330 * x_1331);
  let x_1334 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1334) * 0.699999988f) + 1.700000048f);
  let x_1341 : f32 = u_xlat0.x;
  let x_1342 : f32 = u_xlat47;
  u_xlat0.x = (x_1341 * x_1342);
  let x_1346 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1346 * 6.0f);
  let x_1358 : vec4<f32> = u_xlat8;
  let x_1361 : f32 = u_xlat0.x;
  let x_1362 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1358.x, x_1358.y, x_1358.z), x_1361);
  u_xlat8 = x_1362;
  let x_1364 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1364 + -1.0f);
  let x_1368 : f32 = x_887.unity_SpecCube0_HDR.w;
  let x_1370 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1368 * x_1370) + 1.0f);
  let x_1375 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1375, 0.0f);
  let x_1379 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1379);
  let x_1383 : f32 = u_xlat0.x;
  let x_1385 : f32 = x_887.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1383 * x_1385);
  let x_1389 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1389);
  let x_1393 : f32 = u_xlat0.x;
  let x_1395 : f32 = x_887.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1393 * x_1395);
  let x_1398 : vec4<f32> = u_xlat8;
  let x_1400 : vec3<f32> = u_xlat0;
  let x_1402 : vec3<f32> = (vec3<f32>(x_1398.x, x_1398.y, x_1398.z) * vec3<f32>(x_1400.x, x_1400.x, x_1400.x));
  let x_1403 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1405 : f32 = u_xlat28;
  let x_1407 : f32 = u_xlat28;
  let x_1411 : vec2<f32> = ((vec2<f32>(x_1405, x_1405) * vec2<f32>(x_1407, x_1407)) + vec2<f32>(-1.0f, 1.0f));
  let x_1412 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1411.x, x_1412.y, x_1411.y);
  let x_1415 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1415);
  let x_1417 : vec4<f32> = u_xlat5;
  let x_1420 : f32 = u_xlat17;
  let x_1422 : vec3<f32> = (-(vec3<f32>(x_1417.x, x_1417.y, x_1417.z)) + vec3<f32>(x_1420, x_1420, x_1420));
  let x_1423 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : f32 = u_xlat46;
  let x_1427 : vec4<f32> = u_xlat9;
  let x_1430 : vec4<f32> = u_xlat5;
  let x_1432 : vec3<f32> = ((vec3<f32>(x_1425, x_1425, x_1425) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z)) + vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1433 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  let x_1435 : f32 = u_xlat28;
  let x_1437 : vec4<f32> = u_xlat9;
  let x_1439 : vec3<f32> = (vec3<f32>(x_1435, x_1435, x_1435) * vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1442 : vec4<f32> = u_xlat8;
  let x_1444 : vec4<f32> = u_xlat9;
  let x_1446 : vec3<f32> = (vec3<f32>(x_1442.x, x_1442.y, x_1442.z) * vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
  let x_1447 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
  let x_1449 : vec3<f32> = u_xlat16;
  let x_1450 : vec4<f32> = u_xlat4;
  let x_1453 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_1449 * vec3<f32>(x_1450.x, x_1450.y, x_1450.z)) + vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1457 : f32 = u_xlat3.x;
  let x_1459 : f32 = x_887.unity_LightData.z;
  u_xlat28 = (x_1457 * x_1459);
  let x_1461 : vec4<f32> = u_xlat1;
  let x_1464 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1461.x, x_1461.y, x_1461.z), vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
  let x_1469 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1469, 0.0f, 1.0f);
  let x_1472 : f32 = u_xlat28;
  let x_1474 : f32 = u_xlat3.x;
  u_xlat28 = (x_1472 * x_1474);
  let x_1476 : f32 = u_xlat28;
  let x_1478 : vec4<f32> = u_xlat6;
  let x_1480 : vec3<f32> = (vec3<f32>(x_1476, x_1476, x_1476) * vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  let x_1483 : vec4<f32> = u_xlat7;
  let x_1486 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1488 : vec3<f32> = (vec3<f32>(x_1483.x, x_1483.y, x_1483.z) + vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
  let x_1489 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
  let x_1491 : vec4<f32> = u_xlat8;
  let x_1493 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1491.x, x_1491.y, x_1491.z), vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
  let x_1496 : f32 = u_xlat28;
  u_xlat28 = max(x_1496, 1.17549435e-37f);
  let x_1499 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1499);
  let x_1501 : f32 = u_xlat28;
  let x_1503 : vec4<f32> = u_xlat8;
  let x_1505 : vec3<f32> = (vec3<f32>(x_1501, x_1501, x_1501) * vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
  let x_1506 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
  let x_1508 : vec4<f32> = u_xlat1;
  let x_1510 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1508.x, x_1508.y, x_1508.z), vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
  let x_1513 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1513, 0.0f, 1.0f);
  let x_1516 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1518 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1516.x, x_1516.y, x_1516.z), vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
  let x_1523 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1523, 0.0f, 1.0f);
  let x_1526 : f32 = u_xlat28;
  let x_1527 : f32 = u_xlat28;
  u_xlat28 = (x_1526 * x_1527);
  let x_1529 : f32 = u_xlat28;
  let x_1531 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1529 * x_1531) + 1.000010014f);
  let x_1536 : f32 = u_xlat3.x;
  let x_1538 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1536 * x_1538);
  let x_1541 : f32 = u_xlat28;
  let x_1542 : f32 = u_xlat28;
  u_xlat28 = (x_1541 * x_1542);
  let x_1545 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1545, 0.100000001f);
  let x_1549 : f32 = u_xlat28;
  let x_1551 : f32 = u_xlat3.x;
  u_xlat28 = (x_1549 * x_1551);
  let x_1553 : f32 = u_xlat45;
  let x_1554 : f32 = u_xlat28;
  u_xlat28 = (x_1553 * x_1554);
  let x_1556 : f32 = u_xlat43;
  let x_1557 : f32 = u_xlat28;
  u_xlat28 = (x_1556 / x_1557);
  let x_1559 : vec4<f32> = u_xlat5;
  let x_1561 : f32 = u_xlat28;
  let x_1564 : vec4<f32> = u_xlat4;
  let x_1566 : vec3<f32> = ((vec3<f32>(x_1559.x, x_1559.y, x_1559.z) * vec3<f32>(x_1561, x_1561, x_1561)) + vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
  let x_1567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
  let x_1569 : vec4<f32> = u_xlat6;
  let x_1571 : vec4<f32> = u_xlat8;
  let x_1573 : vec3<f32> = (vec3<f32>(x_1569.x, x_1569.y, x_1569.z) * vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
  let x_1577 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1579 : f32 = x_887.unity_LightData.y;
  u_xlat28 = min(x_1577, x_1579);
  let x_1583 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1583));
  let x_1588 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1590 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1592 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1594 : f32 = x_1163.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1595 : vec4<f32> = vec4<f32>(x_1588, x_1590, x_1592, x_1594);
  let x_1601 : vec4<bool> = (vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1595.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_1601.x, x_1601.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1612 : u32 = u_xlatu_loop_1;
    let x_1613 : u32 = u_xlatu28;
    if ((x_1612 < x_1613)) {
    } else {
      break;
    }
    let x_1616 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1616 >> 2u);
    let x_1620 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1620 & 3u));
    let x_1623 : u32 = u_xlatu47;
    let x_1626 : vec4<f32> = x_887.unity_LightIndices[bitcast<i32>(x_1623)];
    let x_1636 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1641 : vec4<u32> = indexable[x_1636];
    u_xlat47 = dot(x_1626, bitcast<vec4<f32>>(x_1641));
    let x_1644 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1644));
    let x_1647 : vec3<f32> = vs_TEXCOORD7;
    let x_1659 : u32 = u_xlatu47;
    let x_1662 : vec4<f32> = x_1658.x_AdditionalLightsPosition[bitcast<i32>(x_1659)];
    let x_1665 : u32 = u_xlatu47;
    let x_1668 : vec4<f32> = x_1658.x_AdditionalLightsPosition[bitcast<i32>(x_1665)];
    let x_1670 : vec3<f32> = ((-(x_1647) * vec3<f32>(x_1662.w, x_1662.w, x_1662.w)) + vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
    let x_1671 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
    let x_1674 : vec4<f32> = u_xlat9;
    let x_1676 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
    let x_1679 : f32 = u_xlat48;
    u_xlat48 = max(x_1679, 6.10351562e-05f);
    let x_1682 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1682);
    let x_1684 : f32 = u_xlat49;
    let x_1686 : vec4<f32> = u_xlat9;
    let x_1688 : vec3<f32> = (vec3<f32>(x_1684, x_1684, x_1684) * vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
    let x_1689 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
    let x_1692 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1692);
    let x_1694 : f32 = u_xlat48;
    let x_1695 : u32 = u_xlatu47;
    let x_1698 : f32 = x_1658.x_AdditionalLightsAttenuation[bitcast<i32>(x_1695)].x;
    u_xlat48 = (x_1694 * x_1698);
    let x_1700 : f32 = u_xlat48;
    let x_1702 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1700) * x_1702) + 1.0f);
    let x_1705 : f32 = u_xlat48;
    u_xlat48 = max(x_1705, 0.0f);
    let x_1707 : f32 = u_xlat48;
    let x_1708 : f32 = u_xlat48;
    u_xlat48 = (x_1707 * x_1708);
    let x_1710 : f32 = u_xlat48;
    let x_1711 : f32 = u_xlat50;
    u_xlat48 = (x_1710 * x_1711);
    let x_1713 : u32 = u_xlatu47;
    let x_1716 : vec4<f32> = x_1658.x_AdditionalLightsSpotDir[bitcast<i32>(x_1713)];
    let x_1718 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1716.x, x_1716.y, x_1716.z), vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
    let x_1721 : f32 = u_xlat50;
    let x_1722 : u32 = u_xlatu47;
    let x_1725 : f32 = x_1658.x_AdditionalLightsAttenuation[bitcast<i32>(x_1722)].z;
    let x_1727 : u32 = u_xlatu47;
    let x_1730 : f32 = x_1658.x_AdditionalLightsAttenuation[bitcast<i32>(x_1727)].w;
    u_xlat50 = ((x_1721 * x_1725) + x_1730);
    let x_1732 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1732, 0.0f, 1.0f);
    let x_1734 : f32 = u_xlat50;
    let x_1735 : f32 = u_xlat50;
    u_xlat50 = (x_1734 * x_1735);
    let x_1737 : f32 = u_xlat48;
    let x_1738 : f32 = u_xlat50;
    u_xlat48 = (x_1737 * x_1738);
    let x_1741 : u32 = u_xlatu47;
    u_xlatu50 = (x_1741 >> 5u);
    let x_1744 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1744) & 31i)));
    let x_1749 : i32 = u_xlati51;
    let x_1751 : u32 = u_xlatu50;
    let x_1754 : f32 = x_1163.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1751)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1749) & bitcast<u32>(x_1754)));
    let x_1758 : i32 = u_xlati50;
    if ((x_1758 != 0i)) {
      let x_1768 : u32 = u_xlatu47;
      let x_1771 : f32 = x_1767.x_AdditionalLightsLightTypes[bitcast<i32>(x_1768)].el;
      u_xlati50 = i32(x_1771);
      let x_1773 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1773 != 0i));
      let x_1777 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1777) << bitcast<u32>(2i));
      let x_1780 : i32 = u_xlati51;
      if ((x_1780 != 0i)) {
        let x_1784 : vec3<f32> = vs_TEXCOORD7;
        let x_1786 : i32 = u_xlati52;
        let x_1789 : i32 = u_xlati52;
        let x_1793 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1786 + 1i) / 4i)][((x_1789 + 1i) % 4i)];
        let x_1795 : vec3<f32> = (vec3<f32>(x_1784.y, x_1784.y, x_1784.y) * vec3<f32>(x_1793.x, x_1793.y, x_1793.w));
        let x_1796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
        let x_1798 : i32 = u_xlati52;
        let x_1800 : i32 = u_xlati52;
        let x_1803 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[(x_1798 / 4i)][(x_1800 % 4i)];
        let x_1805 : vec3<f32> = vs_TEXCOORD7;
        let x_1808 : vec4<f32> = u_xlat11;
        let x_1810 : vec3<f32> = ((vec3<f32>(x_1803.x, x_1803.y, x_1803.w) * vec3<f32>(x_1805.x, x_1805.x, x_1805.x)) + vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
        let x_1811 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
        let x_1813 : i32 = u_xlati52;
        let x_1816 : i32 = u_xlati52;
        let x_1820 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1813 + 2i) / 4i)][((x_1816 + 2i) % 4i)];
        let x_1822 : vec3<f32> = vs_TEXCOORD7;
        let x_1825 : vec4<f32> = u_xlat11;
        let x_1827 : vec3<f32> = ((vec3<f32>(x_1820.x, x_1820.y, x_1820.w) * vec3<f32>(x_1822.z, x_1822.z, x_1822.z)) + vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
        let x_1828 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
        let x_1830 : vec4<f32> = u_xlat11;
        let x_1832 : i32 = u_xlati52;
        let x_1835 : i32 = u_xlati52;
        let x_1839 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1832 + 3i) / 4i)][((x_1835 + 3i) % 4i)];
        let x_1841 : vec3<f32> = (vec3<f32>(x_1830.x, x_1830.y, x_1830.z) + vec3<f32>(x_1839.x, x_1839.y, x_1839.w));
        let x_1842 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
        let x_1844 : vec4<f32> = u_xlat11;
        let x_1846 : vec4<f32> = u_xlat11;
        let x_1848 : vec2<f32> = (vec2<f32>(x_1844.x, x_1844.y) / vec2<f32>(x_1846.z, x_1846.z));
        let x_1849 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1848.x, x_1848.y, x_1849.z, x_1849.w);
        let x_1851 : vec4<f32> = u_xlat11;
        let x_1854 : vec2<f32> = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1855 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
        let x_1857 : vec4<f32> = u_xlat11;
        let x_1861 : vec2<f32> = clamp(vec2<f32>(x_1857.x, x_1857.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
        let x_1864 : u32 = u_xlatu47;
        let x_1867 : vec4<f32> = x_1767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1864)];
        let x_1869 : vec4<f32> = u_xlat11;
        let x_1872 : u32 = u_xlatu47;
        let x_1875 : vec4<f32> = x_1767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1872)];
        let x_1877 : vec2<f32> = ((vec2<f32>(x_1867.x, x_1867.y) * vec2<f32>(x_1869.x, x_1869.y)) + vec2<f32>(x_1875.z, x_1875.w));
        let x_1878 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
      } else {
        let x_1882 : i32 = u_xlati50;
        u_xlatb50 = (x_1882 == 1i);
        let x_1884 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1884);
        let x_1886 : i32 = u_xlati50;
        if ((x_1886 != 0i)) {
          let x_1892 : vec3<f32> = vs_TEXCOORD7;
          let x_1894 : i32 = u_xlati52;
          let x_1897 : i32 = u_xlati52;
          let x_1901 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1894 + 1i) / 4i)][((x_1897 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1892.y, x_1892.y) * vec2<f32>(x_1901.x, x_1901.y));
          let x_1904 : i32 = u_xlati52;
          let x_1906 : i32 = u_xlati52;
          let x_1909 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[(x_1904 / 4i)][(x_1906 % 4i)];
          let x_1911 : vec3<f32> = vs_TEXCOORD7;
          let x_1914 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1909.x, x_1909.y) * vec2<f32>(x_1911.x, x_1911.x)) + x_1914);
          let x_1916 : i32 = u_xlati52;
          let x_1919 : i32 = u_xlati52;
          let x_1923 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1916 + 2i) / 4i)][((x_1919 + 2i) % 4i)];
          let x_1925 : vec3<f32> = vs_TEXCOORD7;
          let x_1928 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1923.x, x_1923.y) * vec2<f32>(x_1925.z, x_1925.z)) + x_1928);
          let x_1930 : vec2<f32> = u_xlat39;
          let x_1931 : i32 = u_xlati52;
          let x_1934 : i32 = u_xlati52;
          let x_1938 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1931 + 3i) / 4i)][((x_1934 + 3i) % 4i)];
          u_xlat39 = (x_1930 + vec2<f32>(x_1938.x, x_1938.y));
          let x_1941 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1941 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1944 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1944);
          let x_1946 : u32 = u_xlatu47;
          let x_1949 : vec4<f32> = x_1767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1946)];
          let x_1951 : vec2<f32> = u_xlat39;
          let x_1953 : u32 = u_xlatu47;
          let x_1956 : vec4<f32> = x_1767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1953)];
          let x_1958 : vec2<f32> = ((vec2<f32>(x_1949.x, x_1949.y) * x_1951) + vec2<f32>(x_1956.z, x_1956.w));
          let x_1959 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1958.x, x_1958.y, x_1959.z, x_1959.w);
        } else {
          let x_1962 : vec3<f32> = vs_TEXCOORD7;
          let x_1964 : i32 = u_xlati52;
          let x_1967 : i32 = u_xlati52;
          let x_1971 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1964 + 1i) / 4i)][((x_1967 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1962.y, x_1962.y, x_1962.y, x_1962.y) * x_1971);
          let x_1973 : i32 = u_xlati52;
          let x_1975 : i32 = u_xlati52;
          let x_1978 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[(x_1973 / 4i)][(x_1975 % 4i)];
          let x_1979 : vec3<f32> = vs_TEXCOORD7;
          let x_1982 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1978 * vec4<f32>(x_1979.x, x_1979.x, x_1979.x, x_1979.x)) + x_1982);
          let x_1984 : i32 = u_xlati52;
          let x_1987 : i32 = u_xlati52;
          let x_1991 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1984 + 2i) / 4i)][((x_1987 + 2i) % 4i)];
          let x_1992 : vec3<f32> = vs_TEXCOORD7;
          let x_1995 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1991 * vec4<f32>(x_1992.z, x_1992.z, x_1992.z, x_1992.z)) + x_1995);
          let x_1997 : vec4<f32> = u_xlat12;
          let x_1998 : i32 = u_xlati52;
          let x_2001 : i32 = u_xlati52;
          let x_2005 : vec4<f32> = x_1767.x_AdditionalLightsWorldToLights[((x_1998 + 3i) / 4i)][((x_2001 + 3i) % 4i)];
          u_xlat12 = (x_1997 + x_2005);
          let x_2007 : vec4<f32> = u_xlat12;
          let x_2009 : vec4<f32> = u_xlat12;
          let x_2011 : vec3<f32> = (vec3<f32>(x_2007.x, x_2007.y, x_2007.z) / vec3<f32>(x_2009.w, x_2009.w, x_2009.w));
          let x_2012 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
          let x_2014 : vec4<f32> = u_xlat12;
          let x_2016 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2014.x, x_2014.y, x_2014.z), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
          let x_2019 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2019);
          let x_2021 : f32 = u_xlat50;
          let x_2023 : vec4<f32> = u_xlat12;
          let x_2025 : vec3<f32> = (vec3<f32>(x_2021, x_2021, x_2021) * vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
          let x_2026 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
          let x_2028 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2028.x, x_2028.y, x_2028.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2033 : f32 = u_xlat50;
          u_xlat50 = max(x_2033, 0.000001f);
          let x_2036 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2036);
          let x_2038 : f32 = u_xlat50;
          let x_2040 : vec4<f32> = u_xlat12;
          let x_2042 : vec3<f32> = (vec3<f32>(x_2038, x_2038, x_2038) * vec3<f32>(x_2040.z, x_2040.x, x_2040.y));
          let x_2043 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
          let x_2046 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2046);
          let x_2050 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2050, 0.0f, 1.0f);
          let x_2054 : vec4<f32> = u_xlat13;
          let x_2057 : vec4<bool> = (vec4<f32>(x_2054.y, x_2054.z, x_2054.y, x_2054.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2057.x, x_2057.y);
          let x_2060 : bool = u_xlatb39.x;
          if (x_2060) {
            let x_2065 : f32 = u_xlat13.x;
            x_2061 = x_2065;
          } else {
            let x_2068 : f32 = u_xlat13.x;
            x_2061 = -(x_2068);
          }
          let x_2070 : f32 = x_2061;
          u_xlat39.x = x_2070;
          let x_2073 : bool = u_xlatb39.y;
          if (x_2073) {
            let x_2078 : f32 = u_xlat13.x;
            x_2074 = x_2078;
          } else {
            let x_2081 : f32 = u_xlat13.x;
            x_2074 = -(x_2081);
          }
          let x_2083 : f32 = x_2074;
          u_xlat39.y = x_2083;
          let x_2085 : vec4<f32> = u_xlat12;
          let x_2087 : f32 = u_xlat50;
          let x_2090 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2085.x, x_2085.y) * vec2<f32>(x_2087, x_2087)) + x_2090);
          let x_2092 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2092 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2095 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2095, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2099 : u32 = u_xlatu47;
          let x_2102 : vec4<f32> = x_1767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2099)];
          let x_2104 : vec2<f32> = u_xlat39;
          let x_2106 : u32 = u_xlatu47;
          let x_2109 : vec4<f32> = x_1767.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2106)];
          let x_2111 : vec2<f32> = ((vec2<f32>(x_2102.x, x_2102.y) * x_2104) + vec2<f32>(x_2109.z, x_2109.w));
          let x_2112 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2111.x, x_2111.y, x_2112.z, x_2112.w);
        }
      }
      let x_2119 : vec4<f32> = u_xlat11;
      let x_2122 : f32 = x_126.x_GlobalMipBias.x;
      let x_2123 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2119.x, x_2119.y), x_2122);
      u_xlat11 = x_2123;
      let x_2125 : bool = u_xlatb3.y;
      if (x_2125) {
        let x_2130 : f32 = u_xlat11.w;
        x_2126 = x_2130;
      } else {
        let x_2133 : f32 = u_xlat11.x;
        x_2126 = x_2133;
      }
      let x_2134 : f32 = x_2126;
      u_xlat50 = x_2134;
      let x_2136 : bool = u_xlatb3.x;
      if (x_2136) {
        let x_2140 : vec4<f32> = u_xlat11;
        x_2137 = vec3<f32>(x_2140.x, x_2140.y, x_2140.z);
      } else {
        let x_2143 : f32 = u_xlat50;
        x_2137 = vec3<f32>(x_2143, x_2143, x_2143);
      }
      let x_2145 : vec3<f32> = x_2137;
      let x_2146 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2152 : vec4<f32> = u_xlat11;
    let x_2154 : u32 = u_xlatu47;
    let x_2157 : vec4<f32> = x_1658.x_AdditionalLightsColor[bitcast<i32>(x_2154)];
    let x_2159 : vec3<f32> = (vec3<f32>(x_2152.x, x_2152.y, x_2152.z) * vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
    let x_2162 : f32 = u_xlat31;
    let x_2164 : vec4<f32> = u_xlat11;
    let x_2166 : vec3<f32> = (vec3<f32>(x_2162, x_2162, x_2162) * vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
    let x_2167 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
    let x_2169 : vec4<f32> = u_xlat1;
    let x_2171 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2169.x, x_2169.y, x_2169.z), vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
    let x_2174 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2174, 0.0f, 1.0f);
    let x_2176 : f32 = u_xlat47;
    let x_2177 : f32 = u_xlat48;
    u_xlat47 = (x_2176 * x_2177);
    let x_2179 : f32 = u_xlat47;
    let x_2181 : vec4<f32> = u_xlat11;
    let x_2183 : vec3<f32> = (vec3<f32>(x_2179, x_2179, x_2179) * vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
    let x_2184 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
    let x_2186 : vec4<f32> = u_xlat9;
    let x_2188 : f32 = u_xlat49;
    let x_2191 : vec4<f32> = u_xlat7;
    let x_2193 : vec3<f32> = ((vec3<f32>(x_2186.x, x_2186.y, x_2186.z) * vec3<f32>(x_2188, x_2188, x_2188)) + vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
    let x_2194 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
    let x_2196 : vec4<f32> = u_xlat9;
    let x_2198 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2196.x, x_2196.y, x_2196.z), vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
    let x_2201 : f32 = u_xlat47;
    u_xlat47 = max(x_2201, 1.17549435e-37f);
    let x_2203 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2203);
    let x_2205 : f32 = u_xlat47;
    let x_2207 : vec4<f32> = u_xlat9;
    let x_2209 : vec3<f32> = (vec3<f32>(x_2205, x_2205, x_2205) * vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
    let x_2210 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2209.x, x_2209.y, x_2209.z, x_2210.w);
    let x_2212 : vec4<f32> = u_xlat1;
    let x_2214 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2212.x, x_2212.y, x_2212.z), vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
    let x_2217 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2217, 0.0f, 1.0f);
    let x_2219 : vec4<f32> = u_xlat10;
    let x_2221 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2219.x, x_2219.y, x_2219.z), vec3<f32>(x_2221.x, x_2221.y, x_2221.z));
    let x_2224 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2224, 0.0f, 1.0f);
    let x_2226 : f32 = u_xlat47;
    let x_2227 : f32 = u_xlat47;
    u_xlat47 = (x_2226 * x_2227);
    let x_2229 : f32 = u_xlat47;
    let x_2231 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2229 * x_2231) + 1.000010014f);
    let x_2234 : f32 = u_xlat48;
    let x_2235 : f32 = u_xlat48;
    u_xlat48 = (x_2234 * x_2235);
    let x_2237 : f32 = u_xlat47;
    let x_2238 : f32 = u_xlat47;
    u_xlat47 = (x_2237 * x_2238);
    let x_2240 : f32 = u_xlat48;
    u_xlat48 = max(x_2240, 0.100000001f);
    let x_2242 : f32 = u_xlat47;
    let x_2243 : f32 = u_xlat48;
    u_xlat47 = (x_2242 * x_2243);
    let x_2245 : f32 = u_xlat45;
    let x_2246 : f32 = u_xlat47;
    u_xlat47 = (x_2245 * x_2246);
    let x_2248 : f32 = u_xlat43;
    let x_2249 : f32 = u_xlat47;
    u_xlat47 = (x_2248 / x_2249);
    let x_2251 : vec4<f32> = u_xlat5;
    let x_2253 : f32 = u_xlat47;
    let x_2256 : vec4<f32> = u_xlat4;
    let x_2258 : vec3<f32> = ((vec3<f32>(x_2251.x, x_2251.y, x_2251.z) * vec3<f32>(x_2253, x_2253, x_2253)) + vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
    let x_2259 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
    let x_2261 : vec4<f32> = u_xlat9;
    let x_2263 : vec4<f32> = u_xlat11;
    let x_2266 : vec4<f32> = u_xlat8;
    let x_2268 : vec3<f32> = ((vec3<f32>(x_2261.x, x_2261.y, x_2261.z) * vec3<f32>(x_2263.x, x_2263.y, x_2263.z)) + vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
    let x_2269 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);

    continuing {
      let x_2271 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2271 + bitcast<u32>(1i));
    }
  }
  let x_2273 : vec3<f32> = u_xlat16;
  let x_2274 : f32 = u_xlat14;
  let x_2277 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2273 * vec3<f32>(x_2274, x_2274, x_2274)) + vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
  let x_2280 : vec4<f32> = u_xlat8;
  let x_2282 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2280.x, x_2280.y, x_2280.z) + x_2282);
  let x_2285 : f32 = u_xlat2.x;
  let x_2287 : f32 = u_xlat2.x;
  u_xlat1.x = (x_2285 * -(x_2287));
  let x_2292 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2292);
  let x_2295 : vec3<f32> = u_xlat0;
  let x_2296 : f32 = u_xlat42;
  let x_2300 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_2295 * vec3<f32>(x_2296, x_2296, x_2296)) + -(vec3<f32>(x_2300.x, x_2300.y, x_2300.z)));
  let x_2306 : vec4<f32> = u_xlat1;
  let x_2308 : vec3<f32> = u_xlat0;
  let x_2311 : vec4<f32> = x_126.unity_FogColor;
  let x_2313 : vec3<f32> = ((vec3<f32>(x_2306.x, x_2306.x, x_2306.x) * x_2308) + vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2314 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
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

