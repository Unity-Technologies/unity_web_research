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

@group(1) @binding(4) var<uniform> x_614 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1065 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1259 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1538 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1647 : AdditionalLightsCookies;

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
  var u_xlatb44 : bool;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb1 : bool;
  var u_xlat15 : vec3<f32>;
  var x_561 : f32;
  var x_572 : f32;
  var x_583 : f32;
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
  var x_1014 : f32;
  var u_xlat31 : f32;
  var x_1132 : f32;
  var x_1143 : vec3<f32>;
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
  var x_1940 : f32;
  var x_1953 : f32;
  var x_2005 : f32;
  var x_2016 : vec3<f32>;
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
  let x_379 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_379;
  let x_382 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_382;
  let x_385 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_385;
  let x_388 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_388;
  let x_391 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_391;
  let x_394 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_394;
  let x_397 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_397;
  let x_400 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_400;
  let x_402 : vec4<f32> = u_xlat6;
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_402 + x_403);
  let x_406 : f32 = u_xlat0.z;
  u_xlat7.x = x_406;
  let x_409 : f32 = u_xlat1.z;
  u_xlat7.y = x_409;
  let x_412 : f32 = u_xlat2.z;
  u_xlat7.z = x_412;
  let x_415 : f32 = u_xlat3.y;
  u_xlat7.w = x_415;
  let x_417 : vec4<f32> = u_xlat9;
  let x_420 : f32 = x_30.x_Smoothness0;
  let x_422 : f32 = x_30.x_Smoothness1;
  let x_424 : f32 = x_30.x_Smoothness2;
  let x_426 : f32 = x_30.x_Smoothness3;
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_417) * vec4<f32>(x_420, x_422, x_424, x_426)) + x_429);
  let x_433 : f32 = x_30.x_LayerHasMask0;
  let x_436 : f32 = x_30.x_LayerHasMask1;
  let x_439 : f32 = x_30.x_LayerHasMask2;
  let x_442 : f32 = x_30.x_LayerHasMask3;
  let x_444 : vec4<f32> = u_xlat7;
  let x_446 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_433, x_436, x_439, x_442) * x_444) + x_446);
  let x_449 : vec4<f32> = u_xlat4;
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_449, x_450);
  let x_453 : f32 = u_xlat0.x;
  u_xlat7.x = x_453;
  let x_456 : f32 = u_xlat1.x;
  u_xlat7.y = x_456;
  let x_459 : f32 = u_xlat2.x;
  u_xlat7.z = x_459;
  let x_462 : f32 = u_xlat3.x;
  u_xlat7.w = x_462;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_30.x_Metallic0;
  let x_470 : f32 = x_30.x_Metallic1;
  let x_473 : f32 = x_30.x_Metallic2;
  let x_476 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_464 + -(vec4<f32>(x_467, x_470, x_473, x_476)));
  let x_481 : f32 = x_30.x_LayerHasMask0;
  let x_483 : f32 = x_30.x_LayerHasMask1;
  let x_485 : f32 = x_30.x_LayerHasMask2;
  let x_487 : f32 = x_30.x_LayerHasMask3;
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : f32 = x_30.x_Metallic0;
  let x_494 : f32 = x_30.x_Metallic1;
  let x_496 : f32 = x_30.x_Metallic2;
  let x_498 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_481, x_483, x_485, x_487) * x_489) + vec4<f32>(x_492, x_494, x_496, x_498));
  let x_501 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_501, x_502);
  let x_506 : f32 = u_xlat0.y;
  u_xlat3.x = x_506;
  let x_509 : f32 = u_xlat1.y;
  u_xlat3.y = x_509;
  let x_512 : f32 = u_xlat2.y;
  u_xlat3.z = x_512;
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_514) + x_516);
  let x_519 : f32 = x_30.x_LayerHasMask0;
  let x_521 : f32 = x_30.x_LayerHasMask1;
  let x_523 : f32 = x_30.x_LayerHasMask2;
  let x_525 : f32 = x_30.x_LayerHasMask3;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_519, x_521, x_523, x_525) * x_527) + x_529);
  let x_532 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_532, x_533);
  let x_537 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_537 == 0.0f);
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_546 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_542) + x_546);
  let x_548 : vec3<f32> = u_xlat15;
  let x_549 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_548, x_549);
  let x_553 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_553);
  let x_556 : vec3<f32> = u_xlat15;
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_556 * vec3<f32>(x_557.x, x_557.x, x_557.x));
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat15.x;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_126.unity_MatrixV[0i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.x = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat15.y;
    x_572 = x_576;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[1i].z;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat2.y = x_580;
  let x_582 : bool = u_xlatb1;
  if (x_582) {
    let x_587 : f32 = u_xlat15.z;
    x_583 = x_587;
  } else {
    let x_591 : f32 = x_126.unity_MatrixV[2i].z;
    x_583 = x_591;
  }
  let x_592 : f32 = x_583;
  u_xlat2.z = x_592;
  let x_595 : vec3<f32> = vs_TEXCOORD3;
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = vs_TEXCOORD3;
  let x_606 : vec3<f32> = (vec3<f32>(x_603.x, x_603.x, x_603.x) * x_605);
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres0;
  let x_619 : vec3<f32> = (x_609 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_624 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres1;
  let x_627 : vec3<f32> = (x_622 + -(vec3<f32>(x_624.x, x_624.y, x_624.z)));
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres2;
  let x_636 : vec3<f32> = (x_630 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec3<f32> = vs_TEXCOORD7;
  let x_641 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres3;
  let x_644 : vec3<f32> = (x_639 + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_659 : vec4<f32> = u_xlat6;
  let x_661 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_673 : vec4<f32> = u_xlat3;
  let x_675 : vec4<f32> = x_614.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_673 < x_675);
  let x_678 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_686);
  let x_690 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_690);
  let x_694 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_694);
  let x_699 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_699);
  let x_703 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_703);
  let x_706 : vec4<f32> = u_xlat3;
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(x_708.y, x_708.z, x_708.w));
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = max(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_717 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_716.x, x_716.y, x_716.z);
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_719, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_724 : f32 = u_xlat43;
  u_xlat43 = (-(x_724) + 4.0f);
  let x_729 : f32 = u_xlat43;
  u_xlatu43 = u32(x_729);
  let x_733 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_733) << bitcast<u32>(2i));
  let x_736 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : i32 = u_xlati43;
  let x_741 : i32 = u_xlati43;
  let x_745 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_738 + 1i) / 4i)][((x_741 + 1i) % 4i)];
  let x_747 : vec3<f32> = (vec3<f32>(x_736.y, x_736.y, x_736.y) * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : i32 = u_xlati43;
  let x_752 : i32 = u_xlati43;
  let x_755 : vec4<f32> = x_614.x_MainLightWorldToShadow[(x_750 / 4i)][(x_752 % 4i)];
  let x_757 : vec3<f32> = vs_TEXCOORD7;
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757.x, x_757.x, x_757.x)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati43;
  let x_768 : i32 = u_xlati43;
  let x_772 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_765 + 2i) / 4i)][((x_768 + 2i) % 4i)];
  let x_774 : vec3<f32> = vs_TEXCOORD7;
  let x_777 : vec4<f32> = u_xlat3;
  let x_779 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774.z, x_774.z, x_774.z)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat3;
  let x_784 : i32 = u_xlati43;
  let x_787 : i32 = u_xlati43;
  let x_791 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_784 + 3i) / 4i)][((x_787 + 3i) % 4i)];
  let x_793 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_801 : vec4<f32> = vs_TEXCOORD0;
  let x_804 : f32 = x_126.x_GlobalMipBias.x;
  let x_805 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_801.z, x_801.w), x_804);
  u_xlat4 = x_805;
  let x_810 : vec4<f32> = vs_TEXCOORD0;
  let x_813 : f32 = x_126.x_GlobalMipBias.x;
  let x_814 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_810.z, x_810.w), x_813);
  let x_815 : vec3<f32> = vec3<f32>(x_814.x, x_814.y, x_814.z);
  let x_816 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_825.x, x_825.y, x_825.z), vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : f32 = u_xlat43;
  u_xlat43 = (x_830 + 0.5f);
  let x_832 : f32 = u_xlat43;
  let x_834 : vec4<f32> = u_xlat6;
  let x_836 : vec3<f32> = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = u_xlat4.w;
  u_xlat43 = max(x_840, 0.0001f);
  let x_843 : vec4<f32> = u_xlat4;
  let x_845 : f32 = u_xlat43;
  let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) / vec3<f32>(x_845, x_845, x_845));
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_852 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
  let x_857 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_853.x, x_853.y));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat6;
  let x_862 : vec4<f32> = hlslcc_FragCoord;
  let x_864 : vec2<f32> = (vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_862.x, x_862.y));
  let x_865 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
  let x_868 : f32 = u_xlat6.y;
  let x_870 : f32 = x_126.x_ScaleBiasRt.x;
  let x_873 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat43 = ((x_868 * x_870) + x_873);
  let x_875 : f32 = u_xlat43;
  u_xlat6.z = (-(x_875) + 1.0f);
  let x_880 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_880) * 0.959999979f) + 0.959999979f);
  let x_886 : f32 = u_xlat28;
  let x_887 : f32 = u_xlat43;
  u_xlat44 = (x_886 + -(x_887));
  let x_890 : f32 = u_xlat43;
  let x_892 : vec4<f32> = u_xlat5;
  let x_894 : vec3<f32> = (vec3<f32>(x_890, x_890, x_890) * vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat5;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec3<f32> = u_xlat0;
  let x_906 : vec4<f32> = u_xlat5;
  let x_911 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.x, x_904.x) * vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_912 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : f32 = u_xlat28;
  u_xlat0.x = (-(x_914) + 1.0f);
  let x_919 : f32 = u_xlat0.x;
  let x_921 : f32 = u_xlat0.x;
  u_xlat28 = (x_919 * x_921);
  let x_923 : f32 = u_xlat28;
  u_xlat28 = max(x_923, 0.0078125f);
  let x_926 : f32 = u_xlat28;
  let x_927 : f32 = u_xlat28;
  u_xlat43 = (x_926 * x_927);
  let x_929 : f32 = u_xlat44;
  u_xlat44 = (x_929 + 1.0f);
  let x_931 : f32 = u_xlat44;
  u_xlat44 = clamp(x_931, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat28;
  u_xlat45 = ((x_934 * 4.0f) + 2.0f);
  let x_943 : vec4<f32> = u_xlat6;
  let x_946 : f32 = x_126.x_GlobalMipBias.x;
  let x_947 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_943.x, x_943.z), x_946);
  u_xlat46 = x_947.x;
  let x_950 : f32 = u_xlat46;
  u_xlat47 = (x_950 + -1.0f);
  let x_953 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_954 : f32 = u_xlat47;
  u_xlat47 = ((x_953 * x_954) + 1.0f);
  let x_957 : f32 = u_xlat14;
  let x_958 : f32 = u_xlat46;
  u_xlat14 = min(x_957, x_958);
  let x_961 : vec4<f32> = u_xlat3;
  let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
  let x_964 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_962.x, x_962.y, x_964);
  let x_976 : vec3<f32> = txVec0;
  let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_976.xy, x_976.z);
  u_xlat3.x = x_978;
  let x_983 : f32 = x_614.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_983) + 1.0f);
  let x_988 : f32 = u_xlat3.x;
  let x_990 : f32 = x_614.x_MainLightShadowParams.x;
  let x_993 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_988 * x_990) + x_993);
  let x_1000 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_1000);
  let x_1005 : f32 = u_xlat3.z;
  u_xlatb31 = (x_1005 >= 1.0f);
  let x_1007 : bool = u_xlatb31;
  let x_1009 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_1007 | x_1009);
  let x_1013 : bool = u_xlatb17.x;
  if (x_1013) {
    x_1014 = 1.0f;
  } else {
    let x_1019 : f32 = u_xlat3.x;
    x_1014 = x_1019;
  }
  let x_1020 : f32 = x_1014;
  u_xlat3.x = x_1020;
  let x_1022 : vec3<f32> = vs_TEXCOORD7;
  let x_1024 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1026 : vec3<f32> = (x_1022 + -(x_1024));
  let x_1027 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat6;
  let x_1031 : vec4<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1036 : f32 = u_xlat17.x;
  let x_1038 : f32 = x_614.x_MainLightShadowParams.z;
  let x_1041 : f32 = x_614.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1036 * x_1038) + x_1041);
  let x_1045 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1045, 0.0f, 1.0f);
  let x_1050 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1050) + 1.0f);
  let x_1054 : f32 = u_xlat17.x;
  let x_1055 : f32 = u_xlat31;
  let x_1058 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1054 * x_1055) + x_1058);
  let x_1067 : f32 = x_1065.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_1067 == -1.0f));
  let x_1071 : bool = u_xlatb17.x;
  if (x_1071) {
    let x_1074 : vec3<f32> = vs_TEXCOORD7;
    let x_1077 : vec4<f32> = x_1065.x_MainLightWorldToLight[1i];
    u_xlat17 = (vec2<f32>(x_1074.y, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y));
    let x_1081 : vec4<f32> = x_1065.x_MainLightWorldToLight[0i];
    let x_1083 : vec3<f32> = vs_TEXCOORD7;
    let x_1086 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1083.x, x_1083.x)) + x_1086);
    let x_1089 : vec4<f32> = x_1065.x_MainLightWorldToLight[2i];
    let x_1091 : vec3<f32> = vs_TEXCOORD7;
    let x_1094 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1091.z, x_1091.z)) + x_1094);
    let x_1096 : vec2<f32> = u_xlat17;
    let x_1098 : vec4<f32> = x_1065.x_MainLightWorldToLight[3i];
    u_xlat17 = (x_1096 + vec2<f32>(x_1098.x, x_1098.y));
    let x_1101 : vec2<f32> = u_xlat17;
    u_xlat17 = ((x_1101 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1109 : vec2<f32> = u_xlat17;
    let x_1111 : f32 = x_126.x_GlobalMipBias.x;
    let x_1112 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1109, x_1111);
    u_xlat6 = x_1112;
    let x_1114 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1116 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1118 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1120 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1121 : vec4<f32> = vec4<f32>(x_1114, x_1116, x_1118, x_1120);
    let x_1128 : vec4<bool> = (vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1128.x, x_1128.y);
    let x_1131 : bool = u_xlatb17.y;
    if (x_1131) {
      let x_1136 : f32 = u_xlat6.w;
      x_1132 = x_1136;
    } else {
      let x_1139 : f32 = u_xlat6.x;
      x_1132 = x_1139;
    }
    let x_1140 : f32 = x_1132;
    u_xlat31 = x_1140;
    let x_1142 : bool = u_xlatb17.x;
    if (x_1142) {
      let x_1146 : vec4<f32> = u_xlat6;
      x_1143 = vec3<f32>(x_1146.x, x_1146.y, x_1146.z);
    } else {
      let x_1149 : f32 = u_xlat31;
      x_1143 = vec3<f32>(x_1149, x_1149, x_1149);
    }
    let x_1151 : vec3<f32> = x_1143;
    let x_1152 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1158 : vec4<f32> = u_xlat6;
  let x_1161 : vec4<f32> = x_126.x_MainLightColor;
  let x_1163 : vec3<f32> = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : f32 = u_xlat47;
  let x_1168 : vec4<f32> = u_xlat6;
  let x_1170 : vec3<f32> = (vec3<f32>(x_1166, x_1166, x_1166) * vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
  let x_1173 : vec3<f32> = u_xlat2;
  let x_1175 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(-(x_1173), vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1180 : f32 = u_xlat17.x;
  let x_1182 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1180 + x_1182);
  let x_1185 : vec4<f32> = u_xlat1;
  let x_1187 : vec2<f32> = u_xlat17;
  let x_1191 : vec3<f32> = u_xlat2;
  let x_1193 : vec3<f32> = ((vec3<f32>(x_1185.x, x_1185.y, x_1185.z) * -(vec3<f32>(x_1187.x, x_1187.x, x_1187.x))) + -(x_1191));
  let x_1194 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec4<f32> = u_xlat1;
  let x_1198 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(vec3<f32>(x_1196.x, x_1196.y, x_1196.z), x_1198);
  let x_1202 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1202, 0.0f, 1.0f);
  let x_1206 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat17.x;
  let x_1213 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1211 * x_1213);
  let x_1217 : f32 = u_xlat17.x;
  let x_1219 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1217 * x_1219);
  let x_1223 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1223) * 0.699999988f) + 1.700000048f);
  let x_1230 : f32 = u_xlat0.x;
  let x_1231 : f32 = u_xlat31;
  u_xlat0.x = (x_1230 * x_1231);
  let x_1235 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1235 * 6.0f);
  let x_1247 : vec4<f32> = u_xlat8;
  let x_1250 : f32 = u_xlat0.x;
  let x_1251 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1247.x, x_1247.y, x_1247.z), x_1250);
  u_xlat8 = x_1251;
  let x_1253 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1253 + -1.0f);
  let x_1261 : f32 = x_1259.unity_SpecCube0_HDR.w;
  let x_1263 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1261 * x_1263) + 1.0f);
  let x_1268 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1268, 0.0f);
  let x_1272 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1272);
  let x_1276 : f32 = u_xlat0.x;
  let x_1278 : f32 = x_1259.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1276 * x_1278);
  let x_1282 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1282);
  let x_1286 : f32 = u_xlat0.x;
  let x_1288 : f32 = x_1259.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1286 * x_1288);
  let x_1291 : vec4<f32> = u_xlat8;
  let x_1293 : vec3<f32> = u_xlat0;
  let x_1295 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) * vec3<f32>(x_1293.x, x_1293.x, x_1293.x));
  let x_1296 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : f32 = u_xlat28;
  let x_1300 : f32 = u_xlat28;
  let x_1304 : vec2<f32> = ((vec2<f32>(x_1298, x_1298) * vec2<f32>(x_1300, x_1300)) + vec2<f32>(-1.0f, 1.0f));
  let x_1305 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1304.x, x_1305.y, x_1304.y);
  let x_1308 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1308);
  let x_1310 : vec4<f32> = u_xlat5;
  let x_1313 : f32 = u_xlat44;
  let x_1315 : vec3<f32> = (-(vec3<f32>(x_1310.x, x_1310.y, x_1310.z)) + vec3<f32>(x_1313, x_1313, x_1313));
  let x_1316 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec2<f32> = u_xlat17;
  let x_1320 : vec4<f32> = u_xlat9;
  let x_1323 : vec4<f32> = u_xlat5;
  let x_1325 : vec3<f32> = ((vec3<f32>(x_1318.x, x_1318.x, x_1318.x) * vec3<f32>(x_1320.x, x_1320.y, x_1320.z)) + vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : f32 = u_xlat28;
  let x_1330 : vec4<f32> = u_xlat9;
  let x_1332 : vec3<f32> = (vec3<f32>(x_1328, x_1328, x_1328) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : vec4<f32> = u_xlat8;
  let x_1337 : vec4<f32> = u_xlat9;
  let x_1339 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) * vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  let x_1342 : vec4<f32> = u_xlat4;
  let x_1344 : vec4<f32> = u_xlat7;
  let x_1347 : vec4<f32> = u_xlat8;
  let x_1349 : vec3<f32> = ((vec3<f32>(x_1342.x, x_1342.y, x_1342.z) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z)) + vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
  let x_1350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  let x_1353 : f32 = u_xlat3.x;
  let x_1355 : f32 = x_1259.unity_LightData.z;
  u_xlat28 = (x_1353 * x_1355);
  let x_1357 : vec4<f32> = u_xlat1;
  let x_1360 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1357.x, x_1357.y, x_1357.z), vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
  let x_1363 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1363, 0.0f, 1.0f);
  let x_1365 : f32 = u_xlat28;
  let x_1366 : f32 = u_xlat44;
  u_xlat28 = (x_1365 * x_1366);
  let x_1368 : f32 = u_xlat28;
  let x_1370 : vec4<f32> = u_xlat6;
  let x_1372 : vec3<f32> = (vec3<f32>(x_1368, x_1368, x_1368) * vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1375 : vec3<f32> = u_xlat2;
  let x_1377 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1379 : vec3<f32> = (x_1375 + vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec4<f32> = u_xlat6;
  let x_1384 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1382.x, x_1382.y, x_1382.z), vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : f32 = u_xlat28;
  u_xlat28 = max(x_1387, 1.17549435e-37f);
  let x_1390 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1390);
  let x_1392 : f32 = u_xlat28;
  let x_1394 : vec4<f32> = u_xlat6;
  let x_1396 : vec3<f32> = (vec3<f32>(x_1392, x_1392, x_1392) * vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1397 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
  let x_1399 : vec4<f32> = u_xlat1;
  let x_1401 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1399.x, x_1399.y, x_1399.z), vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1404 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1404, 0.0f, 1.0f);
  let x_1407 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1409 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_1407.x, x_1407.y, x_1407.z), vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
  let x_1412 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1412, 0.0f, 1.0f);
  let x_1414 : f32 = u_xlat28;
  let x_1415 : f32 = u_xlat28;
  u_xlat28 = (x_1414 * x_1415);
  let x_1417 : f32 = u_xlat28;
  let x_1419 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1417 * x_1419) + 1.000010014f);
  let x_1423 : f32 = u_xlat44;
  let x_1424 : f32 = u_xlat44;
  u_xlat44 = (x_1423 * x_1424);
  let x_1426 : f32 = u_xlat28;
  let x_1427 : f32 = u_xlat28;
  u_xlat28 = (x_1426 * x_1427);
  let x_1429 : f32 = u_xlat44;
  u_xlat44 = max(x_1429, 0.100000001f);
  let x_1432 : f32 = u_xlat28;
  let x_1433 : f32 = u_xlat44;
  u_xlat28 = (x_1432 * x_1433);
  let x_1435 : f32 = u_xlat45;
  let x_1436 : f32 = u_xlat28;
  u_xlat28 = (x_1435 * x_1436);
  let x_1438 : f32 = u_xlat43;
  let x_1439 : f32 = u_xlat28;
  u_xlat28 = (x_1438 / x_1439);
  let x_1441 : vec4<f32> = u_xlat5;
  let x_1443 : f32 = u_xlat28;
  let x_1446 : vec4<f32> = u_xlat7;
  let x_1448 : vec3<f32> = ((vec3<f32>(x_1441.x, x_1441.y, x_1441.z) * vec3<f32>(x_1443, x_1443, x_1443)) + vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
  let x_1449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
  let x_1451 : vec4<f32> = u_xlat3;
  let x_1453 : vec4<f32> = u_xlat6;
  let x_1455 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1459 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1461 : f32 = x_1259.unity_LightData.y;
  u_xlat28 = min(x_1459, x_1461);
  let x_1464 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1464));
  let x_1469 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1471 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1473 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1475 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1476 : vec4<f32> = vec4<f32>(x_1469, x_1471, x_1473, x_1475);
  let x_1482 : vec4<bool> = (vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1476.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1482.x, x_1482.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1493 : u32 = u_xlatu_loop_1;
    let x_1494 : u32 = u_xlatu28;
    if ((x_1493 < x_1494)) {
    } else {
      break;
    }
    let x_1497 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1497 >> 2u);
    let x_1500 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1500 & 3u));
    let x_1503 : u32 = u_xlatu46;
    let x_1506 : vec4<f32> = x_1259.unity_LightIndices[bitcast<i32>(x_1503)];
    let x_1516 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1521 : vec4<u32> = indexable[x_1516];
    u_xlat46 = dot(x_1506, bitcast<vec4<f32>>(x_1521));
    let x_1524 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1524));
    let x_1527 : vec3<f32> = vs_TEXCOORD7;
    let x_1539 : u32 = u_xlatu46;
    let x_1542 : vec4<f32> = x_1538.x_AdditionalLightsPosition[bitcast<i32>(x_1539)];
    let x_1545 : u32 = u_xlatu46;
    let x_1548 : vec4<f32> = x_1538.x_AdditionalLightsPosition[bitcast<i32>(x_1545)];
    let x_1550 : vec3<f32> = ((-(x_1527) * vec3<f32>(x_1542.w, x_1542.w, x_1542.w)) + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
    let x_1551 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
    let x_1554 : vec4<f32> = u_xlat9;
    let x_1556 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_1554.x, x_1554.y, x_1554.z), vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
    let x_1559 : f32 = u_xlat34;
    u_xlat34 = max(x_1559, 6.10351562e-05f);
    let x_1562 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1562);
    let x_1564 : f32 = u_xlat48;
    let x_1566 : vec4<f32> = u_xlat9;
    let x_1568 : vec3<f32> = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1569 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
    let x_1572 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1572);
    let x_1574 : f32 = u_xlat34;
    let x_1575 : u32 = u_xlatu46;
    let x_1578 : f32 = x_1538.x_AdditionalLightsAttenuation[bitcast<i32>(x_1575)].x;
    u_xlat34 = (x_1574 * x_1578);
    let x_1580 : f32 = u_xlat34;
    let x_1582 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1580) * x_1582) + 1.0f);
    let x_1585 : f32 = u_xlat34;
    u_xlat34 = max(x_1585, 0.0f);
    let x_1587 : f32 = u_xlat34;
    let x_1588 : f32 = u_xlat34;
    u_xlat34 = (x_1587 * x_1588);
    let x_1590 : f32 = u_xlat34;
    let x_1591 : f32 = u_xlat49;
    u_xlat34 = (x_1590 * x_1591);
    let x_1593 : u32 = u_xlatu46;
    let x_1596 : vec4<f32> = x_1538.x_AdditionalLightsSpotDir[bitcast<i32>(x_1593)];
    let x_1598 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
    let x_1601 : f32 = u_xlat49;
    let x_1602 : u32 = u_xlatu46;
    let x_1605 : f32 = x_1538.x_AdditionalLightsAttenuation[bitcast<i32>(x_1602)].z;
    let x_1607 : u32 = u_xlatu46;
    let x_1610 : f32 = x_1538.x_AdditionalLightsAttenuation[bitcast<i32>(x_1607)].w;
    u_xlat49 = ((x_1601 * x_1605) + x_1610);
    let x_1612 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1612, 0.0f, 1.0f);
    let x_1614 : f32 = u_xlat49;
    let x_1615 : f32 = u_xlat49;
    u_xlat49 = (x_1614 * x_1615);
    let x_1617 : f32 = u_xlat34;
    let x_1618 : f32 = u_xlat49;
    u_xlat34 = (x_1617 * x_1618);
    let x_1621 : u32 = u_xlatu46;
    u_xlatu49 = (x_1621 >> 5u);
    let x_1624 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1624) & 31i)));
    let x_1629 : i32 = u_xlati50;
    let x_1631 : u32 = u_xlatu49;
    let x_1634 : f32 = x_1065.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1631)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1629) & bitcast<u32>(x_1634)));
    let x_1638 : i32 = u_xlati49;
    if ((x_1638 != 0i)) {
      let x_1648 : u32 = u_xlatu46;
      let x_1651 : f32 = x_1647.x_AdditionalLightsLightTypes[bitcast<i32>(x_1648)].el;
      u_xlati49 = i32(x_1651);
      let x_1653 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1653 != 0i));
      let x_1657 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1657) << bitcast<u32>(2i));
      let x_1660 : i32 = u_xlati50;
      if ((x_1660 != 0i)) {
        let x_1664 : vec3<f32> = vs_TEXCOORD7;
        let x_1666 : i32 = u_xlati51;
        let x_1669 : i32 = u_xlati51;
        let x_1673 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1666 + 1i) / 4i)][((x_1669 + 1i) % 4i)];
        let x_1675 : vec3<f32> = (vec3<f32>(x_1664.y, x_1664.y, x_1664.y) * vec3<f32>(x_1673.x, x_1673.y, x_1673.w));
        let x_1676 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
        let x_1678 : i32 = u_xlati51;
        let x_1680 : i32 = u_xlati51;
        let x_1683 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[(x_1678 / 4i)][(x_1680 % 4i)];
        let x_1685 : vec3<f32> = vs_TEXCOORD7;
        let x_1688 : vec4<f32> = u_xlat11;
        let x_1690 : vec3<f32> = ((vec3<f32>(x_1683.x, x_1683.y, x_1683.w) * vec3<f32>(x_1685.x, x_1685.x, x_1685.x)) + vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
        let x_1691 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
        let x_1693 : i32 = u_xlati51;
        let x_1696 : i32 = u_xlati51;
        let x_1700 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1693 + 2i) / 4i)][((x_1696 + 2i) % 4i)];
        let x_1702 : vec3<f32> = vs_TEXCOORD7;
        let x_1705 : vec4<f32> = u_xlat11;
        let x_1707 : vec3<f32> = ((vec3<f32>(x_1700.x, x_1700.y, x_1700.w) * vec3<f32>(x_1702.z, x_1702.z, x_1702.z)) + vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
        let x_1708 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
        let x_1710 : vec4<f32> = u_xlat11;
        let x_1712 : i32 = u_xlati51;
        let x_1715 : i32 = u_xlati51;
        let x_1719 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1712 + 3i) / 4i)][((x_1715 + 3i) % 4i)];
        let x_1721 : vec3<f32> = (vec3<f32>(x_1710.x, x_1710.y, x_1710.z) + vec3<f32>(x_1719.x, x_1719.y, x_1719.w));
        let x_1722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
        let x_1724 : vec4<f32> = u_xlat11;
        let x_1726 : vec4<f32> = u_xlat11;
        let x_1728 : vec2<f32> = (vec2<f32>(x_1724.x, x_1724.y) / vec2<f32>(x_1726.z, x_1726.z));
        let x_1729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1731 : vec4<f32> = u_xlat11;
        let x_1734 : vec2<f32> = ((vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1735 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1734.x, x_1734.y, x_1735.z, x_1735.w);
        let x_1737 : vec4<f32> = u_xlat11;
        let x_1741 : vec2<f32> = clamp(vec2<f32>(x_1737.x, x_1737.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1741.x, x_1741.y, x_1742.z, x_1742.w);
        let x_1744 : u32 = u_xlatu46;
        let x_1747 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1744)];
        let x_1749 : vec4<f32> = u_xlat11;
        let x_1752 : u32 = u_xlatu46;
        let x_1755 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1752)];
        let x_1757 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1749.x, x_1749.y)) + vec2<f32>(x_1755.z, x_1755.w));
        let x_1758 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1757.x, x_1757.y, x_1758.z, x_1758.w);
      } else {
        let x_1762 : i32 = u_xlati49;
        u_xlatb49 = (x_1762 == 1i);
        let x_1764 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1764);
        let x_1766 : i32 = u_xlati49;
        if ((x_1766 != 0i)) {
          let x_1771 : vec3<f32> = vs_TEXCOORD7;
          let x_1773 : i32 = u_xlati51;
          let x_1776 : i32 = u_xlati51;
          let x_1780 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1773 + 1i) / 4i)][((x_1776 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1771.y, x_1771.y) * vec2<f32>(x_1780.x, x_1780.y));
          let x_1783 : i32 = u_xlati51;
          let x_1785 : i32 = u_xlati51;
          let x_1788 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[(x_1783 / 4i)][(x_1785 % 4i)];
          let x_1790 : vec3<f32> = vs_TEXCOORD7;
          let x_1793 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1788.x, x_1788.y) * vec2<f32>(x_1790.x, x_1790.x)) + x_1793);
          let x_1795 : i32 = u_xlati51;
          let x_1798 : i32 = u_xlati51;
          let x_1802 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1795 + 2i) / 4i)][((x_1798 + 2i) % 4i)];
          let x_1804 : vec3<f32> = vs_TEXCOORD7;
          let x_1807 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1802.x, x_1802.y) * vec2<f32>(x_1804.z, x_1804.z)) + x_1807);
          let x_1809 : vec2<f32> = u_xlat39;
          let x_1810 : i32 = u_xlati51;
          let x_1813 : i32 = u_xlati51;
          let x_1817 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1810 + 3i) / 4i)][((x_1813 + 3i) % 4i)];
          u_xlat39 = (x_1809 + vec2<f32>(x_1817.x, x_1817.y));
          let x_1820 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1820 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1823 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1823);
          let x_1825 : u32 = u_xlatu46;
          let x_1828 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1825)];
          let x_1830 : vec2<f32> = u_xlat39;
          let x_1832 : u32 = u_xlatu46;
          let x_1835 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1832)];
          let x_1837 : vec2<f32> = ((vec2<f32>(x_1828.x, x_1828.y) * x_1830) + vec2<f32>(x_1835.z, x_1835.w));
          let x_1838 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1837.x, x_1837.y, x_1838.z, x_1838.w);
        } else {
          let x_1841 : vec3<f32> = vs_TEXCOORD7;
          let x_1843 : i32 = u_xlati51;
          let x_1846 : i32 = u_xlati51;
          let x_1850 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1843 + 1i) / 4i)][((x_1846 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1841.y, x_1841.y, x_1841.y, x_1841.y) * x_1850);
          let x_1852 : i32 = u_xlati51;
          let x_1854 : i32 = u_xlati51;
          let x_1857 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[(x_1852 / 4i)][(x_1854 % 4i)];
          let x_1858 : vec3<f32> = vs_TEXCOORD7;
          let x_1861 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1857 * vec4<f32>(x_1858.x, x_1858.x, x_1858.x, x_1858.x)) + x_1861);
          let x_1863 : i32 = u_xlati51;
          let x_1866 : i32 = u_xlati51;
          let x_1870 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1863 + 2i) / 4i)][((x_1866 + 2i) % 4i)];
          let x_1871 : vec3<f32> = vs_TEXCOORD7;
          let x_1874 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1870 * vec4<f32>(x_1871.z, x_1871.z, x_1871.z, x_1871.z)) + x_1874);
          let x_1876 : vec4<f32> = u_xlat12;
          let x_1877 : i32 = u_xlati51;
          let x_1880 : i32 = u_xlati51;
          let x_1884 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1877 + 3i) / 4i)][((x_1880 + 3i) % 4i)];
          u_xlat12 = (x_1876 + x_1884);
          let x_1886 : vec4<f32> = u_xlat12;
          let x_1888 : vec4<f32> = u_xlat12;
          let x_1890 : vec3<f32> = (vec3<f32>(x_1886.x, x_1886.y, x_1886.z) / vec3<f32>(x_1888.w, x_1888.w, x_1888.w));
          let x_1891 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
          let x_1893 : vec4<f32> = u_xlat12;
          let x_1895 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.z), vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
          let x_1898 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1898);
          let x_1900 : f32 = u_xlat49;
          let x_1902 : vec4<f32> = u_xlat12;
          let x_1904 : vec3<f32> = (vec3<f32>(x_1900, x_1900, x_1900) * vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
          let x_1905 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
          let x_1907 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1907.x, x_1907.y, x_1907.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1912 : f32 = u_xlat49;
          u_xlat49 = max(x_1912, 0.000001f);
          let x_1915 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1915);
          let x_1917 : f32 = u_xlat49;
          let x_1919 : vec4<f32> = u_xlat12;
          let x_1921 : vec3<f32> = (vec3<f32>(x_1917, x_1917, x_1917) * vec3<f32>(x_1919.z, x_1919.x, x_1919.y));
          let x_1922 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1922.w);
          let x_1925 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1925);
          let x_1929 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1929, 0.0f, 1.0f);
          let x_1933 : vec4<f32> = u_xlat13;
          let x_1936 : vec4<bool> = (vec4<f32>(x_1933.y, x_1933.z, x_1933.y, x_1933.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1936.x, x_1936.y);
          let x_1939 : bool = u_xlatb39.x;
          if (x_1939) {
            let x_1944 : f32 = u_xlat13.x;
            x_1940 = x_1944;
          } else {
            let x_1947 : f32 = u_xlat13.x;
            x_1940 = -(x_1947);
          }
          let x_1949 : f32 = x_1940;
          u_xlat39.x = x_1949;
          let x_1952 : bool = u_xlatb39.y;
          if (x_1952) {
            let x_1957 : f32 = u_xlat13.x;
            x_1953 = x_1957;
          } else {
            let x_1960 : f32 = u_xlat13.x;
            x_1953 = -(x_1960);
          }
          let x_1962 : f32 = x_1953;
          u_xlat39.y = x_1962;
          let x_1964 : vec4<f32> = u_xlat12;
          let x_1966 : f32 = u_xlat49;
          let x_1969 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1964.x, x_1964.y) * vec2<f32>(x_1966, x_1966)) + x_1969);
          let x_1971 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1971 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1974 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1974, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1978 : u32 = u_xlatu46;
          let x_1981 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1978)];
          let x_1983 : vec2<f32> = u_xlat39;
          let x_1985 : u32 = u_xlatu46;
          let x_1988 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1985)];
          let x_1990 : vec2<f32> = ((vec2<f32>(x_1981.x, x_1981.y) * x_1983) + vec2<f32>(x_1988.z, x_1988.w));
          let x_1991 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1990.x, x_1990.y, x_1991.z, x_1991.w);
        }
      }
      let x_1998 : vec4<f32> = u_xlat11;
      let x_2001 : f32 = x_126.x_GlobalMipBias.x;
      let x_2002 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1998.x, x_1998.y), x_2001);
      u_xlat11 = x_2002;
      let x_2004 : bool = u_xlatb6.y;
      if (x_2004) {
        let x_2009 : f32 = u_xlat11.w;
        x_2005 = x_2009;
      } else {
        let x_2012 : f32 = u_xlat11.x;
        x_2005 = x_2012;
      }
      let x_2013 : f32 = x_2005;
      u_xlat49 = x_2013;
      let x_2015 : bool = u_xlatb6.x;
      if (x_2015) {
        let x_2019 : vec4<f32> = u_xlat11;
        x_2016 = vec3<f32>(x_2019.x, x_2019.y, x_2019.z);
      } else {
        let x_2022 : f32 = u_xlat49;
        x_2016 = vec3<f32>(x_2022, x_2022, x_2022);
      }
      let x_2024 : vec3<f32> = x_2016;
      let x_2025 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2031 : vec4<f32> = u_xlat11;
    let x_2033 : u32 = u_xlatu46;
    let x_2036 : vec4<f32> = x_1538.x_AdditionalLightsColor[bitcast<i32>(x_2033)];
    let x_2038 : vec3<f32> = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
    let x_2041 : f32 = u_xlat47;
    let x_2043 : vec4<f32> = u_xlat11;
    let x_2045 : vec3<f32> = (vec3<f32>(x_2041, x_2041, x_2041) * vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
    let x_2046 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
    let x_2048 : vec4<f32> = u_xlat1;
    let x_2050 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2048.x, x_2048.y, x_2048.z), vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
    let x_2053 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2053, 0.0f, 1.0f);
    let x_2055 : f32 = u_xlat46;
    let x_2056 : f32 = u_xlat34;
    u_xlat46 = (x_2055 * x_2056);
    let x_2058 : f32 = u_xlat46;
    let x_2060 : vec4<f32> = u_xlat11;
    let x_2062 : vec3<f32> = (vec3<f32>(x_2058, x_2058, x_2058) * vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
    let x_2063 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
    let x_2065 : vec4<f32> = u_xlat9;
    let x_2067 : f32 = u_xlat48;
    let x_2070 : vec3<f32> = u_xlat2;
    let x_2071 : vec3<f32> = ((vec3<f32>(x_2065.x, x_2065.y, x_2065.z) * vec3<f32>(x_2067, x_2067, x_2067)) + x_2070);
    let x_2072 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
    let x_2074 : vec4<f32> = u_xlat9;
    let x_2076 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2074.x, x_2074.y, x_2074.z), vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
    let x_2079 : f32 = u_xlat46;
    u_xlat46 = max(x_2079, 1.17549435e-37f);
    let x_2081 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2081);
    let x_2083 : f32 = u_xlat46;
    let x_2085 : vec4<f32> = u_xlat9;
    let x_2087 : vec3<f32> = (vec3<f32>(x_2083, x_2083, x_2083) * vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
    let x_2088 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
    let x_2090 : vec4<f32> = u_xlat1;
    let x_2092 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2090.x, x_2090.y, x_2090.z), vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
    let x_2095 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2095, 0.0f, 1.0f);
    let x_2097 : vec4<f32> = u_xlat10;
    let x_2099 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_2097.x, x_2097.y, x_2097.z), vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
    let x_2102 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2102, 0.0f, 1.0f);
    let x_2104 : f32 = u_xlat46;
    let x_2105 : f32 = u_xlat46;
    u_xlat46 = (x_2104 * x_2105);
    let x_2107 : f32 = u_xlat46;
    let x_2109 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2107 * x_2109) + 1.000010014f);
    let x_2112 : f32 = u_xlat34;
    let x_2113 : f32 = u_xlat34;
    u_xlat34 = (x_2112 * x_2113);
    let x_2115 : f32 = u_xlat46;
    let x_2116 : f32 = u_xlat46;
    u_xlat46 = (x_2115 * x_2116);
    let x_2118 : f32 = u_xlat34;
    u_xlat34 = max(x_2118, 0.100000001f);
    let x_2120 : f32 = u_xlat46;
    let x_2121 : f32 = u_xlat34;
    u_xlat46 = (x_2120 * x_2121);
    let x_2123 : f32 = u_xlat45;
    let x_2124 : f32 = u_xlat46;
    u_xlat46 = (x_2123 * x_2124);
    let x_2126 : f32 = u_xlat43;
    let x_2127 : f32 = u_xlat46;
    u_xlat46 = (x_2126 / x_2127);
    let x_2129 : vec4<f32> = u_xlat5;
    let x_2131 : f32 = u_xlat46;
    let x_2134 : vec4<f32> = u_xlat7;
    let x_2136 : vec3<f32> = ((vec3<f32>(x_2129.x, x_2129.y, x_2129.z) * vec3<f32>(x_2131, x_2131, x_2131)) + vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
    let x_2139 : vec4<f32> = u_xlat9;
    let x_2141 : vec4<f32> = u_xlat11;
    let x_2144 : vec4<f32> = u_xlat8;
    let x_2146 : vec3<f32> = ((vec3<f32>(x_2139.x, x_2139.y, x_2139.z) * vec3<f32>(x_2141.x, x_2141.y, x_2141.z)) + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
    let x_2147 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);

    continuing {
      let x_2149 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2149 + bitcast<u32>(1i));
    }
  }
  let x_2151 : vec4<f32> = u_xlat4;
  let x_2153 : f32 = u_xlat14;
  let x_2156 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2151.x, x_2151.y, x_2151.z) * vec3<f32>(x_2153, x_2153, x_2153)) + vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : vec4<f32> = u_xlat8;
  let x_2161 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2159.x, x_2159.y, x_2159.z) + x_2161);
  let x_2165 : f32 = u_xlat42;
  let x_2167 : vec3<f32> = u_xlat0;
  let x_2168 : vec3<f32> = (vec3<f32>(x_2165, x_2165, x_2165) * x_2167);
  let x_2169 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
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

