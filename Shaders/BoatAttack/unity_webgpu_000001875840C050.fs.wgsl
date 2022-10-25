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

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

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

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_1070 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1359 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1886 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1995 : AdditionalLightsCookies;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb46 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlatb47 : bool;
  var u_xlat30 : f32;
  var u_xlat15 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat17 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat19 : f32;
  var u_xlat34 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb32 : bool;
  var x_1307 : f32;
  var u_xlat32 : f32;
  var x_1441 : f32;
  var x_1452 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat51 : f32;
  var u_xlatu51 : u32;
  var u_xlati37 : i32;
  var u_xlati51 : i32;
  var u_xlati52 : i32;
  var u_xlatb51 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_2289 : f32;
  var x_2302 : f32;
  var x_2354 : f32;
  var x_2365 : vec3<f32>;
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
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_79 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.w, x_74.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_79.x, x_79.w, x_79.y));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_81.z);
  let x_88 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_92 : vec2<f32> = (vec2<f32>(x_88.z, x_88.w) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_96 : vec4<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = u_xlat4;
  let x_102 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_98.x, x_98.y)) + vec2<f32>(0.5f, 0.5f));
  let x_103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat4;
  let x_108 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_110 : vec2<f32> = (vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_111.w);
  let x_123 : vec4<f32> = u_xlat4;
  let x_133 : f32 = x_128.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_123.x, x_123.y), x_133);
  u_xlat4 = x_134;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_147 : vec4<f32> = vs_TEXCOORD1;
  let x_150 : f32 = x_128.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_147.x, x_147.y), x_150);
  u_xlat5 = x_151;
  let x_157 : vec4<f32> = vs_TEXCOORD1;
  let x_160 : f32 = x_128.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_157.z, x_157.w), x_160);
  u_xlat6 = x_161;
  let x_168 : vec4<f32> = vs_TEXCOORD2;
  let x_171 : f32 = x_128.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_168.x, x_168.y), x_171);
  u_xlat7 = x_172;
  let x_178 : vec4<f32> = vs_TEXCOORD2;
  let x_181 : f32 = x_128.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_178.z, x_178.w), x_181);
  u_xlat8 = x_182;
  let x_185 : f32 = u_xlat5.w;
  u_xlat9.x = x_185;
  let x_188 : f32 = u_xlat6.w;
  u_xlat9.y = x_188;
  let x_192 : f32 = u_xlat7.w;
  u_xlat9.z = x_192;
  let x_196 : f32 = u_xlat8.w;
  u_xlat9.w = x_196;
  let x_199 : vec4<f32> = u_xlat9;
  let x_202 : f32 = x_30.x_Smoothness0;
  let x_205 : f32 = x_30.x_Smoothness1;
  let x_208 : f32 = x_30.x_Smoothness2;
  let x_211 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_199 * vec4<f32>(x_202, x_205, x_208, x_211));
  let x_220 : f32 = x_30.x_NumLayersCount;
  u_xlatb46 = (4.0f >= x_220);
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_223) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat9;
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_226 + -(x_227));
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_230 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_234, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_239 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_243);
  let x_246 : vec4<f32> = u_xlat4;
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_246 + -(x_247));
  let x_252 : f32 = u_xlat12.x;
  let x_255 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.y;
  let x_262 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_259 * x_262);
  let x_266 : f32 = u_xlat12.z;
  let x_269 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_266 * x_269);
  let x_273 : f32 = u_xlat12.w;
  let x_276 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_273 * x_276);
  let x_279 : vec4<f32> = u_xlat11;
  let x_280 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_279 + x_280);
  let x_282 : bool = u_xlatb46;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat46 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_293 : f32 = u_xlat46;
  u_xlatb47 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb47;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat46;
  u_xlat46 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat46;
  u_xlat4 = (x_307 / vec4<f32>(x_308, x_308, x_308, x_308));
  let x_311 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_316 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.y, x_319.y, x_319.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat12;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat5;
  let x_336 : vec4<f32> = u_xlat11;
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_349 : vec3<f32> = (vec3<f32>(x_344.z, x_344.z, x_344.z) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat7;
  let x_354 : vec4<f32> = u_xlat6;
  let x_357 : vec4<f32> = u_xlat5;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_367 : vec3<f32> = (vec3<f32>(x_362.w, x_362.w, x_362.w) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat8;
  let x_372 : vec4<f32> = u_xlat6;
  let x_375 : vec4<f32> = u_xlat5;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_385 : vec4<f32> = vs_TEXCOORD1;
  let x_388 : f32 = x_128.x_GlobalMipBias.x;
  let x_389 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_385.x, x_385.y), x_388);
  let x_390 : vec3<f32> = vec3<f32>(x_389.x, x_389.y, x_389.w);
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat6.x;
  let x_396 : f32 = u_xlat6.z;
  u_xlat6.x = (x_394 * x_396);
  let x_399 : vec4<f32> = u_xlat6;
  let x_404 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat6;
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
  let x_412 : f32 = u_xlat46;
  u_xlat46 = min(x_412, 1.0f);
  let x_414 : f32 = u_xlat46;
  u_xlat46 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_417);
  let x_419 : f32 = u_xlat46;
  u_xlat7.z = max(x_419, 1.00000002e-16f);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : f32 = x_30.x_NormalScale0;
  let x_428 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426, x_426));
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_435 : vec4<f32> = vs_TEXCOORD1;
  let x_438 : f32 = x_128.x_GlobalMipBias.x;
  let x_439 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_435.z, x_435.w), x_438);
  let x_440 : vec3<f32> = vec3<f32>(x_439.x, x_439.y, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = u_xlat6.x;
  let x_446 : f32 = u_xlat6.z;
  u_xlat6.x = (x_444 * x_446);
  let x_449 : vec4<f32> = u_xlat6;
  let x_452 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat6;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_460 : f32 = u_xlat46;
  u_xlat46 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat46;
  u_xlat46 = (-(x_462) + 1.0f);
  let x_465 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_465);
  let x_467 : f32 = u_xlat46;
  u_xlat8.z = max(x_467, 1.00000002e-16f);
  let x_470 : vec4<f32> = u_xlat6;
  let x_473 : f32 = x_30.x_NormalScale1;
  let x_475 : f32 = x_30.x_NormalScale1;
  let x_476 : vec2<f32> = vec2<f32>(x_473, x_475);
  let x_480 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_476.x, x_476.y));
  let x_481 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec4<f32> = u_xlat8;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.y, x_483.y, x_483.y) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  let x_495 : vec4<f32> = u_xlat6;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.x, x_490.x) * vec3<f32>(x_492.x, x_492.y, x_492.z)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_504 : vec4<f32> = vs_TEXCOORD2;
  let x_507 : f32 = x_128.x_GlobalMipBias.x;
  let x_508 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_504.x, x_504.y), x_507);
  let x_509 : vec3<f32> = vec3<f32>(x_508.x, x_508.y, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = u_xlat7.x;
  let x_515 : f32 = u_xlat7.z;
  u_xlat7.x = (x_513 * x_515);
  let x_518 : vec4<f32> = u_xlat7;
  let x_521 : vec2<f32> = ((vec2<f32>(x_518.x, x_518.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_522 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat7;
  let x_526 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec2<f32>(x_524.x, x_524.y), vec2<f32>(x_526.x, x_526.y));
  let x_529 : f32 = u_xlat46;
  u_xlat46 = min(x_529, 1.0f);
  let x_531 : f32 = u_xlat46;
  u_xlat46 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_534);
  let x_536 : f32 = u_xlat46;
  u_xlat8.z = max(x_536, 1.00000002e-16f);
  let x_539 : vec4<f32> = u_xlat7;
  let x_543 : f32 = x_30.x_NormalScale2;
  let x_545 : f32 = x_30.x_NormalScale2;
  let x_546 : vec2<f32> = vec2<f32>(x_543, x_545);
  let x_550 : vec2<f32> = (vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec4<f32> = u_xlat8;
  let x_558 : vec4<f32> = u_xlat6;
  let x_560 : vec3<f32> = ((vec3<f32>(x_553.z, x_553.z, x_553.z) * vec3<f32>(x_555.x, x_555.y, x_555.z)) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_567 : vec4<f32> = vs_TEXCOORD2;
  let x_570 : f32 = x_128.x_GlobalMipBias.x;
  let x_571 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_567.z, x_567.w), x_570);
  let x_572 : vec3<f32> = vec3<f32>(x_571.x, x_571.y, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_576 : f32 = u_xlat7.x;
  let x_578 : f32 = u_xlat7.z;
  u_xlat7.x = (x_576 * x_578);
  let x_581 : vec4<f32> = u_xlat7;
  let x_584 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat7;
  let x_589 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat46;
  u_xlat46 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat46;
  u_xlat46 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_597);
  let x_599 : f32 = u_xlat46;
  u_xlat8.z = max(x_599, 1.00000002e-16f);
  let x_602 : vec4<f32> = u_xlat7;
  let x_606 : f32 = x_30.x_NormalScale3;
  let x_608 : f32 = x_30.x_NormalScale3;
  let x_609 : vec2<f32> = vec2<f32>(x_606, x_608);
  let x_613 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_609.x, x_609.y));
  let x_614 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat4;
  let x_618 : vec4<f32> = u_xlat8;
  let x_621 : vec4<f32> = u_xlat6;
  let x_623 : vec3<f32> = ((vec3<f32>(x_616.w, x_616.w, x_616.w) * vec3<f32>(x_618.x, x_618.y, x_618.z)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = u_xlat6.z;
  u_xlat6.w = (x_627 + 0.00001f);
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_631.x, x_631.y, x_631.w), vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat46;
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.w));
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_655;
  let x_658 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_658;
  let x_661 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_661;
  let x_664 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_664;
  let x_667 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat7;
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_669 + x_670);
  let x_673 : f32 = u_xlat0.z;
  u_xlat8.x = x_673;
  let x_676 : f32 = u_xlat1.z;
  u_xlat8.y = x_676;
  let x_679 : f32 = u_xlat2.z;
  u_xlat8.z = x_679;
  let x_682 : f32 = u_xlat3.y;
  u_xlat8.w = x_682;
  let x_684 : vec4<f32> = u_xlat9;
  let x_687 : f32 = x_30.x_Smoothness0;
  let x_689 : f32 = x_30.x_Smoothness1;
  let x_691 : f32 = x_30.x_Smoothness2;
  let x_693 : f32 = x_30.x_Smoothness3;
  let x_696 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_684) * vec4<f32>(x_687, x_689, x_691, x_693)) + x_696);
  let x_700 : f32 = x_30.x_LayerHasMask0;
  let x_703 : f32 = x_30.x_LayerHasMask1;
  let x_706 : f32 = x_30.x_LayerHasMask2;
  let x_709 : f32 = x_30.x_LayerHasMask3;
  let x_711 : vec4<f32> = u_xlat8;
  let x_713 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_700, x_703, x_706, x_709) * x_711) + x_713);
  let x_716 : vec4<f32> = u_xlat4;
  let x_717 : vec4<f32> = u_xlat8;
  u_xlat30 = dot(x_716, x_717);
  let x_720 : f32 = u_xlat0.x;
  u_xlat8.x = x_720;
  let x_723 : f32 = u_xlat1.x;
  u_xlat8.y = x_723;
  let x_726 : f32 = u_xlat2.x;
  u_xlat8.z = x_726;
  let x_729 : f32 = u_xlat3.x;
  u_xlat8.w = x_729;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_30.x_Metallic0;
  let x_737 : f32 = x_30.x_Metallic1;
  let x_740 : f32 = x_30.x_Metallic2;
  let x_743 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_731 + -(vec4<f32>(x_734, x_737, x_740, x_743)));
  let x_748 : f32 = x_30.x_LayerHasMask0;
  let x_750 : f32 = x_30.x_LayerHasMask1;
  let x_752 : f32 = x_30.x_LayerHasMask2;
  let x_754 : f32 = x_30.x_LayerHasMask3;
  let x_756 : vec4<f32> = u_xlat8;
  let x_759 : f32 = x_30.x_Metallic0;
  let x_761 : f32 = x_30.x_Metallic1;
  let x_763 : f32 = x_30.x_Metallic2;
  let x_765 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_748, x_750, x_752, x_754) * x_756) + vec4<f32>(x_759, x_761, x_763, x_765));
  let x_768 : vec4<f32> = u_xlat4;
  let x_769 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_768, x_769);
  let x_773 : f32 = u_xlat0.y;
  u_xlat3.x = x_773;
  let x_776 : f32 = u_xlat1.y;
  u_xlat3.y = x_776;
  let x_779 : f32 = u_xlat2.y;
  u_xlat3.z = x_779;
  let x_781 : vec4<f32> = u_xlat7;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_781) + x_783);
  let x_786 : f32 = x_30.x_LayerHasMask0;
  let x_788 : f32 = x_30.x_LayerHasMask1;
  let x_790 : f32 = x_30.x_LayerHasMask2;
  let x_792 : f32 = x_30.x_LayerHasMask3;
  let x_794 : vec4<f32> = u_xlat1;
  let x_796 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_786, x_788, x_790, x_792) * x_794) + x_796);
  let x_799 : vec4<f32> = u_xlat4;
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(x_799, x_800);
  let x_802 : vec4<f32> = u_xlat6;
  let x_805 : vec4<f32> = vs_TEXCOORD5;
  let x_807 : vec3<f32> = (vec3<f32>(x_802.y, x_802.y, x_802.y) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD4;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.x, x_810.x) * -(vec3<f32>(x_813.x, x_813.y, x_813.z))) + vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = vs_TEXCOORD3;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_822.z, x_822.z, x_822.z) * vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat46;
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_856 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres0;
  let x_859 : vec3<f32> = (x_849 + -(vec3<f32>(x_856.x, x_856.y, x_856.z)));
  let x_860 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec3<f32> = vs_TEXCOORD7;
  let x_864 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres1;
  let x_867 : vec3<f32> = (x_862 + -(vec3<f32>(x_864.x, x_864.y, x_864.z)));
  let x_868 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec3<f32> = vs_TEXCOORD7;
  let x_872 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres2;
  let x_875 : vec3<f32> = (x_870 + -(vec3<f32>(x_872.x, x_872.y, x_872.z)));
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = vs_TEXCOORD7;
  let x_880 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres3;
  let x_883 : vec3<f32> = (x_878 + -(vec3<f32>(x_880.x, x_880.y, x_880.z)));
  let x_884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat2;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat3;
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_904 : vec4<f32> = u_xlat6;
  let x_906 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = x_854.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_912 < x_914);
  let x_917 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_921);
  let x_925 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_925);
  let x_929 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_929);
  let x_933 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_933);
  let x_938 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_938);
  let x_942 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_942);
  let x_945 : vec4<f32> = u_xlat2;
  let x_947 : vec4<f32> = u_xlat3;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_947.y, x_947.z, x_947.w));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_955 : vec3<f32> = max(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_956.x, x_955.x, x_955.y, x_955.z);
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_964 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_964) + 4.0f);
  let x_971 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_971);
  let x_975 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_975) << bitcast<u32>(2i));
  let x_979 : vec3<f32> = vs_TEXCOORD7;
  let x_981 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_988 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_981 + 1i) / 4i)][((x_984 + 1i) % 4i)];
  u_xlat17 = (vec3<f32>(x_979.y, x_979.y, x_979.y) * vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : i32 = u_xlati2;
  let x_993 : i32 = u_xlati2;
  let x_996 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_991 / 4i)][(x_993 % 4i)];
  let x_998 : vec3<f32> = vs_TEXCOORD7;
  let x_1001 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_998.x, x_998.x, x_998.x)) + x_1001);
  let x_1003 : i32 = u_xlati2;
  let x_1006 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + x_1015);
  let x_1017 : vec3<f32> = u_xlat17;
  let x_1018 : i32 = u_xlati2;
  let x_1021 : i32 = u_xlati2;
  let x_1025 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1018 + 3i) / 4i)][((x_1021 + 3i) % 4i)];
  let x_1027 : vec3<f32> = (x_1017 + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1032 : f32 = vs_TEXCOORD7.y;
  let x_1034 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat47 = (x_1032 * x_1034);
  let x_1037 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1039 : f32 = vs_TEXCOORD7.x;
  let x_1041 : f32 = u_xlat47;
  u_xlat47 = ((x_1037 * x_1039) + x_1041);
  let x_1044 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1046 : f32 = vs_TEXCOORD7.z;
  let x_1048 : f32 = u_xlat47;
  u_xlat47 = ((x_1044 * x_1046) + x_1048);
  let x_1050 : f32 = u_xlat47;
  let x_1052 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat47 = (x_1050 + x_1052);
  let x_1054 : f32 = u_xlat47;
  let x_1057 : f32 = x_128.x_ProjectionParams.y;
  u_xlat47 = (-(x_1054) + -(x_1057));
  let x_1060 : f32 = u_xlat47;
  u_xlat47 = max(x_1060, 0.0f);
  let x_1062 : f32 = u_xlat47;
  let x_1064 : f32 = x_128.unity_FogParams.x;
  u_xlat47 = (x_1062 * x_1064);
  u_xlat1.w = 1.0f;
  let x_1072 : vec4<f32> = x_1070.unity_SHAr;
  let x_1073 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1072, x_1073);
  let x_1077 : vec4<f32> = x_1070.unity_SHAg;
  let x_1078 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1077, x_1078);
  let x_1082 : vec4<f32> = x_1070.unity_SHAb;
  let x_1083 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1082, x_1083);
  let x_1086 : vec4<f32> = u_xlat1;
  let x_1088 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1086.y, x_1086.z, x_1086.z, x_1086.x) * vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1088.z));
  let x_1092 : vec4<f32> = x_1070.unity_SHBr;
  let x_1093 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1092, x_1093);
  let x_1097 : vec4<f32> = x_1070.unity_SHBg;
  let x_1098 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1097, x_1098);
  let x_1102 : vec4<f32> = x_1070.unity_SHBb;
  let x_1103 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1102, x_1103);
  let x_1107 : f32 = u_xlat1.y;
  let x_1109 : f32 = u_xlat1.y;
  u_xlat46 = (x_1107 * x_1109);
  let x_1112 : f32 = u_xlat1.x;
  let x_1114 : f32 = u_xlat1.x;
  let x_1116 : f32 = u_xlat46;
  u_xlat46 = ((x_1112 * x_1114) + -(x_1116));
  let x_1121 : vec4<f32> = x_1070.unity_SHC;
  let x_1123 : f32 = u_xlat46;
  let x_1126 : vec4<f32> = u_xlat6;
  let x_1128 : vec3<f32> = ((vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1123, x_1123, x_1123)) + vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : vec4<f32> = u_xlat3;
  let x_1133 : vec4<f32> = u_xlat4;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1131.x, x_1131.y, x_1131.z) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat3;
  let x_1140 : vec3<f32> = max(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1141 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1145 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1146 : vec2<f32> = vec2<f32>(x_1145.x, x_1145.y);
  let x_1150 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1146.x, x_1146.y));
  let x_1151 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat4;
  let x_1155 : vec4<f32> = hlslcc_FragCoord;
  let x_1157 : vec2<f32> = (vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1155.x, x_1155.y));
  let x_1158 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
  let x_1161 : f32 = u_xlat4.y;
  let x_1163 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1166 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat46 = ((x_1161 * x_1163) + x_1166);
  let x_1168 : f32 = u_xlat46;
  u_xlat4.z = (-(x_1168) + 1.0f);
  let x_1173 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1173) * 0.959999979f) + 0.959999979f);
  let x_1179 : f32 = u_xlat46;
  u_xlat48 = (-(x_1179) + 1.0f);
  let x_1182 : f32 = u_xlat46;
  let x_1184 : vec4<f32> = u_xlat5;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec4<f32> = u_xlat5;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1194 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec3<f32> = u_xlat0;
  let x_1198 : vec4<f32> = u_xlat5;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.x, x_1196.x) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : f32 = u_xlat30;
  u_xlat0.x = (-(x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat0.x;
  let x_1213 : f32 = u_xlat0.x;
  u_xlat46 = (x_1211 * x_1213);
  let x_1215 : f32 = u_xlat46;
  u_xlat46 = max(x_1215, 0.0078125f);
  let x_1219 : f32 = u_xlat46;
  let x_1220 : f32 = u_xlat46;
  u_xlat19 = (x_1219 * x_1220);
  let x_1222 : f32 = u_xlat30;
  let x_1223 : f32 = u_xlat48;
  u_xlat30 = (x_1222 + x_1223);
  let x_1225 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1225, 0.0f, 1.0f);
  let x_1227 : f32 = u_xlat46;
  u_xlat48 = ((x_1227 * 4.0f) + 2.0f);
  let x_1235 : vec4<f32> = u_xlat4;
  let x_1238 : f32 = x_128.x_GlobalMipBias.x;
  let x_1239 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1235.x, x_1235.z), x_1238);
  u_xlat4.x = x_1239.x;
  let x_1244 : f32 = u_xlat4.x;
  u_xlat34 = (x_1244 + -1.0f);
  let x_1247 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1248 : f32 = u_xlat34;
  u_xlat34 = ((x_1247 * x_1248) + 1.0f);
  let x_1251 : f32 = u_xlat15;
  let x_1253 : f32 = u_xlat4.x;
  u_xlat15 = min(x_1251, x_1253);
  let x_1256 : vec4<f32> = u_xlat2;
  let x_1257 : vec2<f32> = vec2<f32>(x_1256.x, x_1256.y);
  let x_1259 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
  let x_1271 : vec3<f32> = txVec0;
  let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1271.xy, x_1271.z);
  u_xlat2.x = x_1273;
  let x_1276 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_1276) + 1.0f);
  let x_1281 : f32 = u_xlat2.x;
  let x_1283 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1286 : f32 = u_xlat17.x;
  u_xlat2.x = ((x_1281 * x_1283) + x_1286);
  let x_1293 : f32 = u_xlat2.z;
  u_xlatb17.x = (0.0f >= x_1293);
  let x_1298 : f32 = u_xlat2.z;
  u_xlatb32 = (x_1298 >= 1.0f);
  let x_1300 : bool = u_xlatb32;
  let x_1302 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_1300 | x_1302);
  let x_1306 : bool = u_xlatb17.x;
  if (x_1306) {
    x_1307 = 1.0f;
  } else {
    let x_1312 : f32 = u_xlat2.x;
    x_1307 = x_1312;
  }
  let x_1313 : f32 = x_1307;
  u_xlat2.x = x_1313;
  let x_1315 : vec3<f32> = vs_TEXCOORD7;
  let x_1318 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1320 : vec3<f32> = (x_1315 + -(x_1318));
  let x_1321 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat7;
  let x_1325 : vec4<f32> = u_xlat7;
  u_xlat17.x = dot(vec3<f32>(x_1323.x, x_1323.y, x_1323.z), vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1330 : f32 = u_xlat17.x;
  let x_1332 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1335 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1330 * x_1332) + x_1335);
  let x_1339 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1339, 0.0f, 1.0f);
  let x_1344 : f32 = u_xlat2.x;
  u_xlat32 = (-(x_1344) + 1.0f);
  let x_1348 : f32 = u_xlat17.x;
  let x_1349 : f32 = u_xlat32;
  let x_1352 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1348 * x_1349) + x_1352);
  let x_1361 : f32 = x_1359.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_1361 == -1.0f));
  let x_1365 : bool = u_xlatb17.x;
  if (x_1365) {
    let x_1368 : vec3<f32> = vs_TEXCOORD7;
    let x_1371 : vec4<f32> = x_1359.x_MainLightWorldToLight[1i];
    let x_1373 : vec2<f32> = (vec2<f32>(x_1368.y, x_1368.y) * vec2<f32>(x_1371.x, x_1371.y));
    let x_1374 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1373.x, x_1373.y, x_1374.z);
    let x_1377 : vec4<f32> = x_1359.x_MainLightWorldToLight[0i];
    let x_1379 : vec3<f32> = vs_TEXCOORD7;
    let x_1382 : vec3<f32> = u_xlat17;
    let x_1384 : vec2<f32> = ((vec2<f32>(x_1377.x, x_1377.y) * vec2<f32>(x_1379.x, x_1379.x)) + vec2<f32>(x_1382.x, x_1382.y));
    let x_1385 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1384.x, x_1384.y, x_1385.z);
    let x_1388 : vec4<f32> = x_1359.x_MainLightWorldToLight[2i];
    let x_1390 : vec3<f32> = vs_TEXCOORD7;
    let x_1393 : vec3<f32> = u_xlat17;
    let x_1395 : vec2<f32> = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1390.z, x_1390.z)) + vec2<f32>(x_1393.x, x_1393.y));
    let x_1396 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1395.x, x_1395.y, x_1396.z);
    let x_1398 : vec3<f32> = u_xlat17;
    let x_1401 : vec4<f32> = x_1359.x_MainLightWorldToLight[3i];
    let x_1403 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) + vec2<f32>(x_1401.x, x_1401.y));
    let x_1404 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1403.x, x_1403.y, x_1404.z);
    let x_1406 : vec3<f32> = u_xlat17;
    let x_1409 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1410 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1409.x, x_1409.y, x_1410.z);
    let x_1417 : vec3<f32> = u_xlat17;
    let x_1420 : f32 = x_128.x_GlobalMipBias.x;
    let x_1421 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1417.x, x_1417.y), x_1420);
    u_xlat7 = x_1421;
    let x_1423 : f32 = x_1359.x_MainLightCookieTextureFormat;
    let x_1425 : f32 = x_1359.x_MainLightCookieTextureFormat;
    let x_1427 : f32 = x_1359.x_MainLightCookieTextureFormat;
    let x_1429 : f32 = x_1359.x_MainLightCookieTextureFormat;
    let x_1430 : vec4<f32> = vec4<f32>(x_1423, x_1425, x_1427, x_1429);
    let x_1437 : vec4<bool> = (vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1430.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1437.x, x_1437.y);
    let x_1440 : bool = u_xlatb17.y;
    if (x_1440) {
      let x_1445 : f32 = u_xlat7.w;
      x_1441 = x_1445;
    } else {
      let x_1448 : f32 = u_xlat7.x;
      x_1441 = x_1448;
    }
    let x_1449 : f32 = x_1441;
    u_xlat32 = x_1449;
    let x_1451 : bool = u_xlatb17.x;
    if (x_1451) {
      let x_1455 : vec4<f32> = u_xlat7;
      x_1452 = vec3<f32>(x_1455.x, x_1455.y, x_1455.z);
    } else {
      let x_1458 : f32 = u_xlat32;
      x_1452 = vec3<f32>(x_1458, x_1458, x_1458);
    }
    let x_1460 : vec3<f32> = x_1452;
    let x_1461 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1467 : vec4<f32> = u_xlat7;
  let x_1470 : vec4<f32> = x_128.x_MainLightColor;
  let x_1472 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
  let x_1473 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
  let x_1475 : f32 = u_xlat34;
  let x_1477 : vec4<f32> = u_xlat7;
  let x_1479 : vec3<f32> = (vec3<f32>(x_1475, x_1475, x_1475) * vec3<f32>(x_1477.x, x_1477.y, x_1477.z));
  let x_1480 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
  let x_1483 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1483;
  let x_1486 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1486;
  let x_1489 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1489;
  let x_1491 : vec4<f32> = u_xlat8;
  let x_1494 : vec4<f32> = u_xlat1;
  u_xlat17.x = dot(-(vec3<f32>(x_1491.x, x_1491.y, x_1491.z)), vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
  let x_1499 : f32 = u_xlat17.x;
  let x_1501 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1499 + x_1501);
  let x_1504 : vec4<f32> = u_xlat1;
  let x_1506 : vec3<f32> = u_xlat17;
  let x_1510 : vec4<f32> = u_xlat8;
  let x_1513 : vec3<f32> = ((vec3<f32>(x_1504.x, x_1504.y, x_1504.z) * -(vec3<f32>(x_1506.x, x_1506.x, x_1506.x))) + -(vec3<f32>(x_1510.x, x_1510.y, x_1510.z)));
  let x_1514 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1516 : vec4<f32> = u_xlat1;
  let x_1518 : vec4<f32> = u_xlat8;
  u_xlat17.x = dot(vec3<f32>(x_1516.x, x_1516.y, x_1516.z), vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
  let x_1523 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1523, 0.0f, 1.0f);
  let x_1527 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_1527) + 1.0f);
  let x_1532 : f32 = u_xlat17.x;
  let x_1534 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1532 * x_1534);
  let x_1538 : f32 = u_xlat17.x;
  let x_1540 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1538 * x_1540);
  let x_1544 : f32 = u_xlat0.x;
  u_xlat32 = ((-(x_1544) * 0.699999988f) + 1.700000048f);
  let x_1551 : f32 = u_xlat0.x;
  let x_1552 : f32 = u_xlat32;
  u_xlat0.x = (x_1551 * x_1552);
  let x_1556 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1556 * 6.0f);
  let x_1568 : vec4<f32> = u_xlat9;
  let x_1571 : f32 = u_xlat0.x;
  let x_1572 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1568.x, x_1568.y, x_1568.z), x_1571);
  u_xlat9 = x_1572;
  let x_1574 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1574 + -1.0f);
  let x_1578 : f32 = x_1070.unity_SpecCube0_HDR.w;
  let x_1580 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1578 * x_1580) + 1.0f);
  let x_1585 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1585, 0.0f);
  let x_1589 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1589);
  let x_1593 : f32 = u_xlat0.x;
  let x_1595 : f32 = x_1070.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1593 * x_1595);
  let x_1599 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1599);
  let x_1603 : f32 = u_xlat0.x;
  let x_1605 : f32 = x_1070.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1603 * x_1605);
  let x_1608 : vec4<f32> = u_xlat9;
  let x_1610 : vec3<f32> = u_xlat0;
  let x_1612 : vec3<f32> = (vec3<f32>(x_1608.x, x_1608.y, x_1608.z) * vec3<f32>(x_1610.x, x_1610.x, x_1610.x));
  let x_1613 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
  let x_1615 : f32 = u_xlat46;
  let x_1617 : f32 = u_xlat46;
  let x_1621 : vec2<f32> = ((vec2<f32>(x_1615, x_1615) * vec2<f32>(x_1617, x_1617)) + vec2<f32>(-1.0f, 1.0f));
  let x_1622 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1621.x, x_1622.y, x_1622.z, x_1621.y);
  let x_1625 : f32 = u_xlat4.w;
  u_xlat0.x = (1.0f / x_1625);
  let x_1628 : vec4<f32> = u_xlat5;
  let x_1631 : f32 = u_xlat30;
  let x_1633 : vec3<f32> = (-(vec3<f32>(x_1628.x, x_1628.y, x_1628.z)) + vec3<f32>(x_1631, x_1631, x_1631));
  let x_1634 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
  let x_1636 : vec3<f32> = u_xlat17;
  let x_1638 : vec4<f32> = u_xlat10;
  let x_1641 : vec4<f32> = u_xlat5;
  let x_1643 : vec3<f32> = ((vec3<f32>(x_1636.x, x_1636.x, x_1636.x) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z)) + vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1644 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
  let x_1646 : vec3<f32> = u_xlat0;
  let x_1648 : vec4<f32> = u_xlat10;
  let x_1650 : vec3<f32> = (vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
  let x_1651 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1653 : vec4<f32> = u_xlat9;
  let x_1655 : vec4<f32> = u_xlat10;
  let x_1657 : vec3<f32> = (vec3<f32>(x_1653.x, x_1653.y, x_1653.z) * vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1658 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
  let x_1660 : vec4<f32> = u_xlat3;
  let x_1662 : vec4<f32> = u_xlat6;
  let x_1665 : vec4<f32> = u_xlat9;
  let x_1667 : vec3<f32> = ((vec3<f32>(x_1660.x, x_1660.y, x_1660.z) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z)) + vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1671 : f32 = u_xlat2.x;
  let x_1673 : f32 = x_1070.unity_LightData.z;
  u_xlat0.x = (x_1671 * x_1673);
  let x_1676 : vec4<f32> = u_xlat1;
  let x_1679 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat30 = dot(vec3<f32>(x_1676.x, x_1676.y, x_1676.z), vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
  let x_1682 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1682, 0.0f, 1.0f);
  let x_1684 : f32 = u_xlat30;
  let x_1686 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1684 * x_1686);
  let x_1689 : vec3<f32> = u_xlat0;
  let x_1691 : vec4<f32> = u_xlat7;
  let x_1693 : vec3<f32> = (vec3<f32>(x_1689.x, x_1689.x, x_1689.x) * vec3<f32>(x_1691.x, x_1691.y, x_1691.z));
  let x_1694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
  let x_1696 : vec4<f32> = u_xlat8;
  let x_1699 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1696.x, x_1696.y, x_1696.z) + vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec4<f32> = u_xlat7;
  let x_1706 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1704.x, x_1704.y, x_1704.z), vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1711 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1711, 1.17549435e-37f);
  let x_1716 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1716);
  let x_1719 : vec3<f32> = u_xlat0;
  let x_1721 : vec4<f32> = u_xlat7;
  let x_1723 : vec3<f32> = (vec3<f32>(x_1719.x, x_1719.x, x_1719.x) * vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
  let x_1724 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
  let x_1726 : vec4<f32> = u_xlat1;
  let x_1728 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1726.x, x_1726.y, x_1726.z), vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1733 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1733, 0.0f, 1.0f);
  let x_1737 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1739 : vec4<f32> = u_xlat7;
  u_xlat0.z = dot(vec3<f32>(x_1737.x, x_1737.y, x_1737.z), vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1744 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1744, 0.0f, 1.0f);
  let x_1747 : vec3<f32> = u_xlat0;
  let x_1749 : vec3<f32> = u_xlat0;
  let x_1751 : vec2<f32> = (vec2<f32>(x_1747.x, x_1747.z) * vec2<f32>(x_1749.x, x_1749.z));
  let x_1752 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1751.x, x_1752.y, x_1751.y);
  let x_1755 : f32 = u_xlat0.x;
  let x_1757 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_1755 * x_1757) + 1.000010014f);
  let x_1763 : f32 = u_xlat0.x;
  let x_1765 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1763 * x_1765);
  let x_1769 : f32 = u_xlat0.z;
  u_xlat30 = max(x_1769, 0.100000001f);
  let x_1772 : f32 = u_xlat30;
  let x_1774 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1772 * x_1774);
  let x_1777 : f32 = u_xlat48;
  let x_1779 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1777 * x_1779);
  let x_1782 : f32 = u_xlat19;
  let x_1784 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1782 / x_1784);
  let x_1787 : vec4<f32> = u_xlat5;
  let x_1789 : vec3<f32> = u_xlat0;
  let x_1792 : vec4<f32> = u_xlat6;
  let x_1794 : vec3<f32> = ((vec3<f32>(x_1787.x, x_1787.y, x_1787.z) * vec3<f32>(x_1789.x, x_1789.x, x_1789.x)) + vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
  let x_1795 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
  let x_1797 : vec4<f32> = u_xlat2;
  let x_1799 : vec4<f32> = u_xlat7;
  let x_1801 : vec3<f32> = (vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
  let x_1802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
  let x_1805 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1807 : f32 = x_1070.unity_LightData.y;
  u_xlat0.x = min(x_1805, x_1807);
  let x_1812 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1812));
  let x_1817 : f32 = x_1359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1819 : f32 = x_1359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1821 : f32 = x_1359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1823 : f32 = x_1359.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1824 : vec4<f32> = vec4<f32>(x_1817, x_1819, x_1821, x_1823);
  let x_1830 : vec4<bool> = (vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1824.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1830.x, x_1830.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1841 : u32 = u_xlatu_loop_1;
    let x_1842 : u32 = u_xlatu0;
    if ((x_1841 < x_1842)) {
    } else {
      break;
    }
    let x_1845 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1845 >> 2u);
    let x_1848 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1848 & 3u));
    let x_1851 : u32 = u_xlatu46;
    let x_1854 : vec4<f32> = x_1070.unity_LightIndices[bitcast<i32>(x_1851)];
    let x_1864 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1869 : vec4<u32> = indexable[x_1864];
    u_xlat46 = dot(x_1854, bitcast<vec4<f32>>(x_1869));
    let x_1872 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1872));
    let x_1875 : vec3<f32> = vs_TEXCOORD7;
    let x_1887 : u32 = u_xlatu46;
    let x_1890 : vec4<f32> = x_1886.x_AdditionalLightsPosition[bitcast<i32>(x_1887)];
    let x_1893 : u32 = u_xlatu46;
    let x_1896 : vec4<f32> = x_1886.x_AdditionalLightsPosition[bitcast<i32>(x_1893)];
    let x_1898 : vec3<f32> = ((-(x_1875) * vec3<f32>(x_1890.w, x_1890.w, x_1890.w)) + vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
    let x_1902 : vec4<f32> = u_xlat10;
    let x_1904 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1902.x, x_1902.y, x_1902.z), vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
    let x_1907 : f32 = u_xlat49;
    u_xlat49 = max(x_1907, 6.10351562e-05f);
    let x_1910 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1910);
    let x_1912 : f32 = u_xlat50;
    let x_1914 : vec4<f32> = u_xlat10;
    let x_1916 : vec3<f32> = (vec3<f32>(x_1912, x_1912, x_1912) * vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
    let x_1917 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
    let x_1920 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1920);
    let x_1922 : f32 = u_xlat49;
    let x_1923 : u32 = u_xlatu46;
    let x_1926 : f32 = x_1886.x_AdditionalLightsAttenuation[bitcast<i32>(x_1923)].x;
    u_xlat49 = (x_1922 * x_1926);
    let x_1928 : f32 = u_xlat49;
    let x_1930 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1928) * x_1930) + 1.0f);
    let x_1933 : f32 = u_xlat49;
    u_xlat49 = max(x_1933, 0.0f);
    let x_1935 : f32 = u_xlat49;
    let x_1936 : f32 = u_xlat49;
    u_xlat49 = (x_1935 * x_1936);
    let x_1938 : f32 = u_xlat49;
    let x_1939 : f32 = u_xlat51;
    u_xlat49 = (x_1938 * x_1939);
    let x_1941 : u32 = u_xlatu46;
    let x_1944 : vec4<f32> = x_1886.x_AdditionalLightsSpotDir[bitcast<i32>(x_1941)];
    let x_1946 : vec4<f32> = u_xlat11;
    u_xlat51 = dot(vec3<f32>(x_1944.x, x_1944.y, x_1944.z), vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : f32 = u_xlat51;
    let x_1950 : u32 = u_xlatu46;
    let x_1953 : f32 = x_1886.x_AdditionalLightsAttenuation[bitcast<i32>(x_1950)].z;
    let x_1955 : u32 = u_xlatu46;
    let x_1958 : f32 = x_1886.x_AdditionalLightsAttenuation[bitcast<i32>(x_1955)].w;
    u_xlat51 = ((x_1949 * x_1953) + x_1958);
    let x_1960 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1960, 0.0f, 1.0f);
    let x_1962 : f32 = u_xlat51;
    let x_1963 : f32 = u_xlat51;
    u_xlat51 = (x_1962 * x_1963);
    let x_1965 : f32 = u_xlat49;
    let x_1966 : f32 = u_xlat51;
    u_xlat49 = (x_1965 * x_1966);
    let x_1969 : u32 = u_xlatu46;
    u_xlatu51 = (x_1969 >> 5u);
    let x_1972 : u32 = u_xlatu46;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_1972) & 31i)));
    let x_1977 : i32 = u_xlati37;
    let x_1979 : u32 = u_xlatu51;
    let x_1982 : f32 = x_1359.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1979)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1977) & bitcast<u32>(x_1982)));
    let x_1986 : i32 = u_xlati51;
    if ((x_1986 != 0i)) {
      let x_1996 : u32 = u_xlatu46;
      let x_1999 : f32 = x_1995.x_AdditionalLightsLightTypes[bitcast<i32>(x_1996)].el;
      u_xlati51 = i32(x_1999);
      let x_2001 : i32 = u_xlati51;
      u_xlati37 = select(1i, 0i, (x_2001 != 0i));
      let x_2005 : u32 = u_xlatu46;
      u_xlati52 = (bitcast<i32>(x_2005) << bitcast<u32>(2i));
      let x_2008 : i32 = u_xlati37;
      if ((x_2008 != 0i)) {
        let x_2012 : vec3<f32> = vs_TEXCOORD7;
        let x_2014 : i32 = u_xlati52;
        let x_2017 : i32 = u_xlati52;
        let x_2021 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2014 + 1i) / 4i)][((x_2017 + 1i) % 4i)];
        let x_2023 : vec3<f32> = (vec3<f32>(x_2012.y, x_2012.y, x_2012.y) * vec3<f32>(x_2021.x, x_2021.y, x_2021.w));
        let x_2024 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
        let x_2026 : i32 = u_xlati52;
        let x_2028 : i32 = u_xlati52;
        let x_2031 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[(x_2026 / 4i)][(x_2028 % 4i)];
        let x_2033 : vec3<f32> = vs_TEXCOORD7;
        let x_2036 : vec4<f32> = u_xlat12;
        let x_2038 : vec3<f32> = ((vec3<f32>(x_2031.x, x_2031.y, x_2031.w) * vec3<f32>(x_2033.x, x_2033.x, x_2033.x)) + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
        let x_2039 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
        let x_2041 : i32 = u_xlati52;
        let x_2044 : i32 = u_xlati52;
        let x_2048 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2041 + 2i) / 4i)][((x_2044 + 2i) % 4i)];
        let x_2050 : vec3<f32> = vs_TEXCOORD7;
        let x_2053 : vec4<f32> = u_xlat12;
        let x_2055 : vec3<f32> = ((vec3<f32>(x_2048.x, x_2048.y, x_2048.w) * vec3<f32>(x_2050.z, x_2050.z, x_2050.z)) + vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
        let x_2056 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
        let x_2058 : vec4<f32> = u_xlat12;
        let x_2060 : i32 = u_xlati52;
        let x_2063 : i32 = u_xlati52;
        let x_2067 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2060 + 3i) / 4i)][((x_2063 + 3i) % 4i)];
        let x_2069 : vec3<f32> = (vec3<f32>(x_2058.x, x_2058.y, x_2058.z) + vec3<f32>(x_2067.x, x_2067.y, x_2067.w));
        let x_2070 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
        let x_2072 : vec4<f32> = u_xlat12;
        let x_2074 : vec4<f32> = u_xlat12;
        let x_2076 : vec2<f32> = (vec2<f32>(x_2072.x, x_2072.y) / vec2<f32>(x_2074.z, x_2074.z));
        let x_2077 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2076.x, x_2076.y, x_2077.z, x_2077.w);
        let x_2079 : vec4<f32> = u_xlat12;
        let x_2082 : vec2<f32> = ((vec2<f32>(x_2079.x, x_2079.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2083 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2082.x, x_2082.y, x_2083.z, x_2083.w);
        let x_2085 : vec4<f32> = u_xlat12;
        let x_2089 : vec2<f32> = clamp(vec2<f32>(x_2085.x, x_2085.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2090 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2089.x, x_2089.y, x_2090.z, x_2090.w);
        let x_2092 : u32 = u_xlatu46;
        let x_2095 : vec4<f32> = x_1995.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2092)];
        let x_2097 : vec4<f32> = u_xlat12;
        let x_2100 : u32 = u_xlatu46;
        let x_2103 : vec4<f32> = x_1995.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2100)];
        let x_2105 : vec2<f32> = ((vec2<f32>(x_2095.x, x_2095.y) * vec2<f32>(x_2097.x, x_2097.y)) + vec2<f32>(x_2103.z, x_2103.w));
        let x_2106 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2105.x, x_2105.y, x_2106.z, x_2106.w);
      } else {
        let x_2110 : i32 = u_xlati51;
        u_xlatb51 = (x_2110 == 1i);
        let x_2112 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2112);
        let x_2114 : i32 = u_xlati51;
        if ((x_2114 != 0i)) {
          let x_2120 : vec3<f32> = vs_TEXCOORD7;
          let x_2122 : i32 = u_xlati52;
          let x_2125 : i32 = u_xlati52;
          let x_2129 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2122 + 1i) / 4i)][((x_2125 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_2120.y, x_2120.y) * vec2<f32>(x_2129.x, x_2129.y));
          let x_2132 : i32 = u_xlati52;
          let x_2134 : i32 = u_xlati52;
          let x_2137 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[(x_2132 / 4i)][(x_2134 % 4i)];
          let x_2139 : vec3<f32> = vs_TEXCOORD7;
          let x_2142 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_2137.x, x_2137.y) * vec2<f32>(x_2139.x, x_2139.x)) + x_2142);
          let x_2144 : i32 = u_xlati52;
          let x_2147 : i32 = u_xlati52;
          let x_2151 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2144 + 2i) / 4i)][((x_2147 + 2i) % 4i)];
          let x_2153 : vec3<f32> = vs_TEXCOORD7;
          let x_2156 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_2151.x, x_2151.y) * vec2<f32>(x_2153.z, x_2153.z)) + x_2156);
          let x_2158 : vec2<f32> = u_xlat42;
          let x_2159 : i32 = u_xlati52;
          let x_2162 : i32 = u_xlati52;
          let x_2166 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2159 + 3i) / 4i)][((x_2162 + 3i) % 4i)];
          u_xlat42 = (x_2158 + vec2<f32>(x_2166.x, x_2166.y));
          let x_2169 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_2169 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2172 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_2172);
          let x_2174 : u32 = u_xlatu46;
          let x_2177 : vec4<f32> = x_1995.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2174)];
          let x_2179 : vec2<f32> = u_xlat42;
          let x_2181 : u32 = u_xlatu46;
          let x_2184 : vec4<f32> = x_1995.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2181)];
          let x_2186 : vec2<f32> = ((vec2<f32>(x_2177.x, x_2177.y) * x_2179) + vec2<f32>(x_2184.z, x_2184.w));
          let x_2187 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
        } else {
          let x_2190 : vec3<f32> = vs_TEXCOORD7;
          let x_2192 : i32 = u_xlati52;
          let x_2195 : i32 = u_xlati52;
          let x_2199 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2192 + 1i) / 4i)][((x_2195 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2190.y, x_2190.y, x_2190.y, x_2190.y) * x_2199);
          let x_2201 : i32 = u_xlati52;
          let x_2203 : i32 = u_xlati52;
          let x_2206 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[(x_2201 / 4i)][(x_2203 % 4i)];
          let x_2207 : vec3<f32> = vs_TEXCOORD7;
          let x_2210 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2206 * vec4<f32>(x_2207.x, x_2207.x, x_2207.x, x_2207.x)) + x_2210);
          let x_2212 : i32 = u_xlati52;
          let x_2215 : i32 = u_xlati52;
          let x_2219 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2212 + 2i) / 4i)][((x_2215 + 2i) % 4i)];
          let x_2220 : vec3<f32> = vs_TEXCOORD7;
          let x_2223 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2219 * vec4<f32>(x_2220.z, x_2220.z, x_2220.z, x_2220.z)) + x_2223);
          let x_2225 : vec4<f32> = u_xlat13;
          let x_2226 : i32 = u_xlati52;
          let x_2229 : i32 = u_xlati52;
          let x_2233 : vec4<f32> = x_1995.x_AdditionalLightsWorldToLights[((x_2226 + 3i) / 4i)][((x_2229 + 3i) % 4i)];
          u_xlat13 = (x_2225 + x_2233);
          let x_2235 : vec4<f32> = u_xlat13;
          let x_2237 : vec4<f32> = u_xlat13;
          let x_2239 : vec3<f32> = (vec3<f32>(x_2235.x, x_2235.y, x_2235.z) / vec3<f32>(x_2237.w, x_2237.w, x_2237.w));
          let x_2240 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
          let x_2242 : vec4<f32> = u_xlat13;
          let x_2244 : vec4<f32> = u_xlat13;
          u_xlat51 = dot(vec3<f32>(x_2242.x, x_2242.y, x_2242.z), vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
          let x_2247 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2247);
          let x_2249 : f32 = u_xlat51;
          let x_2251 : vec4<f32> = u_xlat13;
          let x_2253 : vec3<f32> = (vec3<f32>(x_2249, x_2249, x_2249) * vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
          let x_2254 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
          let x_2256 : vec4<f32> = u_xlat13;
          u_xlat51 = dot(abs(vec3<f32>(x_2256.x, x_2256.y, x_2256.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2261 : f32 = u_xlat51;
          u_xlat51 = max(x_2261, 0.000001f);
          let x_2264 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2264);
          let x_2267 : f32 = u_xlat51;
          let x_2269 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_2267, x_2267, x_2267) * vec3<f32>(x_2269.z, x_2269.x, x_2269.y));
          let x_2273 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2273);
          let x_2277 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2277, 0.0f, 1.0f);
          let x_2281 : vec3<f32> = u_xlat14;
          let x_2284 : vec4<bool> = (vec4<f32>(x_2281.y, x_2281.z, x_2281.y, x_2281.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_2284.x, x_2284.y);
          let x_2288 : bool = u_xlatb37.x;
          if (x_2288) {
            let x_2293 : f32 = u_xlat14.x;
            x_2289 = x_2293;
          } else {
            let x_2296 : f32 = u_xlat14.x;
            x_2289 = -(x_2296);
          }
          let x_2298 : f32 = x_2289;
          u_xlat37.x = x_2298;
          let x_2301 : bool = u_xlatb37.y;
          if (x_2301) {
            let x_2306 : f32 = u_xlat14.x;
            x_2302 = x_2306;
          } else {
            let x_2309 : f32 = u_xlat14.x;
            x_2302 = -(x_2309);
          }
          let x_2311 : f32 = x_2302;
          u_xlat37.y = x_2311;
          let x_2313 : vec4<f32> = u_xlat13;
          let x_2315 : f32 = u_xlat51;
          let x_2318 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_2313.x, x_2313.y) * vec2<f32>(x_2315, x_2315)) + x_2318);
          let x_2320 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_2320 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2323 : vec2<f32> = u_xlat37;
          u_xlat37 = clamp(x_2323, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2327 : u32 = u_xlatu46;
          let x_2330 : vec4<f32> = x_1995.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2327)];
          let x_2332 : vec2<f32> = u_xlat37;
          let x_2334 : u32 = u_xlatu46;
          let x_2337 : vec4<f32> = x_1995.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2334)];
          let x_2339 : vec2<f32> = ((vec2<f32>(x_2330.x, x_2330.y) * x_2332) + vec2<f32>(x_2337.z, x_2337.w));
          let x_2340 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
        }
      }
      let x_2347 : vec4<f32> = u_xlat12;
      let x_2350 : f32 = x_128.x_GlobalMipBias.x;
      let x_2351 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2347.x, x_2347.y), x_2350);
      u_xlat12 = x_2351;
      let x_2353 : bool = u_xlatb7.y;
      if (x_2353) {
        let x_2358 : f32 = u_xlat12.w;
        x_2354 = x_2358;
      } else {
        let x_2361 : f32 = u_xlat12.x;
        x_2354 = x_2361;
      }
      let x_2362 : f32 = x_2354;
      u_xlat51 = x_2362;
      let x_2364 : bool = u_xlatb7.x;
      if (x_2364) {
        let x_2368 : vec4<f32> = u_xlat12;
        x_2365 = vec3<f32>(x_2368.x, x_2368.y, x_2368.z);
      } else {
        let x_2371 : f32 = u_xlat51;
        x_2365 = vec3<f32>(x_2371, x_2371, x_2371);
      }
      let x_2373 : vec3<f32> = x_2365;
      let x_2374 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2380 : vec4<f32> = u_xlat12;
    let x_2382 : u32 = u_xlatu46;
    let x_2385 : vec4<f32> = x_1886.x_AdditionalLightsColor[bitcast<i32>(x_2382)];
    let x_2387 : vec3<f32> = (vec3<f32>(x_2380.x, x_2380.y, x_2380.z) * vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
    let x_2388 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2387.x, x_2387.y, x_2387.z, x_2388.w);
    let x_2390 : f32 = u_xlat34;
    let x_2392 : vec4<f32> = u_xlat12;
    let x_2394 : vec3<f32> = (vec3<f32>(x_2390, x_2390, x_2390) * vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
    let x_2395 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
    let x_2397 : vec4<f32> = u_xlat1;
    let x_2399 : vec4<f32> = u_xlat11;
    u_xlat46 = dot(vec3<f32>(x_2397.x, x_2397.y, x_2397.z), vec3<f32>(x_2399.x, x_2399.y, x_2399.z));
    let x_2402 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2402, 0.0f, 1.0f);
    let x_2404 : f32 = u_xlat46;
    let x_2405 : f32 = u_xlat49;
    u_xlat46 = (x_2404 * x_2405);
    let x_2407 : f32 = u_xlat46;
    let x_2409 : vec4<f32> = u_xlat12;
    let x_2411 : vec3<f32> = (vec3<f32>(x_2407, x_2407, x_2407) * vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
    let x_2412 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
    let x_2414 : vec4<f32> = u_xlat10;
    let x_2416 : f32 = u_xlat50;
    let x_2419 : vec4<f32> = u_xlat8;
    let x_2421 : vec3<f32> = ((vec3<f32>(x_2414.x, x_2414.y, x_2414.z) * vec3<f32>(x_2416, x_2416, x_2416)) + vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
    let x_2422 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2421.x, x_2421.y, x_2421.z, x_2422.w);
    let x_2424 : vec4<f32> = u_xlat10;
    let x_2426 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2424.x, x_2424.y, x_2424.z), vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
    let x_2429 : f32 = u_xlat46;
    u_xlat46 = max(x_2429, 1.17549435e-37f);
    let x_2431 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2431);
    let x_2433 : f32 = u_xlat46;
    let x_2435 : vec4<f32> = u_xlat10;
    let x_2437 : vec3<f32> = (vec3<f32>(x_2433, x_2433, x_2433) * vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
    let x_2438 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
    let x_2440 : vec4<f32> = u_xlat1;
    let x_2442 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2440.x, x_2440.y, x_2440.z), vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
    let x_2445 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2445, 0.0f, 1.0f);
    let x_2447 : vec4<f32> = u_xlat11;
    let x_2449 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_2447.x, x_2447.y, x_2447.z), vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2452, 0.0f, 1.0f);
    let x_2454 : f32 = u_xlat46;
    let x_2455 : f32 = u_xlat46;
    u_xlat46 = (x_2454 * x_2455);
    let x_2457 : f32 = u_xlat46;
    let x_2459 : f32 = u_xlat4.x;
    u_xlat46 = ((x_2457 * x_2459) + 1.000010014f);
    let x_2462 : f32 = u_xlat49;
    let x_2463 : f32 = u_xlat49;
    u_xlat49 = (x_2462 * x_2463);
    let x_2465 : f32 = u_xlat46;
    let x_2466 : f32 = u_xlat46;
    u_xlat46 = (x_2465 * x_2466);
    let x_2468 : f32 = u_xlat49;
    u_xlat49 = max(x_2468, 0.100000001f);
    let x_2470 : f32 = u_xlat46;
    let x_2471 : f32 = u_xlat49;
    u_xlat46 = (x_2470 * x_2471);
    let x_2473 : f32 = u_xlat48;
    let x_2474 : f32 = u_xlat46;
    u_xlat46 = (x_2473 * x_2474);
    let x_2476 : f32 = u_xlat19;
    let x_2477 : f32 = u_xlat46;
    u_xlat46 = (x_2476 / x_2477);
    let x_2479 : vec4<f32> = u_xlat5;
    let x_2481 : f32 = u_xlat46;
    let x_2484 : vec4<f32> = u_xlat6;
    let x_2486 : vec3<f32> = ((vec3<f32>(x_2479.x, x_2479.y, x_2479.z) * vec3<f32>(x_2481, x_2481, x_2481)) + vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
    let x_2487 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
    let x_2489 : vec4<f32> = u_xlat10;
    let x_2491 : vec4<f32> = u_xlat12;
    let x_2494 : vec4<f32> = u_xlat9;
    let x_2496 : vec3<f32> = ((vec3<f32>(x_2489.x, x_2489.y, x_2489.z) * vec3<f32>(x_2491.x, x_2491.y, x_2491.z)) + vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
    let x_2497 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);

    continuing {
      let x_2499 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2499 + bitcast<u32>(1i));
    }
  }
  let x_2501 : vec4<f32> = u_xlat3;
  let x_2503 : f32 = u_xlat15;
  let x_2506 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2501.x, x_2501.y, x_2501.z) * vec3<f32>(x_2503, x_2503, x_2503)) + vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : vec4<f32> = u_xlat9;
  let x_2511 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2509.x, x_2509.y, x_2509.z) + x_2511);
  let x_2513 : f32 = u_xlat45;
  let x_2515 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2513, x_2513, x_2513) * x_2515);
  let x_2517 : f32 = u_xlat47;
  let x_2518 : f32 = u_xlat47;
  u_xlat45 = (x_2517 * -(x_2518));
  let x_2521 : f32 = u_xlat45;
  u_xlat45 = exp2(x_2521);
  let x_2525 : vec3<f32> = u_xlat0;
  let x_2526 : f32 = u_xlat45;
  let x_2528 : vec3<f32> = (x_2525 * vec3<f32>(x_2526, x_2526, x_2526));
  let x_2529 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

