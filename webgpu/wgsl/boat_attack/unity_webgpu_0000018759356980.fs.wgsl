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

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1342 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1548 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1836 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1945 : AdditionalLightsCookies;

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(24) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlatb16 : vec2<bool>;
  var u_xlatb30 : bool;
  var x_1290 : f32;
  var u_xlat30 : f32;
  var x_1409 : f32;
  var x_1420 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
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
  var x_2238 : f32;
  var x_2251 : f32;
  var x_2303 : f32;
  var x_2314 : vec3<f32>;
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
  u_xlat42 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb43 = (4.0f >= x_220);
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
  let x_282 : bool = u_xlatb43;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_293 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb44;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat43;
  u_xlat43 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
  let x_412 : f32 = u_xlat43;
  u_xlat43 = min(x_412, 1.0f);
  let x_414 : f32 = u_xlat43;
  u_xlat43 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_417);
  let x_419 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_460 : f32 = u_xlat43;
  u_xlat43 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat43;
  u_xlat43 = (-(x_462) + 1.0f);
  let x_465 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_465);
  let x_467 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_524.x, x_524.y), vec2<f32>(x_526.x, x_526.y));
  let x_529 : f32 = u_xlat43;
  u_xlat43 = min(x_529, 1.0f);
  let x_531 : f32 = u_xlat43;
  u_xlat43 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_534);
  let x_536 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat43;
  u_xlat43 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat43;
  u_xlat43 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_597);
  let x_599 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec3<f32>(x_631.x, x_631.y, x_631.w), vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat43;
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
  u_xlat28 = dot(x_716, x_717);
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
  u_xlat14 = dot(x_799, x_800);
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
  u_xlat43 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat43;
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
  u_xlat43 = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_962 : f32 = u_xlat43;
  u_xlat43 = (-(x_962) + 4.0f);
  let x_967 : f32 = u_xlat43;
  u_xlatu43 = u32(x_967);
  let x_971 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_971) << bitcast<u32>(2i));
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_976 : i32 = u_xlati43;
  let x_979 : i32 = u_xlati43;
  let x_983 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_976 + 1i) / 4i)][((x_979 + 1i) % 4i)];
  let x_985 : vec3<f32> = (vec3<f32>(x_974.y, x_974.y, x_974.y) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : i32 = u_xlati43;
  let x_990 : i32 = u_xlati43;
  let x_993 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_988 / 4i)][(x_990 % 4i)];
  let x_995 : vec3<f32> = vs_TEXCOORD7;
  let x_998 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_995.x, x_995.x, x_995.x)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : i32 = u_xlati43;
  let x_1006 : i32 = u_xlati43;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : i32 = u_xlati43;
  let x_1025 : i32 = u_xlati43;
  let x_1029 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1022 + 3i) / 4i)][((x_1025 + 3i) % 4i)];
  let x_1031 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1035 : f32 = vs_TEXCOORD7.y;
  let x_1037 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_1035 * x_1037);
  let x_1040 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1042 : f32 = vs_TEXCOORD7.x;
  let x_1044 : f32 = u_xlat43;
  u_xlat43 = ((x_1040 * x_1042) + x_1044);
  let x_1047 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1049 : f32 = vs_TEXCOORD7.z;
  let x_1051 : f32 = u_xlat43;
  u_xlat43 = ((x_1047 * x_1049) + x_1051);
  let x_1053 : f32 = u_xlat43;
  let x_1055 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_1053 + x_1055);
  let x_1057 : f32 = u_xlat43;
  let x_1060 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_1057) + -(x_1060));
  let x_1063 : f32 = u_xlat43;
  u_xlat43 = max(x_1063, 0.0f);
  let x_1065 : f32 = u_xlat43;
  let x_1067 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_1065 * x_1067);
  let x_1074 : vec4<f32> = vs_TEXCOORD0;
  let x_1077 : f32 = x_128.x_GlobalMipBias.x;
  let x_1078 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1074.z, x_1074.w), x_1077);
  u_xlat3 = x_1078;
  let x_1083 : vec4<f32> = vs_TEXCOORD0;
  let x_1086 : f32 = x_128.x_GlobalMipBias.x;
  let x_1087 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1083.z, x_1083.w), x_1086);
  let x_1088 : vec3<f32> = vec3<f32>(x_1087.x, x_1087.y, x_1087.z);
  let x_1089 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : vec4<f32> = u_xlat3;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1091.x, x_1091.y, x_1091.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1096 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1099 : vec4<f32> = u_xlat1;
  let x_1101 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_1099.x, x_1099.y, x_1099.z), vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : f32 = u_xlat44;
  u_xlat44 = (x_1104 + 0.5f);
  let x_1106 : f32 = u_xlat44;
  let x_1108 : vec4<f32> = u_xlat4;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106, x_1106, x_1106) * vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1114 : f32 = u_xlat3.w;
  u_xlat44 = max(x_1114, 0.0001f);
  let x_1117 : vec4<f32> = u_xlat3;
  let x_1119 : f32 = u_xlat44;
  let x_1121 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) / vec3<f32>(x_1119, x_1119, x_1119));
  let x_1122 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1126 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1127 : vec2<f32> = vec2<f32>(x_1126.x, x_1126.y);
  let x_1131 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1127.x, x_1127.y));
  let x_1132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
  let x_1134 : vec4<f32> = u_xlat4;
  let x_1136 : vec4<f32> = hlslcc_FragCoord;
  let x_1138 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1136.x, x_1136.y));
  let x_1139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
  let x_1142 : f32 = u_xlat4.y;
  let x_1144 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1147 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_1142 * x_1144) + x_1147);
  let x_1149 : f32 = u_xlat44;
  u_xlat4.z = (-(x_1149) + 1.0f);
  let x_1154 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1154) * 0.959999979f) + 0.959999979f);
  let x_1160 : f32 = u_xlat28;
  let x_1161 : f32 = u_xlat44;
  u_xlat45 = (x_1160 + -(x_1161));
  let x_1164 : f32 = u_xlat44;
  let x_1166 : vec4<f32> = u_xlat5;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1164, x_1164, x_1164) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec4<f32> = u_xlat5;
  let x_1175 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.y, x_1171.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1176 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : vec3<f32> = u_xlat0;
  let x_1180 : vec4<f32> = u_xlat5;
  let x_1185 : vec3<f32> = ((vec3<f32>(x_1178.x, x_1178.x, x_1178.x) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1186 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1188) + 1.0f);
  let x_1193 : f32 = u_xlat0.x;
  let x_1195 : f32 = u_xlat0.x;
  u_xlat28 = (x_1193 * x_1195);
  let x_1197 : f32 = u_xlat28;
  u_xlat28 = max(x_1197, 0.0078125f);
  let x_1200 : f32 = u_xlat28;
  let x_1201 : f32 = u_xlat28;
  u_xlat44 = (x_1200 * x_1201);
  let x_1203 : f32 = u_xlat45;
  u_xlat45 = (x_1203 + 1.0f);
  let x_1205 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1205, 0.0f, 1.0f);
  let x_1208 : f32 = u_xlat28;
  u_xlat18 = ((x_1208 * 4.0f) + 2.0f);
  let x_1216 : vec4<f32> = u_xlat4;
  let x_1219 : f32 = x_128.x_GlobalMipBias.x;
  let x_1220 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1216.x, x_1216.z), x_1219);
  u_xlat4.x = x_1220.x;
  let x_1225 : f32 = u_xlat4.x;
  u_xlat32 = (x_1225 + -1.0f);
  let x_1228 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1229 : f32 = u_xlat32;
  u_xlat32 = ((x_1228 * x_1229) + 1.0f);
  let x_1232 : f32 = u_xlat14;
  let x_1234 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1232, x_1234);
  let x_1237 : vec4<f32> = u_xlat2;
  let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
  let x_1240 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
  let x_1252 : vec3<f32> = txVec0;
  let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1252.xy, x_1252.z);
  u_xlat2.x = x_1254;
  let x_1259 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1259) + 1.0f);
  let x_1264 : f32 = u_xlat2.x;
  let x_1266 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1269 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1264 * x_1266) + x_1269);
  let x_1276 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1276);
  let x_1281 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1281 >= 1.0f);
  let x_1283 : bool = u_xlatb30;
  let x_1285 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1283 | x_1285);
  let x_1289 : bool = u_xlatb16.x;
  if (x_1289) {
    x_1290 = 1.0f;
  } else {
    let x_1295 : f32 = u_xlat2.x;
    x_1290 = x_1295;
  }
  let x_1296 : f32 = x_1290;
  u_xlat2.x = x_1296;
  let x_1298 : vec3<f32> = vs_TEXCOORD7;
  let x_1301 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1303 : vec3<f32> = (x_1298 + -(x_1301));
  let x_1304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec4<f32> = u_xlat7;
  let x_1308 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1313 : f32 = u_xlat16.x;
  let x_1315 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1318 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1313 * x_1315) + x_1318);
  let x_1322 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1322, 0.0f, 1.0f);
  let x_1327 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1327) + 1.0f);
  let x_1331 : f32 = u_xlat16.x;
  let x_1332 : f32 = u_xlat30;
  let x_1335 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1331 * x_1332) + x_1335);
  let x_1344 : f32 = x_1342.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_1344 == -1.0f));
  let x_1348 : bool = u_xlatb16.x;
  if (x_1348) {
    let x_1351 : vec3<f32> = vs_TEXCOORD7;
    let x_1354 : vec4<f32> = x_1342.x_MainLightWorldToLight[1i];
    u_xlat16 = (vec2<f32>(x_1351.y, x_1351.y) * vec2<f32>(x_1354.x, x_1354.y));
    let x_1358 : vec4<f32> = x_1342.x_MainLightWorldToLight[0i];
    let x_1360 : vec3<f32> = vs_TEXCOORD7;
    let x_1363 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1360.x, x_1360.x)) + x_1363);
    let x_1366 : vec4<f32> = x_1342.x_MainLightWorldToLight[2i];
    let x_1368 : vec3<f32> = vs_TEXCOORD7;
    let x_1371 : vec2<f32> = u_xlat16;
    u_xlat16 = ((vec2<f32>(x_1366.x, x_1366.y) * vec2<f32>(x_1368.z, x_1368.z)) + x_1371);
    let x_1373 : vec2<f32> = u_xlat16;
    let x_1375 : vec4<f32> = x_1342.x_MainLightWorldToLight[3i];
    u_xlat16 = (x_1373 + vec2<f32>(x_1375.x, x_1375.y));
    let x_1378 : vec2<f32> = u_xlat16;
    u_xlat16 = ((x_1378 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1386 : vec2<f32> = u_xlat16;
    let x_1388 : f32 = x_128.x_GlobalMipBias.x;
    let x_1389 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1386, x_1388);
    u_xlat7 = x_1389;
    let x_1391 : f32 = x_1342.x_MainLightCookieTextureFormat;
    let x_1393 : f32 = x_1342.x_MainLightCookieTextureFormat;
    let x_1395 : f32 = x_1342.x_MainLightCookieTextureFormat;
    let x_1397 : f32 = x_1342.x_MainLightCookieTextureFormat;
    let x_1398 : vec4<f32> = vec4<f32>(x_1391, x_1393, x_1395, x_1397);
    let x_1405 : vec4<bool> = (vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1398.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb16 = vec2<bool>(x_1405.x, x_1405.y);
    let x_1408 : bool = u_xlatb16.y;
    if (x_1408) {
      let x_1413 : f32 = u_xlat7.w;
      x_1409 = x_1413;
    } else {
      let x_1416 : f32 = u_xlat7.x;
      x_1409 = x_1416;
    }
    let x_1417 : f32 = x_1409;
    u_xlat30 = x_1417;
    let x_1419 : bool = u_xlatb16.x;
    if (x_1419) {
      let x_1423 : vec4<f32> = u_xlat7;
      x_1420 = vec3<f32>(x_1423.x, x_1423.y, x_1423.z);
    } else {
      let x_1426 : f32 = u_xlat30;
      x_1420 = vec3<f32>(x_1426, x_1426, x_1426);
    }
    let x_1428 : vec3<f32> = x_1420;
    let x_1429 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1435 : vec4<f32> = u_xlat7;
  let x_1438 : vec4<f32> = x_128.x_MainLightColor;
  let x_1440 : vec3<f32> = (vec3<f32>(x_1435.x, x_1435.y, x_1435.z) * vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1441 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1443 : f32 = u_xlat32;
  let x_1445 : vec4<f32> = u_xlat7;
  let x_1447 : vec3<f32> = (vec3<f32>(x_1443, x_1443, x_1443) * vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
  let x_1448 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
  let x_1451 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1451;
  let x_1454 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1454;
  let x_1457 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1457;
  let x_1459 : vec4<f32> = u_xlat8;
  let x_1462 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1459.x, x_1459.y, x_1459.z)), vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
  let x_1467 : f32 = u_xlat16.x;
  let x_1469 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1467 + x_1469);
  let x_1472 : vec4<f32> = u_xlat1;
  let x_1474 : vec2<f32> = u_xlat16;
  let x_1478 : vec4<f32> = u_xlat8;
  let x_1481 : vec3<f32> = ((vec3<f32>(x_1472.x, x_1472.y, x_1472.z) * -(vec3<f32>(x_1474.x, x_1474.x, x_1474.x))) + -(vec3<f32>(x_1478.x, x_1478.y, x_1478.z)));
  let x_1482 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1481.x, x_1481.y, x_1481.z, x_1482.w);
  let x_1484 : vec4<f32> = u_xlat1;
  let x_1486 : vec4<f32> = u_xlat8;
  u_xlat16.x = dot(vec3<f32>(x_1484.x, x_1484.y, x_1484.z), vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
  let x_1491 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1491, 0.0f, 1.0f);
  let x_1495 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1495) + 1.0f);
  let x_1500 : f32 = u_xlat16.x;
  let x_1502 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1500 * x_1502);
  let x_1506 : f32 = u_xlat16.x;
  let x_1508 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1506 * x_1508);
  let x_1512 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1512) * 0.699999988f) + 1.700000048f);
  let x_1519 : f32 = u_xlat0.x;
  let x_1520 : f32 = u_xlat30;
  u_xlat0.x = (x_1519 * x_1520);
  let x_1524 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1524 * 6.0f);
  let x_1536 : vec4<f32> = u_xlat9;
  let x_1539 : f32 = u_xlat0.x;
  let x_1540 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1536.x, x_1536.y, x_1536.z), x_1539);
  u_xlat9 = x_1540;
  let x_1542 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1542 + -1.0f);
  let x_1550 : f32 = x_1548.unity_SpecCube0_HDR.w;
  let x_1552 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1550 * x_1552) + 1.0f);
  let x_1557 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1557, 0.0f);
  let x_1561 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1561);
  let x_1565 : f32 = u_xlat0.x;
  let x_1567 : f32 = x_1548.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1565 * x_1567);
  let x_1571 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1571);
  let x_1575 : f32 = u_xlat0.x;
  let x_1577 : f32 = x_1548.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1575 * x_1577);
  let x_1580 : vec4<f32> = u_xlat9;
  let x_1582 : vec3<f32> = u_xlat0;
  let x_1584 : vec3<f32> = (vec3<f32>(x_1580.x, x_1580.y, x_1580.z) * vec3<f32>(x_1582.x, x_1582.x, x_1582.x));
  let x_1585 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
  let x_1587 : f32 = u_xlat28;
  let x_1589 : f32 = u_xlat28;
  let x_1593 : vec2<f32> = ((vec2<f32>(x_1587, x_1587) * vec2<f32>(x_1589, x_1589)) + vec2<f32>(-1.0f, 1.0f));
  let x_1594 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1593.x, x_1594.y, x_1593.y);
  let x_1597 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1597);
  let x_1599 : vec4<f32> = u_xlat5;
  let x_1602 : f32 = u_xlat45;
  let x_1604 : vec3<f32> = (-(vec3<f32>(x_1599.x, x_1599.y, x_1599.z)) + vec3<f32>(x_1602, x_1602, x_1602));
  let x_1605 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1604.x, x_1604.y, x_1604.z, x_1605.w);
  let x_1607 : vec2<f32> = u_xlat16;
  let x_1609 : vec4<f32> = u_xlat10;
  let x_1612 : vec4<f32> = u_xlat5;
  let x_1614 : vec3<f32> = ((vec3<f32>(x_1607.x, x_1607.x, x_1607.x) * vec3<f32>(x_1609.x, x_1609.y, x_1609.z)) + vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
  let x_1615 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
  let x_1617 : f32 = u_xlat28;
  let x_1619 : vec4<f32> = u_xlat10;
  let x_1621 : vec3<f32> = (vec3<f32>(x_1617, x_1617, x_1617) * vec3<f32>(x_1619.x, x_1619.y, x_1619.z));
  let x_1622 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
  let x_1624 : vec4<f32> = u_xlat9;
  let x_1626 : vec4<f32> = u_xlat10;
  let x_1628 : vec3<f32> = (vec3<f32>(x_1624.x, x_1624.y, x_1624.z) * vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
  let x_1629 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
  let x_1631 : vec4<f32> = u_xlat3;
  let x_1633 : vec4<f32> = u_xlat6;
  let x_1636 : vec4<f32> = u_xlat9;
  let x_1638 : vec3<f32> = ((vec3<f32>(x_1631.x, x_1631.y, x_1631.z) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z)) + vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
  let x_1639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  let x_1642 : f32 = u_xlat2.x;
  let x_1644 : f32 = x_1548.unity_LightData.z;
  u_xlat28 = (x_1642 * x_1644);
  let x_1646 : vec4<f32> = u_xlat1;
  let x_1649 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1646.x, x_1646.y, x_1646.z), vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
  let x_1654 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1654, 0.0f, 1.0f);
  let x_1657 : f32 = u_xlat28;
  let x_1659 : f32 = u_xlat2.x;
  u_xlat28 = (x_1657 * x_1659);
  let x_1661 : f32 = u_xlat28;
  let x_1663 : vec4<f32> = u_xlat7;
  let x_1665 : vec3<f32> = (vec3<f32>(x_1661, x_1661, x_1661) * vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
  let x_1666 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
  let x_1668 : vec4<f32> = u_xlat8;
  let x_1671 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1673 : vec3<f32> = (vec3<f32>(x_1668.x, x_1668.y, x_1668.z) + vec3<f32>(x_1671.x, x_1671.y, x_1671.z));
  let x_1674 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
  let x_1676 : vec4<f32> = u_xlat7;
  let x_1678 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1676.x, x_1676.y, x_1676.z), vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
  let x_1681 : f32 = u_xlat28;
  u_xlat28 = max(x_1681, 1.17549435e-37f);
  let x_1684 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1684);
  let x_1686 : f32 = u_xlat28;
  let x_1688 : vec4<f32> = u_xlat7;
  let x_1690 : vec3<f32> = (vec3<f32>(x_1686, x_1686, x_1686) * vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
  let x_1691 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
  let x_1693 : vec4<f32> = u_xlat1;
  let x_1695 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1693.x, x_1693.y, x_1693.z), vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
  let x_1698 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1698, 0.0f, 1.0f);
  let x_1701 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1703 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1701.x, x_1701.y, x_1701.z), vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1706, 0.0f, 1.0f);
  let x_1708 : f32 = u_xlat28;
  let x_1709 : f32 = u_xlat28;
  u_xlat28 = (x_1708 * x_1709);
  let x_1711 : f32 = u_xlat28;
  let x_1713 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1711 * x_1713) + 1.000010014f);
  let x_1717 : f32 = u_xlat45;
  let x_1718 : f32 = u_xlat45;
  u_xlat45 = (x_1717 * x_1718);
  let x_1720 : f32 = u_xlat28;
  let x_1721 : f32 = u_xlat28;
  u_xlat28 = (x_1720 * x_1721);
  let x_1723 : f32 = u_xlat45;
  u_xlat45 = max(x_1723, 0.100000001f);
  let x_1726 : f32 = u_xlat28;
  let x_1727 : f32 = u_xlat45;
  u_xlat28 = (x_1726 * x_1727);
  let x_1729 : f32 = u_xlat18;
  let x_1730 : f32 = u_xlat28;
  u_xlat28 = (x_1729 * x_1730);
  let x_1732 : f32 = u_xlat44;
  let x_1733 : f32 = u_xlat28;
  u_xlat28 = (x_1732 / x_1733);
  let x_1735 : vec4<f32> = u_xlat5;
  let x_1737 : f32 = u_xlat28;
  let x_1740 : vec4<f32> = u_xlat6;
  let x_1742 : vec3<f32> = ((vec3<f32>(x_1735.x, x_1735.y, x_1735.z) * vec3<f32>(x_1737, x_1737, x_1737)) + vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
  let x_1743 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1743.w);
  let x_1745 : vec4<f32> = u_xlat2;
  let x_1747 : vec4<f32> = u_xlat7;
  let x_1749 : vec3<f32> = (vec3<f32>(x_1745.x, x_1745.y, x_1745.z) * vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
  let x_1750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
  let x_1753 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1755 : f32 = x_1548.unity_LightData.y;
  u_xlat28 = min(x_1753, x_1755);
  let x_1758 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1758));
  let x_1763 : f32 = x_1342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1765 : f32 = x_1342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1767 : f32 = x_1342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1769 : f32 = x_1342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1770 : vec4<f32> = vec4<f32>(x_1763, x_1765, x_1767, x_1769);
  let x_1777 : vec4<bool> = (vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1770.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1778 : vec2<bool> = vec2<bool>(x_1777.x, x_1777.w);
  let x_1779 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_1778.x, x_1779.y, x_1779.z, x_1778.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1790 : u32 = u_xlatu_loop_1;
    let x_1791 : u32 = u_xlatu28;
    if ((x_1790 < x_1791)) {
    } else {
      break;
    }
    let x_1794 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1794 >> 2u);
    let x_1797 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1797 & 3u));
    let x_1801 : u32 = u_xlatu47;
    let x_1804 : vec4<f32> = x_1548.unity_LightIndices[bitcast<i32>(x_1801)];
    let x_1814 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1819 : vec4<u32> = indexable[x_1814];
    u_xlat47 = dot(x_1804, bitcast<vec4<f32>>(x_1819));
    let x_1822 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1822));
    let x_1825 : vec3<f32> = vs_TEXCOORD7;
    let x_1837 : u32 = u_xlatu47;
    let x_1840 : vec4<f32> = x_1836.x_AdditionalLightsPosition[bitcast<i32>(x_1837)];
    let x_1843 : u32 = u_xlatu47;
    let x_1846 : vec4<f32> = x_1836.x_AdditionalLightsPosition[bitcast<i32>(x_1843)];
    let x_1848 : vec3<f32> = ((-(x_1825) * vec3<f32>(x_1840.w, x_1840.w, x_1840.w)) + vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
    let x_1852 : vec4<f32> = u_xlat9;
    let x_1854 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1852.x, x_1852.y, x_1852.z), vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
    let x_1857 : f32 = u_xlat48;
    u_xlat48 = max(x_1857, 6.10351562e-05f);
    let x_1860 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1860);
    let x_1862 : f32 = u_xlat49;
    let x_1864 : vec4<f32> = u_xlat9;
    let x_1866 : vec3<f32> = (vec3<f32>(x_1862, x_1862, x_1862) * vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
    let x_1867 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
    let x_1870 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1870);
    let x_1872 : f32 = u_xlat48;
    let x_1873 : u32 = u_xlatu47;
    let x_1876 : f32 = x_1836.x_AdditionalLightsAttenuation[bitcast<i32>(x_1873)].x;
    u_xlat48 = (x_1872 * x_1876);
    let x_1878 : f32 = u_xlat48;
    let x_1880 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1878) * x_1880) + 1.0f);
    let x_1883 : f32 = u_xlat48;
    u_xlat48 = max(x_1883, 0.0f);
    let x_1885 : f32 = u_xlat48;
    let x_1886 : f32 = u_xlat48;
    u_xlat48 = (x_1885 * x_1886);
    let x_1888 : f32 = u_xlat48;
    let x_1889 : f32 = u_xlat50;
    u_xlat48 = (x_1888 * x_1889);
    let x_1891 : u32 = u_xlatu47;
    let x_1894 : vec4<f32> = x_1836.x_AdditionalLightsSpotDir[bitcast<i32>(x_1891)];
    let x_1896 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1894.x, x_1894.y, x_1894.z), vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : f32 = u_xlat50;
    let x_1900 : u32 = u_xlatu47;
    let x_1903 : f32 = x_1836.x_AdditionalLightsAttenuation[bitcast<i32>(x_1900)].z;
    let x_1905 : u32 = u_xlatu47;
    let x_1908 : f32 = x_1836.x_AdditionalLightsAttenuation[bitcast<i32>(x_1905)].w;
    u_xlat50 = ((x_1899 * x_1903) + x_1908);
    let x_1910 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1910, 0.0f, 1.0f);
    let x_1912 : f32 = u_xlat50;
    let x_1913 : f32 = u_xlat50;
    u_xlat50 = (x_1912 * x_1913);
    let x_1915 : f32 = u_xlat48;
    let x_1916 : f32 = u_xlat50;
    u_xlat48 = (x_1915 * x_1916);
    let x_1919 : u32 = u_xlatu47;
    u_xlatu50 = (x_1919 >> 5u);
    let x_1922 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1922) & 31i)));
    let x_1927 : i32 = u_xlati51;
    let x_1929 : u32 = u_xlatu50;
    let x_1932 : f32 = x_1342.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1929)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1927) & bitcast<u32>(x_1932)));
    let x_1936 : i32 = u_xlati50;
    if ((x_1936 != 0i)) {
      let x_1946 : u32 = u_xlatu47;
      let x_1949 : f32 = x_1945.x_AdditionalLightsLightTypes[bitcast<i32>(x_1946)].el;
      u_xlati50 = i32(x_1949);
      let x_1951 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1951 != 0i));
      let x_1955 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1955) << bitcast<u32>(2i));
      let x_1958 : i32 = u_xlati51;
      if ((x_1958 != 0i)) {
        let x_1962 : vec3<f32> = vs_TEXCOORD7;
        let x_1964 : i32 = u_xlati52;
        let x_1967 : i32 = u_xlati52;
        let x_1971 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_1964 + 1i) / 4i)][((x_1967 + 1i) % 4i)];
        let x_1973 : vec3<f32> = (vec3<f32>(x_1962.y, x_1962.y, x_1962.y) * vec3<f32>(x_1971.x, x_1971.y, x_1971.w));
        let x_1974 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
        let x_1976 : i32 = u_xlati52;
        let x_1978 : i32 = u_xlati52;
        let x_1981 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[(x_1976 / 4i)][(x_1978 % 4i)];
        let x_1983 : vec3<f32> = vs_TEXCOORD7;
        let x_1986 : vec4<f32> = u_xlat11;
        let x_1988 : vec3<f32> = ((vec3<f32>(x_1981.x, x_1981.y, x_1981.w) * vec3<f32>(x_1983.x, x_1983.x, x_1983.x)) + vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
        let x_1989 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
        let x_1991 : i32 = u_xlati52;
        let x_1994 : i32 = u_xlati52;
        let x_1998 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_1991 + 2i) / 4i)][((x_1994 + 2i) % 4i)];
        let x_2000 : vec3<f32> = vs_TEXCOORD7;
        let x_2003 : vec4<f32> = u_xlat11;
        let x_2005 : vec3<f32> = ((vec3<f32>(x_1998.x, x_1998.y, x_1998.w) * vec3<f32>(x_2000.z, x_2000.z, x_2000.z)) + vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
        let x_2006 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
        let x_2008 : vec4<f32> = u_xlat11;
        let x_2010 : i32 = u_xlati52;
        let x_2013 : i32 = u_xlati52;
        let x_2017 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2010 + 3i) / 4i)][((x_2013 + 3i) % 4i)];
        let x_2019 : vec3<f32> = (vec3<f32>(x_2008.x, x_2008.y, x_2008.z) + vec3<f32>(x_2017.x, x_2017.y, x_2017.w));
        let x_2020 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
        let x_2022 : vec4<f32> = u_xlat11;
        let x_2024 : vec4<f32> = u_xlat11;
        let x_2026 : vec2<f32> = (vec2<f32>(x_2022.x, x_2022.y) / vec2<f32>(x_2024.z, x_2024.z));
        let x_2027 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
        let x_2029 : vec4<f32> = u_xlat11;
        let x_2032 : vec2<f32> = ((vec2<f32>(x_2029.x, x_2029.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2033 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
        let x_2035 : vec4<f32> = u_xlat11;
        let x_2039 : vec2<f32> = clamp(vec2<f32>(x_2035.x, x_2035.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2040 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2039.x, x_2039.y, x_2040.z, x_2040.w);
        let x_2042 : u32 = u_xlatu47;
        let x_2045 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2042)];
        let x_2047 : vec4<f32> = u_xlat11;
        let x_2050 : u32 = u_xlatu47;
        let x_2053 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2050)];
        let x_2055 : vec2<f32> = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(x_2047.x, x_2047.y)) + vec2<f32>(x_2053.z, x_2053.w));
        let x_2056 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
      } else {
        let x_2060 : i32 = u_xlati50;
        u_xlatb50 = (x_2060 == 1i);
        let x_2062 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2062);
        let x_2064 : i32 = u_xlati50;
        if ((x_2064 != 0i)) {
          let x_2069 : vec3<f32> = vs_TEXCOORD7;
          let x_2071 : i32 = u_xlati52;
          let x_2074 : i32 = u_xlati52;
          let x_2078 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2071 + 1i) / 4i)][((x_2074 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2069.y, x_2069.y) * vec2<f32>(x_2078.x, x_2078.y));
          let x_2081 : i32 = u_xlati52;
          let x_2083 : i32 = u_xlati52;
          let x_2086 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[(x_2081 / 4i)][(x_2083 % 4i)];
          let x_2088 : vec3<f32> = vs_TEXCOORD7;
          let x_2091 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2088.x, x_2088.x)) + x_2091);
          let x_2093 : i32 = u_xlati52;
          let x_2096 : i32 = u_xlati52;
          let x_2100 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2093 + 2i) / 4i)][((x_2096 + 2i) % 4i)];
          let x_2102 : vec3<f32> = vs_TEXCOORD7;
          let x_2105 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2100.x, x_2100.y) * vec2<f32>(x_2102.z, x_2102.z)) + x_2105);
          let x_2107 : vec2<f32> = u_xlat39;
          let x_2108 : i32 = u_xlati52;
          let x_2111 : i32 = u_xlati52;
          let x_2115 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2108 + 3i) / 4i)][((x_2111 + 3i) % 4i)];
          u_xlat39 = (x_2107 + vec2<f32>(x_2115.x, x_2115.y));
          let x_2118 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2118 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2121 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2121);
          let x_2123 : u32 = u_xlatu47;
          let x_2126 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2123)];
          let x_2128 : vec2<f32> = u_xlat39;
          let x_2130 : u32 = u_xlatu47;
          let x_2133 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2130)];
          let x_2135 : vec2<f32> = ((vec2<f32>(x_2126.x, x_2126.y) * x_2128) + vec2<f32>(x_2133.z, x_2133.w));
          let x_2136 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2135.x, x_2135.y, x_2136.z, x_2136.w);
        } else {
          let x_2139 : vec3<f32> = vs_TEXCOORD7;
          let x_2141 : i32 = u_xlati52;
          let x_2144 : i32 = u_xlati52;
          let x_2148 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2141 + 1i) / 4i)][((x_2144 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2139.y, x_2139.y, x_2139.y, x_2139.y) * x_2148);
          let x_2150 : i32 = u_xlati52;
          let x_2152 : i32 = u_xlati52;
          let x_2155 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[(x_2150 / 4i)][(x_2152 % 4i)];
          let x_2156 : vec3<f32> = vs_TEXCOORD7;
          let x_2159 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2155 * vec4<f32>(x_2156.x, x_2156.x, x_2156.x, x_2156.x)) + x_2159);
          let x_2161 : i32 = u_xlati52;
          let x_2164 : i32 = u_xlati52;
          let x_2168 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2161 + 2i) / 4i)][((x_2164 + 2i) % 4i)];
          let x_2169 : vec3<f32> = vs_TEXCOORD7;
          let x_2172 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2168 * vec4<f32>(x_2169.z, x_2169.z, x_2169.z, x_2169.z)) + x_2172);
          let x_2174 : vec4<f32> = u_xlat12;
          let x_2175 : i32 = u_xlati52;
          let x_2178 : i32 = u_xlati52;
          let x_2182 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2175 + 3i) / 4i)][((x_2178 + 3i) % 4i)];
          u_xlat12 = (x_2174 + x_2182);
          let x_2184 : vec4<f32> = u_xlat12;
          let x_2186 : vec4<f32> = u_xlat12;
          let x_2188 : vec3<f32> = (vec3<f32>(x_2184.x, x_2184.y, x_2184.z) / vec3<f32>(x_2186.w, x_2186.w, x_2186.w));
          let x_2189 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
          let x_2191 : vec4<f32> = u_xlat12;
          let x_2193 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2191.x, x_2191.y, x_2191.z), vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
          let x_2196 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2196);
          let x_2198 : f32 = u_xlat50;
          let x_2200 : vec4<f32> = u_xlat12;
          let x_2202 : vec3<f32> = (vec3<f32>(x_2198, x_2198, x_2198) * vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
          let x_2203 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
          let x_2205 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2205.x, x_2205.y, x_2205.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2210 : f32 = u_xlat50;
          u_xlat50 = max(x_2210, 0.000001f);
          let x_2213 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2213);
          let x_2215 : f32 = u_xlat50;
          let x_2217 : vec4<f32> = u_xlat12;
          let x_2219 : vec3<f32> = (vec3<f32>(x_2215, x_2215, x_2215) * vec3<f32>(x_2217.z, x_2217.x, x_2217.y));
          let x_2220 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
          let x_2223 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2223);
          let x_2227 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2227, 0.0f, 1.0f);
          let x_2231 : vec4<f32> = u_xlat13;
          let x_2234 : vec4<bool> = (vec4<f32>(x_2231.y, x_2231.z, x_2231.y, x_2231.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2234.x, x_2234.y);
          let x_2237 : bool = u_xlatb39.x;
          if (x_2237) {
            let x_2242 : f32 = u_xlat13.x;
            x_2238 = x_2242;
          } else {
            let x_2245 : f32 = u_xlat13.x;
            x_2238 = -(x_2245);
          }
          let x_2247 : f32 = x_2238;
          u_xlat39.x = x_2247;
          let x_2250 : bool = u_xlatb39.y;
          if (x_2250) {
            let x_2255 : f32 = u_xlat13.x;
            x_2251 = x_2255;
          } else {
            let x_2258 : f32 = u_xlat13.x;
            x_2251 = -(x_2258);
          }
          let x_2260 : f32 = x_2251;
          u_xlat39.y = x_2260;
          let x_2262 : vec4<f32> = u_xlat12;
          let x_2264 : f32 = u_xlat50;
          let x_2267 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2262.x, x_2262.y) * vec2<f32>(x_2264, x_2264)) + x_2267);
          let x_2269 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2269 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2272 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2272, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2276 : u32 = u_xlatu47;
          let x_2279 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2276)];
          let x_2281 : vec2<f32> = u_xlat39;
          let x_2283 : u32 = u_xlatu47;
          let x_2286 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2283)];
          let x_2288 : vec2<f32> = ((vec2<f32>(x_2279.x, x_2279.y) * x_2281) + vec2<f32>(x_2286.z, x_2286.w));
          let x_2289 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2288.x, x_2288.y, x_2289.z, x_2289.w);
        }
      }
      let x_2296 : vec4<f32> = u_xlat11;
      let x_2299 : f32 = x_128.x_GlobalMipBias.x;
      let x_2300 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2296.x, x_2296.y), x_2299);
      u_xlat11 = x_2300;
      let x_2302 : bool = u_xlatb4.w;
      if (x_2302) {
        let x_2307 : f32 = u_xlat11.w;
        x_2303 = x_2307;
      } else {
        let x_2310 : f32 = u_xlat11.x;
        x_2303 = x_2310;
      }
      let x_2311 : f32 = x_2303;
      u_xlat50 = x_2311;
      let x_2313 : bool = u_xlatb4.x;
      if (x_2313) {
        let x_2317 : vec4<f32> = u_xlat11;
        x_2314 = vec3<f32>(x_2317.x, x_2317.y, x_2317.z);
      } else {
        let x_2320 : f32 = u_xlat50;
        x_2314 = vec3<f32>(x_2320, x_2320, x_2320);
      }
      let x_2322 : vec3<f32> = x_2314;
      let x_2323 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2329 : vec4<f32> = u_xlat11;
    let x_2331 : u32 = u_xlatu47;
    let x_2334 : vec4<f32> = x_1836.x_AdditionalLightsColor[bitcast<i32>(x_2331)];
    let x_2336 : vec3<f32> = (vec3<f32>(x_2329.x, x_2329.y, x_2329.z) * vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
    let x_2337 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
    let x_2339 : f32 = u_xlat32;
    let x_2341 : vec4<f32> = u_xlat11;
    let x_2343 : vec3<f32> = (vec3<f32>(x_2339, x_2339, x_2339) * vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
    let x_2344 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
    let x_2346 : vec4<f32> = u_xlat1;
    let x_2348 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2346.x, x_2346.y, x_2346.z), vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
    let x_2351 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2351, 0.0f, 1.0f);
    let x_2353 : f32 = u_xlat47;
    let x_2354 : f32 = u_xlat48;
    u_xlat47 = (x_2353 * x_2354);
    let x_2356 : f32 = u_xlat47;
    let x_2358 : vec4<f32> = u_xlat11;
    let x_2360 : vec3<f32> = (vec3<f32>(x_2356, x_2356, x_2356) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
    let x_2361 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
    let x_2363 : vec4<f32> = u_xlat9;
    let x_2365 : f32 = u_xlat49;
    let x_2368 : vec4<f32> = u_xlat8;
    let x_2370 : vec3<f32> = ((vec3<f32>(x_2363.x, x_2363.y, x_2363.z) * vec3<f32>(x_2365, x_2365, x_2365)) + vec3<f32>(x_2368.x, x_2368.y, x_2368.z));
    let x_2371 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
    let x_2373 : vec4<f32> = u_xlat9;
    let x_2375 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2373.x, x_2373.y, x_2373.z), vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
    let x_2378 : f32 = u_xlat47;
    u_xlat47 = max(x_2378, 1.17549435e-37f);
    let x_2380 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2380);
    let x_2382 : f32 = u_xlat47;
    let x_2384 : vec4<f32> = u_xlat9;
    let x_2386 : vec3<f32> = (vec3<f32>(x_2382, x_2382, x_2382) * vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
    let x_2387 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
    let x_2389 : vec4<f32> = u_xlat1;
    let x_2391 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2389.x, x_2389.y, x_2389.z), vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
    let x_2394 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2394, 0.0f, 1.0f);
    let x_2396 : vec4<f32> = u_xlat10;
    let x_2398 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2396.x, x_2396.y, x_2396.z), vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
    let x_2401 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2401, 0.0f, 1.0f);
    let x_2403 : f32 = u_xlat47;
    let x_2404 : f32 = u_xlat47;
    u_xlat47 = (x_2403 * x_2404);
    let x_2406 : f32 = u_xlat47;
    let x_2408 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2406 * x_2408) + 1.000010014f);
    let x_2411 : f32 = u_xlat48;
    let x_2412 : f32 = u_xlat48;
    u_xlat48 = (x_2411 * x_2412);
    let x_2414 : f32 = u_xlat47;
    let x_2415 : f32 = u_xlat47;
    u_xlat47 = (x_2414 * x_2415);
    let x_2417 : f32 = u_xlat48;
    u_xlat48 = max(x_2417, 0.100000001f);
    let x_2419 : f32 = u_xlat47;
    let x_2420 : f32 = u_xlat48;
    u_xlat47 = (x_2419 * x_2420);
    let x_2422 : f32 = u_xlat18;
    let x_2423 : f32 = u_xlat47;
    u_xlat47 = (x_2422 * x_2423);
    let x_2425 : f32 = u_xlat44;
    let x_2426 : f32 = u_xlat47;
    u_xlat47 = (x_2425 / x_2426);
    let x_2428 : vec4<f32> = u_xlat5;
    let x_2430 : f32 = u_xlat47;
    let x_2433 : vec4<f32> = u_xlat6;
    let x_2435 : vec3<f32> = ((vec3<f32>(x_2428.x, x_2428.y, x_2428.z) * vec3<f32>(x_2430, x_2430, x_2430)) + vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
    let x_2436 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
    let x_2438 : vec4<f32> = u_xlat9;
    let x_2440 : vec4<f32> = u_xlat11;
    let x_2443 : vec4<f32> = u_xlat7;
    let x_2445 : vec3<f32> = ((vec3<f32>(x_2438.x, x_2438.y, x_2438.z) * vec3<f32>(x_2440.x, x_2440.y, x_2440.z)) + vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
    let x_2446 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);

    continuing {
      let x_2448 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2448 + bitcast<u32>(1i));
    }
  }
  let x_2450 : vec4<f32> = u_xlat3;
  let x_2452 : f32 = u_xlat14;
  let x_2455 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2450.x, x_2450.y, x_2450.z) * vec3<f32>(x_2452, x_2452, x_2452)) + vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
  let x_2458 : vec4<f32> = u_xlat7;
  let x_2460 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2458.x, x_2458.y, x_2458.z) + x_2460);
  let x_2462 : f32 = u_xlat42;
  let x_2464 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2462, x_2462, x_2462) * x_2464);
  let x_2466 : f32 = u_xlat43;
  let x_2467 : f32 = u_xlat43;
  u_xlat42 = (x_2466 * -(x_2467));
  let x_2470 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2470);
  let x_2474 : vec3<f32> = u_xlat0;
  let x_2475 : f32 = u_xlat42;
  let x_2477 : vec3<f32> = (x_2474 * vec3<f32>(x_2475, x_2475, x_2475));
  let x_2478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
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

