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

@group(1) @binding(5) var<uniform> x_2542 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_3069 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3175 : AdditionalLightsCookies;

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
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb64 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat23 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb67 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat67 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb23 : vec2<bool>;
  var u_xlatb44 : bool;
  var x_2490 : f32;
  var u_xlat44 : f32;
  var x_2624 : f32;
  var x_2635 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu69 : u32;
  var u_xlati49 : i32;
  var u_xlati69 : i32;
  var u_xlati70 : i32;
  var u_xlatb69 : bool;
  var u_xlat54 : vec2<f32>;
  var u_xlatb49 : vec2<bool>;
  var x_3468 : f32;
  var x_3481 : f32;
  var x_3533 : f32;
  var x_3544 : vec3<f32>;
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
  u_xlat63 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_220);
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
  let x_282 : bool = u_xlatb64;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_293 : f32 = u_xlat64;
  u_xlatb65 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb65;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat64;
  u_xlat64 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
  let x_412 : f32 = u_xlat64;
  u_xlat64 = min(x_412, 1.0f);
  let x_414 : f32 = u_xlat64;
  u_xlat64 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_417);
  let x_419 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_460 : f32 = u_xlat64;
  u_xlat64 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat64;
  u_xlat64 = (-(x_462) + 1.0f);
  let x_465 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_465);
  let x_467 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_524.x, x_524.y), vec2<f32>(x_526.x, x_526.y));
  let x_529 : f32 = u_xlat64;
  u_xlat64 = min(x_529, 1.0f);
  let x_531 : f32 = u_xlat64;
  u_xlat64 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_534);
  let x_536 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat64;
  u_xlat64 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat64;
  u_xlat64 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat64;
  u_xlat64 = sqrt(x_597);
  let x_599 : f32 = u_xlat64;
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
  u_xlat64 = dot(vec3<f32>(x_631.x, x_631.y, x_631.w), vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat64;
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
  u_xlat42 = dot(x_716, x_717);
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
  u_xlat21 = dot(x_799, x_800);
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
  u_xlat64 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat64;
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
  u_xlat23 = (vec3<f32>(x_979.y, x_979.y, x_979.y) * vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : i32 = u_xlati2;
  let x_993 : i32 = u_xlati2;
  let x_996 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_991 / 4i)][(x_993 % 4i)];
  let x_998 : vec3<f32> = vs_TEXCOORD7;
  let x_1001 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_998.x, x_998.x, x_998.x)) + x_1001);
  let x_1003 : i32 = u_xlati2;
  let x_1006 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + x_1015);
  let x_1017 : vec3<f32> = u_xlat23;
  let x_1018 : i32 = u_xlati2;
  let x_1021 : i32 = u_xlati2;
  let x_1025 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1018 + 3i) / 4i)][((x_1021 + 3i) % 4i)];
  let x_1027 : vec3<f32> = (x_1017 + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1032 : f32 = vs_TEXCOORD7.y;
  let x_1034 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat65 = (x_1032 * x_1034);
  let x_1037 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1039 : f32 = vs_TEXCOORD7.x;
  let x_1041 : f32 = u_xlat65;
  u_xlat65 = ((x_1037 * x_1039) + x_1041);
  let x_1044 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1046 : f32 = vs_TEXCOORD7.z;
  let x_1048 : f32 = u_xlat65;
  u_xlat65 = ((x_1044 * x_1046) + x_1048);
  let x_1050 : f32 = u_xlat65;
  let x_1052 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat65 = (x_1050 + x_1052);
  let x_1054 : f32 = u_xlat65;
  let x_1057 : f32 = x_128.x_ProjectionParams.y;
  u_xlat65 = (-(x_1054) + -(x_1057));
  let x_1060 : f32 = u_xlat65;
  u_xlat65 = max(x_1060, 0.0f);
  let x_1062 : f32 = u_xlat65;
  let x_1064 : f32 = x_128.unity_FogParams.x;
  u_xlat65 = (x_1062 * x_1064);
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
  u_xlat64 = (x_1107 * x_1109);
  let x_1112 : f32 = u_xlat1.x;
  let x_1114 : f32 = u_xlat1.x;
  let x_1116 : f32 = u_xlat64;
  u_xlat64 = ((x_1112 * x_1114) + -(x_1116));
  let x_1121 : vec4<f32> = x_1070.unity_SHC;
  let x_1123 : f32 = u_xlat64;
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
  u_xlat64 = ((x_1161 * x_1163) + x_1166);
  let x_1168 : f32 = u_xlat64;
  u_xlat4.z = (-(x_1168) + 1.0f);
  let x_1173 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_1173) * 0.959999979f) + 0.959999979f);
  let x_1179 : f32 = u_xlat64;
  u_xlat66 = (-(x_1179) + 1.0f);
  let x_1182 : f32 = u_xlat64;
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
  let x_1206 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat0.x;
  let x_1213 : f32 = u_xlat0.x;
  u_xlat64 = (x_1211 * x_1213);
  let x_1215 : f32 = u_xlat64;
  u_xlat64 = max(x_1215, 0.0078125f);
  let x_1219 : f32 = u_xlat64;
  let x_1220 : f32 = u_xlat64;
  u_xlat25 = (x_1219 * x_1220);
  let x_1222 : f32 = u_xlat42;
  let x_1223 : f32 = u_xlat66;
  u_xlat42 = (x_1222 + x_1223);
  let x_1225 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1225, 0.0f, 1.0f);
  let x_1227 : f32 = u_xlat64;
  u_xlat66 = ((x_1227 * 4.0f) + 2.0f);
  let x_1235 : vec4<f32> = u_xlat4;
  let x_1238 : f32 = x_128.x_GlobalMipBias.x;
  let x_1239 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1235.x, x_1235.z), x_1238);
  u_xlat4.x = x_1239.x;
  let x_1244 : f32 = u_xlat4.x;
  u_xlat46 = (x_1244 + -1.0f);
  let x_1247 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1248 : f32 = u_xlat46;
  u_xlat46 = ((x_1247 * x_1248) + 1.0f);
  let x_1251 : f32 = u_xlat21;
  let x_1253 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1251, x_1253);
  let x_1257 : f32 = x_854.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_1257);
  let x_1259 : bool = u_xlatb4;
  if (x_1259) {
    let x_1263 : f32 = x_854.x_MainLightShadowParams.y;
    u_xlatb4 = (x_1263 == 1.0f);
    let x_1265 : bool = u_xlatb4;
    if (x_1265) {
      let x_1268 : vec4<f32> = u_xlat2;
      let x_1271 : vec4<f32> = x_854.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) + x_1271);
      let x_1274 : vec4<f32> = u_xlat7;
      let x_1275 : vec2<f32> = vec2<f32>(x_1274.x, x_1274.y);
      let x_1277 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
      let x_1289 : vec3<f32> = txVec0;
      let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1289.xy, x_1289.z);
      u_xlat8.x = x_1291;
      let x_1294 : vec4<f32> = u_xlat7;
      let x_1295 : vec2<f32> = vec2<f32>(x_1294.z, x_1294.w);
      let x_1297 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
      let x_1304 : vec3<f32> = txVec1;
      let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1304.xy, x_1304.z);
      u_xlat8.y = x_1306;
      let x_1308 : vec4<f32> = u_xlat2;
      let x_1311 : vec4<f32> = x_854.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) + x_1311);
      let x_1314 : vec4<f32> = u_xlat7;
      let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
      let x_1317 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
      let x_1324 : vec3<f32> = txVec2;
      let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
      u_xlat8.z = x_1326;
      let x_1329 : vec4<f32> = u_xlat7;
      let x_1330 : vec2<f32> = vec2<f32>(x_1329.z, x_1329.w);
      let x_1332 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
      let x_1339 : vec3<f32> = txVec3;
      let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1339.xy, x_1339.z);
      u_xlat8.w = x_1341;
      let x_1343 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1343, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1351 : f32 = x_854.x_MainLightShadowParams.y;
      u_xlatb67 = (x_1351 == 2.0f);
      let x_1353 : bool = u_xlatb67;
      if (x_1353) {
        let x_1356 : vec4<f32> = u_xlat2;
        let x_1359 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1362 : vec2<f32> = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1359.z, x_1359.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1363 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
        let x_1365 : vec4<f32> = u_xlat7;
        let x_1367 : vec2<f32> = floor(vec2<f32>(x_1365.x, x_1365.y));
        let x_1368 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1372 : vec4<f32> = u_xlat2;
        let x_1375 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1375.z, x_1375.w)) + -(vec2<f32>(x_1378.x, x_1378.y)));
        let x_1382 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1382.x, x_1382.x, x_1382.y, x_1382.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1386 : vec4<f32> = u_xlat8;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1386.x, x_1386.x, x_1386.z, x_1386.z) * vec4<f32>(x_1388.x, x_1388.x, x_1388.z, x_1388.z));
        let x_1391 : vec4<f32> = u_xlat9;
        let x_1395 : vec2<f32> = (vec2<f32>(x_1391.y, x_1391.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1395.x, x_1396.y, x_1395.y, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1401 : vec2<f32> = u_xlat49;
        let x_1403 : vec2<f32> = ((vec2<f32>(x_1398.x, x_1398.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1401));
        let x_1404 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1403.x, x_1403.y, x_1404.z, x_1404.w);
        let x_1407 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_1407) + vec2<f32>(1.0f, 1.0f));
        let x_1410 : vec2<f32> = u_xlat49;
        let x_1412 : vec2<f32> = min(x_1410, vec2<f32>(0.0f, 0.0f));
        let x_1413 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
        let x_1415 : vec4<f32> = u_xlat10;
        let x_1418 : vec4<f32> = u_xlat10;
        let x_1421 : vec2<f32> = u_xlat51;
        let x_1422 : vec2<f32> = ((-(vec2<f32>(x_1415.x, x_1415.y)) * vec2<f32>(x_1418.x, x_1418.y)) + x_1421);
        let x_1423 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1422.x, x_1422.y, x_1423.z, x_1423.w);
        let x_1425 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_1425, vec2<f32>(0.0f, 0.0f));
        let x_1427 : vec2<f32> = u_xlat49;
        let x_1429 : vec2<f32> = u_xlat49;
        let x_1431 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_1427) * x_1429) + vec2<f32>(x_1431.y, x_1431.w));
        let x_1434 : vec4<f32> = u_xlat10;
        let x_1436 : vec2<f32> = (vec2<f32>(x_1434.x, x_1434.y) + vec2<f32>(1.0f, 1.0f));
        let x_1437 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1436.x, x_1436.y, x_1437.z, x_1437.w);
        let x_1439 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1439 + vec2<f32>(1.0f, 1.0f));
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1446 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        let x_1448 : vec2<f32> = u_xlat51;
        let x_1449 : vec2<f32> = (x_1448 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1450 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1449.x, x_1449.y, x_1450.z, x_1450.w);
        let x_1452 : vec4<f32> = u_xlat10;
        let x_1454 : vec2<f32> = (vec2<f32>(x_1452.x, x_1452.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1455 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1454.x, x_1454.y, x_1455.z, x_1455.w);
        let x_1457 : vec2<f32> = u_xlat49;
        let x_1458 : vec2<f32> = (x_1457 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1459 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
        let x_1461 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1461.y, x_1461.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1465 : f32 = u_xlat10.x;
        u_xlat11.z = x_1465;
        let x_1468 : f32 = u_xlat49.x;
        u_xlat11.w = x_1468;
        let x_1471 : f32 = u_xlat12.x;
        u_xlat9.z = x_1471;
        let x_1474 : f32 = u_xlat8.x;
        u_xlat9.w = x_1474;
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1478 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1476.z, x_1476.w, x_1476.x, x_1476.z) + vec4<f32>(x_1478.z, x_1478.w, x_1478.x, x_1478.z));
        let x_1482 : f32 = u_xlat11.y;
        u_xlat10.z = x_1482;
        let x_1485 : f32 = u_xlat49.y;
        u_xlat10.w = x_1485;
        let x_1488 : f32 = u_xlat9.y;
        u_xlat12.z = x_1488;
        let x_1491 : f32 = u_xlat8.z;
        u_xlat12.w = x_1491;
        let x_1493 : vec4<f32> = u_xlat10;
        let x_1495 : vec4<f32> = u_xlat12;
        let x_1497 : vec3<f32> = (vec3<f32>(x_1493.z, x_1493.y, x_1493.w) + vec3<f32>(x_1495.z, x_1495.y, x_1495.w));
        let x_1498 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1497.x, x_1497.y, x_1497.z, x_1498.w);
        let x_1500 : vec4<f32> = u_xlat9;
        let x_1502 : vec4<f32> = u_xlat13;
        let x_1504 : vec3<f32> = (vec3<f32>(x_1500.x, x_1500.z, x_1500.w) / vec3<f32>(x_1502.z, x_1502.w, x_1502.y));
        let x_1505 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
        let x_1507 : vec4<f32> = u_xlat9;
        let x_1513 : vec3<f32> = (vec3<f32>(x_1507.x, x_1507.y, x_1507.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1514 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
        let x_1516 : vec4<f32> = u_xlat12;
        let x_1518 : vec4<f32> = u_xlat8;
        let x_1520 : vec3<f32> = (vec3<f32>(x_1516.z, x_1516.y, x_1516.w) / vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
        let x_1521 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat10;
        let x_1525 : vec3<f32> = (vec3<f32>(x_1523.x, x_1523.y, x_1523.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1526 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
        let x_1528 : vec4<f32> = u_xlat9;
        let x_1531 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1533 : vec3<f32> = (vec3<f32>(x_1528.y, x_1528.x, x_1528.z) * vec3<f32>(x_1531.x, x_1531.x, x_1531.x));
        let x_1534 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1534.w);
        let x_1536 : vec4<f32> = u_xlat10;
        let x_1539 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1541 : vec3<f32> = (vec3<f32>(x_1536.x, x_1536.y, x_1536.z) * vec3<f32>(x_1539.y, x_1539.y, x_1539.y));
        let x_1542 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
        let x_1545 : f32 = u_xlat10.x;
        u_xlat9.w = x_1545;
        let x_1547 : vec4<f32> = u_xlat7;
        let x_1550 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1553 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1547.x, x_1547.y, x_1547.x, x_1547.y) * vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y)) + vec4<f32>(x_1553.y, x_1553.w, x_1553.x, x_1553.w));
        let x_1556 : vec4<f32> = u_xlat7;
        let x_1559 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.z, x_1562.w));
        let x_1566 : f32 = u_xlat9.y;
        u_xlat10.w = x_1566;
        let x_1568 : vec4<f32> = u_xlat10;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.y, x_1568.z);
        let x_1570 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1570.x, x_1569.x, x_1570.z, x_1569.y);
        let x_1572 : vec4<f32> = u_xlat7;
        let x_1575 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1578 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1572.x, x_1572.y, x_1572.x, x_1572.y) * vec4<f32>(x_1575.x, x_1575.y, x_1575.x, x_1575.y)) + vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1578.y));
        let x_1581 : vec4<f32> = u_xlat7;
        let x_1584 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y) * vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.y)) + vec4<f32>(x_1587.w, x_1587.y, x_1587.w, x_1587.z));
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1593 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1596 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1590.x, x_1590.y, x_1590.x, x_1590.y) * vec4<f32>(x_1593.x, x_1593.y, x_1593.x, x_1593.y)) + vec4<f32>(x_1596.x, x_1596.w, x_1596.z, x_1596.w));
        let x_1600 : vec4<f32> = u_xlat8;
        let x_1602 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1600.x, x_1600.x, x_1600.x, x_1600.y) * vec4<f32>(x_1602.z, x_1602.w, x_1602.y, x_1602.z));
        let x_1606 : vec4<f32> = u_xlat8;
        let x_1608 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1606.y, x_1606.y, x_1606.z, x_1606.z) * x_1608);
        let x_1612 : f32 = u_xlat8.z;
        let x_1614 : f32 = u_xlat13.y;
        u_xlat67 = (x_1612 * x_1614);
        let x_1617 : vec4<f32> = u_xlat11;
        let x_1618 : vec2<f32> = vec2<f32>(x_1617.x, x_1617.y);
        let x_1620 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1628 : vec3<f32> = txVec4;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1628.xy, x_1628.z);
        u_xlat68 = x_1630;
        let x_1632 : vec4<f32> = u_xlat11;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.z, x_1632.w);
        let x_1635 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1643 : vec3<f32> = txVec5;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat69 = x_1645;
        let x_1646 : f32 = u_xlat69;
        let x_1648 : f32 = u_xlat14.y;
        u_xlat69 = (x_1646 * x_1648);
        let x_1651 : f32 = u_xlat14.x;
        let x_1652 : f32 = u_xlat68;
        let x_1654 : f32 = u_xlat69;
        u_xlat68 = ((x_1651 * x_1652) + x_1654);
        let x_1657 : vec2<f32> = u_xlat49;
        let x_1659 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec6;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1666.xy, x_1666.z);
        u_xlat69 = x_1668;
        let x_1670 : f32 = u_xlat14.z;
        let x_1671 : f32 = u_xlat69;
        let x_1673 : f32 = u_xlat68;
        u_xlat68 = ((x_1670 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat10;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec7;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat69 = x_1688;
        let x_1690 : f32 = u_xlat14.w;
        let x_1691 : f32 = u_xlat69;
        let x_1693 : f32 = u_xlat68;
        u_xlat68 = ((x_1690 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat12;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec8;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1706.xy, x_1706.z);
        u_xlat69 = x_1708;
        let x_1710 : f32 = u_xlat15.x;
        let x_1711 : f32 = u_xlat69;
        let x_1713 : f32 = u_xlat68;
        u_xlat68 = ((x_1710 * x_1711) + x_1713);
        let x_1716 : vec4<f32> = u_xlat12;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.z, x_1716.w);
        let x_1719 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec9;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat69 = x_1728;
        let x_1730 : f32 = u_xlat15.y;
        let x_1731 : f32 = u_xlat69;
        let x_1733 : f32 = u_xlat68;
        u_xlat68 = ((x_1730 * x_1731) + x_1733);
        let x_1736 : vec4<f32> = u_xlat10;
        let x_1737 : vec2<f32> = vec2<f32>(x_1736.z, x_1736.w);
        let x_1739 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
        let x_1746 : vec3<f32> = txVec10;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1746.xy, x_1746.z);
        u_xlat69 = x_1748;
        let x_1750 : f32 = u_xlat15.z;
        let x_1751 : f32 = u_xlat69;
        let x_1753 : f32 = u_xlat68;
        u_xlat68 = ((x_1750 * x_1751) + x_1753);
        let x_1756 : vec4<f32> = u_xlat9;
        let x_1757 : vec2<f32> = vec2<f32>(x_1756.x, x_1756.y);
        let x_1759 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec11;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1766.xy, x_1766.z);
        u_xlat69 = x_1768;
        let x_1770 : f32 = u_xlat15.w;
        let x_1771 : f32 = u_xlat69;
        let x_1773 : f32 = u_xlat68;
        u_xlat68 = ((x_1770 * x_1771) + x_1773);
        let x_1776 : vec4<f32> = u_xlat9;
        let x_1777 : vec2<f32> = vec2<f32>(x_1776.z, x_1776.w);
        let x_1779 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec12;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1786.xy, x_1786.z);
        u_xlat69 = x_1788;
        let x_1789 : f32 = u_xlat67;
        let x_1790 : f32 = u_xlat69;
        let x_1792 : f32 = u_xlat68;
        u_xlat4.x = ((x_1789 * x_1790) + x_1792);
      } else {
        let x_1796 : vec4<f32> = u_xlat2;
        let x_1799 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1802 : vec2<f32> = ((vec2<f32>(x_1796.x, x_1796.y) * vec2<f32>(x_1799.z, x_1799.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1803 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
        let x_1805 : vec4<f32> = u_xlat7;
        let x_1807 : vec2<f32> = floor(vec2<f32>(x_1805.x, x_1805.y));
        let x_1808 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
        let x_1810 : vec4<f32> = u_xlat2;
        let x_1813 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1816 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(x_1813.z, x_1813.w)) + -(vec2<f32>(x_1816.x, x_1816.y)));
        let x_1820 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1820.x, x_1820.x, x_1820.y, x_1820.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1823 : vec4<f32> = u_xlat8;
        let x_1825 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1823.x, x_1823.x, x_1823.z, x_1823.z) * vec4<f32>(x_1825.x, x_1825.x, x_1825.z, x_1825.z));
        let x_1828 : vec4<f32> = u_xlat9;
        let x_1832 : vec2<f32> = (vec2<f32>(x_1828.y, x_1828.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1833 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1833.x, x_1832.x, x_1833.z, x_1832.y);
        let x_1835 : vec4<f32> = u_xlat9;
        let x_1838 : vec2<f32> = u_xlat49;
        let x_1840 : vec2<f32> = ((vec2<f32>(x_1835.x, x_1835.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1838));
        let x_1841 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1840.x, x_1841.y, x_1840.y, x_1841.w);
        let x_1843 : vec2<f32> = u_xlat49;
        let x_1845 : vec2<f32> = (-(x_1843) + vec2<f32>(1.0f, 1.0f));
        let x_1846 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
        let x_1848 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1848, vec2<f32>(0.0f, 0.0f));
        let x_1850 : vec2<f32> = u_xlat51;
        let x_1852 : vec2<f32> = u_xlat51;
        let x_1854 : vec4<f32> = u_xlat9;
        let x_1856 : vec2<f32> = ((-(x_1850) * x_1852) + vec2<f32>(x_1854.x, x_1854.y));
        let x_1857 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1856.x, x_1856.y, x_1857.z, x_1857.w);
        let x_1859 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1859, vec2<f32>(0.0f, 0.0f));
        let x_1862 : vec2<f32> = u_xlat51;
        let x_1864 : vec2<f32> = u_xlat51;
        let x_1866 : vec4<f32> = u_xlat8;
        let x_1868 : vec2<f32> = ((-(x_1862) * x_1864) + vec2<f32>(x_1866.y, x_1866.w));
        let x_1869 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1868.x, x_1869.y, x_1868.y);
        let x_1871 : vec4<f32> = u_xlat9;
        let x_1873 : vec2<f32> = (vec2<f32>(x_1871.x, x_1871.y) + vec2<f32>(2.0f, 2.0f));
        let x_1874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1873.x, x_1873.y, x_1874.z, x_1874.w);
        let x_1876 : vec3<f32> = u_xlat29;
        let x_1878 : vec2<f32> = (vec2<f32>(x_1876.x, x_1876.z) + vec2<f32>(2.0f, 2.0f));
        let x_1879 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1879.x, x_1878.x, x_1879.z, x_1878.y);
        let x_1882 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1882 * 0.081632003f);
        let x_1886 : vec4<f32> = u_xlat8;
        let x_1889 : vec3<f32> = (vec3<f32>(x_1886.z, x_1886.x, x_1886.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1890 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
        let x_1892 : vec4<f32> = u_xlat9;
        let x_1895 : vec2<f32> = (vec2<f32>(x_1892.x, x_1892.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1896 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1895.x, x_1895.y, x_1896.z, x_1896.w);
        let x_1899 : f32 = u_xlat12.y;
        u_xlat11.x = x_1899;
        let x_1901 : vec2<f32> = u_xlat49;
        let x_1908 : vec2<f32> = ((vec2<f32>(x_1901.x, x_1901.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1909 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1909.x, x_1908.x, x_1909.z, x_1908.y);
        let x_1911 : vec2<f32> = u_xlat49;
        let x_1915 : vec2<f32> = ((vec2<f32>(x_1911.x, x_1911.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1916 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1915.x, x_1916.y, x_1915.y, x_1916.w);
        let x_1919 : f32 = u_xlat8.x;
        u_xlat9.y = x_1919;
        let x_1922 : f32 = u_xlat10.y;
        u_xlat9.w = x_1922;
        let x_1924 : vec4<f32> = u_xlat9;
        let x_1925 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1924 + x_1925);
        let x_1927 : vec2<f32> = u_xlat49;
        let x_1930 : vec2<f32> = ((vec2<f32>(x_1927.y, x_1927.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1931 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1931.x, x_1930.x, x_1931.z, x_1930.y);
        let x_1933 : vec2<f32> = u_xlat49;
        let x_1936 : vec2<f32> = ((vec2<f32>(x_1933.y, x_1933.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1937 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1936.x, x_1937.y, x_1936.y, x_1937.w);
        let x_1940 : f32 = u_xlat8.y;
        u_xlat10.y = x_1940;
        let x_1942 : vec4<f32> = u_xlat10;
        let x_1943 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1942 + x_1943);
        let x_1945 : vec4<f32> = u_xlat9;
        let x_1946 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1945 / x_1946);
        let x_1948 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1948 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1954 : vec4<f32> = u_xlat10;
        let x_1955 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1954 / x_1955);
        let x_1957 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1957 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1959 : vec4<f32> = u_xlat9;
        let x_1962 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1959.w, x_1959.x, x_1959.y, x_1959.z) * vec4<f32>(x_1962.x, x_1962.x, x_1962.x, x_1962.x));
        let x_1965 : vec4<f32> = u_xlat10;
        let x_1968 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1965.x, x_1965.w, x_1965.y, x_1965.z) * vec4<f32>(x_1968.y, x_1968.y, x_1968.y, x_1968.y));
        let x_1971 : vec4<f32> = u_xlat9;
        let x_1972 : vec3<f32> = vec3<f32>(x_1971.y, x_1971.z, x_1971.w);
        let x_1973 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1972.x, x_1973.y, x_1972.y, x_1972.z);
        let x_1976 : f32 = u_xlat10.x;
        u_xlat12.y = x_1976;
        let x_1978 : vec4<f32> = u_xlat7;
        let x_1981 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1984 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1978.x, x_1978.y, x_1978.x, x_1978.y) * vec4<f32>(x_1981.x, x_1981.y, x_1981.x, x_1981.y)) + vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1984.y));
        let x_1987 : vec4<f32> = u_xlat7;
        let x_1990 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1993 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1987.x, x_1987.y) * vec2<f32>(x_1990.x, x_1990.y)) + vec2<f32>(x_1993.w, x_1993.y));
        let x_1997 : f32 = u_xlat12.y;
        u_xlat9.y = x_1997;
        let x_2000 : f32 = u_xlat10.z;
        u_xlat12.y = x_2000;
        let x_2002 : vec4<f32> = u_xlat7;
        let x_2005 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2008 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_2002.x, x_2002.y, x_2002.x, x_2002.y) * vec4<f32>(x_2005.x, x_2005.y, x_2005.x, x_2005.y)) + vec4<f32>(x_2008.x, x_2008.y, x_2008.z, x_2008.y));
        let x_2011 : vec4<f32> = u_xlat7;
        let x_2014 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2017 : vec4<f32> = u_xlat12;
        let x_2019 : vec2<f32> = ((vec2<f32>(x_2011.x, x_2011.y) * vec2<f32>(x_2014.x, x_2014.y)) + vec2<f32>(x_2017.w, x_2017.y));
        let x_2020 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_2019.x, x_2019.y, x_2020.z, x_2020.w);
        let x_2023 : f32 = u_xlat12.y;
        u_xlat9.z = x_2023;
        let x_2026 : vec4<f32> = u_xlat7;
        let x_2029 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2032 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2026.x, x_2026.y, x_2026.x, x_2026.y) * vec4<f32>(x_2029.x, x_2029.y, x_2029.x, x_2029.y)) + vec4<f32>(x_2032.x, x_2032.y, x_2032.x, x_2032.z));
        let x_2036 : f32 = u_xlat10.w;
        u_xlat12.y = x_2036;
        let x_2039 : vec4<f32> = u_xlat7;
        let x_2042 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2045 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2039.x, x_2039.y, x_2039.x, x_2039.y) * vec4<f32>(x_2042.x, x_2042.y, x_2042.x, x_2042.y)) + vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2045.y));
        let x_2049 : vec4<f32> = u_xlat7;
        let x_2052 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2055 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_2049.x, x_2049.y) * vec2<f32>(x_2052.x, x_2052.y)) + vec2<f32>(x_2055.w, x_2055.y));
        let x_2059 : f32 = u_xlat12.y;
        u_xlat9.w = x_2059;
        let x_2062 : vec4<f32> = u_xlat7;
        let x_2065 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2068 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_2062.x, x_2062.y) * vec2<f32>(x_2065.x, x_2065.y)) + vec2<f32>(x_2068.x, x_2068.w));
        let x_2071 : vec4<f32> = u_xlat12;
        let x_2072 : vec3<f32> = vec3<f32>(x_2071.x, x_2071.z, x_2071.w);
        let x_2073 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2072.x, x_2073.y, x_2072.y, x_2072.z);
        let x_2075 : vec4<f32> = u_xlat7;
        let x_2078 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2081 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2075.x, x_2075.y, x_2075.x, x_2075.y) * vec4<f32>(x_2078.x, x_2078.y, x_2078.x, x_2078.y)) + vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2081.y));
        let x_2085 : vec4<f32> = u_xlat7;
        let x_2088 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2091 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_2085.x, x_2085.y) * vec2<f32>(x_2088.x, x_2088.y)) + vec2<f32>(x_2091.w, x_2091.y));
        let x_2095 : f32 = u_xlat9.x;
        u_xlat10.x = x_2095;
        let x_2097 : vec4<f32> = u_xlat7;
        let x_2100 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2103 : vec4<f32> = u_xlat10;
        let x_2105 : vec2<f32> = ((vec2<f32>(x_2097.x, x_2097.y) * vec2<f32>(x_2100.x, x_2100.y)) + vec2<f32>(x_2103.x, x_2103.y));
        let x_2106 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2105.x, x_2105.y, x_2106.z, x_2106.w);
        let x_2109 : vec4<f32> = u_xlat8;
        let x_2111 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_2109.x, x_2109.x, x_2109.x, x_2109.x) * x_2111);
        let x_2114 : vec4<f32> = u_xlat8;
        let x_2116 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_2114.y, x_2114.y, x_2114.y, x_2114.y) * x_2116);
        let x_2119 : vec4<f32> = u_xlat8;
        let x_2121 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_2119.z, x_2119.z, x_2119.z, x_2119.z) * x_2121);
        let x_2123 : vec4<f32> = u_xlat8;
        let x_2125 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2123.w, x_2123.w, x_2123.w, x_2123.w) * x_2125);
        let x_2128 : vec4<f32> = u_xlat13;
        let x_2129 : vec2<f32> = vec2<f32>(x_2128.x, x_2128.y);
        let x_2131 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2129.x, x_2129.y, x_2131);
        let x_2138 : vec3<f32> = txVec13;
        let x_2140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2138.xy, x_2138.z);
        u_xlat67 = x_2140;
        let x_2142 : vec4<f32> = u_xlat13;
        let x_2143 : vec2<f32> = vec2<f32>(x_2142.z, x_2142.w);
        let x_2145 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
        let x_2152 : vec3<f32> = txVec14;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2152.xy, x_2152.z);
        u_xlat68 = x_2154;
        let x_2155 : f32 = u_xlat68;
        let x_2157 : f32 = u_xlat18.y;
        u_xlat68 = (x_2155 * x_2157);
        let x_2160 : f32 = u_xlat18.x;
        let x_2161 : f32 = u_xlat67;
        let x_2163 : f32 = u_xlat68;
        u_xlat67 = ((x_2160 * x_2161) + x_2163);
        let x_2166 : vec2<f32> = u_xlat49;
        let x_2168 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
        let x_2175 : vec3<f32> = txVec15;
        let x_2177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2175.xy, x_2175.z);
        u_xlat68 = x_2177;
        let x_2179 : f32 = u_xlat18.z;
        let x_2180 : f32 = u_xlat68;
        let x_2182 : f32 = u_xlat67;
        u_xlat67 = ((x_2179 * x_2180) + x_2182);
        let x_2185 : vec4<f32> = u_xlat16;
        let x_2186 : vec2<f32> = vec2<f32>(x_2185.x, x_2185.y);
        let x_2188 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2186.x, x_2186.y, x_2188);
        let x_2195 : vec3<f32> = txVec16;
        let x_2197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2195.xy, x_2195.z);
        u_xlat68 = x_2197;
        let x_2199 : f32 = u_xlat18.w;
        let x_2200 : f32 = u_xlat68;
        let x_2202 : f32 = u_xlat67;
        u_xlat67 = ((x_2199 * x_2200) + x_2202);
        let x_2205 : vec4<f32> = u_xlat14;
        let x_2206 : vec2<f32> = vec2<f32>(x_2205.x, x_2205.y);
        let x_2208 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
        let x_2215 : vec3<f32> = txVec17;
        let x_2217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2215.xy, x_2215.z);
        u_xlat68 = x_2217;
        let x_2219 : f32 = u_xlat19.x;
        let x_2220 : f32 = u_xlat68;
        let x_2222 : f32 = u_xlat67;
        u_xlat67 = ((x_2219 * x_2220) + x_2222);
        let x_2225 : vec4<f32> = u_xlat14;
        let x_2226 : vec2<f32> = vec2<f32>(x_2225.z, x_2225.w);
        let x_2228 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2226.x, x_2226.y, x_2228);
        let x_2235 : vec3<f32> = txVec18;
        let x_2237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2235.xy, x_2235.z);
        u_xlat68 = x_2237;
        let x_2239 : f32 = u_xlat19.y;
        let x_2240 : f32 = u_xlat68;
        let x_2242 : f32 = u_xlat67;
        u_xlat67 = ((x_2239 * x_2240) + x_2242);
        let x_2245 : vec4<f32> = u_xlat15;
        let x_2246 : vec2<f32> = vec2<f32>(x_2245.x, x_2245.y);
        let x_2248 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2246.x, x_2246.y, x_2248);
        let x_2255 : vec3<f32> = txVec19;
        let x_2257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2255.xy, x_2255.z);
        u_xlat68 = x_2257;
        let x_2259 : f32 = u_xlat19.z;
        let x_2260 : f32 = u_xlat68;
        let x_2262 : f32 = u_xlat67;
        u_xlat67 = ((x_2259 * x_2260) + x_2262);
        let x_2265 : vec4<f32> = u_xlat16;
        let x_2266 : vec2<f32> = vec2<f32>(x_2265.z, x_2265.w);
        let x_2268 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
        let x_2275 : vec3<f32> = txVec20;
        let x_2277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2275.xy, x_2275.z);
        u_xlat68 = x_2277;
        let x_2279 : f32 = u_xlat19.w;
        let x_2280 : f32 = u_xlat68;
        let x_2282 : f32 = u_xlat67;
        u_xlat67 = ((x_2279 * x_2280) + x_2282);
        let x_2285 : vec4<f32> = u_xlat17;
        let x_2286 : vec2<f32> = vec2<f32>(x_2285.x, x_2285.y);
        let x_2288 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2286.x, x_2286.y, x_2288);
        let x_2295 : vec3<f32> = txVec21;
        let x_2297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2295.xy, x_2295.z);
        u_xlat68 = x_2297;
        let x_2299 : f32 = u_xlat20.x;
        let x_2300 : f32 = u_xlat68;
        let x_2302 : f32 = u_xlat67;
        u_xlat67 = ((x_2299 * x_2300) + x_2302);
        let x_2305 : vec4<f32> = u_xlat17;
        let x_2306 : vec2<f32> = vec2<f32>(x_2305.z, x_2305.w);
        let x_2308 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2306.x, x_2306.y, x_2308);
        let x_2315 : vec3<f32> = txVec22;
        let x_2317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2315.xy, x_2315.z);
        u_xlat68 = x_2317;
        let x_2319 : f32 = u_xlat20.y;
        let x_2320 : f32 = u_xlat68;
        let x_2322 : f32 = u_xlat67;
        u_xlat67 = ((x_2319 * x_2320) + x_2322);
        let x_2325 : vec2<f32> = u_xlat30;
        let x_2327 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2325.x, x_2325.y, x_2327);
        let x_2334 : vec3<f32> = txVec23;
        let x_2336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2334.xy, x_2334.z);
        u_xlat68 = x_2336;
        let x_2338 : f32 = u_xlat20.z;
        let x_2339 : f32 = u_xlat68;
        let x_2341 : f32 = u_xlat67;
        u_xlat67 = ((x_2338 * x_2339) + x_2341);
        let x_2344 : vec2<f32> = u_xlat57;
        let x_2346 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2344.x, x_2344.y, x_2346);
        let x_2353 : vec3<f32> = txVec24;
        let x_2355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2353.xy, x_2353.z);
        u_xlat68 = x_2355;
        let x_2357 : f32 = u_xlat20.w;
        let x_2358 : f32 = u_xlat68;
        let x_2360 : f32 = u_xlat67;
        u_xlat67 = ((x_2357 * x_2358) + x_2360);
        let x_2363 : vec4<f32> = u_xlat12;
        let x_2364 : vec2<f32> = vec2<f32>(x_2363.x, x_2363.y);
        let x_2366 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2364.x, x_2364.y, x_2366);
        let x_2373 : vec3<f32> = txVec25;
        let x_2375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2373.xy, x_2373.z);
        u_xlat68 = x_2375;
        let x_2377 : f32 = u_xlat8.x;
        let x_2378 : f32 = u_xlat68;
        let x_2380 : f32 = u_xlat67;
        u_xlat67 = ((x_2377 * x_2378) + x_2380);
        let x_2383 : vec4<f32> = u_xlat12;
        let x_2384 : vec2<f32> = vec2<f32>(x_2383.z, x_2383.w);
        let x_2386 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
        let x_2393 : vec3<f32> = txVec26;
        let x_2395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2393.xy, x_2393.z);
        u_xlat68 = x_2395;
        let x_2397 : f32 = u_xlat8.y;
        let x_2398 : f32 = u_xlat68;
        let x_2400 : f32 = u_xlat67;
        u_xlat67 = ((x_2397 * x_2398) + x_2400);
        let x_2403 : vec2<f32> = u_xlat52;
        let x_2405 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2403.x, x_2403.y, x_2405);
        let x_2412 : vec3<f32> = txVec27;
        let x_2414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2412.xy, x_2412.z);
        u_xlat68 = x_2414;
        let x_2416 : f32 = u_xlat8.z;
        let x_2417 : f32 = u_xlat68;
        let x_2419 : f32 = u_xlat67;
        u_xlat67 = ((x_2416 * x_2417) + x_2419);
        let x_2422 : vec4<f32> = u_xlat7;
        let x_2423 : vec2<f32> = vec2<f32>(x_2422.x, x_2422.y);
        let x_2425 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2423.x, x_2423.y, x_2425);
        let x_2432 : vec3<f32> = txVec28;
        let x_2434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2432.xy, x_2432.z);
        u_xlat68 = x_2434;
        let x_2436 : f32 = u_xlat8.w;
        let x_2437 : f32 = u_xlat68;
        let x_2439 : f32 = u_xlat67;
        u_xlat4.x = ((x_2436 * x_2437) + x_2439);
      }
    }
  } else {
    let x_2444 : vec4<f32> = u_xlat2;
    let x_2445 : vec2<f32> = vec2<f32>(x_2444.x, x_2444.y);
    let x_2447 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2445.x, x_2445.y, x_2447);
    let x_2454 : vec3<f32> = txVec29;
    let x_2456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2454.xy, x_2454.z);
    u_xlat4.x = x_2456;
  }
  let x_2459 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2459) + 1.0f);
  let x_2464 : f32 = u_xlat4.x;
  let x_2466 : f32 = x_854.x_MainLightShadowParams.x;
  let x_2469 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2464 * x_2466) + x_2469);
  let x_2476 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2476);
  let x_2481 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2481 >= 1.0f);
  let x_2483 : bool = u_xlatb44;
  let x_2485 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2483 | x_2485);
  let x_2489 : bool = u_xlatb23.x;
  if (x_2489) {
    x_2490 = 1.0f;
  } else {
    let x_2495 : f32 = u_xlat2.x;
    x_2490 = x_2495;
  }
  let x_2496 : f32 = x_2490;
  u_xlat2.x = x_2496;
  let x_2498 : vec3<f32> = vs_TEXCOORD7;
  let x_2501 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_2503 : vec3<f32> = (x_2498 + -(x_2501));
  let x_2504 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
  let x_2506 : vec4<f32> = u_xlat7;
  let x_2508 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2506.x, x_2506.y, x_2506.z), vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
  let x_2513 : f32 = u_xlat23.x;
  let x_2515 : f32 = x_854.x_MainLightShadowParams.z;
  let x_2518 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2513 * x_2515) + x_2518);
  let x_2522 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2522, 0.0f, 1.0f);
  let x_2527 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2527) + 1.0f);
  let x_2531 : f32 = u_xlat23.x;
  let x_2532 : f32 = u_xlat44;
  let x_2535 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2531 * x_2532) + x_2535);
  let x_2544 : f32 = x_2542.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2544 == -1.0f));
  let x_2548 : bool = u_xlatb23.x;
  if (x_2548) {
    let x_2551 : vec3<f32> = vs_TEXCOORD7;
    let x_2554 : vec4<f32> = x_2542.x_MainLightWorldToLight[1i];
    let x_2556 : vec2<f32> = (vec2<f32>(x_2551.y, x_2551.y) * vec2<f32>(x_2554.x, x_2554.y));
    let x_2557 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2556.x, x_2556.y, x_2557.z);
    let x_2560 : vec4<f32> = x_2542.x_MainLightWorldToLight[0i];
    let x_2562 : vec3<f32> = vs_TEXCOORD7;
    let x_2565 : vec3<f32> = u_xlat23;
    let x_2567 : vec2<f32> = ((vec2<f32>(x_2560.x, x_2560.y) * vec2<f32>(x_2562.x, x_2562.x)) + vec2<f32>(x_2565.x, x_2565.y));
    let x_2568 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2567.x, x_2567.y, x_2568.z);
    let x_2571 : vec4<f32> = x_2542.x_MainLightWorldToLight[2i];
    let x_2573 : vec3<f32> = vs_TEXCOORD7;
    let x_2576 : vec3<f32> = u_xlat23;
    let x_2578 : vec2<f32> = ((vec2<f32>(x_2571.x, x_2571.y) * vec2<f32>(x_2573.z, x_2573.z)) + vec2<f32>(x_2576.x, x_2576.y));
    let x_2579 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2578.x, x_2578.y, x_2579.z);
    let x_2581 : vec3<f32> = u_xlat23;
    let x_2584 : vec4<f32> = x_2542.x_MainLightWorldToLight[3i];
    let x_2586 : vec2<f32> = (vec2<f32>(x_2581.x, x_2581.y) + vec2<f32>(x_2584.x, x_2584.y));
    let x_2587 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2586.x, x_2586.y, x_2587.z);
    let x_2589 : vec3<f32> = u_xlat23;
    let x_2592 : vec2<f32> = ((vec2<f32>(x_2589.x, x_2589.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2593 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2592.x, x_2592.y, x_2593.z);
    let x_2600 : vec3<f32> = u_xlat23;
    let x_2603 : f32 = x_128.x_GlobalMipBias.x;
    let x_2604 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2600.x, x_2600.y), x_2603);
    u_xlat7 = x_2604;
    let x_2606 : f32 = x_2542.x_MainLightCookieTextureFormat;
    let x_2608 : f32 = x_2542.x_MainLightCookieTextureFormat;
    let x_2610 : f32 = x_2542.x_MainLightCookieTextureFormat;
    let x_2612 : f32 = x_2542.x_MainLightCookieTextureFormat;
    let x_2613 : vec4<f32> = vec4<f32>(x_2606, x_2608, x_2610, x_2612);
    let x_2620 : vec4<bool> = (vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2613.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2620.x, x_2620.y);
    let x_2623 : bool = u_xlatb23.y;
    if (x_2623) {
      let x_2628 : f32 = u_xlat7.w;
      x_2624 = x_2628;
    } else {
      let x_2631 : f32 = u_xlat7.x;
      x_2624 = x_2631;
    }
    let x_2632 : f32 = x_2624;
    u_xlat44 = x_2632;
    let x_2634 : bool = u_xlatb23.x;
    if (x_2634) {
      let x_2638 : vec4<f32> = u_xlat7;
      x_2635 = vec3<f32>(x_2638.x, x_2638.y, x_2638.z);
    } else {
      let x_2641 : f32 = u_xlat44;
      x_2635 = vec3<f32>(x_2641, x_2641, x_2641);
    }
    let x_2643 : vec3<f32> = x_2635;
    let x_2644 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2650 : vec4<f32> = u_xlat7;
  let x_2653 : vec4<f32> = x_128.x_MainLightColor;
  let x_2655 : vec3<f32> = (vec3<f32>(x_2650.x, x_2650.y, x_2650.z) * vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2656 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
  let x_2658 : f32 = u_xlat46;
  let x_2660 : vec4<f32> = u_xlat7;
  let x_2662 : vec3<f32> = (vec3<f32>(x_2658, x_2658, x_2658) * vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
  let x_2663 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
  let x_2666 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_2666;
  let x_2669 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_2669;
  let x_2672 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_2672;
  let x_2674 : vec4<f32> = u_xlat8;
  let x_2677 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2674.x, x_2674.y, x_2674.z)), vec3<f32>(x_2677.x, x_2677.y, x_2677.z));
  let x_2682 : f32 = u_xlat23.x;
  let x_2684 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2682 + x_2684);
  let x_2687 : vec4<f32> = u_xlat1;
  let x_2689 : vec3<f32> = u_xlat23;
  let x_2693 : vec4<f32> = u_xlat8;
  let x_2696 : vec3<f32> = ((vec3<f32>(x_2687.x, x_2687.y, x_2687.z) * -(vec3<f32>(x_2689.x, x_2689.x, x_2689.x))) + -(vec3<f32>(x_2693.x, x_2693.y, x_2693.z)));
  let x_2697 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
  let x_2699 : vec4<f32> = u_xlat1;
  let x_2701 : vec4<f32> = u_xlat8;
  u_xlat23.x = dot(vec3<f32>(x_2699.x, x_2699.y, x_2699.z), vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
  let x_2706 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2706, 0.0f, 1.0f);
  let x_2710 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2710) + 1.0f);
  let x_2715 : f32 = u_xlat23.x;
  let x_2717 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2715 * x_2717);
  let x_2721 : f32 = u_xlat23.x;
  let x_2723 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2721 * x_2723);
  let x_2727 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2727) * 0.699999988f) + 1.700000048f);
  let x_2734 : f32 = u_xlat0.x;
  let x_2735 : f32 = u_xlat44;
  u_xlat0.x = (x_2734 * x_2735);
  let x_2739 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2739 * 6.0f);
  let x_2751 : vec4<f32> = u_xlat9;
  let x_2754 : f32 = u_xlat0.x;
  let x_2755 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2751.x, x_2751.y, x_2751.z), x_2754);
  u_xlat9 = x_2755;
  let x_2757 : f32 = u_xlat9.w;
  u_xlat0.x = (x_2757 + -1.0f);
  let x_2761 : f32 = x_1070.unity_SpecCube0_HDR.w;
  let x_2763 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2761 * x_2763) + 1.0f);
  let x_2768 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2768, 0.0f);
  let x_2772 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2772);
  let x_2776 : f32 = u_xlat0.x;
  let x_2778 : f32 = x_1070.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2776 * x_2778);
  let x_2782 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2782);
  let x_2786 : f32 = u_xlat0.x;
  let x_2788 : f32 = x_1070.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2786 * x_2788);
  let x_2791 : vec4<f32> = u_xlat9;
  let x_2793 : vec3<f32> = u_xlat0;
  let x_2795 : vec3<f32> = (vec3<f32>(x_2791.x, x_2791.y, x_2791.z) * vec3<f32>(x_2793.x, x_2793.x, x_2793.x));
  let x_2796 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
  let x_2798 : f32 = u_xlat64;
  let x_2800 : f32 = u_xlat64;
  let x_2804 : vec2<f32> = ((vec2<f32>(x_2798, x_2798) * vec2<f32>(x_2800, x_2800)) + vec2<f32>(-1.0f, 1.0f));
  let x_2805 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2804.x, x_2805.y, x_2805.z, x_2804.y);
  let x_2808 : f32 = u_xlat4.w;
  u_xlat0.x = (1.0f / x_2808);
  let x_2811 : vec4<f32> = u_xlat5;
  let x_2814 : f32 = u_xlat42;
  let x_2816 : vec3<f32> = (-(vec3<f32>(x_2811.x, x_2811.y, x_2811.z)) + vec3<f32>(x_2814, x_2814, x_2814));
  let x_2817 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2817.w);
  let x_2819 : vec3<f32> = u_xlat23;
  let x_2821 : vec4<f32> = u_xlat10;
  let x_2824 : vec4<f32> = u_xlat5;
  let x_2826 : vec3<f32> = ((vec3<f32>(x_2819.x, x_2819.x, x_2819.x) * vec3<f32>(x_2821.x, x_2821.y, x_2821.z)) + vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
  let x_2827 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2826.x, x_2826.y, x_2826.z, x_2827.w);
  let x_2829 : vec3<f32> = u_xlat0;
  let x_2831 : vec4<f32> = u_xlat10;
  let x_2833 : vec3<f32> = (vec3<f32>(x_2829.x, x_2829.x, x_2829.x) * vec3<f32>(x_2831.x, x_2831.y, x_2831.z));
  let x_2834 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
  let x_2836 : vec4<f32> = u_xlat9;
  let x_2838 : vec4<f32> = u_xlat10;
  let x_2840 : vec3<f32> = (vec3<f32>(x_2836.x, x_2836.y, x_2836.z) * vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
  let x_2841 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
  let x_2843 : vec4<f32> = u_xlat3;
  let x_2845 : vec4<f32> = u_xlat6;
  let x_2848 : vec4<f32> = u_xlat9;
  let x_2850 : vec3<f32> = ((vec3<f32>(x_2843.x, x_2843.y, x_2843.z) * vec3<f32>(x_2845.x, x_2845.y, x_2845.z)) + vec3<f32>(x_2848.x, x_2848.y, x_2848.z));
  let x_2851 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2851.w);
  let x_2854 : f32 = u_xlat2.x;
  let x_2856 : f32 = x_1070.unity_LightData.z;
  u_xlat0.x = (x_2854 * x_2856);
  let x_2859 : vec4<f32> = u_xlat1;
  let x_2862 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_2859.x, x_2859.y, x_2859.z), vec3<f32>(x_2862.x, x_2862.y, x_2862.z));
  let x_2865 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2865, 0.0f, 1.0f);
  let x_2867 : f32 = u_xlat42;
  let x_2869 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2867 * x_2869);
  let x_2872 : vec3<f32> = u_xlat0;
  let x_2874 : vec4<f32> = u_xlat7;
  let x_2876 : vec3<f32> = (vec3<f32>(x_2872.x, x_2872.x, x_2872.x) * vec3<f32>(x_2874.x, x_2874.y, x_2874.z));
  let x_2877 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2876.x, x_2876.y, x_2876.z, x_2877.w);
  let x_2879 : vec4<f32> = u_xlat8;
  let x_2882 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2884 : vec3<f32> = (vec3<f32>(x_2879.x, x_2879.y, x_2879.z) + vec3<f32>(x_2882.x, x_2882.y, x_2882.z));
  let x_2885 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2884.x, x_2884.y, x_2884.z, x_2885.w);
  let x_2887 : vec4<f32> = u_xlat7;
  let x_2889 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2887.x, x_2887.y, x_2887.z), vec3<f32>(x_2889.x, x_2889.y, x_2889.z));
  let x_2894 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2894, 1.17549435e-37f);
  let x_2899 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2899);
  let x_2902 : vec3<f32> = u_xlat0;
  let x_2904 : vec4<f32> = u_xlat7;
  let x_2906 : vec3<f32> = (vec3<f32>(x_2902.x, x_2902.x, x_2902.x) * vec3<f32>(x_2904.x, x_2904.y, x_2904.z));
  let x_2907 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2907.w);
  let x_2909 : vec4<f32> = u_xlat1;
  let x_2911 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_2909.x, x_2909.y, x_2909.z), vec3<f32>(x_2911.x, x_2911.y, x_2911.z));
  let x_2916 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2916, 0.0f, 1.0f);
  let x_2920 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2922 : vec4<f32> = u_xlat7;
  u_xlat0.z = dot(vec3<f32>(x_2920.x, x_2920.y, x_2920.z), vec3<f32>(x_2922.x, x_2922.y, x_2922.z));
  let x_2927 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2927, 0.0f, 1.0f);
  let x_2930 : vec3<f32> = u_xlat0;
  let x_2932 : vec3<f32> = u_xlat0;
  let x_2934 : vec2<f32> = (vec2<f32>(x_2930.x, x_2930.z) * vec2<f32>(x_2932.x, x_2932.z));
  let x_2935 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2934.x, x_2935.y, x_2934.y);
  let x_2938 : f32 = u_xlat0.x;
  let x_2940 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_2938 * x_2940) + 1.000010014f);
  let x_2946 : f32 = u_xlat0.x;
  let x_2948 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2946 * x_2948);
  let x_2952 : f32 = u_xlat0.z;
  u_xlat42 = max(x_2952, 0.100000001f);
  let x_2955 : f32 = u_xlat42;
  let x_2957 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2955 * x_2957);
  let x_2960 : f32 = u_xlat66;
  let x_2962 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2960 * x_2962);
  let x_2965 : f32 = u_xlat25;
  let x_2967 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2965 / x_2967);
  let x_2970 : vec4<f32> = u_xlat5;
  let x_2972 : vec3<f32> = u_xlat0;
  let x_2975 : vec4<f32> = u_xlat6;
  let x_2977 : vec3<f32> = ((vec3<f32>(x_2970.x, x_2970.y, x_2970.z) * vec3<f32>(x_2972.x, x_2972.x, x_2972.x)) + vec3<f32>(x_2975.x, x_2975.y, x_2975.z));
  let x_2978 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2977.x, x_2977.y, x_2977.z, x_2978.w);
  let x_2980 : vec4<f32> = u_xlat2;
  let x_2982 : vec4<f32> = u_xlat7;
  let x_2984 : vec3<f32> = (vec3<f32>(x_2980.x, x_2980.y, x_2980.z) * vec3<f32>(x_2982.x, x_2982.y, x_2982.z));
  let x_2985 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2984.x, x_2984.y, x_2984.z, x_2985.w);
  let x_2988 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2990 : f32 = x_1070.unity_LightData.y;
  u_xlat0.x = min(x_2988, x_2990);
  let x_2995 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2995));
  let x_3000 : f32 = x_2542.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3002 : f32 = x_2542.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3004 : f32 = x_2542.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3006 : f32 = x_2542.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3007 : vec4<f32> = vec4<f32>(x_3000, x_3002, x_3004, x_3006);
  let x_3013 : vec4<bool> = (vec4<f32>(x_3007.x, x_3007.y, x_3007.z, x_3007.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_3013.x, x_3013.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3024 : u32 = u_xlatu_loop_1;
    let x_3025 : u32 = u_xlatu0;
    if ((x_3024 < x_3025)) {
    } else {
      break;
    }
    let x_3028 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_3028 >> 2u);
    let x_3031 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_3031 & 3u));
    let x_3034 : u32 = u_xlatu64;
    let x_3037 : vec4<f32> = x_1070.unity_LightIndices[bitcast<i32>(x_3034)];
    let x_3047 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3052 : vec4<u32> = indexable[x_3047];
    u_xlat64 = dot(x_3037, bitcast<vec4<f32>>(x_3052));
    let x_3055 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_3055));
    let x_3058 : vec3<f32> = vs_TEXCOORD7;
    let x_3070 : u32 = u_xlatu64;
    let x_3073 : vec4<f32> = x_3069.x_AdditionalLightsPosition[bitcast<i32>(x_3070)];
    let x_3076 : u32 = u_xlatu64;
    let x_3079 : vec4<f32> = x_3069.x_AdditionalLightsPosition[bitcast<i32>(x_3076)];
    let x_3081 : vec3<f32> = ((-(x_3058) * vec3<f32>(x_3073.w, x_3073.w, x_3073.w)) + vec3<f32>(x_3079.x, x_3079.y, x_3079.z));
    let x_3082 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3082.w);
    let x_3084 : vec4<f32> = u_xlat10;
    let x_3086 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3084.x, x_3084.y, x_3084.z), vec3<f32>(x_3086.x, x_3086.y, x_3086.z));
    let x_3089 : f32 = u_xlat67;
    u_xlat67 = max(x_3089, 6.10351562e-05f);
    let x_3091 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_3091);
    let x_3093 : f32 = u_xlat68;
    let x_3095 : vec4<f32> = u_xlat10;
    let x_3097 : vec3<f32> = (vec3<f32>(x_3093, x_3093, x_3093) * vec3<f32>(x_3095.x, x_3095.y, x_3095.z));
    let x_3098 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3098.w);
    let x_3100 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_3100);
    let x_3102 : f32 = u_xlat67;
    let x_3103 : u32 = u_xlatu64;
    let x_3106 : f32 = x_3069.x_AdditionalLightsAttenuation[bitcast<i32>(x_3103)].x;
    u_xlat67 = (x_3102 * x_3106);
    let x_3108 : f32 = u_xlat67;
    let x_3110 : f32 = u_xlat67;
    u_xlat67 = ((-(x_3108) * x_3110) + 1.0f);
    let x_3113 : f32 = u_xlat67;
    u_xlat67 = max(x_3113, 0.0f);
    let x_3115 : f32 = u_xlat67;
    let x_3116 : f32 = u_xlat67;
    u_xlat67 = (x_3115 * x_3116);
    let x_3118 : f32 = u_xlat67;
    let x_3119 : f32 = u_xlat69;
    u_xlat67 = (x_3118 * x_3119);
    let x_3121 : u32 = u_xlatu64;
    let x_3124 : vec4<f32> = x_3069.x_AdditionalLightsSpotDir[bitcast<i32>(x_3121)];
    let x_3126 : vec4<f32> = u_xlat11;
    u_xlat69 = dot(vec3<f32>(x_3124.x, x_3124.y, x_3124.z), vec3<f32>(x_3126.x, x_3126.y, x_3126.z));
    let x_3129 : f32 = u_xlat69;
    let x_3130 : u32 = u_xlatu64;
    let x_3133 : f32 = x_3069.x_AdditionalLightsAttenuation[bitcast<i32>(x_3130)].z;
    let x_3135 : u32 = u_xlatu64;
    let x_3138 : f32 = x_3069.x_AdditionalLightsAttenuation[bitcast<i32>(x_3135)].w;
    u_xlat69 = ((x_3129 * x_3133) + x_3138);
    let x_3140 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3140, 0.0f, 1.0f);
    let x_3142 : f32 = u_xlat69;
    let x_3143 : f32 = u_xlat69;
    u_xlat69 = (x_3142 * x_3143);
    let x_3145 : f32 = u_xlat67;
    let x_3146 : f32 = u_xlat69;
    u_xlat67 = (x_3145 * x_3146);
    let x_3149 : u32 = u_xlatu64;
    u_xlatu69 = (x_3149 >> 5u);
    let x_3152 : u32 = u_xlatu64;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_3152) & 31i)));
    let x_3157 : i32 = u_xlati49;
    let x_3159 : u32 = u_xlatu69;
    let x_3162 : f32 = x_2542.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3159)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_3157) & bitcast<u32>(x_3162)));
    let x_3166 : i32 = u_xlati69;
    if ((x_3166 != 0i)) {
      let x_3176 : u32 = u_xlatu64;
      let x_3179 : f32 = x_3175.x_AdditionalLightsLightTypes[bitcast<i32>(x_3176)].el;
      u_xlati69 = i32(x_3179);
      let x_3181 : i32 = u_xlati69;
      u_xlati49 = select(1i, 0i, (x_3181 != 0i));
      let x_3185 : u32 = u_xlatu64;
      u_xlati70 = (bitcast<i32>(x_3185) << bitcast<u32>(2i));
      let x_3188 : i32 = u_xlati49;
      if ((x_3188 != 0i)) {
        let x_3192 : vec3<f32> = vs_TEXCOORD7;
        let x_3194 : i32 = u_xlati70;
        let x_3197 : i32 = u_xlati70;
        let x_3201 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3194 + 1i) / 4i)][((x_3197 + 1i) % 4i)];
        let x_3203 : vec3<f32> = (vec3<f32>(x_3192.y, x_3192.y, x_3192.y) * vec3<f32>(x_3201.x, x_3201.y, x_3201.w));
        let x_3204 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3203.x, x_3203.y, x_3203.z, x_3204.w);
        let x_3206 : i32 = u_xlati70;
        let x_3208 : i32 = u_xlati70;
        let x_3211 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[(x_3206 / 4i)][(x_3208 % 4i)];
        let x_3213 : vec3<f32> = vs_TEXCOORD7;
        let x_3216 : vec4<f32> = u_xlat12;
        let x_3218 : vec3<f32> = ((vec3<f32>(x_3211.x, x_3211.y, x_3211.w) * vec3<f32>(x_3213.x, x_3213.x, x_3213.x)) + vec3<f32>(x_3216.x, x_3216.y, x_3216.z));
        let x_3219 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3219.w);
        let x_3221 : i32 = u_xlati70;
        let x_3224 : i32 = u_xlati70;
        let x_3228 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3221 + 2i) / 4i)][((x_3224 + 2i) % 4i)];
        let x_3230 : vec3<f32> = vs_TEXCOORD7;
        let x_3233 : vec4<f32> = u_xlat12;
        let x_3235 : vec3<f32> = ((vec3<f32>(x_3228.x, x_3228.y, x_3228.w) * vec3<f32>(x_3230.z, x_3230.z, x_3230.z)) + vec3<f32>(x_3233.x, x_3233.y, x_3233.z));
        let x_3236 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3235.x, x_3235.y, x_3235.z, x_3236.w);
        let x_3238 : vec4<f32> = u_xlat12;
        let x_3240 : i32 = u_xlati70;
        let x_3243 : i32 = u_xlati70;
        let x_3247 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3240 + 3i) / 4i)][((x_3243 + 3i) % 4i)];
        let x_3249 : vec3<f32> = (vec3<f32>(x_3238.x, x_3238.y, x_3238.z) + vec3<f32>(x_3247.x, x_3247.y, x_3247.w));
        let x_3250 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3249.x, x_3249.y, x_3249.z, x_3250.w);
        let x_3252 : vec4<f32> = u_xlat12;
        let x_3254 : vec4<f32> = u_xlat12;
        let x_3256 : vec2<f32> = (vec2<f32>(x_3252.x, x_3252.y) / vec2<f32>(x_3254.z, x_3254.z));
        let x_3257 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3256.x, x_3256.y, x_3257.z, x_3257.w);
        let x_3259 : vec4<f32> = u_xlat12;
        let x_3262 : vec2<f32> = ((vec2<f32>(x_3259.x, x_3259.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3263 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3262.x, x_3262.y, x_3263.z, x_3263.w);
        let x_3265 : vec4<f32> = u_xlat12;
        let x_3269 : vec2<f32> = clamp(vec2<f32>(x_3265.x, x_3265.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3270 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3269.x, x_3269.y, x_3270.z, x_3270.w);
        let x_3272 : u32 = u_xlatu64;
        let x_3275 : vec4<f32> = x_3175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3272)];
        let x_3277 : vec4<f32> = u_xlat12;
        let x_3280 : u32 = u_xlatu64;
        let x_3283 : vec4<f32> = x_3175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3280)];
        let x_3285 : vec2<f32> = ((vec2<f32>(x_3275.x, x_3275.y) * vec2<f32>(x_3277.x, x_3277.y)) + vec2<f32>(x_3283.z, x_3283.w));
        let x_3286 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3285.x, x_3285.y, x_3286.z, x_3286.w);
      } else {
        let x_3290 : i32 = u_xlati69;
        u_xlatb69 = (x_3290 == 1i);
        let x_3292 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_3292);
        let x_3294 : i32 = u_xlati69;
        if ((x_3294 != 0i)) {
          let x_3299 : vec3<f32> = vs_TEXCOORD7;
          let x_3301 : i32 = u_xlati70;
          let x_3304 : i32 = u_xlati70;
          let x_3308 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3301 + 1i) / 4i)][((x_3304 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3299.y, x_3299.y) * vec2<f32>(x_3308.x, x_3308.y));
          let x_3311 : i32 = u_xlati70;
          let x_3313 : i32 = u_xlati70;
          let x_3316 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[(x_3311 / 4i)][(x_3313 % 4i)];
          let x_3318 : vec3<f32> = vs_TEXCOORD7;
          let x_3321 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3316.x, x_3316.y) * vec2<f32>(x_3318.x, x_3318.x)) + x_3321);
          let x_3323 : i32 = u_xlati70;
          let x_3326 : i32 = u_xlati70;
          let x_3330 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3323 + 2i) / 4i)][((x_3326 + 2i) % 4i)];
          let x_3332 : vec3<f32> = vs_TEXCOORD7;
          let x_3335 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3330.x, x_3330.y) * vec2<f32>(x_3332.z, x_3332.z)) + x_3335);
          let x_3337 : vec2<f32> = u_xlat54;
          let x_3338 : i32 = u_xlati70;
          let x_3341 : i32 = u_xlati70;
          let x_3345 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3338 + 3i) / 4i)][((x_3341 + 3i) % 4i)];
          u_xlat54 = (x_3337 + vec2<f32>(x_3345.x, x_3345.y));
          let x_3348 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3348 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3351 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3351);
          let x_3353 : u32 = u_xlatu64;
          let x_3356 : vec4<f32> = x_3175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3353)];
          let x_3358 : vec2<f32> = u_xlat54;
          let x_3360 : u32 = u_xlatu64;
          let x_3363 : vec4<f32> = x_3175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3360)];
          let x_3365 : vec2<f32> = ((vec2<f32>(x_3356.x, x_3356.y) * x_3358) + vec2<f32>(x_3363.z, x_3363.w));
          let x_3366 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3365.x, x_3365.y, x_3366.z, x_3366.w);
        } else {
          let x_3369 : vec3<f32> = vs_TEXCOORD7;
          let x_3371 : i32 = u_xlati70;
          let x_3374 : i32 = u_xlati70;
          let x_3378 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3371 + 1i) / 4i)][((x_3374 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_3369.y, x_3369.y, x_3369.y, x_3369.y) * x_3378);
          let x_3380 : i32 = u_xlati70;
          let x_3382 : i32 = u_xlati70;
          let x_3385 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[(x_3380 / 4i)][(x_3382 % 4i)];
          let x_3386 : vec3<f32> = vs_TEXCOORD7;
          let x_3389 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3385 * vec4<f32>(x_3386.x, x_3386.x, x_3386.x, x_3386.x)) + x_3389);
          let x_3391 : i32 = u_xlati70;
          let x_3394 : i32 = u_xlati70;
          let x_3398 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3391 + 2i) / 4i)][((x_3394 + 2i) % 4i)];
          let x_3399 : vec3<f32> = vs_TEXCOORD7;
          let x_3402 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3398 * vec4<f32>(x_3399.z, x_3399.z, x_3399.z, x_3399.z)) + x_3402);
          let x_3404 : vec4<f32> = u_xlat13;
          let x_3405 : i32 = u_xlati70;
          let x_3408 : i32 = u_xlati70;
          let x_3412 : vec4<f32> = x_3175.x_AdditionalLightsWorldToLights[((x_3405 + 3i) / 4i)][((x_3408 + 3i) % 4i)];
          u_xlat13 = (x_3404 + x_3412);
          let x_3414 : vec4<f32> = u_xlat13;
          let x_3416 : vec4<f32> = u_xlat13;
          let x_3418 : vec3<f32> = (vec3<f32>(x_3414.x, x_3414.y, x_3414.z) / vec3<f32>(x_3416.w, x_3416.w, x_3416.w));
          let x_3419 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3418.x, x_3418.y, x_3418.z, x_3419.w);
          let x_3421 : vec4<f32> = u_xlat13;
          let x_3423 : vec4<f32> = u_xlat13;
          u_xlat69 = dot(vec3<f32>(x_3421.x, x_3421.y, x_3421.z), vec3<f32>(x_3423.x, x_3423.y, x_3423.z));
          let x_3426 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_3426);
          let x_3428 : f32 = u_xlat69;
          let x_3430 : vec4<f32> = u_xlat13;
          let x_3432 : vec3<f32> = (vec3<f32>(x_3428, x_3428, x_3428) * vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
          let x_3433 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3432.x, x_3432.y, x_3432.z, x_3433.w);
          let x_3435 : vec4<f32> = u_xlat13;
          u_xlat69 = dot(abs(vec3<f32>(x_3435.x, x_3435.y, x_3435.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3440 : f32 = u_xlat69;
          u_xlat69 = max(x_3440, 0.000001f);
          let x_3443 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_3443);
          let x_3445 : f32 = u_xlat69;
          let x_3447 : vec4<f32> = u_xlat13;
          let x_3449 : vec3<f32> = (vec3<f32>(x_3445, x_3445, x_3445) * vec3<f32>(x_3447.z, x_3447.x, x_3447.y));
          let x_3450 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_3449.x, x_3449.y, x_3449.z, x_3450.w);
          let x_3453 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_3453);
          let x_3457 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_3457, 0.0f, 1.0f);
          let x_3461 : vec4<f32> = u_xlat14;
          let x_3464 : vec4<bool> = (vec4<f32>(x_3461.y, x_3461.z, x_3461.y, x_3461.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb49 = vec2<bool>(x_3464.x, x_3464.y);
          let x_3467 : bool = u_xlatb49.x;
          if (x_3467) {
            let x_3472 : f32 = u_xlat14.x;
            x_3468 = x_3472;
          } else {
            let x_3475 : f32 = u_xlat14.x;
            x_3468 = -(x_3475);
          }
          let x_3477 : f32 = x_3468;
          u_xlat49.x = x_3477;
          let x_3480 : bool = u_xlatb49.y;
          if (x_3480) {
            let x_3485 : f32 = u_xlat14.x;
            x_3481 = x_3485;
          } else {
            let x_3488 : f32 = u_xlat14.x;
            x_3481 = -(x_3488);
          }
          let x_3490 : f32 = x_3481;
          u_xlat49.y = x_3490;
          let x_3492 : vec4<f32> = u_xlat13;
          let x_3494 : f32 = u_xlat69;
          let x_3497 : vec2<f32> = u_xlat49;
          u_xlat49 = ((vec2<f32>(x_3492.x, x_3492.y) * vec2<f32>(x_3494, x_3494)) + x_3497);
          let x_3499 : vec2<f32> = u_xlat49;
          u_xlat49 = ((x_3499 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3502 : vec2<f32> = u_xlat49;
          u_xlat49 = clamp(x_3502, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3506 : u32 = u_xlatu64;
          let x_3509 : vec4<f32> = x_3175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3506)];
          let x_3511 : vec2<f32> = u_xlat49;
          let x_3513 : u32 = u_xlatu64;
          let x_3516 : vec4<f32> = x_3175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3513)];
          let x_3518 : vec2<f32> = ((vec2<f32>(x_3509.x, x_3509.y) * x_3511) + vec2<f32>(x_3516.z, x_3516.w));
          let x_3519 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3518.x, x_3518.y, x_3519.z, x_3519.w);
        }
      }
      let x_3526 : vec4<f32> = u_xlat12;
      let x_3529 : f32 = x_128.x_GlobalMipBias.x;
      let x_3530 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3526.x, x_3526.y), x_3529);
      u_xlat12 = x_3530;
      let x_3532 : bool = u_xlatb7.y;
      if (x_3532) {
        let x_3537 : f32 = u_xlat12.w;
        x_3533 = x_3537;
      } else {
        let x_3540 : f32 = u_xlat12.x;
        x_3533 = x_3540;
      }
      let x_3541 : f32 = x_3533;
      u_xlat69 = x_3541;
      let x_3543 : bool = u_xlatb7.x;
      if (x_3543) {
        let x_3547 : vec4<f32> = u_xlat12;
        x_3544 = vec3<f32>(x_3547.x, x_3547.y, x_3547.z);
      } else {
        let x_3550 : f32 = u_xlat69;
        x_3544 = vec3<f32>(x_3550, x_3550, x_3550);
      }
      let x_3552 : vec3<f32> = x_3544;
      let x_3553 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3553.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_3559 : vec4<f32> = u_xlat12;
    let x_3561 : u32 = u_xlatu64;
    let x_3564 : vec4<f32> = x_3069.x_AdditionalLightsColor[bitcast<i32>(x_3561)];
    let x_3566 : vec3<f32> = (vec3<f32>(x_3559.x, x_3559.y, x_3559.z) * vec3<f32>(x_3564.x, x_3564.y, x_3564.z));
    let x_3567 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3566.x, x_3566.y, x_3566.z, x_3567.w);
    let x_3569 : f32 = u_xlat46;
    let x_3571 : vec4<f32> = u_xlat12;
    let x_3573 : vec3<f32> = (vec3<f32>(x_3569, x_3569, x_3569) * vec3<f32>(x_3571.x, x_3571.y, x_3571.z));
    let x_3574 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3573.x, x_3573.y, x_3573.z, x_3574.w);
    let x_3576 : vec4<f32> = u_xlat1;
    let x_3578 : vec4<f32> = u_xlat11;
    u_xlat64 = dot(vec3<f32>(x_3576.x, x_3576.y, x_3576.z), vec3<f32>(x_3578.x, x_3578.y, x_3578.z));
    let x_3581 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3581, 0.0f, 1.0f);
    let x_3583 : f32 = u_xlat64;
    let x_3584 : f32 = u_xlat67;
    u_xlat64 = (x_3583 * x_3584);
    let x_3586 : f32 = u_xlat64;
    let x_3588 : vec4<f32> = u_xlat12;
    let x_3590 : vec3<f32> = (vec3<f32>(x_3586, x_3586, x_3586) * vec3<f32>(x_3588.x, x_3588.y, x_3588.z));
    let x_3591 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3590.x, x_3590.y, x_3590.z, x_3591.w);
    let x_3593 : vec4<f32> = u_xlat10;
    let x_3595 : f32 = u_xlat68;
    let x_3598 : vec4<f32> = u_xlat8;
    let x_3600 : vec3<f32> = ((vec3<f32>(x_3593.x, x_3593.y, x_3593.z) * vec3<f32>(x_3595, x_3595, x_3595)) + vec3<f32>(x_3598.x, x_3598.y, x_3598.z));
    let x_3601 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3600.x, x_3600.y, x_3600.z, x_3601.w);
    let x_3603 : vec4<f32> = u_xlat10;
    let x_3605 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3603.x, x_3603.y, x_3603.z), vec3<f32>(x_3605.x, x_3605.y, x_3605.z));
    let x_3608 : f32 = u_xlat64;
    u_xlat64 = max(x_3608, 1.17549435e-37f);
    let x_3610 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3610);
    let x_3612 : f32 = u_xlat64;
    let x_3614 : vec4<f32> = u_xlat10;
    let x_3616 : vec3<f32> = (vec3<f32>(x_3612, x_3612, x_3612) * vec3<f32>(x_3614.x, x_3614.y, x_3614.z));
    let x_3617 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3616.x, x_3616.y, x_3616.z, x_3617.w);
    let x_3619 : vec4<f32> = u_xlat1;
    let x_3621 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3619.x, x_3619.y, x_3619.z), vec3<f32>(x_3621.x, x_3621.y, x_3621.z));
    let x_3624 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3624, 0.0f, 1.0f);
    let x_3626 : vec4<f32> = u_xlat11;
    let x_3628 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3626.x, x_3626.y, x_3626.z), vec3<f32>(x_3628.x, x_3628.y, x_3628.z));
    let x_3631 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3631, 0.0f, 1.0f);
    let x_3633 : f32 = u_xlat64;
    let x_3634 : f32 = u_xlat64;
    u_xlat64 = (x_3633 * x_3634);
    let x_3636 : f32 = u_xlat64;
    let x_3638 : f32 = u_xlat4.x;
    u_xlat64 = ((x_3636 * x_3638) + 1.000010014f);
    let x_3641 : f32 = u_xlat67;
    let x_3642 : f32 = u_xlat67;
    u_xlat67 = (x_3641 * x_3642);
    let x_3644 : f32 = u_xlat64;
    let x_3645 : f32 = u_xlat64;
    u_xlat64 = (x_3644 * x_3645);
    let x_3647 : f32 = u_xlat67;
    u_xlat67 = max(x_3647, 0.100000001f);
    let x_3649 : f32 = u_xlat64;
    let x_3650 : f32 = u_xlat67;
    u_xlat64 = (x_3649 * x_3650);
    let x_3652 : f32 = u_xlat66;
    let x_3653 : f32 = u_xlat64;
    u_xlat64 = (x_3652 * x_3653);
    let x_3655 : f32 = u_xlat25;
    let x_3656 : f32 = u_xlat64;
    u_xlat64 = (x_3655 / x_3656);
    let x_3658 : vec4<f32> = u_xlat5;
    let x_3660 : f32 = u_xlat64;
    let x_3663 : vec4<f32> = u_xlat6;
    let x_3665 : vec3<f32> = ((vec3<f32>(x_3658.x, x_3658.y, x_3658.z) * vec3<f32>(x_3660, x_3660, x_3660)) + vec3<f32>(x_3663.x, x_3663.y, x_3663.z));
    let x_3666 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3665.x, x_3665.y, x_3665.z, x_3666.w);
    let x_3668 : vec4<f32> = u_xlat10;
    let x_3670 : vec4<f32> = u_xlat12;
    let x_3673 : vec4<f32> = u_xlat9;
    let x_3675 : vec3<f32> = ((vec3<f32>(x_3668.x, x_3668.y, x_3668.z) * vec3<f32>(x_3670.x, x_3670.y, x_3670.z)) + vec3<f32>(x_3673.x, x_3673.y, x_3673.z));
    let x_3676 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3675.x, x_3675.y, x_3675.z, x_3676.w);

    continuing {
      let x_3678 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3678 + bitcast<u32>(1i));
    }
  }
  let x_3680 : vec4<f32> = u_xlat3;
  let x_3682 : f32 = u_xlat21;
  let x_3685 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_3680.x, x_3680.y, x_3680.z) * vec3<f32>(x_3682, x_3682, x_3682)) + vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
  let x_3688 : vec4<f32> = u_xlat9;
  let x_3690 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3688.x, x_3688.y, x_3688.z) + x_3690);
  let x_3692 : f32 = u_xlat63;
  let x_3694 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3692, x_3692, x_3692) * x_3694);
  let x_3696 : f32 = u_xlat65;
  let x_3697 : f32 = u_xlat65;
  u_xlat63 = (x_3696 * -(x_3697));
  let x_3700 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3700);
  let x_3704 : vec3<f32> = u_xlat0;
  let x_3705 : f32 = u_xlat63;
  let x_3707 : vec3<f32> = (x_3704 * vec3<f32>(x_3705, x_3705, x_3705));
  let x_3708 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3707.x, x_3707.y, x_3707.z, x_3708.w);
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

