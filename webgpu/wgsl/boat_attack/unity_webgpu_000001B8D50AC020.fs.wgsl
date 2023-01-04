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

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_635 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_849 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_919 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1399 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1508 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb1 : bool;
  var u_xlat15 : vec3<f32>;
  var x_573 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_874 : f32;
  var u_xlat47 : f32;
  var u_xlatb8 : vec2<bool>;
  var x_1002 : f32;
  var x_1013 : vec3<f32>;
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
  var x_1802 : f32;
  var x_1815 : f32;
  var x_1867 : f32;
  var x_1878 : vec3<f32>;
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
  let x_381 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_387;
  let x_390 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_390;
  let x_393 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_393;
  let x_396 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_396;
  let x_399 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_399;
  let x_402 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat6;
  let x_405 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_404 + x_405);
  let x_408 : f32 = u_xlat0.z;
  u_xlat7.x = x_408;
  let x_411 : f32 = u_xlat1.z;
  u_xlat7.y = x_411;
  let x_414 : f32 = u_xlat2.z;
  u_xlat7.z = x_414;
  let x_417 : f32 = u_xlat3.y;
  u_xlat7.w = x_417;
  let x_419 : vec4<f32> = u_xlat9;
  let x_422 : f32 = x_30.x_Smoothness0;
  let x_424 : f32 = x_30.x_Smoothness1;
  let x_426 : f32 = x_30.x_Smoothness2;
  let x_428 : f32 = x_30.x_Smoothness3;
  let x_431 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_419) * vec4<f32>(x_422, x_424, x_426, x_428)) + x_431);
  let x_435 : f32 = x_30.x_LayerHasMask0;
  let x_438 : f32 = x_30.x_LayerHasMask1;
  let x_441 : f32 = x_30.x_LayerHasMask2;
  let x_444 : f32 = x_30.x_LayerHasMask3;
  let x_446 : vec4<f32> = u_xlat7;
  let x_448 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_435, x_438, x_441, x_444) * x_446) + x_448);
  let x_451 : vec4<f32> = u_xlat4;
  let x_452 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_451, x_452);
  let x_455 : f32 = u_xlat0.x;
  u_xlat7.x = x_455;
  let x_458 : f32 = u_xlat1.x;
  u_xlat7.y = x_458;
  let x_461 : f32 = u_xlat2.x;
  u_xlat7.z = x_461;
  let x_464 : f32 = u_xlat3.x;
  u_xlat7.w = x_464;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : f32 = x_30.x_Metallic0;
  let x_472 : f32 = x_30.x_Metallic1;
  let x_475 : f32 = x_30.x_Metallic2;
  let x_478 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_466 + -(vec4<f32>(x_469, x_472, x_475, x_478)));
  let x_483 : f32 = x_30.x_LayerHasMask0;
  let x_485 : f32 = x_30.x_LayerHasMask1;
  let x_487 : f32 = x_30.x_LayerHasMask2;
  let x_489 : f32 = x_30.x_LayerHasMask3;
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : f32 = x_30.x_Metallic0;
  let x_496 : f32 = x_30.x_Metallic1;
  let x_498 : f32 = x_30.x_Metallic2;
  let x_500 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_483, x_485, x_487, x_489) * x_491) + vec4<f32>(x_494, x_496, x_498, x_500));
  let x_503 : vec4<f32> = u_xlat4;
  let x_504 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_503, x_504);
  let x_508 : f32 = u_xlat0.y;
  u_xlat3.x = x_508;
  let x_511 : f32 = u_xlat1.y;
  u_xlat3.y = x_511;
  let x_514 : f32 = u_xlat2.y;
  u_xlat3.z = x_514;
  let x_516 : vec4<f32> = u_xlat6;
  let x_518 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_516) + x_518);
  let x_521 : f32 = x_30.x_LayerHasMask0;
  let x_523 : f32 = x_30.x_LayerHasMask1;
  let x_525 : f32 = x_30.x_LayerHasMask2;
  let x_527 : f32 = x_30.x_LayerHasMask3;
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_521, x_523, x_525, x_527) * x_529) + x_531);
  let x_534 : vec4<f32> = u_xlat4;
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_534, x_535);
  let x_539 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_539 == 0.0f);
  let x_544 : vec3<f32> = vs_TEXCOORD7;
  let x_548 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_544) + x_548);
  let x_550 : vec3<f32> = u_xlat15;
  let x_551 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_550, x_551);
  let x_555 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_555);
  let x_558 : vec3<f32> = u_xlat15;
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_558 * vec3<f32>(x_559.x, x_559.x, x_559.x));
  let x_563 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_563;
  let x_566 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_566;
  let x_570 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_570;
  let x_572 : bool = u_xlatb1;
  if (x_572) {
    let x_576 : vec3<f32> = u_xlat15;
    x_573 = x_576;
  } else {
    let x_578 : vec4<f32> = u_xlat2;
    x_573 = vec3<f32>(x_578.x, x_578.y, x_578.z);
  }
  let x_580 : vec3<f32> = x_573;
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_584, x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_587);
  let x_589 : f32 = u_xlat43;
  let x_591 : vec3<f32> = vs_TEXCOORD3;
  let x_592 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : f32 = vs_TEXCOORD7.y;
  let x_598 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_596 * x_598);
  let x_601 : f32 = x_128.unity_MatrixV[0i].z;
  let x_603 : f32 = vs_TEXCOORD7.x;
  let x_605 : f32 = u_xlat43;
  u_xlat43 = ((x_601 * x_603) + x_605);
  let x_608 : f32 = x_128.unity_MatrixV[2i].z;
  let x_610 : f32 = vs_TEXCOORD7.z;
  let x_612 : f32 = u_xlat43;
  u_xlat43 = ((x_608 * x_610) + x_612);
  let x_614 : f32 = u_xlat43;
  let x_617 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_614 + x_617);
  let x_619 : f32 = u_xlat43;
  let x_622 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_619) + -(x_622));
  let x_625 : f32 = u_xlat43;
  u_xlat43 = max(x_625, 0.0f);
  let x_627 : f32 = u_xlat43;
  let x_629 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_627 * x_629);
  u_xlat2.w = 1.0f;
  let x_637 : vec4<f32> = x_635.unity_SHAr;
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_637, x_638);
  let x_642 : vec4<f32> = x_635.unity_SHAg;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_642, x_643);
  let x_647 : vec4<f32> = x_635.unity_SHAb;
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_647, x_648);
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_651.y, x_651.z, x_651.z, x_651.x) * vec4<f32>(x_653.x, x_653.y, x_653.z, x_653.z));
  let x_657 : vec4<f32> = x_635.unity_SHBr;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_657, x_658);
  let x_662 : vec4<f32> = x_635.unity_SHBg;
  let x_663 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_662, x_663);
  let x_667 : vec4<f32> = x_635.unity_SHBb;
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_667, x_668);
  let x_673 : f32 = u_xlat2.y;
  let x_675 : f32 = u_xlat2.y;
  u_xlat44 = (x_673 * x_675);
  let x_678 : f32 = u_xlat2.x;
  let x_680 : f32 = u_xlat2.x;
  let x_682 : f32 = u_xlat44;
  u_xlat44 = ((x_678 * x_680) + -(x_682));
  let x_687 : vec4<f32> = x_635.unity_SHC;
  let x_689 : f32 = u_xlat44;
  let x_692 : vec4<f32> = u_xlat6;
  let x_694 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689, x_689, x_689)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec4<f32> = u_xlat4;
  let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat3;
  let x_707 : vec3<f32> = max(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_708 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_712 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
  let x_717 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_713.x, x_713.y));
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat4;
  let x_722 : vec4<f32> = hlslcc_FragCoord;
  let x_724 : vec2<f32> = (vec2<f32>(x_720.x, x_720.y) * vec2<f32>(x_722.x, x_722.y));
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
  let x_728 : f32 = u_xlat4.y;
  let x_730 : f32 = x_128.x_ScaleBiasRt.x;
  let x_733 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_728 * x_730) + x_733);
  let x_735 : f32 = u_xlat44;
  u_xlat4.z = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_740) * 0.959999979f) + 0.959999979f);
  let x_746 : f32 = u_xlat28;
  let x_747 : f32 = u_xlat44;
  u_xlat45 = (x_746 + -(x_747));
  let x_750 : f32 = u_xlat44;
  let x_752 : vec4<f32> = u_xlat5;
  let x_754 : vec3<f32> = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat5;
  let x_761 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_762 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat0;
  let x_766 : vec4<f32> = u_xlat5;
  let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.x, x_764.x) * vec3<f32>(x_766.x, x_766.y, x_766.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_772 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : f32 = u_xlat28;
  u_xlat0.x = (-(x_774) + 1.0f);
  let x_779 : f32 = u_xlat0.x;
  let x_781 : f32 = u_xlat0.x;
  u_xlat28 = (x_779 * x_781);
  let x_783 : f32 = u_xlat28;
  u_xlat28 = max(x_783, 0.0078125f);
  let x_786 : f32 = u_xlat28;
  let x_787 : f32 = u_xlat28;
  u_xlat44 = (x_786 * x_787);
  let x_789 : f32 = u_xlat45;
  u_xlat45 = (x_789 + 1.0f);
  let x_791 : f32 = u_xlat45;
  u_xlat45 = clamp(x_791, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat28;
  u_xlat18 = ((x_794 * 4.0f) + 2.0f);
  let x_803 : vec4<f32> = u_xlat4;
  let x_806 : f32 = x_128.x_GlobalMipBias.x;
  let x_807 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_803.x, x_803.z), x_806);
  u_xlat4.x = x_807.x;
  let x_812 : f32 = u_xlat4.x;
  u_xlat32 = (x_812 + -1.0f);
  let x_815 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_816 : f32 = u_xlat32;
  u_xlat32 = ((x_815 * x_816) + 1.0f);
  let x_819 : f32 = u_xlat14;
  let x_821 : f32 = u_xlat4.x;
  u_xlat14 = min(x_819, x_821);
  let x_825 : vec4<f32> = vs_TEXCOORD8;
  let x_826 : vec2<f32> = vec2<f32>(x_825.x, x_825.y);
  let x_828 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_826.x, x_826.y, x_828);
  let x_840 : vec3<f32> = txVec0;
  let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
  u_xlat4.x = x_842;
  let x_851 : f32 = x_849.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_851) + 1.0f);
  let x_855 : f32 = u_xlat4.x;
  let x_857 : f32 = x_849.x_MainLightShadowParams.x;
  let x_859 : f32 = u_xlat46;
  u_xlat4.x = ((x_855 * x_857) + x_859);
  let x_864 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_864);
  let x_868 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_868 >= 1.0f);
  let x_870 : bool = u_xlatb46;
  let x_871 : bool = u_xlatb47;
  u_xlatb46 = (x_870 | x_871);
  let x_873 : bool = u_xlatb46;
  if (x_873) {
    x_874 = 1.0f;
  } else {
    let x_879 : f32 = u_xlat4.x;
    x_874 = x_879;
  }
  let x_880 : f32 = x_874;
  u_xlat4.x = x_880;
  let x_882 : vec3<f32> = vs_TEXCOORD7;
  let x_884 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_886 : vec3<f32> = (x_882 + -(x_884));
  let x_887 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec4<f32> = u_xlat7;
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : f32 = u_xlat46;
  let x_896 : f32 = x_849.x_MainLightShadowParams.z;
  let x_899 : f32 = x_849.x_MainLightShadowParams.w;
  u_xlat46 = ((x_894 * x_896) + x_899);
  let x_901 : f32 = u_xlat46;
  u_xlat46 = clamp(x_901, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat4.x;
  u_xlat47 = (-(x_905) + 1.0f);
  let x_908 : f32 = u_xlat46;
  let x_909 : f32 = u_xlat47;
  let x_912 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_908 * x_909) + x_912);
  let x_921 : f32 = x_919.x_MainLightCookieTextureFormat;
  u_xlatb46 = !((x_921 == -1.0f));
  let x_923 : bool = u_xlatb46;
  if (x_923) {
    let x_926 : vec3<f32> = vs_TEXCOORD7;
    let x_929 : vec4<f32> = x_919.x_MainLightWorldToLight[1i];
    let x_931 : vec2<f32> = (vec2<f32>(x_926.y, x_926.y) * vec2<f32>(x_929.x, x_929.y));
    let x_932 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
    let x_935 : vec4<f32> = x_919.x_MainLightWorldToLight[0i];
    let x_937 : vec3<f32> = vs_TEXCOORD7;
    let x_940 : vec4<f32> = u_xlat7;
    let x_942 : vec2<f32> = ((vec2<f32>(x_935.x, x_935.y) * vec2<f32>(x_937.x, x_937.x)) + vec2<f32>(x_940.x, x_940.y));
    let x_943 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
    let x_946 : vec4<f32> = x_919.x_MainLightWorldToLight[2i];
    let x_948 : vec3<f32> = vs_TEXCOORD7;
    let x_951 : vec4<f32> = u_xlat7;
    let x_953 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.y) * vec2<f32>(x_948.z, x_948.z)) + vec2<f32>(x_951.x, x_951.y));
    let x_954 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
    let x_956 : vec4<f32> = u_xlat7;
    let x_959 : vec4<f32> = x_919.x_MainLightWorldToLight[3i];
    let x_961 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) + vec2<f32>(x_959.x, x_959.y));
    let x_962 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
    let x_964 : vec4<f32> = u_xlat7;
    let x_967 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_968 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
    let x_975 : vec4<f32> = u_xlat7;
    let x_978 : f32 = x_128.x_GlobalMipBias.x;
    let x_979 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_975.x, x_975.y), x_978);
    u_xlat7 = x_979;
    let x_984 : f32 = x_919.x_MainLightCookieTextureFormat;
    let x_986 : f32 = x_919.x_MainLightCookieTextureFormat;
    let x_988 : f32 = x_919.x_MainLightCookieTextureFormat;
    let x_990 : f32 = x_919.x_MainLightCookieTextureFormat;
    let x_991 : vec4<f32> = vec4<f32>(x_984, x_986, x_988, x_990);
    let x_998 : vec4<bool> = (vec4<f32>(x_991.x, x_991.y, x_991.z, x_991.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_998.x, x_998.y);
    let x_1001 : bool = u_xlatb8.y;
    if (x_1001) {
      let x_1006 : f32 = u_xlat7.w;
      x_1002 = x_1006;
    } else {
      let x_1009 : f32 = u_xlat7.x;
      x_1002 = x_1009;
    }
    let x_1010 : f32 = x_1002;
    u_xlat46 = x_1010;
    let x_1012 : bool = u_xlatb8.x;
    if (x_1012) {
      let x_1016 : vec4<f32> = u_xlat7;
      x_1013 = vec3<f32>(x_1016.x, x_1016.y, x_1016.z);
    } else {
      let x_1019 : f32 = u_xlat46;
      x_1013 = vec3<f32>(x_1019, x_1019, x_1019);
    }
    let x_1021 : vec3<f32> = x_1013;
    let x_1022 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1028 : vec4<f32> = u_xlat7;
  let x_1031 : vec4<f32> = x_128.x_MainLightColor;
  let x_1033 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : f32 = u_xlat32;
  let x_1038 : vec4<f32> = u_xlat7;
  let x_1040 : vec3<f32> = (vec3<f32>(x_1036, x_1036, x_1036) * vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : vec4<f32> = u_xlat1;
  let x_1046 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(-(vec3<f32>(x_1043.x, x_1043.y, x_1043.z)), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : f32 = u_xlat46;
  let x_1050 : f32 = u_xlat46;
  u_xlat46 = (x_1049 + x_1050);
  let x_1052 : vec4<f32> = u_xlat2;
  let x_1054 : f32 = u_xlat46;
  let x_1058 : vec4<f32> = u_xlat1;
  let x_1061 : vec3<f32> = ((vec3<f32>(x_1052.x, x_1052.y, x_1052.z) * -(vec3<f32>(x_1054, x_1054, x_1054))) + -(vec3<f32>(x_1058.x, x_1058.y, x_1058.z)));
  let x_1062 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat2;
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(vec3<f32>(x_1064.x, x_1064.y, x_1064.z), vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1069, 0.0f, 1.0f);
  let x_1071 : f32 = u_xlat46;
  u_xlat46 = (-(x_1071) + 1.0f);
  let x_1074 : f32 = u_xlat46;
  let x_1075 : f32 = u_xlat46;
  u_xlat46 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat46;
  let x_1078 : f32 = u_xlat46;
  u_xlat46 = (x_1077 * x_1078);
  let x_1081 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1081) * 0.699999988f) + 1.700000048f);
  let x_1088 : f32 = u_xlat0.x;
  let x_1089 : f32 = u_xlat47;
  u_xlat0.x = (x_1088 * x_1089);
  let x_1093 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1093 * 6.0f);
  let x_1105 : vec4<f32> = u_xlat8;
  let x_1108 : f32 = u_xlat0.x;
  let x_1109 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1105.x, x_1105.y, x_1105.z), x_1108);
  u_xlat8 = x_1109;
  let x_1111 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1111 + -1.0f);
  let x_1115 : f32 = x_635.unity_SpecCube0_HDR.w;
  let x_1117 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1115 * x_1117) + 1.0f);
  let x_1122 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1122, 0.0f);
  let x_1126 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1126);
  let x_1130 : f32 = u_xlat0.x;
  let x_1132 : f32 = x_635.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1130 * x_1132);
  let x_1136 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1136);
  let x_1140 : f32 = u_xlat0.x;
  let x_1142 : f32 = x_635.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1140 * x_1142);
  let x_1145 : vec4<f32> = u_xlat8;
  let x_1147 : vec3<f32> = u_xlat0;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1145.x, x_1145.y, x_1145.z) * vec3<f32>(x_1147.x, x_1147.x, x_1147.x));
  let x_1150 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : f32 = u_xlat28;
  let x_1154 : f32 = u_xlat28;
  let x_1158 : vec2<f32> = ((vec2<f32>(x_1152, x_1152) * vec2<f32>(x_1154, x_1154)) + vec2<f32>(-1.0f, 1.0f));
  let x_1159 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1158.x, x_1159.y, x_1158.y);
  let x_1162 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1162);
  let x_1164 : vec4<f32> = u_xlat5;
  let x_1167 : f32 = u_xlat45;
  let x_1169 : vec3<f32> = (-(vec3<f32>(x_1164.x, x_1164.y, x_1164.z)) + vec3<f32>(x_1167, x_1167, x_1167));
  let x_1170 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1172 : f32 = u_xlat46;
  let x_1174 : vec4<f32> = u_xlat9;
  let x_1177 : vec4<f32> = u_xlat5;
  let x_1179 : vec3<f32> = ((vec3<f32>(x_1172, x_1172, x_1172) * vec3<f32>(x_1174.x, x_1174.y, x_1174.z)) + vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
  let x_1180 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : f32 = u_xlat28;
  let x_1184 : vec4<f32> = u_xlat9;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec4<f32> = u_xlat8;
  let x_1191 : vec4<f32> = u_xlat9;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) * vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec4<f32> = u_xlat3;
  let x_1198 : vec4<f32> = u_xlat6;
  let x_1201 : vec4<f32> = u_xlat8;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1207 : f32 = u_xlat4.x;
  let x_1209 : f32 = x_635.unity_LightData.z;
  u_xlat28 = (x_1207 * x_1209);
  let x_1211 : vec4<f32> = u_xlat2;
  let x_1214 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1217, 0.0f, 1.0f);
  let x_1219 : f32 = u_xlat28;
  let x_1220 : f32 = u_xlat45;
  u_xlat28 = (x_1219 * x_1220);
  let x_1222 : f32 = u_xlat28;
  let x_1224 : vec4<f32> = u_xlat7;
  let x_1226 : vec3<f32> = (vec3<f32>(x_1222, x_1222, x_1222) * vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : vec4<f32> = u_xlat1;
  let x_1232 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.y, x_1229.z) + vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat8;
  let x_1239 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1237.x, x_1237.y, x_1237.z), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat28;
  u_xlat28 = max(x_1242, 1.17549435e-37f);
  let x_1245 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1245);
  let x_1247 : f32 = u_xlat28;
  let x_1249 : vec4<f32> = u_xlat8;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat2;
  let x_1256 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1254.x, x_1254.y, x_1254.z), vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1259, 0.0f, 1.0f);
  let x_1262 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1264 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_1262.x, x_1262.y, x_1262.z), vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1267, 0.0f, 1.0f);
  let x_1269 : f32 = u_xlat28;
  let x_1270 : f32 = u_xlat28;
  u_xlat28 = (x_1269 * x_1270);
  let x_1272 : f32 = u_xlat28;
  let x_1274 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1272 * x_1274) + 1.000010014f);
  let x_1278 : f32 = u_xlat45;
  let x_1279 : f32 = u_xlat45;
  u_xlat45 = (x_1278 * x_1279);
  let x_1281 : f32 = u_xlat28;
  let x_1282 : f32 = u_xlat28;
  u_xlat28 = (x_1281 * x_1282);
  let x_1284 : f32 = u_xlat45;
  u_xlat45 = max(x_1284, 0.100000001f);
  let x_1287 : f32 = u_xlat28;
  let x_1288 : f32 = u_xlat45;
  u_xlat28 = (x_1287 * x_1288);
  let x_1290 : f32 = u_xlat18;
  let x_1291 : f32 = u_xlat28;
  u_xlat28 = (x_1290 * x_1291);
  let x_1293 : f32 = u_xlat44;
  let x_1294 : f32 = u_xlat28;
  u_xlat28 = (x_1293 / x_1294);
  let x_1296 : vec4<f32> = u_xlat5;
  let x_1298 : f32 = u_xlat28;
  let x_1301 : vec4<f32> = u_xlat6;
  let x_1303 : vec3<f32> = ((vec3<f32>(x_1296.x, x_1296.y, x_1296.z) * vec3<f32>(x_1298, x_1298, x_1298)) + vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec4<f32> = u_xlat7;
  let x_1308 : vec4<f32> = u_xlat8;
  let x_1310 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
  let x_1314 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1316 : f32 = x_635.unity_LightData.y;
  u_xlat28 = min(x_1314, x_1316);
  let x_1320 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1320));
  let x_1326 : f32 = x_919.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1328 : f32 = x_919.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1330 : f32 = x_919.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1332 : f32 = x_919.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1333 : vec4<f32> = vec4<f32>(x_1326, x_1328, x_1330, x_1332);
  let x_1340 : vec4<bool> = (vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1333.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1341 : vec2<bool> = vec2<bool>(x_1340.x, x_1340.w);
  let x_1342 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_1341.x, x_1342.y, x_1342.z, x_1341.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1353 : u32 = u_xlatu_loop_1;
    let x_1354 : u32 = u_xlatu28;
    if ((x_1353 < x_1354)) {
    } else {
      break;
    }
    let x_1357 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1357 >> 2u);
    let x_1361 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1361 & 3u));
    let x_1364 : u32 = u_xlatu47;
    let x_1367 : vec4<f32> = x_635.unity_LightIndices[bitcast<i32>(x_1364)];
    let x_1377 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1382 : vec4<u32> = indexable[x_1377];
    u_xlat47 = dot(x_1367, bitcast<vec4<f32>>(x_1382));
    let x_1385 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1385));
    let x_1388 : vec3<f32> = vs_TEXCOORD7;
    let x_1400 : u32 = u_xlatu47;
    let x_1403 : vec4<f32> = x_1399.x_AdditionalLightsPosition[bitcast<i32>(x_1400)];
    let x_1406 : u32 = u_xlatu47;
    let x_1409 : vec4<f32> = x_1399.x_AdditionalLightsPosition[bitcast<i32>(x_1406)];
    let x_1411 : vec3<f32> = ((-(x_1388) * vec3<f32>(x_1403.w, x_1403.w, x_1403.w)) + vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
    let x_1412 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1412.w);
    let x_1415 : vec4<f32> = u_xlat9;
    let x_1417 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1415.x, x_1415.y, x_1415.z), vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
    let x_1420 : f32 = u_xlat48;
    u_xlat48 = max(x_1420, 6.10351562e-05f);
    let x_1423 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1423);
    let x_1425 : f32 = u_xlat49;
    let x_1427 : vec4<f32> = u_xlat9;
    let x_1429 : vec3<f32> = (vec3<f32>(x_1425, x_1425, x_1425) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
    let x_1430 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
    let x_1433 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1433);
    let x_1435 : f32 = u_xlat48;
    let x_1436 : u32 = u_xlatu47;
    let x_1439 : f32 = x_1399.x_AdditionalLightsAttenuation[bitcast<i32>(x_1436)].x;
    u_xlat48 = (x_1435 * x_1439);
    let x_1441 : f32 = u_xlat48;
    let x_1443 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1441) * x_1443) + 1.0f);
    let x_1446 : f32 = u_xlat48;
    u_xlat48 = max(x_1446, 0.0f);
    let x_1448 : f32 = u_xlat48;
    let x_1449 : f32 = u_xlat48;
    u_xlat48 = (x_1448 * x_1449);
    let x_1451 : f32 = u_xlat48;
    let x_1452 : f32 = u_xlat50;
    u_xlat48 = (x_1451 * x_1452);
    let x_1454 : u32 = u_xlatu47;
    let x_1457 : vec4<f32> = x_1399.x_AdditionalLightsSpotDir[bitcast<i32>(x_1454)];
    let x_1459 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1457.x, x_1457.y, x_1457.z), vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
    let x_1462 : f32 = u_xlat50;
    let x_1463 : u32 = u_xlatu47;
    let x_1466 : f32 = x_1399.x_AdditionalLightsAttenuation[bitcast<i32>(x_1463)].z;
    let x_1468 : u32 = u_xlatu47;
    let x_1471 : f32 = x_1399.x_AdditionalLightsAttenuation[bitcast<i32>(x_1468)].w;
    u_xlat50 = ((x_1462 * x_1466) + x_1471);
    let x_1473 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1473, 0.0f, 1.0f);
    let x_1475 : f32 = u_xlat50;
    let x_1476 : f32 = u_xlat50;
    u_xlat50 = (x_1475 * x_1476);
    let x_1478 : f32 = u_xlat48;
    let x_1479 : f32 = u_xlat50;
    u_xlat48 = (x_1478 * x_1479);
    let x_1482 : u32 = u_xlatu47;
    u_xlatu50 = (x_1482 >> 5u);
    let x_1485 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1485) & 31i)));
    let x_1490 : i32 = u_xlati51;
    let x_1492 : u32 = u_xlatu50;
    let x_1495 : f32 = x_919.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1492)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1490) & bitcast<u32>(x_1495)));
    let x_1499 : i32 = u_xlati50;
    if ((x_1499 != 0i)) {
      let x_1509 : u32 = u_xlatu47;
      let x_1512 : f32 = x_1508.x_AdditionalLightsLightTypes[bitcast<i32>(x_1509)].el;
      u_xlati50 = i32(x_1512);
      let x_1514 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1514 != 0i));
      let x_1518 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1518) << bitcast<u32>(2i));
      let x_1521 : i32 = u_xlati51;
      if ((x_1521 != 0i)) {
        let x_1525 : vec3<f32> = vs_TEXCOORD7;
        let x_1527 : i32 = u_xlati52;
        let x_1530 : i32 = u_xlati52;
        let x_1534 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1527 + 1i) / 4i)][((x_1530 + 1i) % 4i)];
        let x_1536 : vec3<f32> = (vec3<f32>(x_1525.y, x_1525.y, x_1525.y) * vec3<f32>(x_1534.x, x_1534.y, x_1534.w));
        let x_1537 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
        let x_1539 : i32 = u_xlati52;
        let x_1541 : i32 = u_xlati52;
        let x_1544 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[(x_1539 / 4i)][(x_1541 % 4i)];
        let x_1546 : vec3<f32> = vs_TEXCOORD7;
        let x_1549 : vec4<f32> = u_xlat11;
        let x_1551 : vec3<f32> = ((vec3<f32>(x_1544.x, x_1544.y, x_1544.w) * vec3<f32>(x_1546.x, x_1546.x, x_1546.x)) + vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
        let x_1552 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
        let x_1554 : i32 = u_xlati52;
        let x_1557 : i32 = u_xlati52;
        let x_1561 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1554 + 2i) / 4i)][((x_1557 + 2i) % 4i)];
        let x_1563 : vec3<f32> = vs_TEXCOORD7;
        let x_1566 : vec4<f32> = u_xlat11;
        let x_1568 : vec3<f32> = ((vec3<f32>(x_1561.x, x_1561.y, x_1561.w) * vec3<f32>(x_1563.z, x_1563.z, x_1563.z)) + vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
        let x_1569 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
        let x_1571 : vec4<f32> = u_xlat11;
        let x_1573 : i32 = u_xlati52;
        let x_1576 : i32 = u_xlati52;
        let x_1580 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1573 + 3i) / 4i)][((x_1576 + 3i) % 4i)];
        let x_1582 : vec3<f32> = (vec3<f32>(x_1571.x, x_1571.y, x_1571.z) + vec3<f32>(x_1580.x, x_1580.y, x_1580.w));
        let x_1583 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
        let x_1585 : vec4<f32> = u_xlat11;
        let x_1587 : vec4<f32> = u_xlat11;
        let x_1589 : vec2<f32> = (vec2<f32>(x_1585.x, x_1585.y) / vec2<f32>(x_1587.z, x_1587.z));
        let x_1590 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
        let x_1592 : vec4<f32> = u_xlat11;
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1592.x, x_1592.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
        let x_1598 : vec4<f32> = u_xlat11;
        let x_1602 : vec2<f32> = clamp(vec2<f32>(x_1598.x, x_1598.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1603 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1602.x, x_1602.y, x_1603.z, x_1603.w);
        let x_1605 : u32 = u_xlatu47;
        let x_1608 : vec4<f32> = x_1508.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1605)];
        let x_1610 : vec4<f32> = u_xlat11;
        let x_1613 : u32 = u_xlatu47;
        let x_1616 : vec4<f32> = x_1508.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1613)];
        let x_1618 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(x_1610.x, x_1610.y)) + vec2<f32>(x_1616.z, x_1616.w));
        let x_1619 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1618.x, x_1618.y, x_1619.z, x_1619.w);
      } else {
        let x_1623 : i32 = u_xlati50;
        u_xlatb50 = (x_1623 == 1i);
        let x_1625 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1625);
        let x_1627 : i32 = u_xlati50;
        if ((x_1627 != 0i)) {
          let x_1633 : vec3<f32> = vs_TEXCOORD7;
          let x_1635 : i32 = u_xlati52;
          let x_1638 : i32 = u_xlati52;
          let x_1642 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1635 + 1i) / 4i)][((x_1638 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(x_1642.x, x_1642.y));
          let x_1645 : i32 = u_xlati52;
          let x_1647 : i32 = u_xlati52;
          let x_1650 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[(x_1645 / 4i)][(x_1647 % 4i)];
          let x_1652 : vec3<f32> = vs_TEXCOORD7;
          let x_1655 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1650.x, x_1650.y) * vec2<f32>(x_1652.x, x_1652.x)) + x_1655);
          let x_1657 : i32 = u_xlati52;
          let x_1660 : i32 = u_xlati52;
          let x_1664 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1657 + 2i) / 4i)][((x_1660 + 2i) % 4i)];
          let x_1666 : vec3<f32> = vs_TEXCOORD7;
          let x_1669 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1666.z, x_1666.z)) + x_1669);
          let x_1671 : vec2<f32> = u_xlat39;
          let x_1672 : i32 = u_xlati52;
          let x_1675 : i32 = u_xlati52;
          let x_1679 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1672 + 3i) / 4i)][((x_1675 + 3i) % 4i)];
          u_xlat39 = (x_1671 + vec2<f32>(x_1679.x, x_1679.y));
          let x_1682 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1682 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1685 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1685);
          let x_1687 : u32 = u_xlatu47;
          let x_1690 : vec4<f32> = x_1508.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1687)];
          let x_1692 : vec2<f32> = u_xlat39;
          let x_1694 : u32 = u_xlatu47;
          let x_1697 : vec4<f32> = x_1508.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1694)];
          let x_1699 : vec2<f32> = ((vec2<f32>(x_1690.x, x_1690.y) * x_1692) + vec2<f32>(x_1697.z, x_1697.w));
          let x_1700 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
        } else {
          let x_1703 : vec3<f32> = vs_TEXCOORD7;
          let x_1705 : i32 = u_xlati52;
          let x_1708 : i32 = u_xlati52;
          let x_1712 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1705 + 1i) / 4i)][((x_1708 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1703.y, x_1703.y, x_1703.y, x_1703.y) * x_1712);
          let x_1714 : i32 = u_xlati52;
          let x_1716 : i32 = u_xlati52;
          let x_1719 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[(x_1714 / 4i)][(x_1716 % 4i)];
          let x_1720 : vec3<f32> = vs_TEXCOORD7;
          let x_1723 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1719 * vec4<f32>(x_1720.x, x_1720.x, x_1720.x, x_1720.x)) + x_1723);
          let x_1725 : i32 = u_xlati52;
          let x_1728 : i32 = u_xlati52;
          let x_1732 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1725 + 2i) / 4i)][((x_1728 + 2i) % 4i)];
          let x_1733 : vec3<f32> = vs_TEXCOORD7;
          let x_1736 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1732 * vec4<f32>(x_1733.z, x_1733.z, x_1733.z, x_1733.z)) + x_1736);
          let x_1738 : vec4<f32> = u_xlat12;
          let x_1739 : i32 = u_xlati52;
          let x_1742 : i32 = u_xlati52;
          let x_1746 : vec4<f32> = x_1508.x_AdditionalLightsWorldToLights[((x_1739 + 3i) / 4i)][((x_1742 + 3i) % 4i)];
          u_xlat12 = (x_1738 + x_1746);
          let x_1748 : vec4<f32> = u_xlat12;
          let x_1750 : vec4<f32> = u_xlat12;
          let x_1752 : vec3<f32> = (vec3<f32>(x_1748.x, x_1748.y, x_1748.z) / vec3<f32>(x_1750.w, x_1750.w, x_1750.w));
          let x_1753 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
          let x_1755 : vec4<f32> = u_xlat12;
          let x_1757 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1755.x, x_1755.y, x_1755.z), vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
          let x_1760 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1760);
          let x_1762 : f32 = u_xlat50;
          let x_1764 : vec4<f32> = u_xlat12;
          let x_1766 : vec3<f32> = (vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
          let x_1767 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
          let x_1769 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1769.x, x_1769.y, x_1769.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1774 : f32 = u_xlat50;
          u_xlat50 = max(x_1774, 0.000001f);
          let x_1777 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1777);
          let x_1779 : f32 = u_xlat50;
          let x_1781 : vec4<f32> = u_xlat12;
          let x_1783 : vec3<f32> = (vec3<f32>(x_1779, x_1779, x_1779) * vec3<f32>(x_1781.z, x_1781.x, x_1781.y));
          let x_1784 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
          let x_1787 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1787);
          let x_1791 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1791, 0.0f, 1.0f);
          let x_1795 : vec4<f32> = u_xlat13;
          let x_1798 : vec4<bool> = (vec4<f32>(x_1795.y, x_1795.z, x_1795.y, x_1795.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1798.x, x_1798.y);
          let x_1801 : bool = u_xlatb39.x;
          if (x_1801) {
            let x_1806 : f32 = u_xlat13.x;
            x_1802 = x_1806;
          } else {
            let x_1809 : f32 = u_xlat13.x;
            x_1802 = -(x_1809);
          }
          let x_1811 : f32 = x_1802;
          u_xlat39.x = x_1811;
          let x_1814 : bool = u_xlatb39.y;
          if (x_1814) {
            let x_1819 : f32 = u_xlat13.x;
            x_1815 = x_1819;
          } else {
            let x_1822 : f32 = u_xlat13.x;
            x_1815 = -(x_1822);
          }
          let x_1824 : f32 = x_1815;
          u_xlat39.y = x_1824;
          let x_1826 : vec4<f32> = u_xlat12;
          let x_1828 : f32 = u_xlat50;
          let x_1831 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1828, x_1828)) + x_1831);
          let x_1833 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1833 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1836 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1836, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1840 : u32 = u_xlatu47;
          let x_1843 : vec4<f32> = x_1508.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1840)];
          let x_1845 : vec2<f32> = u_xlat39;
          let x_1847 : u32 = u_xlatu47;
          let x_1850 : vec4<f32> = x_1508.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1847)];
          let x_1852 : vec2<f32> = ((vec2<f32>(x_1843.x, x_1843.y) * x_1845) + vec2<f32>(x_1850.z, x_1850.w));
          let x_1853 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1852.x, x_1852.y, x_1853.z, x_1853.w);
        }
      }
      let x_1860 : vec4<f32> = u_xlat11;
      let x_1863 : f32 = x_128.x_GlobalMipBias.x;
      let x_1864 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1860.x, x_1860.y), x_1863);
      u_xlat11 = x_1864;
      let x_1866 : bool = u_xlatb4.w;
      if (x_1866) {
        let x_1871 : f32 = u_xlat11.w;
        x_1867 = x_1871;
      } else {
        let x_1874 : f32 = u_xlat11.x;
        x_1867 = x_1874;
      }
      let x_1875 : f32 = x_1867;
      u_xlat50 = x_1875;
      let x_1877 : bool = u_xlatb4.x;
      if (x_1877) {
        let x_1881 : vec4<f32> = u_xlat11;
        x_1878 = vec3<f32>(x_1881.x, x_1881.y, x_1881.z);
      } else {
        let x_1884 : f32 = u_xlat50;
        x_1878 = vec3<f32>(x_1884, x_1884, x_1884);
      }
      let x_1886 : vec3<f32> = x_1878;
      let x_1887 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1893 : vec4<f32> = u_xlat11;
    let x_1895 : u32 = u_xlatu47;
    let x_1898 : vec4<f32> = x_1399.x_AdditionalLightsColor[bitcast<i32>(x_1895)];
    let x_1900 : vec3<f32> = (vec3<f32>(x_1893.x, x_1893.y, x_1893.z) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
    let x_1901 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
    let x_1903 : f32 = u_xlat32;
    let x_1905 : vec4<f32> = u_xlat11;
    let x_1907 : vec3<f32> = (vec3<f32>(x_1903, x_1903, x_1903) * vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
    let x_1908 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
    let x_1910 : vec4<f32> = u_xlat2;
    let x_1912 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1910.x, x_1910.y, x_1910.z), vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
    let x_1915 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1915, 0.0f, 1.0f);
    let x_1917 : f32 = u_xlat47;
    let x_1918 : f32 = u_xlat48;
    u_xlat47 = (x_1917 * x_1918);
    let x_1920 : f32 = u_xlat47;
    let x_1922 : vec4<f32> = u_xlat11;
    let x_1924 : vec3<f32> = (vec3<f32>(x_1920, x_1920, x_1920) * vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
    let x_1927 : vec4<f32> = u_xlat9;
    let x_1929 : f32 = u_xlat49;
    let x_1932 : vec4<f32> = u_xlat1;
    let x_1934 : vec3<f32> = ((vec3<f32>(x_1927.x, x_1927.y, x_1927.z) * vec3<f32>(x_1929, x_1929, x_1929)) + vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
    let x_1935 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
    let x_1937 : vec4<f32> = u_xlat9;
    let x_1939 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.z), vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
    let x_1942 : f32 = u_xlat47;
    u_xlat47 = max(x_1942, 1.17549435e-37f);
    let x_1944 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1944);
    let x_1946 : f32 = u_xlat47;
    let x_1948 : vec4<f32> = u_xlat9;
    let x_1950 : vec3<f32> = (vec3<f32>(x_1946, x_1946, x_1946) * vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
    let x_1951 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
    let x_1953 : vec4<f32> = u_xlat2;
    let x_1955 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
    let x_1958 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1958, 0.0f, 1.0f);
    let x_1960 : vec4<f32> = u_xlat10;
    let x_1962 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1960.x, x_1960.y, x_1960.z), vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1965, 0.0f, 1.0f);
    let x_1967 : f32 = u_xlat47;
    let x_1968 : f32 = u_xlat47;
    u_xlat47 = (x_1967 * x_1968);
    let x_1970 : f32 = u_xlat47;
    let x_1972 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1970 * x_1972) + 1.000010014f);
    let x_1975 : f32 = u_xlat48;
    let x_1976 : f32 = u_xlat48;
    u_xlat48 = (x_1975 * x_1976);
    let x_1978 : f32 = u_xlat47;
    let x_1979 : f32 = u_xlat47;
    u_xlat47 = (x_1978 * x_1979);
    let x_1981 : f32 = u_xlat48;
    u_xlat48 = max(x_1981, 0.100000001f);
    let x_1983 : f32 = u_xlat47;
    let x_1984 : f32 = u_xlat48;
    u_xlat47 = (x_1983 * x_1984);
    let x_1986 : f32 = u_xlat18;
    let x_1987 : f32 = u_xlat47;
    u_xlat47 = (x_1986 * x_1987);
    let x_1989 : f32 = u_xlat44;
    let x_1990 : f32 = u_xlat47;
    u_xlat47 = (x_1989 / x_1990);
    let x_1992 : vec4<f32> = u_xlat5;
    let x_1994 : f32 = u_xlat47;
    let x_1997 : vec4<f32> = u_xlat6;
    let x_1999 : vec3<f32> = ((vec3<f32>(x_1992.x, x_1992.y, x_1992.z) * vec3<f32>(x_1994, x_1994, x_1994)) + vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2000 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
    let x_2002 : vec4<f32> = u_xlat9;
    let x_2004 : vec4<f32> = u_xlat11;
    let x_2007 : vec4<f32> = u_xlat8;
    let x_2009 : vec3<f32> = ((vec3<f32>(x_2002.x, x_2002.y, x_2002.z) * vec3<f32>(x_2004.x, x_2004.y, x_2004.z)) + vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
    let x_2010 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);

    continuing {
      let x_2012 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2012 + bitcast<u32>(1i));
    }
  }
  let x_2014 : vec4<f32> = u_xlat3;
  let x_2016 : f32 = u_xlat14;
  let x_2019 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2014.x, x_2014.y, x_2014.z) * vec3<f32>(x_2016, x_2016, x_2016)) + vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
  let x_2022 : vec4<f32> = u_xlat8;
  let x_2024 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2022.x, x_2022.y, x_2022.z) + x_2024);
  let x_2026 : f32 = u_xlat42;
  let x_2028 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2026, x_2026, x_2026) * x_2028);
  let x_2030 : f32 = u_xlat43;
  let x_2031 : f32 = u_xlat43;
  u_xlat42 = (x_2030 * -(x_2031));
  let x_2034 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2034);
  let x_2038 : vec3<f32> = u_xlat0;
  let x_2039 : f32 = u_xlat42;
  let x_2041 : vec3<f32> = (x_2038 * vec3<f32>(x_2039, x_2039, x_2039));
  let x_2042 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
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

