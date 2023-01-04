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

@group(1) @binding(4) var<uniform> x_595 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1079 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1280 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1547 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1656 : AdditionalLightsCookies;

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
  var x_571 : vec3<f32>;
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
  var x_1031 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat31 : f32;
  var x_1161 : f32;
  var x_1172 : vec3<f32>;
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
  var x_1950 : f32;
  var x_1963 : f32;
  var x_2015 : f32;
  var x_2026 : vec3<f32>;
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
  let x_561 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_561;
  let x_564 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_564;
  let x_568 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_574 : vec3<f32> = u_xlat15;
    x_571 = x_574;
  } else {
    let x_576 : vec3<f32> = u_xlat2;
    x_571 = x_576;
  }
  let x_577 : vec3<f32> = x_571;
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_581 : vec3<f32> = vs_TEXCOORD3;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_581, x_582);
  let x_584 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_584);
  let x_586 : f32 = u_xlat43;
  let x_588 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_586, x_586, x_586) * x_588);
  let x_590 : vec3<f32> = vs_TEXCOORD7;
  let x_597 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres0;
  let x_600 : vec3<f32> = (x_590 + -(vec3<f32>(x_597.x, x_597.y, x_597.z)));
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = vs_TEXCOORD7;
  let x_605 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres1;
  let x_608 : vec3<f32> = (x_603 + -(vec3<f32>(x_605.x, x_605.y, x_605.z)));
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec3<f32> = vs_TEXCOORD7;
  let x_614 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres2;
  let x_617 : vec3<f32> = (x_611 + -(vec3<f32>(x_614.x, x_614.y, x_614.z)));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec3<f32> = vs_TEXCOORD7;
  let x_622 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres3;
  let x_625 : vec3<f32> = (x_620 + -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
  let x_626 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat3;
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_646 : vec4<f32> = u_xlat7;
  let x_648 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_646.x, x_646.y, x_646.z), vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec4<f32> = x_595.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_654 < x_656);
  let x_659 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_663);
  let x_667 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_667);
  let x_671 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_671);
  let x_675 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_675);
  let x_680 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_680);
  let x_684 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_684);
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec4<f32> = u_xlat4;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) + vec3<f32>(x_689.y, x_689.z, x_689.w));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat3;
  let x_697 : vec3<f32> = max(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_698 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_698.x, x_697.x, x_697.y, x_697.z);
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_700, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_705 : f32 = u_xlat43;
  u_xlat43 = (-(x_705) + 4.0f);
  let x_710 : f32 = u_xlat43;
  u_xlatu43 = u32(x_710);
  let x_714 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_714) << bitcast<u32>(2i));
  let x_717 : vec3<f32> = vs_TEXCOORD7;
  let x_719 : i32 = u_xlati43;
  let x_722 : i32 = u_xlati43;
  let x_726 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
  let x_728 : vec3<f32> = (vec3<f32>(x_717.y, x_717.y, x_717.y) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati43;
  let x_733 : i32 = u_xlati43;
  let x_736 : vec4<f32> = x_595.x_MainLightWorldToShadow[(x_731 / 4i)][(x_733 % 4i)];
  let x_738 : vec3<f32> = vs_TEXCOORD7;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati43;
  let x_749 : i32 = u_xlati43;
  let x_753 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
  let x_755 : vec3<f32> = vs_TEXCOORD7;
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.z, x_755.z, x_755.z)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : i32 = u_xlati43;
  let x_768 : i32 = u_xlati43;
  let x_772 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
  let x_774 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_778 : f32 = vs_TEXCOORD7.y;
  let x_780 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat43 = (x_778 * x_780);
  let x_783 : f32 = x_126.unity_MatrixV[0i].z;
  let x_785 : f32 = vs_TEXCOORD7.x;
  let x_787 : f32 = u_xlat43;
  u_xlat43 = ((x_783 * x_785) + x_787);
  let x_790 : f32 = x_126.unity_MatrixV[2i].z;
  let x_792 : f32 = vs_TEXCOORD7.z;
  let x_794 : f32 = u_xlat43;
  u_xlat43 = ((x_790 * x_792) + x_794);
  let x_796 : f32 = u_xlat43;
  let x_798 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat43 = (x_796 + x_798);
  let x_800 : f32 = u_xlat43;
  let x_803 : f32 = x_126.x_ProjectionParams.y;
  u_xlat43 = (-(x_800) + -(x_803));
  let x_806 : f32 = u_xlat43;
  u_xlat43 = max(x_806, 0.0f);
  let x_808 : f32 = u_xlat43;
  let x_810 : f32 = x_126.unity_FogParams.x;
  u_xlat43 = (x_808 * x_810);
  let x_817 : vec4<f32> = vs_TEXCOORD0;
  let x_820 : f32 = x_126.x_GlobalMipBias.x;
  let x_821 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_817.z, x_817.w), x_820);
  u_xlat4 = x_821;
  let x_826 : vec4<f32> = vs_TEXCOORD0;
  let x_829 : f32 = x_126.x_GlobalMipBias.x;
  let x_830 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_826.z, x_826.w), x_829);
  let x_831 : vec3<f32> = vec3<f32>(x_830.x, x_830.y, x_830.z);
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat4;
  let x_838 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_839 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_842 : vec3<f32> = u_xlat2;
  let x_843 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_842, vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : f32 = u_xlat44;
  u_xlat44 = (x_846 + 0.5f);
  let x_848 : f32 = u_xlat44;
  let x_850 : vec4<f32> = u_xlat6;
  let x_852 : vec3<f32> = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = u_xlat4.w;
  u_xlat44 = max(x_856, 0.0001f);
  let x_859 : vec4<f32> = u_xlat4;
  let x_861 : f32 = u_xlat44;
  let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) / vec3<f32>(x_861, x_861, x_861));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_868 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
  let x_873 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_869.x, x_869.y));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat6;
  let x_878 : vec4<f32> = hlslcc_FragCoord;
  let x_880 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_878.x, x_878.y));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
  let x_884 : f32 = u_xlat6.y;
  let x_886 : f32 = x_126.x_ScaleBiasRt.x;
  let x_889 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat44 = ((x_884 * x_886) + x_889);
  let x_891 : f32 = u_xlat44;
  u_xlat6.z = (-(x_891) + 1.0f);
  let x_896 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_896) * 0.959999979f) + 0.959999979f);
  let x_902 : f32 = u_xlat28;
  let x_903 : f32 = u_xlat44;
  u_xlat45 = (x_902 + -(x_903));
  let x_906 : f32 = u_xlat44;
  let x_908 : vec4<f32> = u_xlat5;
  let x_910 : vec3<f32> = (vec3<f32>(x_906, x_906, x_906) * vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_911 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat5;
  let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_918 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec3<f32> = u_xlat0;
  let x_922 : vec4<f32> = u_xlat5;
  let x_927 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.x, x_920.x) * vec3<f32>(x_922.x, x_922.y, x_922.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_928 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : f32 = u_xlat28;
  u_xlat0.x = (-(x_930) + 1.0f);
  let x_935 : f32 = u_xlat0.x;
  let x_937 : f32 = u_xlat0.x;
  u_xlat28 = (x_935 * x_937);
  let x_939 : f32 = u_xlat28;
  u_xlat28 = max(x_939, 0.0078125f);
  let x_942 : f32 = u_xlat28;
  let x_943 : f32 = u_xlat28;
  u_xlat44 = (x_942 * x_943);
  let x_945 : f32 = u_xlat45;
  u_xlat45 = (x_945 + 1.0f);
  let x_947 : f32 = u_xlat45;
  u_xlat45 = clamp(x_947, 0.0f, 1.0f);
  let x_950 : f32 = u_xlat28;
  u_xlat46 = ((x_950 * 4.0f) + 2.0f);
  let x_959 : vec4<f32> = u_xlat6;
  let x_962 : f32 = x_126.x_GlobalMipBias.x;
  let x_963 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_959.x, x_959.z), x_962);
  u_xlat47 = x_963.x;
  let x_965 : f32 = u_xlat47;
  u_xlat6.x = (x_965 + -1.0f);
  let x_969 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_971 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_969 * x_971) + 1.0f);
  let x_975 : f32 = u_xlat14;
  let x_976 : f32 = u_xlat47;
  u_xlat14 = min(x_975, x_976);
  let x_979 : vec4<f32> = u_xlat3;
  let x_980 : vec2<f32> = vec2<f32>(x_979.x, x_979.y);
  let x_982 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_980.x, x_980.y, x_982);
  let x_994 : vec3<f32> = txVec0;
  let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
  u_xlat3.x = x_996;
  let x_1000 : f32 = x_595.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_1000) + 1.0f);
  let x_1005 : f32 = u_xlat3.x;
  let x_1007 : f32 = x_595.x_MainLightShadowParams.x;
  let x_1010 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_1005 * x_1007) + x_1010);
  let x_1017 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_1017);
  let x_1022 : f32 = u_xlat3.z;
  u_xlatb31 = (x_1022 >= 1.0f);
  let x_1024 : bool = u_xlatb31;
  let x_1026 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_1024 | x_1026);
  let x_1030 : bool = u_xlatb17.x;
  if (x_1030) {
    x_1031 = 1.0f;
  } else {
    let x_1036 : f32 = u_xlat3.x;
    x_1031 = x_1036;
  }
  let x_1037 : f32 = x_1031;
  u_xlat3.x = x_1037;
  let x_1040 : vec3<f32> = vs_TEXCOORD7;
  let x_1042 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat20 = (x_1040 + -(x_1042));
  let x_1045 : vec3<f32> = u_xlat20;
  let x_1046 : vec3<f32> = u_xlat20;
  u_xlat17.x = dot(x_1045, x_1046);
  let x_1050 : f32 = u_xlat17.x;
  let x_1052 : f32 = x_595.x_MainLightShadowParams.z;
  let x_1055 : f32 = x_595.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1050 * x_1052) + x_1055);
  let x_1059 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1059, 0.0f, 1.0f);
  let x_1064 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_1064) + 1.0f);
  let x_1068 : f32 = u_xlat17.x;
  let x_1069 : f32 = u_xlat31;
  let x_1072 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1068 * x_1069) + x_1072);
  let x_1081 : f32 = x_1079.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_1081 == -1.0f));
  let x_1085 : bool = u_xlatb17.x;
  if (x_1085) {
    let x_1088 : vec3<f32> = vs_TEXCOORD7;
    let x_1091 : vec4<f32> = x_1079.x_MainLightWorldToLight[1i];
    let x_1093 : vec2<f32> = (vec2<f32>(x_1088.y, x_1088.y) * vec2<f32>(x_1091.x, x_1091.y));
    let x_1094 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1093.x, x_1093.y, x_1094.z);
    let x_1097 : vec4<f32> = x_1079.x_MainLightWorldToLight[0i];
    let x_1099 : vec3<f32> = vs_TEXCOORD7;
    let x_1102 : vec3<f32> = u_xlat17;
    let x_1104 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1099.x, x_1099.x)) + vec2<f32>(x_1102.x, x_1102.y));
    let x_1105 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1104.x, x_1104.y, x_1105.z);
    let x_1108 : vec4<f32> = x_1079.x_MainLightWorldToLight[2i];
    let x_1110 : vec3<f32> = vs_TEXCOORD7;
    let x_1113 : vec3<f32> = u_xlat17;
    let x_1115 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1110.z, x_1110.z)) + vec2<f32>(x_1113.x, x_1113.y));
    let x_1116 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1115.x, x_1115.y, x_1116.z);
    let x_1118 : vec3<f32> = u_xlat17;
    let x_1121 : vec4<f32> = x_1079.x_MainLightWorldToLight[3i];
    let x_1123 : vec2<f32> = (vec2<f32>(x_1118.x, x_1118.y) + vec2<f32>(x_1121.x, x_1121.y));
    let x_1124 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1123.x, x_1123.y, x_1124.z);
    let x_1126 : vec3<f32> = u_xlat17;
    let x_1129 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1130 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1129.x, x_1129.y, x_1130.z);
    let x_1137 : vec3<f32> = u_xlat17;
    let x_1140 : f32 = x_126.x_GlobalMipBias.x;
    let x_1141 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1137.x, x_1137.y), x_1140);
    u_xlat8 = x_1141;
    let x_1143 : f32 = x_1079.x_MainLightCookieTextureFormat;
    let x_1145 : f32 = x_1079.x_MainLightCookieTextureFormat;
    let x_1147 : f32 = x_1079.x_MainLightCookieTextureFormat;
    let x_1149 : f32 = x_1079.x_MainLightCookieTextureFormat;
    let x_1150 : vec4<f32> = vec4<f32>(x_1143, x_1145, x_1147, x_1149);
    let x_1157 : vec4<bool> = (vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1150.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1157.x, x_1157.y);
    let x_1160 : bool = u_xlatb17.y;
    if (x_1160) {
      let x_1165 : f32 = u_xlat8.w;
      x_1161 = x_1165;
    } else {
      let x_1168 : f32 = u_xlat8.x;
      x_1161 = x_1168;
    }
    let x_1169 : f32 = x_1161;
    u_xlat31 = x_1169;
    let x_1171 : bool = u_xlatb17.x;
    if (x_1171) {
      let x_1175 : vec4<f32> = u_xlat8;
      x_1172 = vec3<f32>(x_1175.x, x_1175.y, x_1175.z);
    } else {
      let x_1178 : f32 = u_xlat31;
      x_1172 = vec3<f32>(x_1178, x_1178, x_1178);
    }
    let x_1180 : vec3<f32> = x_1172;
    u_xlat20 = x_1180;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1185 : vec3<f32> = u_xlat20;
  let x_1187 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat20 = (x_1185 * vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = u_xlat6;
  let x_1192 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1190.x, x_1190.x, x_1190.x) * x_1192);
  let x_1194 : vec4<f32> = u_xlat1;
  let x_1197 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(-(vec3<f32>(x_1194.x, x_1194.y, x_1194.z)), x_1197);
  let x_1201 : f32 = u_xlat17.x;
  let x_1203 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1201 + x_1203);
  let x_1206 : vec3<f32> = u_xlat2;
  let x_1207 : vec3<f32> = u_xlat17;
  let x_1211 : vec4<f32> = u_xlat1;
  let x_1214 : vec3<f32> = ((x_1206 * -(vec3<f32>(x_1207.x, x_1207.x, x_1207.x))) + -(vec3<f32>(x_1211.x, x_1211.y, x_1211.z)));
  let x_1215 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1217 : vec3<f32> = u_xlat2;
  let x_1218 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(x_1217, vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1223 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1223, 0.0f, 1.0f);
  let x_1227 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_1227) + 1.0f);
  let x_1232 : f32 = u_xlat17.x;
  let x_1234 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1232 * x_1234);
  let x_1238 : f32 = u_xlat17.x;
  let x_1240 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1238 * x_1240);
  let x_1244 : f32 = u_xlat0.x;
  u_xlat31 = ((-(x_1244) * 0.699999988f) + 1.700000048f);
  let x_1251 : f32 = u_xlat0.x;
  let x_1252 : f32 = u_xlat31;
  u_xlat0.x = (x_1251 * x_1252);
  let x_1256 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1256 * 6.0f);
  let x_1268 : vec4<f32> = u_xlat8;
  let x_1271 : f32 = u_xlat0.x;
  let x_1272 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1268.x, x_1268.y, x_1268.z), x_1271);
  u_xlat8 = x_1272;
  let x_1274 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1274 + -1.0f);
  let x_1282 : f32 = x_1280.unity_SpecCube0_HDR.w;
  let x_1284 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1282 * x_1284) + 1.0f);
  let x_1289 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1289, 0.0f);
  let x_1293 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1293);
  let x_1297 : f32 = u_xlat0.x;
  let x_1299 : f32 = x_1280.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1297 * x_1299);
  let x_1303 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1303);
  let x_1307 : f32 = u_xlat0.x;
  let x_1309 : f32 = x_1280.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1307 * x_1309);
  let x_1312 : vec4<f32> = u_xlat8;
  let x_1314 : vec3<f32> = u_xlat0;
  let x_1316 : vec3<f32> = (vec3<f32>(x_1312.x, x_1312.y, x_1312.z) * vec3<f32>(x_1314.x, x_1314.x, x_1314.x));
  let x_1317 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
  let x_1319 : f32 = u_xlat28;
  let x_1321 : f32 = u_xlat28;
  let x_1325 : vec2<f32> = ((vec2<f32>(x_1319, x_1319) * vec2<f32>(x_1321, x_1321)) + vec2<f32>(-1.0f, 1.0f));
  let x_1326 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1325.x, x_1326.y, x_1325.y);
  let x_1329 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1329);
  let x_1331 : vec4<f32> = u_xlat5;
  let x_1334 : f32 = u_xlat45;
  let x_1336 : vec3<f32> = (-(vec3<f32>(x_1331.x, x_1331.y, x_1331.z)) + vec3<f32>(x_1334, x_1334, x_1334));
  let x_1337 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
  let x_1339 : vec3<f32> = u_xlat17;
  let x_1341 : vec4<f32> = u_xlat9;
  let x_1344 : vec4<f32> = u_xlat5;
  u_xlat17 = ((vec3<f32>(x_1339.x, x_1339.x, x_1339.x) * vec3<f32>(x_1341.x, x_1341.y, x_1341.z)) + vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
  let x_1347 : f32 = u_xlat28;
  let x_1349 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1347, x_1347, x_1347) * x_1349);
  let x_1351 : vec3<f32> = u_xlat17;
  let x_1352 : vec4<f32> = u_xlat8;
  u_xlat17 = (x_1351 * vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = u_xlat4;
  let x_1357 : vec4<f32> = u_xlat7;
  let x_1360 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_1355.x, x_1355.y, x_1355.z) * vec3<f32>(x_1357.x, x_1357.y, x_1357.z)) + x_1360);
  let x_1363 : f32 = u_xlat3.x;
  let x_1365 : f32 = x_1280.unity_LightData.z;
  u_xlat28 = (x_1363 * x_1365);
  let x_1367 : vec3<f32> = u_xlat2;
  let x_1369 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_1367, vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
  let x_1374 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1374, 0.0f, 1.0f);
  let x_1377 : f32 = u_xlat28;
  let x_1379 : f32 = u_xlat3.x;
  u_xlat28 = (x_1377 * x_1379);
  let x_1381 : f32 = u_xlat28;
  let x_1383 : vec3<f32> = u_xlat20;
  let x_1384 : vec3<f32> = (vec3<f32>(x_1381, x_1381, x_1381) * x_1383);
  let x_1385 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1387 : vec4<f32> = u_xlat1;
  let x_1390 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) + vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec3<f32> = u_xlat20;
  let x_1394 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1393, x_1394);
  let x_1396 : f32 = u_xlat28;
  u_xlat28 = max(x_1396, 1.17549435e-37f);
  let x_1399 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1399);
  let x_1401 : f32 = u_xlat28;
  let x_1403 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1401, x_1401, x_1401) * x_1403);
  let x_1405 : vec3<f32> = u_xlat2;
  let x_1406 : vec3<f32> = u_xlat20;
  u_xlat28 = dot(x_1405, x_1406);
  let x_1408 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1408, 0.0f, 1.0f);
  let x_1411 : vec4<f32> = x_126.x_MainLightPosition;
  let x_1413 : vec3<f32> = u_xlat20;
  u_xlat3.x = dot(vec3<f32>(x_1411.x, x_1411.y, x_1411.z), x_1413);
  let x_1417 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1417, 0.0f, 1.0f);
  let x_1420 : f32 = u_xlat28;
  let x_1421 : f32 = u_xlat28;
  u_xlat28 = (x_1420 * x_1421);
  let x_1423 : f32 = u_xlat28;
  let x_1425 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1423 * x_1425) + 1.000010014f);
  let x_1430 : f32 = u_xlat3.x;
  let x_1432 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1430 * x_1432);
  let x_1435 : f32 = u_xlat28;
  let x_1436 : f32 = u_xlat28;
  u_xlat28 = (x_1435 * x_1436);
  let x_1439 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1439, 0.100000001f);
  let x_1443 : f32 = u_xlat28;
  let x_1445 : f32 = u_xlat3.x;
  u_xlat28 = (x_1443 * x_1445);
  let x_1447 : f32 = u_xlat46;
  let x_1448 : f32 = u_xlat28;
  u_xlat28 = (x_1447 * x_1448);
  let x_1450 : f32 = u_xlat44;
  let x_1451 : f32 = u_xlat28;
  u_xlat28 = (x_1450 / x_1451);
  let x_1453 : vec4<f32> = u_xlat5;
  let x_1455 : f32 = u_xlat28;
  let x_1458 : vec4<f32> = u_xlat7;
  u_xlat20 = ((vec3<f32>(x_1453.x, x_1453.y, x_1453.z) * vec3<f32>(x_1455, x_1455, x_1455)) + vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
  let x_1461 : vec4<f32> = u_xlat4;
  let x_1463 : vec3<f32> = u_xlat20;
  let x_1464 : vec3<f32> = (vec3<f32>(x_1461.x, x_1461.y, x_1461.z) * x_1463);
  let x_1465 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
  let x_1468 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_1470 : f32 = x_1280.unity_LightData.y;
  u_xlat28 = min(x_1468, x_1470);
  let x_1473 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1473));
  let x_1478 : f32 = x_1079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1480 : f32 = x_1079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1482 : f32 = x_1079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1484 : f32 = x_1079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1485 : vec4<f32> = vec4<f32>(x_1478, x_1480, x_1482, x_1484);
  let x_1491 : vec4<bool> = (vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1485.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1491.x, x_1491.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1502 : u32 = u_xlatu_loop_1;
    let x_1503 : u32 = u_xlatu28;
    if ((x_1502 < x_1503)) {
    } else {
      break;
    }
    let x_1506 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1506 >> 2u);
    let x_1509 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1509 & 3u));
    let x_1512 : u32 = u_xlatu47;
    let x_1515 : vec4<f32> = x_1280.unity_LightIndices[bitcast<i32>(x_1512)];
    let x_1525 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1530 : vec4<u32> = indexable[x_1525];
    u_xlat47 = dot(x_1515, bitcast<vec4<f32>>(x_1530));
    let x_1533 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1533));
    let x_1536 : vec3<f32> = vs_TEXCOORD7;
    let x_1548 : u32 = u_xlatu47;
    let x_1551 : vec4<f32> = x_1547.x_AdditionalLightsPosition[bitcast<i32>(x_1548)];
    let x_1554 : u32 = u_xlatu47;
    let x_1557 : vec4<f32> = x_1547.x_AdditionalLightsPosition[bitcast<i32>(x_1554)];
    let x_1559 : vec3<f32> = ((-(x_1536) * vec3<f32>(x_1551.w, x_1551.w, x_1551.w)) + vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
    let x_1560 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
    let x_1563 : vec4<f32> = u_xlat9;
    let x_1565 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1563.x, x_1563.y, x_1563.z), vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
    let x_1568 : f32 = u_xlat48;
    u_xlat48 = max(x_1568, 6.10351562e-05f);
    let x_1571 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1571);
    let x_1573 : f32 = u_xlat49;
    let x_1575 : vec4<f32> = u_xlat9;
    let x_1577 : vec3<f32> = (vec3<f32>(x_1573, x_1573, x_1573) * vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
    let x_1578 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
    let x_1581 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1581);
    let x_1583 : f32 = u_xlat48;
    let x_1584 : u32 = u_xlatu47;
    let x_1587 : f32 = x_1547.x_AdditionalLightsAttenuation[bitcast<i32>(x_1584)].x;
    u_xlat48 = (x_1583 * x_1587);
    let x_1589 : f32 = u_xlat48;
    let x_1591 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1589) * x_1591) + 1.0f);
    let x_1594 : f32 = u_xlat48;
    u_xlat48 = max(x_1594, 0.0f);
    let x_1596 : f32 = u_xlat48;
    let x_1597 : f32 = u_xlat48;
    u_xlat48 = (x_1596 * x_1597);
    let x_1599 : f32 = u_xlat48;
    let x_1600 : f32 = u_xlat50;
    u_xlat48 = (x_1599 * x_1600);
    let x_1602 : u32 = u_xlatu47;
    let x_1605 : vec4<f32> = x_1547.x_AdditionalLightsSpotDir[bitcast<i32>(x_1602)];
    let x_1607 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
    let x_1610 : f32 = u_xlat50;
    let x_1611 : u32 = u_xlatu47;
    let x_1614 : f32 = x_1547.x_AdditionalLightsAttenuation[bitcast<i32>(x_1611)].z;
    let x_1616 : u32 = u_xlatu47;
    let x_1619 : f32 = x_1547.x_AdditionalLightsAttenuation[bitcast<i32>(x_1616)].w;
    u_xlat50 = ((x_1610 * x_1614) + x_1619);
    let x_1621 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1621, 0.0f, 1.0f);
    let x_1623 : f32 = u_xlat50;
    let x_1624 : f32 = u_xlat50;
    u_xlat50 = (x_1623 * x_1624);
    let x_1626 : f32 = u_xlat48;
    let x_1627 : f32 = u_xlat50;
    u_xlat48 = (x_1626 * x_1627);
    let x_1630 : u32 = u_xlatu47;
    u_xlatu50 = (x_1630 >> 5u);
    let x_1633 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1633) & 31i)));
    let x_1638 : i32 = u_xlati51;
    let x_1640 : u32 = u_xlatu50;
    let x_1643 : f32 = x_1079.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1640)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1638) & bitcast<u32>(x_1643)));
    let x_1647 : i32 = u_xlati50;
    if ((x_1647 != 0i)) {
      let x_1657 : u32 = u_xlatu47;
      let x_1660 : f32 = x_1656.x_AdditionalLightsLightTypes[bitcast<i32>(x_1657)].el;
      u_xlati50 = i32(x_1660);
      let x_1662 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1662 != 0i));
      let x_1666 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1666) << bitcast<u32>(2i));
      let x_1669 : i32 = u_xlati51;
      if ((x_1669 != 0i)) {
        let x_1673 : vec3<f32> = vs_TEXCOORD7;
        let x_1675 : i32 = u_xlati52;
        let x_1678 : i32 = u_xlati52;
        let x_1682 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1675 + 1i) / 4i)][((x_1678 + 1i) % 4i)];
        let x_1684 : vec3<f32> = (vec3<f32>(x_1673.y, x_1673.y, x_1673.y) * vec3<f32>(x_1682.x, x_1682.y, x_1682.w));
        let x_1685 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
        let x_1687 : i32 = u_xlati52;
        let x_1689 : i32 = u_xlati52;
        let x_1692 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[(x_1687 / 4i)][(x_1689 % 4i)];
        let x_1694 : vec3<f32> = vs_TEXCOORD7;
        let x_1697 : vec4<f32> = u_xlat11;
        let x_1699 : vec3<f32> = ((vec3<f32>(x_1692.x, x_1692.y, x_1692.w) * vec3<f32>(x_1694.x, x_1694.x, x_1694.x)) + vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
        let x_1700 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
        let x_1702 : i32 = u_xlati52;
        let x_1705 : i32 = u_xlati52;
        let x_1709 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1702 + 2i) / 4i)][((x_1705 + 2i) % 4i)];
        let x_1711 : vec3<f32> = vs_TEXCOORD7;
        let x_1714 : vec4<f32> = u_xlat11;
        let x_1716 : vec3<f32> = ((vec3<f32>(x_1709.x, x_1709.y, x_1709.w) * vec3<f32>(x_1711.z, x_1711.z, x_1711.z)) + vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
        let x_1717 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
        let x_1719 : vec4<f32> = u_xlat11;
        let x_1721 : i32 = u_xlati52;
        let x_1724 : i32 = u_xlati52;
        let x_1728 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1721 + 3i) / 4i)][((x_1724 + 3i) % 4i)];
        let x_1730 : vec3<f32> = (vec3<f32>(x_1719.x, x_1719.y, x_1719.z) + vec3<f32>(x_1728.x, x_1728.y, x_1728.w));
        let x_1731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
        let x_1733 : vec4<f32> = u_xlat11;
        let x_1735 : vec4<f32> = u_xlat11;
        let x_1737 : vec2<f32> = (vec2<f32>(x_1733.x, x_1733.y) / vec2<f32>(x_1735.z, x_1735.z));
        let x_1738 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1737.x, x_1737.y, x_1738.z, x_1738.w);
        let x_1740 : vec4<f32> = u_xlat11;
        let x_1743 : vec2<f32> = ((vec2<f32>(x_1740.x, x_1740.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1744 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        let x_1746 : vec4<f32> = u_xlat11;
        let x_1750 : vec2<f32> = clamp(vec2<f32>(x_1746.x, x_1746.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1750.x, x_1750.y, x_1751.z, x_1751.w);
        let x_1753 : u32 = u_xlatu47;
        let x_1756 : vec4<f32> = x_1656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1753)];
        let x_1758 : vec4<f32> = u_xlat11;
        let x_1761 : u32 = u_xlatu47;
        let x_1764 : vec4<f32> = x_1656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1761)];
        let x_1766 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1764.z, x_1764.w));
        let x_1767 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
      } else {
        let x_1771 : i32 = u_xlati50;
        u_xlatb50 = (x_1771 == 1i);
        let x_1773 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1773);
        let x_1775 : i32 = u_xlati50;
        if ((x_1775 != 0i)) {
          let x_1781 : vec3<f32> = vs_TEXCOORD7;
          let x_1783 : i32 = u_xlati52;
          let x_1786 : i32 = u_xlati52;
          let x_1790 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1783 + 1i) / 4i)][((x_1786 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1781.y, x_1781.y) * vec2<f32>(x_1790.x, x_1790.y));
          let x_1793 : i32 = u_xlati52;
          let x_1795 : i32 = u_xlati52;
          let x_1798 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[(x_1793 / 4i)][(x_1795 % 4i)];
          let x_1800 : vec3<f32> = vs_TEXCOORD7;
          let x_1803 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1800.x, x_1800.x)) + x_1803);
          let x_1805 : i32 = u_xlati52;
          let x_1808 : i32 = u_xlati52;
          let x_1812 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1805 + 2i) / 4i)][((x_1808 + 2i) % 4i)];
          let x_1814 : vec3<f32> = vs_TEXCOORD7;
          let x_1817 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1812.x, x_1812.y) * vec2<f32>(x_1814.z, x_1814.z)) + x_1817);
          let x_1819 : vec2<f32> = u_xlat39;
          let x_1820 : i32 = u_xlati52;
          let x_1823 : i32 = u_xlati52;
          let x_1827 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1820 + 3i) / 4i)][((x_1823 + 3i) % 4i)];
          u_xlat39 = (x_1819 + vec2<f32>(x_1827.x, x_1827.y));
          let x_1830 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1830 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1833 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1833);
          let x_1835 : u32 = u_xlatu47;
          let x_1838 : vec4<f32> = x_1656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1835)];
          let x_1840 : vec2<f32> = u_xlat39;
          let x_1842 : u32 = u_xlatu47;
          let x_1845 : vec4<f32> = x_1656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1842)];
          let x_1847 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * x_1840) + vec2<f32>(x_1845.z, x_1845.w));
          let x_1848 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1847.x, x_1847.y, x_1848.z, x_1848.w);
        } else {
          let x_1851 : vec3<f32> = vs_TEXCOORD7;
          let x_1853 : i32 = u_xlati52;
          let x_1856 : i32 = u_xlati52;
          let x_1860 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1853 + 1i) / 4i)][((x_1856 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1851.y, x_1851.y, x_1851.y, x_1851.y) * x_1860);
          let x_1862 : i32 = u_xlati52;
          let x_1864 : i32 = u_xlati52;
          let x_1867 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[(x_1862 / 4i)][(x_1864 % 4i)];
          let x_1868 : vec3<f32> = vs_TEXCOORD7;
          let x_1871 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1867 * vec4<f32>(x_1868.x, x_1868.x, x_1868.x, x_1868.x)) + x_1871);
          let x_1873 : i32 = u_xlati52;
          let x_1876 : i32 = u_xlati52;
          let x_1880 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1873 + 2i) / 4i)][((x_1876 + 2i) % 4i)];
          let x_1881 : vec3<f32> = vs_TEXCOORD7;
          let x_1884 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1880 * vec4<f32>(x_1881.z, x_1881.z, x_1881.z, x_1881.z)) + x_1884);
          let x_1886 : vec4<f32> = u_xlat12;
          let x_1887 : i32 = u_xlati52;
          let x_1890 : i32 = u_xlati52;
          let x_1894 : vec4<f32> = x_1656.x_AdditionalLightsWorldToLights[((x_1887 + 3i) / 4i)][((x_1890 + 3i) % 4i)];
          u_xlat12 = (x_1886 + x_1894);
          let x_1896 : vec4<f32> = u_xlat12;
          let x_1898 : vec4<f32> = u_xlat12;
          let x_1900 : vec3<f32> = (vec3<f32>(x_1896.x, x_1896.y, x_1896.z) / vec3<f32>(x_1898.w, x_1898.w, x_1898.w));
          let x_1901 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
          let x_1903 : vec4<f32> = u_xlat12;
          let x_1905 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1903.x, x_1903.y, x_1903.z), vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
          let x_1908 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1908);
          let x_1910 : f32 = u_xlat50;
          let x_1912 : vec4<f32> = u_xlat12;
          let x_1914 : vec3<f32> = (vec3<f32>(x_1910, x_1910, x_1910) * vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
          let x_1915 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
          let x_1917 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1917.x, x_1917.y, x_1917.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1922 : f32 = u_xlat50;
          u_xlat50 = max(x_1922, 0.000001f);
          let x_1925 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1925);
          let x_1927 : f32 = u_xlat50;
          let x_1929 : vec4<f32> = u_xlat12;
          let x_1931 : vec3<f32> = (vec3<f32>(x_1927, x_1927, x_1927) * vec3<f32>(x_1929.z, x_1929.x, x_1929.y));
          let x_1932 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
          let x_1935 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1935);
          let x_1939 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1939, 0.0f, 1.0f);
          let x_1943 : vec4<f32> = u_xlat13;
          let x_1946 : vec4<bool> = (vec4<f32>(x_1943.y, x_1943.z, x_1943.y, x_1943.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1946.x, x_1946.y);
          let x_1949 : bool = u_xlatb39.x;
          if (x_1949) {
            let x_1954 : f32 = u_xlat13.x;
            x_1950 = x_1954;
          } else {
            let x_1957 : f32 = u_xlat13.x;
            x_1950 = -(x_1957);
          }
          let x_1959 : f32 = x_1950;
          u_xlat39.x = x_1959;
          let x_1962 : bool = u_xlatb39.y;
          if (x_1962) {
            let x_1967 : f32 = u_xlat13.x;
            x_1963 = x_1967;
          } else {
            let x_1970 : f32 = u_xlat13.x;
            x_1963 = -(x_1970);
          }
          let x_1972 : f32 = x_1963;
          u_xlat39.y = x_1972;
          let x_1974 : vec4<f32> = u_xlat12;
          let x_1976 : f32 = u_xlat50;
          let x_1979 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1974.x, x_1974.y) * vec2<f32>(x_1976, x_1976)) + x_1979);
          let x_1981 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1981 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1984 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1984, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1988 : u32 = u_xlatu47;
          let x_1991 : vec4<f32> = x_1656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1988)];
          let x_1993 : vec2<f32> = u_xlat39;
          let x_1995 : u32 = u_xlatu47;
          let x_1998 : vec4<f32> = x_1656.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1995)];
          let x_2000 : vec2<f32> = ((vec2<f32>(x_1991.x, x_1991.y) * x_1993) + vec2<f32>(x_1998.z, x_1998.w));
          let x_2001 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2000.x, x_2000.y, x_2001.z, x_2001.w);
        }
      }
      let x_2008 : vec4<f32> = u_xlat11;
      let x_2011 : f32 = x_126.x_GlobalMipBias.x;
      let x_2012 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2008.x, x_2008.y), x_2011);
      u_xlat11 = x_2012;
      let x_2014 : bool = u_xlatb20.y;
      if (x_2014) {
        let x_2019 : f32 = u_xlat11.w;
        x_2015 = x_2019;
      } else {
        let x_2022 : f32 = u_xlat11.x;
        x_2015 = x_2022;
      }
      let x_2023 : f32 = x_2015;
      u_xlat50 = x_2023;
      let x_2025 : bool = u_xlatb20.x;
      if (x_2025) {
        let x_2029 : vec4<f32> = u_xlat11;
        x_2026 = vec3<f32>(x_2029.x, x_2029.y, x_2029.z);
      } else {
        let x_2032 : f32 = u_xlat50;
        x_2026 = vec3<f32>(x_2032, x_2032, x_2032);
      }
      let x_2034 : vec3<f32> = x_2026;
      let x_2035 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2034.x, x_2034.y, x_2034.z, x_2035.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2041 : vec4<f32> = u_xlat11;
    let x_2043 : u32 = u_xlatu47;
    let x_2046 : vec4<f32> = x_1547.x_AdditionalLightsColor[bitcast<i32>(x_2043)];
    let x_2048 : vec3<f32> = (vec3<f32>(x_2041.x, x_2041.y, x_2041.z) * vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
    let x_2049 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);
    let x_2051 : vec4<f32> = u_xlat6;
    let x_2053 : vec4<f32> = u_xlat11;
    let x_2055 : vec3<f32> = (vec3<f32>(x_2051.x, x_2051.x, x_2051.x) * vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
    let x_2056 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
    let x_2058 : vec3<f32> = u_xlat2;
    let x_2059 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(x_2058, vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
    let x_2062 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2062, 0.0f, 1.0f);
    let x_2064 : f32 = u_xlat47;
    let x_2065 : f32 = u_xlat48;
    u_xlat47 = (x_2064 * x_2065);
    let x_2067 : f32 = u_xlat47;
    let x_2069 : vec4<f32> = u_xlat11;
    let x_2071 : vec3<f32> = (vec3<f32>(x_2067, x_2067, x_2067) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
    let x_2072 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
    let x_2074 : vec4<f32> = u_xlat9;
    let x_2076 : f32 = u_xlat49;
    let x_2079 : vec4<f32> = u_xlat1;
    let x_2081 : vec3<f32> = ((vec3<f32>(x_2074.x, x_2074.y, x_2074.z) * vec3<f32>(x_2076, x_2076, x_2076)) + vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2082 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
    let x_2084 : vec4<f32> = u_xlat9;
    let x_2086 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2084.x, x_2084.y, x_2084.z), vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
    let x_2089 : f32 = u_xlat47;
    u_xlat47 = max(x_2089, 1.17549435e-37f);
    let x_2091 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2091);
    let x_2093 : f32 = u_xlat47;
    let x_2095 : vec4<f32> = u_xlat9;
    let x_2097 : vec3<f32> = (vec3<f32>(x_2093, x_2093, x_2093) * vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
    let x_2098 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
    let x_2100 : vec3<f32> = u_xlat2;
    let x_2101 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_2100, vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2104, 0.0f, 1.0f);
    let x_2106 : vec4<f32> = u_xlat10;
    let x_2108 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2111, 0.0f, 1.0f);
    let x_2113 : f32 = u_xlat47;
    let x_2114 : f32 = u_xlat47;
    u_xlat47 = (x_2113 * x_2114);
    let x_2116 : f32 = u_xlat47;
    let x_2118 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2116 * x_2118) + 1.000010014f);
    let x_2121 : f32 = u_xlat48;
    let x_2122 : f32 = u_xlat48;
    u_xlat48 = (x_2121 * x_2122);
    let x_2124 : f32 = u_xlat47;
    let x_2125 : f32 = u_xlat47;
    u_xlat47 = (x_2124 * x_2125);
    let x_2127 : f32 = u_xlat48;
    u_xlat48 = max(x_2127, 0.100000001f);
    let x_2129 : f32 = u_xlat47;
    let x_2130 : f32 = u_xlat48;
    u_xlat47 = (x_2129 * x_2130);
    let x_2132 : f32 = u_xlat46;
    let x_2133 : f32 = u_xlat47;
    u_xlat47 = (x_2132 * x_2133);
    let x_2135 : f32 = u_xlat44;
    let x_2136 : f32 = u_xlat47;
    u_xlat47 = (x_2135 / x_2136);
    let x_2138 : vec4<f32> = u_xlat5;
    let x_2140 : f32 = u_xlat47;
    let x_2143 : vec4<f32> = u_xlat7;
    let x_2145 : vec3<f32> = ((vec3<f32>(x_2138.x, x_2138.y, x_2138.z) * vec3<f32>(x_2140, x_2140, x_2140)) + vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
    let x_2146 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
    let x_2148 : vec4<f32> = u_xlat9;
    let x_2150 : vec4<f32> = u_xlat11;
    let x_2153 : vec4<f32> = u_xlat8;
    let x_2155 : vec3<f32> = ((vec3<f32>(x_2148.x, x_2148.y, x_2148.z) * vec3<f32>(x_2150.x, x_2150.y, x_2150.z)) + vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
    let x_2156 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);

    continuing {
      let x_2158 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2158 + bitcast<u32>(1i));
    }
  }
  let x_2160 : vec3<f32> = u_xlat17;
  let x_2161 : f32 = u_xlat14;
  let x_2164 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_2160 * vec3<f32>(x_2161, x_2161, x_2161)) + vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : vec4<f32> = u_xlat8;
  let x_2169 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2167.x, x_2167.y, x_2167.z) + x_2169);
  let x_2171 : f32 = u_xlat42;
  let x_2173 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2171, x_2171, x_2171) * x_2173);
  let x_2175 : f32 = u_xlat43;
  let x_2176 : f32 = u_xlat43;
  u_xlat42 = (x_2175 * -(x_2176));
  let x_2179 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2179);
  let x_2183 : vec3<f32> = u_xlat0;
  let x_2184 : f32 = u_xlat42;
  let x_2186 : vec3<f32> = (x_2183 * vec3<f32>(x_2184, x_2184, x_2184));
  let x_2187 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
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

