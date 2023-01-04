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

@group(0) @binding(17) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(7) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Normal0 : sampler;

@group(0) @binding(8) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1032 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_1103 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1310 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1602 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1711 : AdditionalLightsCookies;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat45 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_1057 : f32;
  var u_xlat47 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_1186 : f32;
  var x_1197 : vec3<f32>;
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
  var x_2005 : f32;
  var x_2018 : f32;
  var x_2070 : f32;
  var x_2081 : vec3<f32>;
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
  u_xlat43 = (x_848 * x_850);
  let x_853 : f32 = x_126.unity_MatrixV[0i].z;
  let x_855 : f32 = vs_TEXCOORD7.x;
  let x_857 : f32 = u_xlat43;
  u_xlat43 = ((x_853 * x_855) + x_857);
  let x_860 : f32 = x_126.unity_MatrixV[2i].z;
  let x_862 : f32 = vs_TEXCOORD7.z;
  let x_864 : f32 = u_xlat43;
  u_xlat43 = ((x_860 * x_862) + x_864);
  let x_866 : f32 = u_xlat43;
  let x_868 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat43 = (x_866 + x_868);
  let x_870 : f32 = u_xlat43;
  let x_873 : f32 = x_126.x_ProjectionParams.y;
  u_xlat43 = (-(x_870) + -(x_873));
  let x_876 : f32 = u_xlat43;
  u_xlat43 = max(x_876, 0.0f);
  let x_878 : f32 = u_xlat43;
  let x_880 : f32 = x_126.unity_FogParams.x;
  u_xlat43 = (x_878 * x_880);
  let x_887 : vec4<f32> = vs_TEXCOORD0;
  let x_890 : f32 = x_126.x_GlobalMipBias.x;
  let x_891 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_887.z, x_887.w), x_890);
  u_xlat2 = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_895 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_896 : vec2<f32> = vec2<f32>(x_895.x, x_895.y);
  let x_900 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_896.x, x_896.y));
  let x_901 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat3;
  let x_905 : vec4<f32> = hlslcc_FragCoord;
  let x_907 : vec2<f32> = (vec2<f32>(x_903.x, x_903.y) * vec2<f32>(x_905.x, x_905.y));
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
  let x_912 : f32 = u_xlat3.y;
  let x_914 : f32 = x_126.x_ScaleBiasRt.x;
  let x_917 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat44 = ((x_912 * x_914) + x_917);
  let x_919 : f32 = u_xlat44;
  u_xlat3.z = (-(x_919) + 1.0f);
  let x_924 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_924) * 0.959999979f) + 0.959999979f);
  let x_930 : f32 = u_xlat28;
  let x_931 : f32 = u_xlat44;
  u_xlat17 = (x_930 + -(x_931));
  let x_934 : f32 = u_xlat44;
  let x_936 : vec4<f32> = u_xlat5;
  let x_938 : vec3<f32> = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat5;
  let x_945 : vec3<f32> = (vec3<f32>(x_941.x, x_941.y, x_941.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_946 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec3<f32> = u_xlat0;
  let x_950 : vec4<f32> = u_xlat5;
  let x_955 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.x, x_948.x) * vec3<f32>(x_950.x, x_950.y, x_950.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_956 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : f32 = u_xlat28;
  u_xlat0.x = (-(x_958) + 1.0f);
  let x_963 : f32 = u_xlat0.x;
  let x_965 : f32 = u_xlat0.x;
  u_xlat28 = (x_963 * x_965);
  let x_967 : f32 = u_xlat28;
  u_xlat28 = max(x_967, 0.0078125f);
  let x_970 : f32 = u_xlat28;
  let x_971 : f32 = u_xlat28;
  u_xlat44 = (x_970 * x_971);
  let x_973 : f32 = u_xlat17;
  u_xlat17 = (x_973 + 1.0f);
  let x_975 : f32 = u_xlat17;
  u_xlat17 = clamp(x_975, 0.0f, 1.0f);
  let x_978 : f32 = u_xlat28;
  u_xlat45 = ((x_978 * 4.0f) + 2.0f);
  let x_986 : vec4<f32> = u_xlat3;
  let x_989 : f32 = x_126.x_GlobalMipBias.x;
  let x_990 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_986.x, x_986.z), x_989);
  u_xlat3.x = x_990.x;
  let x_995 : f32 = u_xlat3.x;
  u_xlat31 = (x_995 + -1.0f);
  let x_998 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_999 : f32 = u_xlat31;
  u_xlat31 = ((x_998 * x_999) + 1.0f);
  let x_1002 : f32 = u_xlat14;
  let x_1004 : f32 = u_xlat3.x;
  u_xlat14 = min(x_1002, x_1004);
  let x_1008 : vec4<f32> = vs_TEXCOORD8;
  let x_1009 : vec2<f32> = vec2<f32>(x_1008.x, x_1008.y);
  let x_1011 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1009.x, x_1009.y, x_1011);
  let x_1023 : vec3<f32> = txVec0;
  let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1023.xy, x_1023.z);
  u_xlat3.x = x_1025;
  let x_1034 : f32 = x_1032.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_1034) + 1.0f);
  let x_1038 : f32 = u_xlat3.x;
  let x_1040 : f32 = x_1032.x_MainLightShadowParams.x;
  let x_1042 : f32 = u_xlat46;
  u_xlat3.x = ((x_1038 * x_1040) + x_1042);
  let x_1047 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_1047);
  let x_1051 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_1051 >= 1.0f);
  let x_1053 : bool = u_xlatb46;
  let x_1054 : bool = u_xlatb47;
  u_xlatb46 = (x_1053 | x_1054);
  let x_1056 : bool = u_xlatb46;
  if (x_1056) {
    x_1057 = 1.0f;
  } else {
    let x_1062 : f32 = u_xlat3.x;
    x_1057 = x_1062;
  }
  let x_1063 : f32 = x_1057;
  u_xlat3.x = x_1063;
  let x_1065 : vec3<f32> = vs_TEXCOORD7;
  let x_1068 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1070 : vec3<f32> = (x_1065 + -(x_1068));
  let x_1071 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat6;
  let x_1075 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1073.x, x_1073.y, x_1073.z), vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : f32 = u_xlat46;
  let x_1080 : f32 = x_1032.x_MainLightShadowParams.z;
  let x_1083 : f32 = x_1032.x_MainLightShadowParams.w;
  u_xlat46 = ((x_1078 * x_1080) + x_1083);
  let x_1085 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1085, 0.0f, 1.0f);
  let x_1089 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1089) + 1.0f);
  let x_1092 : f32 = u_xlat46;
  let x_1093 : f32 = u_xlat47;
  let x_1096 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1092 * x_1093) + x_1096);
  let x_1105 : f32 = x_1103.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_1105 == -1.0f));
  let x_1107 : bool = u_xlatb46;
  if (x_1107) {
    let x_1110 : vec3<f32> = vs_TEXCOORD7;
    let x_1113 : vec4<f32> = x_1103.x_MainLightWorldToLight[1i];
    let x_1115 : vec2<f32> = (vec2<f32>(x_1110.y, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y));
    let x_1116 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
    let x_1119 : vec4<f32> = x_1103.x_MainLightWorldToLight[0i];
    let x_1121 : vec3<f32> = vs_TEXCOORD7;
    let x_1124 : vec4<f32> = u_xlat6;
    let x_1126 : vec2<f32> = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1121.x, x_1121.x)) + vec2<f32>(x_1124.x, x_1124.y));
    let x_1127 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
    let x_1130 : vec4<f32> = x_1103.x_MainLightWorldToLight[2i];
    let x_1132 : vec3<f32> = vs_TEXCOORD7;
    let x_1135 : vec4<f32> = u_xlat6;
    let x_1137 : vec2<f32> = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1132.z, x_1132.z)) + vec2<f32>(x_1135.x, x_1135.y));
    let x_1138 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
    let x_1140 : vec4<f32> = u_xlat6;
    let x_1143 : vec4<f32> = x_1103.x_MainLightWorldToLight[3i];
    let x_1145 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.y) + vec2<f32>(x_1143.x, x_1143.y));
    let x_1146 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
    let x_1148 : vec4<f32> = u_xlat6;
    let x_1151 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1152 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
    let x_1159 : vec4<f32> = u_xlat6;
    let x_1162 : f32 = x_126.x_GlobalMipBias.x;
    let x_1163 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1159.x, x_1159.y), x_1162);
    u_xlat6 = x_1163;
    let x_1168 : f32 = x_1103.x_MainLightCookieTextureFormat;
    let x_1170 : f32 = x_1103.x_MainLightCookieTextureFormat;
    let x_1172 : f32 = x_1103.x_MainLightCookieTextureFormat;
    let x_1174 : f32 = x_1103.x_MainLightCookieTextureFormat;
    let x_1175 : vec4<f32> = vec4<f32>(x_1168, x_1170, x_1172, x_1174);
    let x_1182 : vec4<bool> = (vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1182.x, x_1182.y);
    let x_1185 : bool = u_xlatb7.y;
    if (x_1185) {
      let x_1190 : f32 = u_xlat6.w;
      x_1186 = x_1190;
    } else {
      let x_1193 : f32 = u_xlat6.x;
      x_1186 = x_1193;
    }
    let x_1194 : f32 = x_1186;
    u_xlat46 = x_1194;
    let x_1196 : bool = u_xlatb7.x;
    if (x_1196) {
      let x_1200 : vec4<f32> = u_xlat6;
      x_1197 = vec3<f32>(x_1200.x, x_1200.y, x_1200.z);
    } else {
      let x_1203 : f32 = u_xlat46;
      x_1197 = vec3<f32>(x_1203, x_1203, x_1203);
    }
    let x_1205 : vec3<f32> = x_1197;
    let x_1206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1212 : vec4<f32> = u_xlat6;
  let x_1215 : vec4<f32> = x_126.x_MainLightColor;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : f32 = u_xlat31;
  let x_1222 : vec4<f32> = u_xlat6;
  let x_1224 : vec3<f32> = (vec3<f32>(x_1220, x_1220, x_1220) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1228 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1228;
  let x_1231 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1231;
  let x_1234 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1234;
  let x_1236 : vec4<f32> = u_xlat7;
  let x_1239 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(-(vec3<f32>(x_1236.x, x_1236.y, x_1236.z)), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat46;
  let x_1243 : f32 = u_xlat46;
  u_xlat46 = (x_1242 + x_1243);
  let x_1245 : vec4<f32> = u_xlat1;
  let x_1247 : f32 = u_xlat46;
  let x_1251 : vec4<f32> = u_xlat7;
  let x_1254 : vec3<f32> = ((vec3<f32>(x_1245.x, x_1245.y, x_1245.z) * -(vec3<f32>(x_1247, x_1247, x_1247))) + -(vec3<f32>(x_1251.x, x_1251.y, x_1251.z)));
  let x_1255 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1257 : vec4<f32> = u_xlat1;
  let x_1259 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_1257.x, x_1257.y, x_1257.z), vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1262, 0.0f, 1.0f);
  let x_1264 : f32 = u_xlat46;
  u_xlat46 = (-(x_1264) + 1.0f);
  let x_1267 : f32 = u_xlat46;
  let x_1268 : f32 = u_xlat46;
  u_xlat46 = (x_1267 * x_1268);
  let x_1270 : f32 = u_xlat46;
  let x_1271 : f32 = u_xlat46;
  u_xlat46 = (x_1270 * x_1271);
  let x_1274 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1274) * 0.699999988f) + 1.700000048f);
  let x_1281 : f32 = u_xlat0.x;
  let x_1282 : f32 = u_xlat47;
  u_xlat0.x = (x_1281 * x_1282);
  let x_1286 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1286 * 6.0f);
  let x_1298 : vec4<f32> = u_xlat8;
  let x_1301 : f32 = u_xlat0.x;
  let x_1302 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1298.x, x_1298.y, x_1298.z), x_1301);
  u_xlat8 = x_1302;
  let x_1304 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1304 + -1.0f);
  let x_1312 : f32 = x_1310.unity_SpecCube0_HDR.w;
  let x_1314 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1312 * x_1314) + 1.0f);
  let x_1319 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1319, 0.0f);
  let x_1323 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1323);
  let x_1327 : f32 = u_xlat0.x;
  let x_1329 : f32 = x_1310.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1327 * x_1329);
  let x_1333 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1333);
  let x_1337 : f32 = u_xlat0.x;
  let x_1339 : f32 = x_1310.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1337 * x_1339);
  let x_1342 : vec4<f32> = u_xlat8;
  let x_1344 : vec3<f32> = u_xlat0;
  let x_1346 : vec3<f32> = (vec3<f32>(x_1342.x, x_1342.y, x_1342.z) * vec3<f32>(x_1344.x, x_1344.x, x_1344.x));
  let x_1347 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
  let x_1349 : f32 = u_xlat28;
  let x_1351 : f32 = u_xlat28;
  let x_1355 : vec2<f32> = ((vec2<f32>(x_1349, x_1349) * vec2<f32>(x_1351, x_1351)) + vec2<f32>(-1.0f, 1.0f));
  let x_1356 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1355.x, x_1356.y, x_1355.y);
  let x_1359 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1359);
  let x_1361 : vec4<f32> = u_xlat5;
  let x_1364 : f32 = u_xlat17;
  let x_1366 : vec3<f32> = (-(vec3<f32>(x_1361.x, x_1361.y, x_1361.z)) + vec3<f32>(x_1364, x_1364, x_1364));
  let x_1367 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
  let x_1369 : f32 = u_xlat46;
  let x_1371 : vec4<f32> = u_xlat9;
  let x_1374 : vec4<f32> = u_xlat5;
  let x_1376 : vec3<f32> = ((vec3<f32>(x_1369, x_1369, x_1369) * vec3<f32>(x_1371.x, x_1371.y, x_1371.z)) + vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
  let x_1379 : f32 = u_xlat28;
  let x_1381 : vec4<f32> = u_xlat9;
  let x_1383 : vec3<f32> = (vec3<f32>(x_1379, x_1379, x_1379) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
  let x_1384 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
  let x_1386 : vec4<f32> = u_xlat8;
  let x_1388 : vec4<f32> = u_xlat9;
  let x_1390 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.y, x_1386.z) * vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
  let x_1391 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
  let x_1393 : vec3<f32> = u_xlat2;
  let x_1394 : vec4<f32> = u_xlat4;
  let x_1397 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_1393 * vec3<f32>(x_1394.x, x_1394.y, x_1394.z)) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1401 : f32 = u_xlat3.x;
  let x_1403 : f32 = x_1310.unity_LightData.z;
  u_xlat28 = (x_1401 * x_1403);
  let x_1405 : vec4<f32> = u_xlat1;
  let x_1408 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1405.x, x_1405.y, x_1405.z), vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
  let x_1413 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1413, 0.0f, 1.0f);
  let x_1416 : f32 = u_xlat28;
  let x_1418 : f32 = u_xlat3.x;
  u_xlat28 = (x_1416 * x_1418);
  let x_1420 : f32 = u_xlat28;
  let x_1422 : vec4<f32> = u_xlat6;
  let x_1424 : vec3<f32> = (vec3<f32>(x_1420, x_1420, x_1420) * vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
  let x_1425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1427 : vec4<f32> = u_xlat7;
  let x_1430 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1432 : vec3<f32> = (vec3<f32>(x_1427.x, x_1427.y, x_1427.z) + vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1433 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  let x_1435 : vec4<f32> = u_xlat8;
  let x_1437 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1435.x, x_1435.y, x_1435.z), vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : f32 = u_xlat28;
  u_xlat28 = max(x_1440, 1.17549435e-37f);
  let x_1443 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1443);
  let x_1445 : f32 = u_xlat28;
  let x_1447 : vec4<f32> = u_xlat8;
  let x_1449 : vec3<f32> = (vec3<f32>(x_1445, x_1445, x_1445) * vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
  let x_1450 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
  let x_1452 : vec4<f32> = u_xlat1;
  let x_1454 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1452.x, x_1452.y, x_1452.z), vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
  let x_1457 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1457, 0.0f, 1.0f);
  let x_1460 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1462 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1460.x, x_1460.y, x_1460.z), vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
  let x_1467 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1467, 0.0f, 1.0f);
  let x_1470 : f32 = u_xlat28;
  let x_1471 : f32 = u_xlat28;
  u_xlat28 = (x_1470 * x_1471);
  let x_1473 : f32 = u_xlat28;
  let x_1475 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1473 * x_1475) + 1.000010014f);
  let x_1480 : f32 = u_xlat3.x;
  let x_1482 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1480 * x_1482);
  let x_1485 : f32 = u_xlat28;
  let x_1486 : f32 = u_xlat28;
  u_xlat28 = (x_1485 * x_1486);
  let x_1489 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1489, 0.100000001f);
  let x_1493 : f32 = u_xlat28;
  let x_1495 : f32 = u_xlat3.x;
  u_xlat28 = (x_1493 * x_1495);
  let x_1497 : f32 = u_xlat45;
  let x_1498 : f32 = u_xlat28;
  u_xlat28 = (x_1497 * x_1498);
  let x_1500 : f32 = u_xlat44;
  let x_1501 : f32 = u_xlat28;
  u_xlat28 = (x_1500 / x_1501);
  let x_1503 : vec4<f32> = u_xlat5;
  let x_1505 : f32 = u_xlat28;
  let x_1508 : vec4<f32> = u_xlat4;
  let x_1510 : vec3<f32> = ((vec3<f32>(x_1503.x, x_1503.y, x_1503.z) * vec3<f32>(x_1505, x_1505, x_1505)) + vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
  let x_1511 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
  let x_1513 : vec4<f32> = u_xlat6;
  let x_1515 : vec4<f32> = u_xlat8;
  let x_1517 : vec3<f32> = (vec3<f32>(x_1513.x, x_1513.y, x_1513.z) * vec3<f32>(x_1515.x, x_1515.y, x_1515.z));
  let x_1518 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1518.w);
  let x_1521 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1523 : f32 = x_1310.unity_LightData.y;
  u_xlat28 = min(x_1521, x_1523);
  let x_1527 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1527));
  let x_1532 : f32 = x_1103.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1534 : f32 = x_1103.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1536 : f32 = x_1103.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1538 : f32 = x_1103.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1539 : vec4<f32> = vec4<f32>(x_1532, x_1534, x_1536, x_1538);
  let x_1545 : vec4<bool> = (vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1539.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_1545.x, x_1545.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1556 : u32 = u_xlatu_loop_1;
    let x_1557 : u32 = u_xlatu28;
    if ((x_1556 < x_1557)) {
    } else {
      break;
    }
    let x_1560 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1560 >> 2u);
    let x_1564 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1564 & 3u));
    let x_1567 : u32 = u_xlatu47;
    let x_1570 : vec4<f32> = x_1310.unity_LightIndices[bitcast<i32>(x_1567)];
    let x_1580 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1585 : vec4<u32> = indexable[x_1580];
    u_xlat47 = dot(x_1570, bitcast<vec4<f32>>(x_1585));
    let x_1588 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1588));
    let x_1591 : vec3<f32> = vs_TEXCOORD7;
    let x_1603 : u32 = u_xlatu47;
    let x_1606 : vec4<f32> = x_1602.x_AdditionalLightsPosition[bitcast<i32>(x_1603)];
    let x_1609 : u32 = u_xlatu47;
    let x_1612 : vec4<f32> = x_1602.x_AdditionalLightsPosition[bitcast<i32>(x_1609)];
    let x_1614 : vec3<f32> = ((-(x_1591) * vec3<f32>(x_1606.w, x_1606.w, x_1606.w)) + vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
    let x_1615 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
    let x_1618 : vec4<f32> = u_xlat9;
    let x_1620 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1618.x, x_1618.y, x_1618.z), vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
    let x_1623 : f32 = u_xlat48;
    u_xlat48 = max(x_1623, 6.10351562e-05f);
    let x_1626 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1626);
    let x_1628 : f32 = u_xlat49;
    let x_1630 : vec4<f32> = u_xlat9;
    let x_1632 : vec3<f32> = (vec3<f32>(x_1628, x_1628, x_1628) * vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
    let x_1633 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
    let x_1636 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1636);
    let x_1638 : f32 = u_xlat48;
    let x_1639 : u32 = u_xlatu47;
    let x_1642 : f32 = x_1602.x_AdditionalLightsAttenuation[bitcast<i32>(x_1639)].x;
    u_xlat48 = (x_1638 * x_1642);
    let x_1644 : f32 = u_xlat48;
    let x_1646 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1644) * x_1646) + 1.0f);
    let x_1649 : f32 = u_xlat48;
    u_xlat48 = max(x_1649, 0.0f);
    let x_1651 : f32 = u_xlat48;
    let x_1652 : f32 = u_xlat48;
    u_xlat48 = (x_1651 * x_1652);
    let x_1654 : f32 = u_xlat48;
    let x_1655 : f32 = u_xlat50;
    u_xlat48 = (x_1654 * x_1655);
    let x_1657 : u32 = u_xlatu47;
    let x_1660 : vec4<f32> = x_1602.x_AdditionalLightsSpotDir[bitcast<i32>(x_1657)];
    let x_1662 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : f32 = u_xlat50;
    let x_1666 : u32 = u_xlatu47;
    let x_1669 : f32 = x_1602.x_AdditionalLightsAttenuation[bitcast<i32>(x_1666)].z;
    let x_1671 : u32 = u_xlatu47;
    let x_1674 : f32 = x_1602.x_AdditionalLightsAttenuation[bitcast<i32>(x_1671)].w;
    u_xlat50 = ((x_1665 * x_1669) + x_1674);
    let x_1676 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1676, 0.0f, 1.0f);
    let x_1678 : f32 = u_xlat50;
    let x_1679 : f32 = u_xlat50;
    u_xlat50 = (x_1678 * x_1679);
    let x_1681 : f32 = u_xlat48;
    let x_1682 : f32 = u_xlat50;
    u_xlat48 = (x_1681 * x_1682);
    let x_1685 : u32 = u_xlatu47;
    u_xlatu50 = (x_1685 >> 5u);
    let x_1688 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1688) & 31i)));
    let x_1693 : i32 = u_xlati51;
    let x_1695 : u32 = u_xlatu50;
    let x_1698 : f32 = x_1103.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1695)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1693) & bitcast<u32>(x_1698)));
    let x_1702 : i32 = u_xlati50;
    if ((x_1702 != 0i)) {
      let x_1712 : u32 = u_xlatu47;
      let x_1715 : f32 = x_1711.x_AdditionalLightsLightTypes[bitcast<i32>(x_1712)].el;
      u_xlati50 = i32(x_1715);
      let x_1717 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1717 != 0i));
      let x_1721 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1721) << bitcast<u32>(2i));
      let x_1724 : i32 = u_xlati51;
      if ((x_1724 != 0i)) {
        let x_1728 : vec3<f32> = vs_TEXCOORD7;
        let x_1730 : i32 = u_xlati52;
        let x_1733 : i32 = u_xlati52;
        let x_1737 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1730 + 1i) / 4i)][((x_1733 + 1i) % 4i)];
        let x_1739 : vec3<f32> = (vec3<f32>(x_1728.y, x_1728.y, x_1728.y) * vec3<f32>(x_1737.x, x_1737.y, x_1737.w));
        let x_1740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
        let x_1742 : i32 = u_xlati52;
        let x_1744 : i32 = u_xlati52;
        let x_1747 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[(x_1742 / 4i)][(x_1744 % 4i)];
        let x_1749 : vec3<f32> = vs_TEXCOORD7;
        let x_1752 : vec4<f32> = u_xlat11;
        let x_1754 : vec3<f32> = ((vec3<f32>(x_1747.x, x_1747.y, x_1747.w) * vec3<f32>(x_1749.x, x_1749.x, x_1749.x)) + vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
        let x_1755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
        let x_1757 : i32 = u_xlati52;
        let x_1760 : i32 = u_xlati52;
        let x_1764 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1757 + 2i) / 4i)][((x_1760 + 2i) % 4i)];
        let x_1766 : vec3<f32> = vs_TEXCOORD7;
        let x_1769 : vec4<f32> = u_xlat11;
        let x_1771 : vec3<f32> = ((vec3<f32>(x_1764.x, x_1764.y, x_1764.w) * vec3<f32>(x_1766.z, x_1766.z, x_1766.z)) + vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
        let x_1772 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
        let x_1774 : vec4<f32> = u_xlat11;
        let x_1776 : i32 = u_xlati52;
        let x_1779 : i32 = u_xlati52;
        let x_1783 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1776 + 3i) / 4i)][((x_1779 + 3i) % 4i)];
        let x_1785 : vec3<f32> = (vec3<f32>(x_1774.x, x_1774.y, x_1774.z) + vec3<f32>(x_1783.x, x_1783.y, x_1783.w));
        let x_1786 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
        let x_1788 : vec4<f32> = u_xlat11;
        let x_1790 : vec4<f32> = u_xlat11;
        let x_1792 : vec2<f32> = (vec2<f32>(x_1788.x, x_1788.y) / vec2<f32>(x_1790.z, x_1790.z));
        let x_1793 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
        let x_1795 : vec4<f32> = u_xlat11;
        let x_1798 : vec2<f32> = ((vec2<f32>(x_1795.x, x_1795.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1799 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1798.x, x_1798.y, x_1799.z, x_1799.w);
        let x_1801 : vec4<f32> = u_xlat11;
        let x_1805 : vec2<f32> = clamp(vec2<f32>(x_1801.x, x_1801.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
        let x_1808 : u32 = u_xlatu47;
        let x_1811 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1808)];
        let x_1813 : vec4<f32> = u_xlat11;
        let x_1816 : u32 = u_xlatu47;
        let x_1819 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1816)];
        let x_1821 : vec2<f32> = ((vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(x_1813.x, x_1813.y)) + vec2<f32>(x_1819.z, x_1819.w));
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1821.x, x_1821.y, x_1822.z, x_1822.w);
      } else {
        let x_1826 : i32 = u_xlati50;
        u_xlatb50 = (x_1826 == 1i);
        let x_1828 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1828);
        let x_1830 : i32 = u_xlati50;
        if ((x_1830 != 0i)) {
          let x_1836 : vec3<f32> = vs_TEXCOORD7;
          let x_1838 : i32 = u_xlati52;
          let x_1841 : i32 = u_xlati52;
          let x_1845 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1838 + 1i) / 4i)][((x_1841 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1836.y, x_1836.y) * vec2<f32>(x_1845.x, x_1845.y));
          let x_1848 : i32 = u_xlati52;
          let x_1850 : i32 = u_xlati52;
          let x_1853 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[(x_1848 / 4i)][(x_1850 % 4i)];
          let x_1855 : vec3<f32> = vs_TEXCOORD7;
          let x_1858 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1853.x, x_1853.y) * vec2<f32>(x_1855.x, x_1855.x)) + x_1858);
          let x_1860 : i32 = u_xlati52;
          let x_1863 : i32 = u_xlati52;
          let x_1867 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1860 + 2i) / 4i)][((x_1863 + 2i) % 4i)];
          let x_1869 : vec3<f32> = vs_TEXCOORD7;
          let x_1872 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1867.x, x_1867.y) * vec2<f32>(x_1869.z, x_1869.z)) + x_1872);
          let x_1874 : vec2<f32> = u_xlat39;
          let x_1875 : i32 = u_xlati52;
          let x_1878 : i32 = u_xlati52;
          let x_1882 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1875 + 3i) / 4i)][((x_1878 + 3i) % 4i)];
          u_xlat39 = (x_1874 + vec2<f32>(x_1882.x, x_1882.y));
          let x_1885 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1885 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1888 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1888);
          let x_1890 : u32 = u_xlatu47;
          let x_1893 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1890)];
          let x_1895 : vec2<f32> = u_xlat39;
          let x_1897 : u32 = u_xlatu47;
          let x_1900 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1897)];
          let x_1902 : vec2<f32> = ((vec2<f32>(x_1893.x, x_1893.y) * x_1895) + vec2<f32>(x_1900.z, x_1900.w));
          let x_1903 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
        } else {
          let x_1906 : vec3<f32> = vs_TEXCOORD7;
          let x_1908 : i32 = u_xlati52;
          let x_1911 : i32 = u_xlati52;
          let x_1915 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1908 + 1i) / 4i)][((x_1911 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1906.y, x_1906.y, x_1906.y, x_1906.y) * x_1915);
          let x_1917 : i32 = u_xlati52;
          let x_1919 : i32 = u_xlati52;
          let x_1922 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[(x_1917 / 4i)][(x_1919 % 4i)];
          let x_1923 : vec3<f32> = vs_TEXCOORD7;
          let x_1926 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1922 * vec4<f32>(x_1923.x, x_1923.x, x_1923.x, x_1923.x)) + x_1926);
          let x_1928 : i32 = u_xlati52;
          let x_1931 : i32 = u_xlati52;
          let x_1935 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1928 + 2i) / 4i)][((x_1931 + 2i) % 4i)];
          let x_1936 : vec3<f32> = vs_TEXCOORD7;
          let x_1939 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1935 * vec4<f32>(x_1936.z, x_1936.z, x_1936.z, x_1936.z)) + x_1939);
          let x_1941 : vec4<f32> = u_xlat12;
          let x_1942 : i32 = u_xlati52;
          let x_1945 : i32 = u_xlati52;
          let x_1949 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1942 + 3i) / 4i)][((x_1945 + 3i) % 4i)];
          u_xlat12 = (x_1941 + x_1949);
          let x_1951 : vec4<f32> = u_xlat12;
          let x_1953 : vec4<f32> = u_xlat12;
          let x_1955 : vec3<f32> = (vec3<f32>(x_1951.x, x_1951.y, x_1951.z) / vec3<f32>(x_1953.w, x_1953.w, x_1953.w));
          let x_1956 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
          let x_1958 : vec4<f32> = u_xlat12;
          let x_1960 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1958.x, x_1958.y, x_1958.z), vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
          let x_1963 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1963);
          let x_1965 : f32 = u_xlat50;
          let x_1967 : vec4<f32> = u_xlat12;
          let x_1969 : vec3<f32> = (vec3<f32>(x_1965, x_1965, x_1965) * vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
          let x_1970 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
          let x_1972 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1972.x, x_1972.y, x_1972.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1977 : f32 = u_xlat50;
          u_xlat50 = max(x_1977, 0.000001f);
          let x_1980 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1980);
          let x_1982 : f32 = u_xlat50;
          let x_1984 : vec4<f32> = u_xlat12;
          let x_1986 : vec3<f32> = (vec3<f32>(x_1982, x_1982, x_1982) * vec3<f32>(x_1984.z, x_1984.x, x_1984.y));
          let x_1987 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
          let x_1990 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1990);
          let x_1994 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1994, 0.0f, 1.0f);
          let x_1998 : vec4<f32> = u_xlat13;
          let x_2001 : vec4<bool> = (vec4<f32>(x_1998.y, x_1998.z, x_1998.y, x_1998.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2001.x, x_2001.y);
          let x_2004 : bool = u_xlatb39.x;
          if (x_2004) {
            let x_2009 : f32 = u_xlat13.x;
            x_2005 = x_2009;
          } else {
            let x_2012 : f32 = u_xlat13.x;
            x_2005 = -(x_2012);
          }
          let x_2014 : f32 = x_2005;
          u_xlat39.x = x_2014;
          let x_2017 : bool = u_xlatb39.y;
          if (x_2017) {
            let x_2022 : f32 = u_xlat13.x;
            x_2018 = x_2022;
          } else {
            let x_2025 : f32 = u_xlat13.x;
            x_2018 = -(x_2025);
          }
          let x_2027 : f32 = x_2018;
          u_xlat39.y = x_2027;
          let x_2029 : vec4<f32> = u_xlat12;
          let x_2031 : f32 = u_xlat50;
          let x_2034 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2029.x, x_2029.y) * vec2<f32>(x_2031, x_2031)) + x_2034);
          let x_2036 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2036 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2039 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2039, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2043 : u32 = u_xlatu47;
          let x_2046 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2043)];
          let x_2048 : vec2<f32> = u_xlat39;
          let x_2050 : u32 = u_xlatu47;
          let x_2053 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2050)];
          let x_2055 : vec2<f32> = ((vec2<f32>(x_2046.x, x_2046.y) * x_2048) + vec2<f32>(x_2053.z, x_2053.w));
          let x_2056 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
        }
      }
      let x_2063 : vec4<f32> = u_xlat11;
      let x_2066 : f32 = x_126.x_GlobalMipBias.x;
      let x_2067 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2063.x, x_2063.y), x_2066);
      u_xlat11 = x_2067;
      let x_2069 : bool = u_xlatb3.y;
      if (x_2069) {
        let x_2074 : f32 = u_xlat11.w;
        x_2070 = x_2074;
      } else {
        let x_2077 : f32 = u_xlat11.x;
        x_2070 = x_2077;
      }
      let x_2078 : f32 = x_2070;
      u_xlat50 = x_2078;
      let x_2080 : bool = u_xlatb3.x;
      if (x_2080) {
        let x_2084 : vec4<f32> = u_xlat11;
        x_2081 = vec3<f32>(x_2084.x, x_2084.y, x_2084.z);
      } else {
        let x_2087 : f32 = u_xlat50;
        x_2081 = vec3<f32>(x_2087, x_2087, x_2087);
      }
      let x_2089 : vec3<f32> = x_2081;
      let x_2090 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2096 : vec4<f32> = u_xlat11;
    let x_2098 : u32 = u_xlatu47;
    let x_2101 : vec4<f32> = x_1602.x_AdditionalLightsColor[bitcast<i32>(x_2098)];
    let x_2103 : vec3<f32> = (vec3<f32>(x_2096.x, x_2096.y, x_2096.z) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
    let x_2106 : f32 = u_xlat31;
    let x_2108 : vec4<f32> = u_xlat11;
    let x_2110 : vec3<f32> = (vec3<f32>(x_2106, x_2106, x_2106) * vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
    let x_2113 : vec4<f32> = u_xlat1;
    let x_2115 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2113.x, x_2113.y, x_2113.z), vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
    let x_2118 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2118, 0.0f, 1.0f);
    let x_2120 : f32 = u_xlat47;
    let x_2121 : f32 = u_xlat48;
    u_xlat47 = (x_2120 * x_2121);
    let x_2123 : f32 = u_xlat47;
    let x_2125 : vec4<f32> = u_xlat11;
    let x_2127 : vec3<f32> = (vec3<f32>(x_2123, x_2123, x_2123) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
    let x_2128 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
    let x_2130 : vec4<f32> = u_xlat9;
    let x_2132 : f32 = u_xlat49;
    let x_2135 : vec4<f32> = u_xlat7;
    let x_2137 : vec3<f32> = ((vec3<f32>(x_2130.x, x_2130.y, x_2130.z) * vec3<f32>(x_2132, x_2132, x_2132)) + vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
    let x_2140 : vec4<f32> = u_xlat9;
    let x_2142 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.z), vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : f32 = u_xlat47;
    u_xlat47 = max(x_2145, 1.17549435e-37f);
    let x_2147 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2147);
    let x_2149 : f32 = u_xlat47;
    let x_2151 : vec4<f32> = u_xlat9;
    let x_2153 : vec3<f32> = (vec3<f32>(x_2149, x_2149, x_2149) * vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
    let x_2154 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
    let x_2156 : vec4<f32> = u_xlat1;
    let x_2158 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2156.x, x_2156.y, x_2156.z), vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
    let x_2161 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2161, 0.0f, 1.0f);
    let x_2163 : vec4<f32> = u_xlat10;
    let x_2165 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2163.x, x_2163.y, x_2163.z), vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
    let x_2168 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2168, 0.0f, 1.0f);
    let x_2170 : f32 = u_xlat47;
    let x_2171 : f32 = u_xlat47;
    u_xlat47 = (x_2170 * x_2171);
    let x_2173 : f32 = u_xlat47;
    let x_2175 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2173 * x_2175) + 1.000010014f);
    let x_2178 : f32 = u_xlat48;
    let x_2179 : f32 = u_xlat48;
    u_xlat48 = (x_2178 * x_2179);
    let x_2181 : f32 = u_xlat47;
    let x_2182 : f32 = u_xlat47;
    u_xlat47 = (x_2181 * x_2182);
    let x_2184 : f32 = u_xlat48;
    u_xlat48 = max(x_2184, 0.100000001f);
    let x_2186 : f32 = u_xlat47;
    let x_2187 : f32 = u_xlat48;
    u_xlat47 = (x_2186 * x_2187);
    let x_2189 : f32 = u_xlat45;
    let x_2190 : f32 = u_xlat47;
    u_xlat47 = (x_2189 * x_2190);
    let x_2192 : f32 = u_xlat44;
    let x_2193 : f32 = u_xlat47;
    u_xlat47 = (x_2192 / x_2193);
    let x_2195 : vec4<f32> = u_xlat5;
    let x_2197 : f32 = u_xlat47;
    let x_2200 : vec4<f32> = u_xlat4;
    let x_2202 : vec3<f32> = ((vec3<f32>(x_2195.x, x_2195.y, x_2195.z) * vec3<f32>(x_2197, x_2197, x_2197)) + vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
    let x_2203 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
    let x_2205 : vec4<f32> = u_xlat9;
    let x_2207 : vec4<f32> = u_xlat11;
    let x_2210 : vec4<f32> = u_xlat8;
    let x_2212 : vec3<f32> = ((vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * vec3<f32>(x_2207.x, x_2207.y, x_2207.z)) + vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
    let x_2213 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);

    continuing {
      let x_2215 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2215 + bitcast<u32>(1i));
    }
  }
  let x_2217 : vec3<f32> = u_xlat2;
  let x_2218 : f32 = u_xlat14;
  let x_2221 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2217 * vec3<f32>(x_2218, x_2218, x_2218)) + vec3<f32>(x_2221.x, x_2221.y, x_2221.z));
  let x_2224 : vec4<f32> = u_xlat8;
  let x_2226 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2224.x, x_2224.y, x_2224.z) + x_2226);
  let x_2228 : f32 = u_xlat42;
  let x_2230 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2228, x_2228, x_2228) * x_2230);
  let x_2232 : f32 = u_xlat43;
  let x_2233 : f32 = u_xlat43;
  u_xlat42 = (x_2232 * -(x_2233));
  let x_2236 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2236);
  let x_2240 : vec3<f32> = u_xlat0;
  let x_2241 : f32 = u_xlat42;
  let x_2243 : vec3<f32> = (x_2240 * vec3<f32>(x_2241, x_2241, x_2241));
  let x_2244 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2243.x, x_2243.y, x_2243.z, x_2244.w);
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

