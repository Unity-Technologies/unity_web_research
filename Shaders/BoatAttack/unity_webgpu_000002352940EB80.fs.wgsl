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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1061 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2352 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2557 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2851 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2960 : AdditionalLightsCookies;

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
  var u_xlat60 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb61 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var u_xlatb62 : bool;
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat62 : f32;
  var u_xlat23 : f32;
  var u_xlat63 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : vec2<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb64 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat64 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatb65 : bool;
  var x_2307 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2433 : f32;
  var x_2444 : vec3<f32>;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu65 : u32;
  var u_xlati66 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var u_xlati68 : i32;
  var u_xlati70 : i32;
  var u_xlatb68 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_3253 : f32;
  var x_3266 : f32;
  var x_3318 : f32;
  var x_3329 : vec3<f32>;
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
  u_xlat60 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb61 = (4.0f >= x_220);
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
  let x_282 : bool = u_xlatb61;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_293 : f32 = u_xlat61;
  u_xlatb62 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb62;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat61;
  u_xlat61 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
  let x_412 : f32 = u_xlat61;
  u_xlat61 = min(x_412, 1.0f);
  let x_414 : f32 = u_xlat61;
  u_xlat61 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_417);
  let x_419 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_460 : f32 = u_xlat61;
  u_xlat61 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat61;
  u_xlat61 = (-(x_462) + 1.0f);
  let x_465 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_465);
  let x_467 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_524.x, x_524.y), vec2<f32>(x_526.x, x_526.y));
  let x_529 : f32 = u_xlat61;
  u_xlat61 = min(x_529, 1.0f);
  let x_531 : f32 = u_xlat61;
  u_xlat61 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_534);
  let x_536 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat61;
  u_xlat61 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat61;
  u_xlat61 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_597);
  let x_599 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec3<f32>(x_631.x, x_631.y, x_631.w), vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat61;
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
  u_xlat40 = dot(x_716, x_717);
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
  u_xlat20 = dot(x_799, x_800);
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
  u_xlat61 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat61;
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_850 : f32 = vs_TEXCOORD7.y;
  let x_852 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat61 = (x_850 * x_852);
  let x_855 : f32 = x_128.unity_MatrixV[0i].z;
  let x_857 : f32 = vs_TEXCOORD7.x;
  let x_859 : f32 = u_xlat61;
  u_xlat61 = ((x_855 * x_857) + x_859);
  let x_862 : f32 = x_128.unity_MatrixV[2i].z;
  let x_864 : f32 = vs_TEXCOORD7.z;
  let x_866 : f32 = u_xlat61;
  u_xlat61 = ((x_862 * x_864) + x_866);
  let x_868 : f32 = u_xlat61;
  let x_870 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat61 = (x_868 + x_870);
  let x_872 : f32 = u_xlat61;
  let x_875 : f32 = x_128.x_ProjectionParams.y;
  u_xlat61 = (-(x_872) + -(x_875));
  let x_878 : f32 = u_xlat61;
  u_xlat61 = max(x_878, 0.0f);
  let x_880 : f32 = u_xlat61;
  let x_882 : f32 = x_128.unity_FogParams.x;
  u_xlat61 = (x_880 * x_882);
  let x_889 : vec4<f32> = vs_TEXCOORD0;
  let x_892 : f32 = x_128.x_GlobalMipBias.x;
  let x_893 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_889.z, x_889.w), x_892);
  u_xlat2 = x_893;
  let x_898 : vec4<f32> = vs_TEXCOORD0;
  let x_901 : f32 = x_128.x_GlobalMipBias.x;
  let x_902 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_898.z, x_898.w), x_901);
  let x_903 : vec3<f32> = vec3<f32>(x_902.x, x_902.y, x_902.z);
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat2;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_911 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat1;
  let x_915 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_913.x, x_913.y, x_913.z), vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_920 : f32 = u_xlat2.x;
  u_xlat2.x = (x_920 + 0.5f);
  let x_923 : vec4<f32> = u_xlat2;
  let x_925 : vec4<f32> = u_xlat3;
  let x_927 : vec3<f32> = (vec3<f32>(x_923.x, x_923.x, x_923.x) * vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_932 : f32 = u_xlat2.w;
  u_xlat62 = max(x_932, 0.0001f);
  let x_935 : vec4<f32> = u_xlat2;
  let x_937 : f32 = u_xlat62;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) / vec3<f32>(x_937, x_937, x_937));
  let x_940 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_944 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_945 : vec2<f32> = vec2<f32>(x_944.x, x_944.y);
  let x_949 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_945.x, x_945.y));
  let x_950 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat3;
  let x_954 : vec4<f32> = hlslcc_FragCoord;
  let x_956 : vec2<f32> = (vec2<f32>(x_952.x, x_952.y) * vec2<f32>(x_954.x, x_954.y));
  let x_957 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
  let x_960 : f32 = u_xlat3.y;
  let x_962 : f32 = x_128.x_ScaleBiasRt.x;
  let x_965 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat62 = ((x_960 * x_962) + x_965);
  let x_967 : f32 = u_xlat62;
  u_xlat3.z = (-(x_967) + 1.0f);
  let x_972 : f32 = u_xlat0.x;
  u_xlat62 = ((-(x_972) * 0.959999979f) + 0.959999979f);
  let x_978 : f32 = u_xlat40;
  let x_979 : f32 = u_xlat62;
  u_xlat23 = (x_978 + -(x_979));
  let x_982 : f32 = u_xlat62;
  let x_984 : vec4<f32> = u_xlat5;
  let x_986 : vec3<f32> = (vec3<f32>(x_982, x_982, x_982) * vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat5;
  let x_993 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_994 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec3<f32> = u_xlat0;
  let x_998 : vec4<f32> = u_xlat5;
  let x_1003 : vec3<f32> = ((vec3<f32>(x_996.x, x_996.x, x_996.x) * vec3<f32>(x_998.x, x_998.y, x_998.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1004 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : f32 = u_xlat40;
  u_xlat0.x = (-(x_1006) + 1.0f);
  let x_1011 : f32 = u_xlat0.x;
  let x_1013 : f32 = u_xlat0.x;
  u_xlat40 = (x_1011 * x_1013);
  let x_1015 : f32 = u_xlat40;
  u_xlat40 = max(x_1015, 0.0078125f);
  let x_1018 : f32 = u_xlat40;
  let x_1019 : f32 = u_xlat40;
  u_xlat62 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat23;
  u_xlat23 = (x_1021 + 1.0f);
  let x_1023 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1023, 0.0f, 1.0f);
  let x_1026 : f32 = u_xlat40;
  u_xlat63 = ((x_1026 * 4.0f) + 2.0f);
  let x_1034 : vec4<f32> = u_xlat3;
  let x_1037 : f32 = x_128.x_GlobalMipBias.x;
  let x_1038 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1034.x, x_1034.z), x_1037);
  u_xlat3.x = x_1038.x;
  let x_1043 : f32 = u_xlat3.x;
  u_xlat43 = (x_1043 + -1.0f);
  let x_1046 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1047 : f32 = u_xlat43;
  u_xlat43 = ((x_1046 * x_1047) + 1.0f);
  let x_1050 : f32 = u_xlat20;
  let x_1052 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1050, x_1052);
  let x_1063 : f32 = x_1061.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1063);
  let x_1067 : bool = u_xlatb3.x;
  if (x_1067) {
    let x_1071 : f32 = x_1061.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1071 == 1.0f);
    let x_1075 : bool = u_xlatb3.x;
    if (x_1075) {
      let x_1079 : vec4<f32> = vs_TEXCOORD8;
      let x_1082 : vec4<f32> = x_1061.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y) + x_1082);
      let x_1085 : vec4<f32> = u_xlat6;
      let x_1086 : vec2<f32> = vec2<f32>(x_1085.x, x_1085.y);
      let x_1088 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
      let x_1100 : vec3<f32> = txVec0;
      let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1100.xy, x_1100.z);
      u_xlat7.x = x_1102;
      let x_1105 : vec4<f32> = u_xlat6;
      let x_1106 : vec2<f32> = vec2<f32>(x_1105.z, x_1105.w);
      let x_1108 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
      let x_1115 : vec3<f32> = txVec1;
      let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1115.xy, x_1115.z);
      u_xlat7.y = x_1117;
      let x_1119 : vec4<f32> = vs_TEXCOORD8;
      let x_1122 : vec4<f32> = x_1061.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) + x_1122);
      let x_1125 : vec4<f32> = u_xlat6;
      let x_1126 : vec2<f32> = vec2<f32>(x_1125.x, x_1125.y);
      let x_1128 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
      let x_1135 : vec3<f32> = txVec2;
      let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1135.xy, x_1135.z);
      u_xlat7.z = x_1137;
      let x_1140 : vec4<f32> = u_xlat6;
      let x_1141 : vec2<f32> = vec2<f32>(x_1140.z, x_1140.w);
      let x_1143 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1141.x, x_1141.y, x_1143);
      let x_1150 : vec3<f32> = txVec3;
      let x_1152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1150.xy, x_1150.z);
      u_xlat7.w = x_1152;
      let x_1154 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1154, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1162 : f32 = x_1061.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1162 == 2.0f);
      let x_1164 : bool = u_xlatb64;
      if (x_1164) {
        let x_1167 : vec4<f32> = vs_TEXCOORD8;
        let x_1170 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.z, x_1170.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1174 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat6;
        let x_1178 : vec2<f32> = floor(vec2<f32>(x_1176.x, x_1176.y));
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1183 : vec4<f32> = vs_TEXCOORD8;
        let x_1186 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.z, x_1186.w)) + -(vec2<f32>(x_1189.x, x_1189.y)));
        let x_1193 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1193.x, x_1193.x, x_1193.y, x_1193.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1197 : vec4<f32> = u_xlat7;
        let x_1199 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1197.x, x_1197.x, x_1197.z, x_1197.z) * vec4<f32>(x_1199.x, x_1199.x, x_1199.z, x_1199.z));
        let x_1202 : vec4<f32> = u_xlat8;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1202.y, x_1202.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1206.x, x_1207.y, x_1206.y, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = u_xlat46;
        let x_1214 : vec2<f32> = ((vec2<f32>(x_1209.x, x_1209.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1212));
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1218 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1218) + vec2<f32>(1.0f, 1.0f));
        let x_1221 : vec2<f32> = u_xlat46;
        let x_1223 : vec2<f32> = min(x_1221, vec2<f32>(0.0f, 0.0f));
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1229 : vec4<f32> = u_xlat9;
        let x_1232 : vec2<f32> = u_xlat48;
        let x_1233 : vec2<f32> = ((-(vec2<f32>(x_1226.x, x_1226.y)) * vec2<f32>(x_1229.x, x_1229.y)) + x_1232);
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
        let x_1236 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1236, vec2<f32>(0.0f, 0.0f));
        let x_1238 : vec2<f32> = u_xlat46;
        let x_1240 : vec2<f32> = u_xlat46;
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1238) * x_1240) + vec2<f32>(x_1242.y, x_1242.w));
        let x_1245 : vec4<f32> = u_xlat9;
        let x_1247 : vec2<f32> = (vec2<f32>(x_1245.x, x_1245.y) + vec2<f32>(1.0f, 1.0f));
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
        let x_1250 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1250 + vec2<f32>(1.0f, 1.0f));
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1256 : vec2<f32> = (vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
        let x_1259 : vec2<f32> = u_xlat48;
        let x_1260 : vec2<f32> = (x_1259 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1261 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
        let x_1263 : vec4<f32> = u_xlat9;
        let x_1265 : vec2<f32> = (vec2<f32>(x_1263.x, x_1263.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
        let x_1268 : vec2<f32> = u_xlat46;
        let x_1269 : vec2<f32> = (x_1268 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1272.y, x_1272.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1276 : f32 = u_xlat9.x;
        u_xlat10.z = x_1276;
        let x_1279 : f32 = u_xlat46.x;
        u_xlat10.w = x_1279;
        let x_1282 : f32 = u_xlat11.x;
        u_xlat8.z = x_1282;
        let x_1285 : f32 = u_xlat7.x;
        u_xlat8.w = x_1285;
        let x_1287 : vec4<f32> = u_xlat8;
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1287.z, x_1287.w, x_1287.x, x_1287.z) + vec4<f32>(x_1289.z, x_1289.w, x_1289.x, x_1289.z));
        let x_1293 : f32 = u_xlat10.y;
        u_xlat9.z = x_1293;
        let x_1296 : f32 = u_xlat46.y;
        u_xlat9.w = x_1296;
        let x_1299 : f32 = u_xlat8.y;
        u_xlat11.z = x_1299;
        let x_1302 : f32 = u_xlat7.z;
        u_xlat11.w = x_1302;
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1308 : vec3<f32> = (vec3<f32>(x_1304.z, x_1304.y, x_1304.w) + vec3<f32>(x_1306.z, x_1306.y, x_1306.w));
        let x_1309 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
        let x_1311 : vec4<f32> = u_xlat8;
        let x_1313 : vec4<f32> = u_xlat12;
        let x_1315 : vec3<f32> = (vec3<f32>(x_1311.x, x_1311.z, x_1311.w) / vec3<f32>(x_1313.z, x_1313.w, x_1313.y));
        let x_1316 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
        let x_1318 : vec4<f32> = u_xlat8;
        let x_1323 : vec3<f32> = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat11;
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1330 : vec3<f32> = (vec3<f32>(x_1326.z, x_1326.y, x_1326.w) / vec3<f32>(x_1328.x, x_1328.y, x_1328.z));
        let x_1331 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
        let x_1333 : vec4<f32> = u_xlat9;
        let x_1335 : vec3<f32> = (vec3<f32>(x_1333.x, x_1333.y, x_1333.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1336 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat8;
        let x_1341 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1343 : vec3<f32> = (vec3<f32>(x_1338.y, x_1338.x, x_1338.z) * vec3<f32>(x_1341.x, x_1341.x, x_1341.x));
        let x_1344 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1349 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1351 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1349.y, x_1349.y, x_1349.y));
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
        let x_1355 : f32 = u_xlat9.x;
        u_xlat8.w = x_1355;
        let x_1357 : vec4<f32> = u_xlat6;
        let x_1360 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1363 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.y) * vec4<f32>(x_1360.x, x_1360.y, x_1360.x, x_1360.y)) + vec4<f32>(x_1363.y, x_1363.w, x_1363.x, x_1363.w));
        let x_1366 : vec4<f32> = u_xlat6;
        let x_1369 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1372 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1366.x, x_1366.y) * vec2<f32>(x_1369.x, x_1369.y)) + vec2<f32>(x_1372.z, x_1372.w));
        let x_1376 : f32 = u_xlat8.y;
        u_xlat9.w = x_1376;
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.y, x_1378.z);
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1380.x, x_1379.x, x_1380.z, x_1379.y);
        let x_1382 : vec4<f32> = u_xlat6;
        let x_1385 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y) * vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y)) + vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1388.y));
        let x_1391 : vec4<f32> = u_xlat6;
        let x_1394 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y) * vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.y)) + vec4<f32>(x_1397.w, x_1397.y, x_1397.w, x_1397.z));
        let x_1400 : vec4<f32> = u_xlat6;
        let x_1403 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1406 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1400.x, x_1400.y, x_1400.x, x_1400.y) * vec4<f32>(x_1403.x, x_1403.y, x_1403.x, x_1403.y)) + vec4<f32>(x_1406.x, x_1406.w, x_1406.z, x_1406.w));
        let x_1409 : vec4<f32> = u_xlat7;
        let x_1411 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1409.x, x_1409.x, x_1409.x, x_1409.y) * vec4<f32>(x_1411.z, x_1411.w, x_1411.y, x_1411.z));
        let x_1415 : vec4<f32> = u_xlat7;
        let x_1417 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1415.y, x_1415.y, x_1415.z, x_1415.z) * x_1417);
        let x_1421 : f32 = u_xlat7.z;
        let x_1423 : f32 = u_xlat12.y;
        u_xlat64 = (x_1421 * x_1423);
        let x_1426 : vec4<f32> = u_xlat10;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1437 : vec3<f32> = txVec4;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1437.xy, x_1437.z);
        u_xlat65 = x_1439;
        let x_1441 : vec4<f32> = u_xlat10;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec5;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1451.xy, x_1451.z);
        u_xlat6.x = x_1453;
        let x_1456 : f32 = u_xlat6.x;
        let x_1458 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1456 * x_1458);
        let x_1462 : f32 = u_xlat13.x;
        let x_1463 : f32 = u_xlat65;
        let x_1466 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1462 * x_1463) + x_1466);
        let x_1469 : vec2<f32> = u_xlat46;
        let x_1471 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec6;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1478.xy, x_1478.z);
        u_xlat6.x = x_1480;
        let x_1483 : f32 = u_xlat13.z;
        let x_1485 : f32 = u_xlat6.x;
        let x_1487 : f32 = u_xlat65;
        u_xlat65 = ((x_1483 * x_1485) + x_1487);
        let x_1490 : vec4<f32> = u_xlat9;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec7;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1500.xy, x_1500.z);
        u_xlat6.x = x_1502;
        let x_1505 : f32 = u_xlat13.w;
        let x_1507 : f32 = u_xlat6.x;
        let x_1509 : f32 = u_xlat65;
        u_xlat65 = ((x_1505 * x_1507) + x_1509);
        let x_1512 : vec4<f32> = u_xlat11;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.x, x_1512.y);
        let x_1515 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec8;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat6.x = x_1524;
        let x_1527 : f32 = u_xlat14.x;
        let x_1529 : f32 = u_xlat6.x;
        let x_1531 : f32 = u_xlat65;
        u_xlat65 = ((x_1527 * x_1529) + x_1531);
        let x_1534 : vec4<f32> = u_xlat11;
        let x_1535 : vec2<f32> = vec2<f32>(x_1534.z, x_1534.w);
        let x_1537 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec9;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1544.xy, x_1544.z);
        u_xlat6.x = x_1546;
        let x_1549 : f32 = u_xlat14.y;
        let x_1551 : f32 = u_xlat6.x;
        let x_1553 : f32 = u_xlat65;
        u_xlat65 = ((x_1549 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat9;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.z, x_1556.w);
        let x_1559 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec10;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1566.xy, x_1566.z);
        u_xlat6.x = x_1568;
        let x_1571 : f32 = u_xlat14.z;
        let x_1573 : f32 = u_xlat6.x;
        let x_1575 : f32 = u_xlat65;
        u_xlat65 = ((x_1571 * x_1573) + x_1575);
        let x_1578 : vec4<f32> = u_xlat8;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.x, x_1578.y);
        let x_1581 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec11;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1588.xy, x_1588.z);
        u_xlat6.x = x_1590;
        let x_1593 : f32 = u_xlat14.w;
        let x_1595 : f32 = u_xlat6.x;
        let x_1597 : f32 = u_xlat65;
        u_xlat65 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat8;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.z, x_1600.w);
        let x_1603 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec12;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1610.xy, x_1610.z);
        u_xlat6.x = x_1612;
        let x_1614 : f32 = u_xlat64;
        let x_1616 : f32 = u_xlat6.x;
        let x_1618 : f32 = u_xlat65;
        u_xlat3.x = ((x_1614 * x_1616) + x_1618);
      } else {
        let x_1622 : vec4<f32> = vs_TEXCOORD8;
        let x_1625 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1628 : vec2<f32> = ((vec2<f32>(x_1622.x, x_1622.y) * vec2<f32>(x_1625.z, x_1625.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1629 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        let x_1631 : vec4<f32> = u_xlat6;
        let x_1633 : vec2<f32> = floor(vec2<f32>(x_1631.x, x_1631.y));
        let x_1634 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1633.x, x_1633.y, x_1634.z, x_1634.w);
        let x_1636 : vec4<f32> = vs_TEXCOORD8;
        let x_1639 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1642 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1636.x, x_1636.y) * vec2<f32>(x_1639.z, x_1639.w)) + -(vec2<f32>(x_1642.x, x_1642.y)));
        let x_1646 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1646.x, x_1646.x, x_1646.y, x_1646.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1649 : vec4<f32> = u_xlat7;
        let x_1651 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1649.x, x_1649.x, x_1649.z, x_1649.z) * vec4<f32>(x_1651.x, x_1651.x, x_1651.z, x_1651.z));
        let x_1654 : vec4<f32> = u_xlat8;
        let x_1658 : vec2<f32> = (vec2<f32>(x_1654.y, x_1654.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1659 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1659.x, x_1658.x, x_1659.z, x_1658.y);
        let x_1661 : vec4<f32> = u_xlat8;
        let x_1664 : vec2<f32> = u_xlat46;
        let x_1666 : vec2<f32> = ((vec2<f32>(x_1661.x, x_1661.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1664));
        let x_1667 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1666.x, x_1667.y, x_1666.y, x_1667.w);
        let x_1669 : vec2<f32> = u_xlat46;
        let x_1671 : vec2<f32> = (-(x_1669) + vec2<f32>(1.0f, 1.0f));
        let x_1672 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1671.x, x_1671.y, x_1672.z, x_1672.w);
        let x_1674 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1674, vec2<f32>(0.0f, 0.0f));
        let x_1676 : vec2<f32> = u_xlat48;
        let x_1678 : vec2<f32> = u_xlat48;
        let x_1680 : vec4<f32> = u_xlat8;
        let x_1682 : vec2<f32> = ((-(x_1676) * x_1678) + vec2<f32>(x_1680.x, x_1680.y));
        let x_1683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1682.x, x_1682.y, x_1683.z, x_1683.w);
        let x_1685 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1685, vec2<f32>(0.0f, 0.0f));
        let x_1688 : vec2<f32> = u_xlat48;
        let x_1690 : vec2<f32> = u_xlat48;
        let x_1692 : vec4<f32> = u_xlat7;
        let x_1694 : vec2<f32> = ((-(x_1688) * x_1690) + vec2<f32>(x_1692.y, x_1692.w));
        let x_1695 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1694.x, x_1695.y, x_1694.y);
        let x_1697 : vec4<f32> = u_xlat8;
        let x_1699 : vec2<f32> = (vec2<f32>(x_1697.x, x_1697.y) + vec2<f32>(2.0f, 2.0f));
        let x_1700 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
        let x_1702 : vec3<f32> = u_xlat27;
        let x_1704 : vec2<f32> = (vec2<f32>(x_1702.x, x_1702.z) + vec2<f32>(2.0f, 2.0f));
        let x_1705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1705.x, x_1704.x, x_1705.z, x_1704.y);
        let x_1708 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1708 * 0.081632003f);
        let x_1712 : vec4<f32> = u_xlat7;
        let x_1715 : vec3<f32> = (vec3<f32>(x_1712.z, x_1712.x, x_1712.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1716 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
        let x_1718 : vec4<f32> = u_xlat8;
        let x_1721 : vec2<f32> = (vec2<f32>(x_1718.x, x_1718.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1722 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1721.x, x_1721.y, x_1722.z, x_1722.w);
        let x_1725 : f32 = u_xlat11.y;
        u_xlat10.x = x_1725;
        let x_1727 : vec2<f32> = u_xlat46;
        let x_1734 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1735 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1735.x, x_1734.x, x_1735.z, x_1734.y);
        let x_1737 : vec2<f32> = u_xlat46;
        let x_1741 : vec2<f32> = ((vec2<f32>(x_1737.x, x_1737.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1742 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1741.x, x_1742.y, x_1741.y, x_1742.w);
        let x_1745 : f32 = u_xlat7.x;
        u_xlat8.y = x_1745;
        let x_1748 : f32 = u_xlat9.y;
        u_xlat8.w = x_1748;
        let x_1750 : vec4<f32> = u_xlat8;
        let x_1751 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1750 + x_1751);
        let x_1753 : vec2<f32> = u_xlat46;
        let x_1756 : vec2<f32> = ((vec2<f32>(x_1753.y, x_1753.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1757 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1757.x, x_1756.x, x_1757.z, x_1756.y);
        let x_1759 : vec2<f32> = u_xlat46;
        let x_1762 : vec2<f32> = ((vec2<f32>(x_1759.y, x_1759.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1763 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1762.x, x_1763.y, x_1762.y, x_1763.w);
        let x_1766 : f32 = u_xlat7.y;
        u_xlat9.y = x_1766;
        let x_1768 : vec4<f32> = u_xlat9;
        let x_1769 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1768 + x_1769);
        let x_1771 : vec4<f32> = u_xlat8;
        let x_1772 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1771 / x_1772);
        let x_1774 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1774 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1780 : vec4<f32> = u_xlat9;
        let x_1781 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1780 / x_1781);
        let x_1783 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1783 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1785 : vec4<f32> = u_xlat8;
        let x_1788 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1785.w, x_1785.x, x_1785.y, x_1785.z) * vec4<f32>(x_1788.x, x_1788.x, x_1788.x, x_1788.x));
        let x_1791 : vec4<f32> = u_xlat9;
        let x_1794 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1791.x, x_1791.w, x_1791.y, x_1791.z) * vec4<f32>(x_1794.y, x_1794.y, x_1794.y, x_1794.y));
        let x_1797 : vec4<f32> = u_xlat8;
        let x_1798 : vec3<f32> = vec3<f32>(x_1797.y, x_1797.z, x_1797.w);
        let x_1799 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1798.x, x_1799.y, x_1798.y, x_1798.z);
        let x_1802 : f32 = u_xlat9.x;
        u_xlat11.y = x_1802;
        let x_1804 : vec4<f32> = u_xlat6;
        let x_1807 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1810 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1804.x, x_1804.y, x_1804.x, x_1804.y) * vec4<f32>(x_1807.x, x_1807.y, x_1807.x, x_1807.y)) + vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1810.y));
        let x_1813 : vec4<f32> = u_xlat6;
        let x_1816 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1819 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1813.x, x_1813.y) * vec2<f32>(x_1816.x, x_1816.y)) + vec2<f32>(x_1819.w, x_1819.y));
        let x_1823 : f32 = u_xlat11.y;
        u_xlat8.y = x_1823;
        let x_1826 : f32 = u_xlat9.z;
        u_xlat11.y = x_1826;
        let x_1828 : vec4<f32> = u_xlat6;
        let x_1831 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1834 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1828.x, x_1828.y, x_1828.x, x_1828.y) * vec4<f32>(x_1831.x, x_1831.y, x_1831.x, x_1831.y)) + vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1834.y));
        let x_1837 : vec4<f32> = u_xlat6;
        let x_1840 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1843 : vec4<f32> = u_xlat11;
        let x_1845 : vec2<f32> = ((vec2<f32>(x_1837.x, x_1837.y) * vec2<f32>(x_1840.x, x_1840.y)) + vec2<f32>(x_1843.w, x_1843.y));
        let x_1846 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
        let x_1849 : f32 = u_xlat11.y;
        u_xlat8.z = x_1849;
        let x_1852 : vec4<f32> = u_xlat6;
        let x_1855 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1858 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1852.x, x_1852.y, x_1852.x, x_1852.y) * vec4<f32>(x_1855.x, x_1855.y, x_1855.x, x_1855.y)) + vec4<f32>(x_1858.x, x_1858.y, x_1858.x, x_1858.z));
        let x_1862 : f32 = u_xlat9.w;
        u_xlat11.y = x_1862;
        let x_1865 : vec4<f32> = u_xlat6;
        let x_1868 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1871 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1865.x, x_1865.y, x_1865.x, x_1865.y) * vec4<f32>(x_1868.x, x_1868.y, x_1868.x, x_1868.y)) + vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1871.y));
        let x_1875 : vec4<f32> = u_xlat6;
        let x_1878 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1881 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1875.x, x_1875.y) * vec2<f32>(x_1878.x, x_1878.y)) + vec2<f32>(x_1881.w, x_1881.y));
        let x_1885 : f32 = u_xlat11.y;
        u_xlat8.w = x_1885;
        let x_1888 : vec4<f32> = u_xlat6;
        let x_1891 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1894 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1888.x, x_1888.y) * vec2<f32>(x_1891.x, x_1891.y)) + vec2<f32>(x_1894.x, x_1894.w));
        let x_1897 : vec4<f32> = u_xlat11;
        let x_1898 : vec3<f32> = vec3<f32>(x_1897.x, x_1897.z, x_1897.w);
        let x_1899 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1898.x, x_1899.y, x_1898.y, x_1898.z);
        let x_1901 : vec4<f32> = u_xlat6;
        let x_1904 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1907 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1901.x, x_1901.y, x_1901.x, x_1901.y) * vec4<f32>(x_1904.x, x_1904.y, x_1904.x, x_1904.y)) + vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1907.y));
        let x_1911 : vec4<f32> = u_xlat6;
        let x_1914 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1917 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1911.x, x_1911.y) * vec2<f32>(x_1914.x, x_1914.y)) + vec2<f32>(x_1917.w, x_1917.y));
        let x_1921 : f32 = u_xlat8.x;
        u_xlat9.x = x_1921;
        let x_1923 : vec4<f32> = u_xlat6;
        let x_1926 : vec4<f32> = x_1061.x_MainLightShadowmapSize;
        let x_1929 : vec4<f32> = u_xlat9;
        let x_1931 : vec2<f32> = ((vec2<f32>(x_1923.x, x_1923.y) * vec2<f32>(x_1926.x, x_1926.y)) + vec2<f32>(x_1929.x, x_1929.y));
        let x_1932 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1931.x, x_1931.y, x_1932.z, x_1932.w);
        let x_1935 : vec4<f32> = u_xlat7;
        let x_1937 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1935.x, x_1935.x, x_1935.x, x_1935.x) * x_1937);
        let x_1940 : vec4<f32> = u_xlat7;
        let x_1942 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1940.y, x_1940.y, x_1940.y, x_1940.y) * x_1942);
        let x_1945 : vec4<f32> = u_xlat7;
        let x_1947 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1945.z, x_1945.z, x_1945.z, x_1945.z) * x_1947);
        let x_1949 : vec4<f32> = u_xlat7;
        let x_1951 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1949.w, x_1949.w, x_1949.w, x_1949.w) * x_1951);
        let x_1954 : vec4<f32> = u_xlat12;
        let x_1955 : vec2<f32> = vec2<f32>(x_1954.x, x_1954.y);
        let x_1957 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1955.x, x_1955.y, x_1957);
        let x_1964 : vec3<f32> = txVec13;
        let x_1966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1964.xy, x_1964.z);
        u_xlat64 = x_1966;
        let x_1968 : vec4<f32> = u_xlat12;
        let x_1969 : vec2<f32> = vec2<f32>(x_1968.z, x_1968.w);
        let x_1971 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
        let x_1978 : vec3<f32> = txVec14;
        let x_1980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1978.xy, x_1978.z);
        u_xlat65 = x_1980;
        let x_1981 : f32 = u_xlat65;
        let x_1983 : f32 = u_xlat17.y;
        u_xlat65 = (x_1981 * x_1983);
        let x_1986 : f32 = u_xlat17.x;
        let x_1987 : f32 = u_xlat64;
        let x_1989 : f32 = u_xlat65;
        u_xlat64 = ((x_1986 * x_1987) + x_1989);
        let x_1992 : vec2<f32> = u_xlat46;
        let x_1994 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec15;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2001.xy, x_2001.z);
        u_xlat65 = x_2003;
        let x_2005 : f32 = u_xlat17.z;
        let x_2006 : f32 = u_xlat65;
        let x_2008 : f32 = u_xlat64;
        u_xlat64 = ((x_2005 * x_2006) + x_2008);
        let x_2011 : vec4<f32> = u_xlat15;
        let x_2012 : vec2<f32> = vec2<f32>(x_2011.x, x_2011.y);
        let x_2014 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec16;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2021.xy, x_2021.z);
        u_xlat65 = x_2023;
        let x_2025 : f32 = u_xlat17.w;
        let x_2026 : f32 = u_xlat65;
        let x_2028 : f32 = u_xlat64;
        u_xlat64 = ((x_2025 * x_2026) + x_2028);
        let x_2031 : vec4<f32> = u_xlat13;
        let x_2032 : vec2<f32> = vec2<f32>(x_2031.x, x_2031.y);
        let x_2034 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec17;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2041.xy, x_2041.z);
        u_xlat65 = x_2043;
        let x_2045 : f32 = u_xlat18.x;
        let x_2046 : f32 = u_xlat65;
        let x_2048 : f32 = u_xlat64;
        u_xlat64 = ((x_2045 * x_2046) + x_2048);
        let x_2051 : vec4<f32> = u_xlat13;
        let x_2052 : vec2<f32> = vec2<f32>(x_2051.z, x_2051.w);
        let x_2054 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
        let x_2061 : vec3<f32> = txVec18;
        let x_2063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2061.xy, x_2061.z);
        u_xlat65 = x_2063;
        let x_2065 : f32 = u_xlat18.y;
        let x_2066 : f32 = u_xlat65;
        let x_2068 : f32 = u_xlat64;
        u_xlat64 = ((x_2065 * x_2066) + x_2068);
        let x_2071 : vec4<f32> = u_xlat14;
        let x_2072 : vec2<f32> = vec2<f32>(x_2071.x, x_2071.y);
        let x_2074 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
        let x_2081 : vec3<f32> = txVec19;
        let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2081.xy, x_2081.z);
        u_xlat65 = x_2083;
        let x_2085 : f32 = u_xlat18.z;
        let x_2086 : f32 = u_xlat65;
        let x_2088 : f32 = u_xlat64;
        u_xlat64 = ((x_2085 * x_2086) + x_2088);
        let x_2091 : vec4<f32> = u_xlat15;
        let x_2092 : vec2<f32> = vec2<f32>(x_2091.z, x_2091.w);
        let x_2094 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2101 : vec3<f32> = txVec20;
        let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2101.xy, x_2101.z);
        u_xlat65 = x_2103;
        let x_2105 : f32 = u_xlat18.w;
        let x_2106 : f32 = u_xlat65;
        let x_2108 : f32 = u_xlat64;
        u_xlat64 = ((x_2105 * x_2106) + x_2108);
        let x_2111 : vec4<f32> = u_xlat16;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
        let x_2114 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec21;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2121.xy, x_2121.z);
        u_xlat65 = x_2123;
        let x_2125 : f32 = u_xlat19.x;
        let x_2126 : f32 = u_xlat65;
        let x_2128 : f32 = u_xlat64;
        u_xlat64 = ((x_2125 * x_2126) + x_2128);
        let x_2131 : vec4<f32> = u_xlat16;
        let x_2132 : vec2<f32> = vec2<f32>(x_2131.z, x_2131.w);
        let x_2134 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
        let x_2141 : vec3<f32> = txVec22;
        let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2141.xy, x_2141.z);
        u_xlat65 = x_2143;
        let x_2145 : f32 = u_xlat19.y;
        let x_2146 : f32 = u_xlat65;
        let x_2148 : f32 = u_xlat64;
        u_xlat64 = ((x_2145 * x_2146) + x_2148);
        let x_2151 : vec2<f32> = u_xlat28;
        let x_2153 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
        let x_2160 : vec3<f32> = txVec23;
        let x_2162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2160.xy, x_2160.z);
        u_xlat65 = x_2162;
        let x_2164 : f32 = u_xlat19.z;
        let x_2165 : f32 = u_xlat65;
        let x_2167 : f32 = u_xlat64;
        u_xlat64 = ((x_2164 * x_2165) + x_2167);
        let x_2170 : vec2<f32> = u_xlat54;
        let x_2172 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec24;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2179.xy, x_2179.z);
        u_xlat65 = x_2181;
        let x_2183 : f32 = u_xlat19.w;
        let x_2184 : f32 = u_xlat65;
        let x_2186 : f32 = u_xlat64;
        u_xlat64 = ((x_2183 * x_2184) + x_2186);
        let x_2189 : vec4<f32> = u_xlat11;
        let x_2190 : vec2<f32> = vec2<f32>(x_2189.x, x_2189.y);
        let x_2192 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2190.x, x_2190.y, x_2192);
        let x_2199 : vec3<f32> = txVec25;
        let x_2201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2199.xy, x_2199.z);
        u_xlat65 = x_2201;
        let x_2203 : f32 = u_xlat7.x;
        let x_2204 : f32 = u_xlat65;
        let x_2206 : f32 = u_xlat64;
        u_xlat64 = ((x_2203 * x_2204) + x_2206);
        let x_2209 : vec4<f32> = u_xlat11;
        let x_2210 : vec2<f32> = vec2<f32>(x_2209.z, x_2209.w);
        let x_2212 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
        let x_2219 : vec3<f32> = txVec26;
        let x_2221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2219.xy, x_2219.z);
        u_xlat65 = x_2221;
        let x_2223 : f32 = u_xlat7.y;
        let x_2224 : f32 = u_xlat65;
        let x_2226 : f32 = u_xlat64;
        u_xlat64 = ((x_2223 * x_2224) + x_2226);
        let x_2229 : vec2<f32> = u_xlat49;
        let x_2231 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec27;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2238.xy, x_2238.z);
        u_xlat65 = x_2240;
        let x_2242 : f32 = u_xlat7.z;
        let x_2243 : f32 = u_xlat65;
        let x_2245 : f32 = u_xlat64;
        u_xlat64 = ((x_2242 * x_2243) + x_2245);
        let x_2248 : vec4<f32> = u_xlat6;
        let x_2249 : vec2<f32> = vec2<f32>(x_2248.x, x_2248.y);
        let x_2251 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2249.x, x_2249.y, x_2251);
        let x_2258 : vec3<f32> = txVec28;
        let x_2260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2258.xy, x_2258.z);
        u_xlat65 = x_2260;
        let x_2262 : f32 = u_xlat7.w;
        let x_2263 : f32 = u_xlat65;
        let x_2265 : f32 = u_xlat64;
        u_xlat3.x = ((x_2262 * x_2263) + x_2265);
      }
    }
  } else {
    let x_2270 : vec4<f32> = vs_TEXCOORD8;
    let x_2271 : vec2<f32> = vec2<f32>(x_2270.x, x_2270.y);
    let x_2273 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2271.x, x_2271.y, x_2273);
    let x_2280 : vec3<f32> = txVec29;
    let x_2282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2280.xy, x_2280.z);
    u_xlat3.x = x_2282;
  }
  let x_2285 : f32 = x_1061.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2285) + 1.0f);
  let x_2289 : f32 = u_xlat3.x;
  let x_2291 : f32 = x_1061.x_MainLightShadowParams.x;
  let x_2293 : f32 = u_xlat64;
  u_xlat3.x = ((x_2289 * x_2291) + x_2293);
  let x_2297 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2297);
  let x_2301 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2301 >= 1.0f);
  let x_2303 : bool = u_xlatb64;
  let x_2304 : bool = u_xlatb65;
  u_xlatb64 = (x_2303 | x_2304);
  let x_2306 : bool = u_xlatb64;
  if (x_2306) {
    x_2307 = 1.0f;
  } else {
    let x_2312 : f32 = u_xlat3.x;
    x_2307 = x_2312;
  }
  let x_2313 : f32 = x_2307;
  u_xlat3.x = x_2313;
  let x_2315 : vec3<f32> = vs_TEXCOORD7;
  let x_2318 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_2320 : vec3<f32> = (x_2315 + -(x_2318));
  let x_2321 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
  let x_2323 : vec4<f32> = u_xlat6;
  let x_2325 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2323.x, x_2323.y, x_2323.z), vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
  let x_2328 : f32 = u_xlat64;
  let x_2330 : f32 = x_1061.x_MainLightShadowParams.z;
  let x_2333 : f32 = x_1061.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2328 * x_2330) + x_2333);
  let x_2335 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2335, 0.0f, 1.0f);
  let x_2338 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2338) + 1.0f);
  let x_2341 : f32 = u_xlat64;
  let x_2342 : f32 = u_xlat65;
  let x_2345 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2341 * x_2342) + x_2345);
  let x_2354 : f32 = x_2352.x_MainLightCookieTextureFormat;
  u_xlatb64 = !((x_2354 == -1.0f));
  let x_2356 : bool = u_xlatb64;
  if (x_2356) {
    let x_2359 : vec3<f32> = vs_TEXCOORD7;
    let x_2362 : vec4<f32> = x_2352.x_MainLightWorldToLight[1i];
    let x_2364 : vec2<f32> = (vec2<f32>(x_2359.y, x_2359.y) * vec2<f32>(x_2362.x, x_2362.y));
    let x_2365 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2364.x, x_2364.y, x_2365.z, x_2365.w);
    let x_2368 : vec4<f32> = x_2352.x_MainLightWorldToLight[0i];
    let x_2370 : vec3<f32> = vs_TEXCOORD7;
    let x_2373 : vec4<f32> = u_xlat6;
    let x_2375 : vec2<f32> = ((vec2<f32>(x_2368.x, x_2368.y) * vec2<f32>(x_2370.x, x_2370.x)) + vec2<f32>(x_2373.x, x_2373.y));
    let x_2376 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
    let x_2379 : vec4<f32> = x_2352.x_MainLightWorldToLight[2i];
    let x_2381 : vec3<f32> = vs_TEXCOORD7;
    let x_2384 : vec4<f32> = u_xlat6;
    let x_2386 : vec2<f32> = ((vec2<f32>(x_2379.x, x_2379.y) * vec2<f32>(x_2381.z, x_2381.z)) + vec2<f32>(x_2384.x, x_2384.y));
    let x_2387 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2386.x, x_2386.y, x_2387.z, x_2387.w);
    let x_2389 : vec4<f32> = u_xlat6;
    let x_2392 : vec4<f32> = x_2352.x_MainLightWorldToLight[3i];
    let x_2394 : vec2<f32> = (vec2<f32>(x_2389.x, x_2389.y) + vec2<f32>(x_2392.x, x_2392.y));
    let x_2395 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
    let x_2397 : vec4<f32> = u_xlat6;
    let x_2400 : vec2<f32> = ((vec2<f32>(x_2397.x, x_2397.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2401 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2400.x, x_2400.y, x_2401.z, x_2401.w);
    let x_2408 : vec4<f32> = u_xlat6;
    let x_2411 : f32 = x_128.x_GlobalMipBias.x;
    let x_2412 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2408.x, x_2408.y), x_2411);
    u_xlat6 = x_2412;
    let x_2415 : f32 = x_2352.x_MainLightCookieTextureFormat;
    let x_2417 : f32 = x_2352.x_MainLightCookieTextureFormat;
    let x_2419 : f32 = x_2352.x_MainLightCookieTextureFormat;
    let x_2421 : f32 = x_2352.x_MainLightCookieTextureFormat;
    let x_2422 : vec4<f32> = vec4<f32>(x_2415, x_2417, x_2419, x_2421);
    let x_2429 : vec4<bool> = (vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2422.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2429.x, x_2429.y);
    let x_2432 : bool = u_xlatb7.y;
    if (x_2432) {
      let x_2437 : f32 = u_xlat6.w;
      x_2433 = x_2437;
    } else {
      let x_2440 : f32 = u_xlat6.x;
      x_2433 = x_2440;
    }
    let x_2441 : f32 = x_2433;
    u_xlat64 = x_2441;
    let x_2443 : bool = u_xlatb7.x;
    if (x_2443) {
      let x_2447 : vec4<f32> = u_xlat6;
      x_2444 = vec3<f32>(x_2447.x, x_2447.y, x_2447.z);
    } else {
      let x_2450 : f32 = u_xlat64;
      x_2444 = vec3<f32>(x_2450, x_2450, x_2450);
    }
    let x_2452 : vec3<f32> = x_2444;
    let x_2453 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2459 : vec4<f32> = u_xlat6;
  let x_2462 : vec4<f32> = x_128.x_MainLightColor;
  let x_2464 : vec3<f32> = (vec3<f32>(x_2459.x, x_2459.y, x_2459.z) * vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
  let x_2465 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  let x_2467 : f32 = u_xlat43;
  let x_2469 : vec4<f32> = u_xlat6;
  let x_2471 : vec3<f32> = (vec3<f32>(x_2467, x_2467, x_2467) * vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
  let x_2475 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2475;
  let x_2478 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2478;
  let x_2481 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2481;
  let x_2483 : vec4<f32> = u_xlat7;
  let x_2486 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2483.x, x_2483.y, x_2483.z)), vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
  let x_2489 : f32 = u_xlat64;
  let x_2490 : f32 = u_xlat64;
  u_xlat64 = (x_2489 + x_2490);
  let x_2492 : vec4<f32> = u_xlat1;
  let x_2494 : f32 = u_xlat64;
  let x_2498 : vec4<f32> = u_xlat7;
  let x_2501 : vec3<f32> = ((vec3<f32>(x_2492.x, x_2492.y, x_2492.z) * -(vec3<f32>(x_2494, x_2494, x_2494))) + -(vec3<f32>(x_2498.x, x_2498.y, x_2498.z)));
  let x_2502 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
  let x_2504 : vec4<f32> = u_xlat1;
  let x_2506 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2504.x, x_2504.y, x_2504.z), vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2509, 0.0f, 1.0f);
  let x_2511 : f32 = u_xlat64;
  u_xlat64 = (-(x_2511) + 1.0f);
  let x_2514 : f32 = u_xlat64;
  let x_2515 : f32 = u_xlat64;
  u_xlat64 = (x_2514 * x_2515);
  let x_2517 : f32 = u_xlat64;
  let x_2518 : f32 = u_xlat64;
  u_xlat64 = (x_2517 * x_2518);
  let x_2521 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2521) * 0.699999988f) + 1.700000048f);
  let x_2528 : f32 = u_xlat0.x;
  let x_2529 : f32 = u_xlat65;
  u_xlat0.x = (x_2528 * x_2529);
  let x_2533 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2533 * 6.0f);
  let x_2545 : vec4<f32> = u_xlat8;
  let x_2548 : f32 = u_xlat0.x;
  let x_2549 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2545.x, x_2545.y, x_2545.z), x_2548);
  u_xlat8 = x_2549;
  let x_2551 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2551 + -1.0f);
  let x_2559 : f32 = x_2557.unity_SpecCube0_HDR.w;
  let x_2561 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2559 * x_2561) + 1.0f);
  let x_2566 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2566, 0.0f);
  let x_2570 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2570);
  let x_2574 : f32 = u_xlat0.x;
  let x_2576 : f32 = x_2557.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2574 * x_2576);
  let x_2580 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2580);
  let x_2584 : f32 = u_xlat0.x;
  let x_2586 : f32 = x_2557.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2584 * x_2586);
  let x_2589 : vec4<f32> = u_xlat8;
  let x_2591 : vec3<f32> = u_xlat0;
  let x_2593 : vec3<f32> = (vec3<f32>(x_2589.x, x_2589.y, x_2589.z) * vec3<f32>(x_2591.x, x_2591.x, x_2591.x));
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
  let x_2596 : f32 = u_xlat40;
  let x_2598 : f32 = u_xlat40;
  let x_2602 : vec2<f32> = ((vec2<f32>(x_2596, x_2596) * vec2<f32>(x_2598, x_2598)) + vec2<f32>(-1.0f, 1.0f));
  let x_2603 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2602.x, x_2603.y, x_2602.y);
  let x_2606 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2606);
  let x_2608 : vec4<f32> = u_xlat5;
  let x_2611 : f32 = u_xlat23;
  let x_2613 : vec3<f32> = (-(vec3<f32>(x_2608.x, x_2608.y, x_2608.z)) + vec3<f32>(x_2611, x_2611, x_2611));
  let x_2614 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
  let x_2616 : f32 = u_xlat64;
  let x_2618 : vec4<f32> = u_xlat9;
  let x_2621 : vec4<f32> = u_xlat5;
  let x_2623 : vec3<f32> = ((vec3<f32>(x_2616, x_2616, x_2616) * vec3<f32>(x_2618.x, x_2618.y, x_2618.z)) + vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
  let x_2624 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
  let x_2626 : f32 = u_xlat40;
  let x_2628 : vec4<f32> = u_xlat9;
  let x_2630 : vec3<f32> = (vec3<f32>(x_2626, x_2626, x_2626) * vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
  let x_2631 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2631.w);
  let x_2633 : vec4<f32> = u_xlat8;
  let x_2635 : vec4<f32> = u_xlat9;
  let x_2637 : vec3<f32> = (vec3<f32>(x_2633.x, x_2633.y, x_2633.z) * vec3<f32>(x_2635.x, x_2635.y, x_2635.z));
  let x_2638 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2637.x, x_2637.y, x_2637.z, x_2638.w);
  let x_2640 : vec4<f32> = u_xlat2;
  let x_2642 : vec4<f32> = u_xlat4;
  let x_2645 : vec4<f32> = u_xlat8;
  let x_2647 : vec3<f32> = ((vec3<f32>(x_2640.x, x_2640.y, x_2640.z) * vec3<f32>(x_2642.x, x_2642.y, x_2642.z)) + vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
  let x_2648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
  let x_2651 : f32 = u_xlat3.x;
  let x_2653 : f32 = x_2557.unity_LightData.z;
  u_xlat40 = (x_2651 * x_2653);
  let x_2655 : vec4<f32> = u_xlat1;
  let x_2658 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2655.x, x_2655.y, x_2655.z), vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
  let x_2663 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2663, 0.0f, 1.0f);
  let x_2666 : f32 = u_xlat40;
  let x_2668 : f32 = u_xlat3.x;
  u_xlat40 = (x_2666 * x_2668);
  let x_2670 : f32 = u_xlat40;
  let x_2672 : vec4<f32> = u_xlat6;
  let x_2674 : vec3<f32> = (vec3<f32>(x_2670, x_2670, x_2670) * vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
  let x_2675 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
  let x_2677 : vec4<f32> = u_xlat7;
  let x_2680 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2682 : vec3<f32> = (vec3<f32>(x_2677.x, x_2677.y, x_2677.z) + vec3<f32>(x_2680.x, x_2680.y, x_2680.z));
  let x_2683 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2683.w);
  let x_2685 : vec4<f32> = u_xlat8;
  let x_2687 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2685.x, x_2685.y, x_2685.z), vec3<f32>(x_2687.x, x_2687.y, x_2687.z));
  let x_2690 : f32 = u_xlat40;
  u_xlat40 = max(x_2690, 1.17549435e-37f);
  let x_2693 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2693);
  let x_2695 : f32 = u_xlat40;
  let x_2697 : vec4<f32> = u_xlat8;
  let x_2699 : vec3<f32> = (vec3<f32>(x_2695, x_2695, x_2695) * vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
  let x_2700 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
  let x_2702 : vec4<f32> = u_xlat1;
  let x_2704 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2702.x, x_2702.y, x_2702.z), vec3<f32>(x_2704.x, x_2704.y, x_2704.z));
  let x_2707 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2707, 0.0f, 1.0f);
  let x_2710 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2712 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2710.x, x_2710.y, x_2710.z), vec3<f32>(x_2712.x, x_2712.y, x_2712.z));
  let x_2717 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2717, 0.0f, 1.0f);
  let x_2720 : f32 = u_xlat40;
  let x_2721 : f32 = u_xlat40;
  u_xlat40 = (x_2720 * x_2721);
  let x_2723 : f32 = u_xlat40;
  let x_2725 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2723 * x_2725) + 1.000010014f);
  let x_2730 : f32 = u_xlat3.x;
  let x_2732 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2730 * x_2732);
  let x_2735 : f32 = u_xlat40;
  let x_2736 : f32 = u_xlat40;
  u_xlat40 = (x_2735 * x_2736);
  let x_2739 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2739, 0.100000001f);
  let x_2743 : f32 = u_xlat40;
  let x_2745 : f32 = u_xlat3.x;
  u_xlat40 = (x_2743 * x_2745);
  let x_2747 : f32 = u_xlat63;
  let x_2748 : f32 = u_xlat40;
  u_xlat40 = (x_2747 * x_2748);
  let x_2750 : f32 = u_xlat62;
  let x_2751 : f32 = u_xlat40;
  u_xlat40 = (x_2750 / x_2751);
  let x_2753 : vec4<f32> = u_xlat5;
  let x_2755 : f32 = u_xlat40;
  let x_2758 : vec4<f32> = u_xlat4;
  let x_2760 : vec3<f32> = ((vec3<f32>(x_2753.x, x_2753.y, x_2753.z) * vec3<f32>(x_2755, x_2755, x_2755)) + vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
  let x_2761 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
  let x_2763 : vec4<f32> = u_xlat6;
  let x_2765 : vec4<f32> = u_xlat8;
  let x_2767 : vec3<f32> = (vec3<f32>(x_2763.x, x_2763.y, x_2763.z) * vec3<f32>(x_2765.x, x_2765.y, x_2765.z));
  let x_2768 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2767.x, x_2767.y, x_2767.z, x_2768.w);
  let x_2771 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2773 : f32 = x_2557.unity_LightData.y;
  u_xlat40 = min(x_2771, x_2773);
  let x_2777 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2777));
  let x_2781 : f32 = x_2352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2783 : f32 = x_2352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2785 : f32 = x_2352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2787 : f32 = x_2352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2788 : vec4<f32> = vec4<f32>(x_2781, x_2783, x_2785, x_2787);
  let x_2794 : vec4<bool> = (vec4<f32>(x_2788.x, x_2788.y, x_2788.z, x_2788.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_2794.x, x_2794.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2805 : u32 = u_xlatu_loop_1;
    let x_2806 : u32 = u_xlatu40;
    if ((x_2805 < x_2806)) {
    } else {
      break;
    }
    let x_2809 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2809 >> 2u);
    let x_2813 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2813 & 3u));
    let x_2816 : u32 = u_xlatu65;
    let x_2819 : vec4<f32> = x_2557.unity_LightIndices[bitcast<i32>(x_2816)];
    let x_2829 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2834 : vec4<u32> = indexable[x_2829];
    u_xlat65 = dot(x_2819, bitcast<vec4<f32>>(x_2834));
    let x_2837 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2837));
    let x_2840 : vec3<f32> = vs_TEXCOORD7;
    let x_2852 : u32 = u_xlatu65;
    let x_2855 : vec4<f32> = x_2851.x_AdditionalLightsPosition[bitcast<i32>(x_2852)];
    let x_2858 : u32 = u_xlatu65;
    let x_2861 : vec4<f32> = x_2851.x_AdditionalLightsPosition[bitcast<i32>(x_2858)];
    let x_2863 : vec3<f32> = ((-(x_2840) * vec3<f32>(x_2855.w, x_2855.w, x_2855.w)) + vec3<f32>(x_2861.x, x_2861.y, x_2861.z));
    let x_2864 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
    let x_2867 : vec4<f32> = u_xlat9;
    let x_2869 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2867.x, x_2867.y, x_2867.z), vec3<f32>(x_2869.x, x_2869.y, x_2869.z));
    let x_2872 : f32 = u_xlat66;
    u_xlat66 = max(x_2872, 6.10351562e-05f);
    let x_2875 : f32 = u_xlat66;
    u_xlat67 = inverseSqrt(x_2875);
    let x_2877 : f32 = u_xlat67;
    let x_2879 : vec4<f32> = u_xlat9;
    let x_2881 : vec3<f32> = (vec3<f32>(x_2877, x_2877, x_2877) * vec3<f32>(x_2879.x, x_2879.y, x_2879.z));
    let x_2882 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
    let x_2885 : f32 = u_xlat66;
    u_xlat68 = (1.0f / x_2885);
    let x_2887 : f32 = u_xlat66;
    let x_2888 : u32 = u_xlatu65;
    let x_2891 : f32 = x_2851.x_AdditionalLightsAttenuation[bitcast<i32>(x_2888)].x;
    u_xlat66 = (x_2887 * x_2891);
    let x_2893 : f32 = u_xlat66;
    let x_2895 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2893) * x_2895) + 1.0f);
    let x_2898 : f32 = u_xlat66;
    u_xlat66 = max(x_2898, 0.0f);
    let x_2900 : f32 = u_xlat66;
    let x_2901 : f32 = u_xlat66;
    u_xlat66 = (x_2900 * x_2901);
    let x_2903 : f32 = u_xlat66;
    let x_2904 : f32 = u_xlat68;
    u_xlat66 = (x_2903 * x_2904);
    let x_2906 : u32 = u_xlatu65;
    let x_2909 : vec4<f32> = x_2851.x_AdditionalLightsSpotDir[bitcast<i32>(x_2906)];
    let x_2911 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_2909.x, x_2909.y, x_2909.z), vec3<f32>(x_2911.x, x_2911.y, x_2911.z));
    let x_2914 : f32 = u_xlat68;
    let x_2915 : u32 = u_xlatu65;
    let x_2918 : f32 = x_2851.x_AdditionalLightsAttenuation[bitcast<i32>(x_2915)].z;
    let x_2920 : u32 = u_xlatu65;
    let x_2923 : f32 = x_2851.x_AdditionalLightsAttenuation[bitcast<i32>(x_2920)].w;
    u_xlat68 = ((x_2914 * x_2918) + x_2923);
    let x_2925 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2925, 0.0f, 1.0f);
    let x_2927 : f32 = u_xlat68;
    let x_2928 : f32 = u_xlat68;
    u_xlat68 = (x_2927 * x_2928);
    let x_2930 : f32 = u_xlat66;
    let x_2931 : f32 = u_xlat68;
    u_xlat66 = (x_2930 * x_2931);
    let x_2934 : u32 = u_xlatu65;
    u_xlatu68 = (x_2934 >> 5u);
    let x_2937 : u32 = u_xlatu65;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2937) & 31i)));
    let x_2942 : i32 = u_xlati69;
    let x_2944 : u32 = u_xlatu68;
    let x_2947 : f32 = x_2352.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2944)].el;
    u_xlati68 = bitcast<i32>((bitcast<u32>(x_2942) & bitcast<u32>(x_2947)));
    let x_2951 : i32 = u_xlati68;
    if ((x_2951 != 0i)) {
      let x_2961 : u32 = u_xlatu65;
      let x_2964 : f32 = x_2960.x_AdditionalLightsLightTypes[bitcast<i32>(x_2961)].el;
      u_xlati68 = i32(x_2964);
      let x_2966 : i32 = u_xlati68;
      u_xlati69 = select(1i, 0i, (x_2966 != 0i));
      let x_2970 : u32 = u_xlatu65;
      u_xlati70 = (bitcast<i32>(x_2970) << bitcast<u32>(2i));
      let x_2973 : i32 = u_xlati69;
      if ((x_2973 != 0i)) {
        let x_2977 : vec3<f32> = vs_TEXCOORD7;
        let x_2979 : i32 = u_xlati70;
        let x_2982 : i32 = u_xlati70;
        let x_2986 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_2979 + 1i) / 4i)][((x_2982 + 1i) % 4i)];
        let x_2988 : vec3<f32> = (vec3<f32>(x_2977.y, x_2977.y, x_2977.y) * vec3<f32>(x_2986.x, x_2986.y, x_2986.w));
        let x_2989 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2988.x, x_2988.y, x_2988.z, x_2989.w);
        let x_2991 : i32 = u_xlati70;
        let x_2993 : i32 = u_xlati70;
        let x_2996 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[(x_2991 / 4i)][(x_2993 % 4i)];
        let x_2998 : vec3<f32> = vs_TEXCOORD7;
        let x_3001 : vec4<f32> = u_xlat11;
        let x_3003 : vec3<f32> = ((vec3<f32>(x_2996.x, x_2996.y, x_2996.w) * vec3<f32>(x_2998.x, x_2998.x, x_2998.x)) + vec3<f32>(x_3001.x, x_3001.y, x_3001.z));
        let x_3004 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3004.w);
        let x_3006 : i32 = u_xlati70;
        let x_3009 : i32 = u_xlati70;
        let x_3013 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3006 + 2i) / 4i)][((x_3009 + 2i) % 4i)];
        let x_3015 : vec3<f32> = vs_TEXCOORD7;
        let x_3018 : vec4<f32> = u_xlat11;
        let x_3020 : vec3<f32> = ((vec3<f32>(x_3013.x, x_3013.y, x_3013.w) * vec3<f32>(x_3015.z, x_3015.z, x_3015.z)) + vec3<f32>(x_3018.x, x_3018.y, x_3018.z));
        let x_3021 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3020.x, x_3020.y, x_3020.z, x_3021.w);
        let x_3023 : vec4<f32> = u_xlat11;
        let x_3025 : i32 = u_xlati70;
        let x_3028 : i32 = u_xlati70;
        let x_3032 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3025 + 3i) / 4i)][((x_3028 + 3i) % 4i)];
        let x_3034 : vec3<f32> = (vec3<f32>(x_3023.x, x_3023.y, x_3023.z) + vec3<f32>(x_3032.x, x_3032.y, x_3032.w));
        let x_3035 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3034.x, x_3034.y, x_3034.z, x_3035.w);
        let x_3037 : vec4<f32> = u_xlat11;
        let x_3039 : vec4<f32> = u_xlat11;
        let x_3041 : vec2<f32> = (vec2<f32>(x_3037.x, x_3037.y) / vec2<f32>(x_3039.z, x_3039.z));
        let x_3042 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3041.x, x_3041.y, x_3042.z, x_3042.w);
        let x_3044 : vec4<f32> = u_xlat11;
        let x_3047 : vec2<f32> = ((vec2<f32>(x_3044.x, x_3044.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3048 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3047.x, x_3047.y, x_3048.z, x_3048.w);
        let x_3050 : vec4<f32> = u_xlat11;
        let x_3054 : vec2<f32> = clamp(vec2<f32>(x_3050.x, x_3050.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3055 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3054.x, x_3054.y, x_3055.z, x_3055.w);
        let x_3057 : u32 = u_xlatu65;
        let x_3060 : vec4<f32> = x_2960.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3057)];
        let x_3062 : vec4<f32> = u_xlat11;
        let x_3065 : u32 = u_xlatu65;
        let x_3068 : vec4<f32> = x_2960.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3065)];
        let x_3070 : vec2<f32> = ((vec2<f32>(x_3060.x, x_3060.y) * vec2<f32>(x_3062.x, x_3062.y)) + vec2<f32>(x_3068.z, x_3068.w));
        let x_3071 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3070.x, x_3070.y, x_3071.z, x_3071.w);
      } else {
        let x_3075 : i32 = u_xlati68;
        u_xlatb68 = (x_3075 == 1i);
        let x_3077 : bool = u_xlatb68;
        u_xlati68 = select(0i, 1i, x_3077);
        let x_3079 : i32 = u_xlati68;
        if ((x_3079 != 0i)) {
          let x_3084 : vec3<f32> = vs_TEXCOORD7;
          let x_3086 : i32 = u_xlati70;
          let x_3089 : i32 = u_xlati70;
          let x_3093 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3086 + 1i) / 4i)][((x_3089 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3084.y, x_3084.y) * vec2<f32>(x_3093.x, x_3093.y));
          let x_3096 : i32 = u_xlati70;
          let x_3098 : i32 = u_xlati70;
          let x_3101 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[(x_3096 / 4i)][(x_3098 % 4i)];
          let x_3103 : vec3<f32> = vs_TEXCOORD7;
          let x_3106 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3101.x, x_3101.y) * vec2<f32>(x_3103.x, x_3103.x)) + x_3106);
          let x_3108 : i32 = u_xlati70;
          let x_3111 : i32 = u_xlati70;
          let x_3115 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3108 + 2i) / 4i)][((x_3111 + 2i) % 4i)];
          let x_3117 : vec3<f32> = vs_TEXCOORD7;
          let x_3120 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3115.x, x_3115.y) * vec2<f32>(x_3117.z, x_3117.z)) + x_3120);
          let x_3122 : vec2<f32> = u_xlat51;
          let x_3123 : i32 = u_xlati70;
          let x_3126 : i32 = u_xlati70;
          let x_3130 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3123 + 3i) / 4i)][((x_3126 + 3i) % 4i)];
          u_xlat51 = (x_3122 + vec2<f32>(x_3130.x, x_3130.y));
          let x_3133 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3133 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3136 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3136);
          let x_3138 : u32 = u_xlatu65;
          let x_3141 : vec4<f32> = x_2960.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3138)];
          let x_3143 : vec2<f32> = u_xlat51;
          let x_3145 : u32 = u_xlatu65;
          let x_3148 : vec4<f32> = x_2960.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3145)];
          let x_3150 : vec2<f32> = ((vec2<f32>(x_3141.x, x_3141.y) * x_3143) + vec2<f32>(x_3148.z, x_3148.w));
          let x_3151 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3150.x, x_3150.y, x_3151.z, x_3151.w);
        } else {
          let x_3154 : vec3<f32> = vs_TEXCOORD7;
          let x_3156 : i32 = u_xlati70;
          let x_3159 : i32 = u_xlati70;
          let x_3163 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3156 + 1i) / 4i)][((x_3159 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3154.y, x_3154.y, x_3154.y, x_3154.y) * x_3163);
          let x_3165 : i32 = u_xlati70;
          let x_3167 : i32 = u_xlati70;
          let x_3170 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[(x_3165 / 4i)][(x_3167 % 4i)];
          let x_3171 : vec3<f32> = vs_TEXCOORD7;
          let x_3174 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3170 * vec4<f32>(x_3171.x, x_3171.x, x_3171.x, x_3171.x)) + x_3174);
          let x_3176 : i32 = u_xlati70;
          let x_3179 : i32 = u_xlati70;
          let x_3183 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3176 + 2i) / 4i)][((x_3179 + 2i) % 4i)];
          let x_3184 : vec3<f32> = vs_TEXCOORD7;
          let x_3187 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3183 * vec4<f32>(x_3184.z, x_3184.z, x_3184.z, x_3184.z)) + x_3187);
          let x_3189 : vec4<f32> = u_xlat12;
          let x_3190 : i32 = u_xlati70;
          let x_3193 : i32 = u_xlati70;
          let x_3197 : vec4<f32> = x_2960.x_AdditionalLightsWorldToLights[((x_3190 + 3i) / 4i)][((x_3193 + 3i) % 4i)];
          u_xlat12 = (x_3189 + x_3197);
          let x_3199 : vec4<f32> = u_xlat12;
          let x_3201 : vec4<f32> = u_xlat12;
          let x_3203 : vec3<f32> = (vec3<f32>(x_3199.x, x_3199.y, x_3199.z) / vec3<f32>(x_3201.w, x_3201.w, x_3201.w));
          let x_3204 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3203.x, x_3203.y, x_3203.z, x_3204.w);
          let x_3206 : vec4<f32> = u_xlat12;
          let x_3208 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(vec3<f32>(x_3206.x, x_3206.y, x_3206.z), vec3<f32>(x_3208.x, x_3208.y, x_3208.z));
          let x_3211 : f32 = u_xlat68;
          u_xlat68 = inverseSqrt(x_3211);
          let x_3213 : f32 = u_xlat68;
          let x_3215 : vec4<f32> = u_xlat12;
          let x_3217 : vec3<f32> = (vec3<f32>(x_3213, x_3213, x_3213) * vec3<f32>(x_3215.x, x_3215.y, x_3215.z));
          let x_3218 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3218.w);
          let x_3220 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(abs(vec3<f32>(x_3220.x, x_3220.y, x_3220.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3225 : f32 = u_xlat68;
          u_xlat68 = max(x_3225, 0.000001f);
          let x_3228 : f32 = u_xlat68;
          u_xlat68 = (1.0f / x_3228);
          let x_3230 : f32 = u_xlat68;
          let x_3232 : vec4<f32> = u_xlat12;
          let x_3234 : vec3<f32> = (vec3<f32>(x_3230, x_3230, x_3230) * vec3<f32>(x_3232.z, x_3232.x, x_3232.y));
          let x_3235 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3234.x, x_3234.y, x_3234.z, x_3235.w);
          let x_3238 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3238);
          let x_3242 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3242, 0.0f, 1.0f);
          let x_3246 : vec4<f32> = u_xlat13;
          let x_3249 : vec4<bool> = (vec4<f32>(x_3246.y, x_3246.z, x_3246.y, x_3246.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3249.x, x_3249.y);
          let x_3252 : bool = u_xlatb51.x;
          if (x_3252) {
            let x_3257 : f32 = u_xlat13.x;
            x_3253 = x_3257;
          } else {
            let x_3260 : f32 = u_xlat13.x;
            x_3253 = -(x_3260);
          }
          let x_3262 : f32 = x_3253;
          u_xlat51.x = x_3262;
          let x_3265 : bool = u_xlatb51.y;
          if (x_3265) {
            let x_3270 : f32 = u_xlat13.x;
            x_3266 = x_3270;
          } else {
            let x_3273 : f32 = u_xlat13.x;
            x_3266 = -(x_3273);
          }
          let x_3275 : f32 = x_3266;
          u_xlat51.y = x_3275;
          let x_3277 : vec4<f32> = u_xlat12;
          let x_3279 : f32 = u_xlat68;
          let x_3282 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3277.x, x_3277.y) * vec2<f32>(x_3279, x_3279)) + x_3282);
          let x_3284 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3284 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3287 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3287, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3291 : u32 = u_xlatu65;
          let x_3294 : vec4<f32> = x_2960.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3291)];
          let x_3296 : vec2<f32> = u_xlat51;
          let x_3298 : u32 = u_xlatu65;
          let x_3301 : vec4<f32> = x_2960.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3298)];
          let x_3303 : vec2<f32> = ((vec2<f32>(x_3294.x, x_3294.y) * x_3296) + vec2<f32>(x_3301.z, x_3301.w));
          let x_3304 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3303.x, x_3303.y, x_3304.z, x_3304.w);
        }
      }
      let x_3311 : vec4<f32> = u_xlat11;
      let x_3314 : f32 = x_128.x_GlobalMipBias.x;
      let x_3315 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3311.x, x_3311.y), x_3314);
      u_xlat11 = x_3315;
      let x_3317 : bool = u_xlatb3.y;
      if (x_3317) {
        let x_3322 : f32 = u_xlat11.w;
        x_3318 = x_3322;
      } else {
        let x_3325 : f32 = u_xlat11.x;
        x_3318 = x_3325;
      }
      let x_3326 : f32 = x_3318;
      u_xlat68 = x_3326;
      let x_3328 : bool = u_xlatb3.x;
      if (x_3328) {
        let x_3332 : vec4<f32> = u_xlat11;
        x_3329 = vec3<f32>(x_3332.x, x_3332.y, x_3332.z);
      } else {
        let x_3335 : f32 = u_xlat68;
        x_3329 = vec3<f32>(x_3335, x_3335, x_3335);
      }
      let x_3337 : vec3<f32> = x_3329;
      let x_3338 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3344 : vec4<f32> = u_xlat11;
    let x_3346 : u32 = u_xlatu65;
    let x_3349 : vec4<f32> = x_2851.x_AdditionalLightsColor[bitcast<i32>(x_3346)];
    let x_3351 : vec3<f32> = (vec3<f32>(x_3344.x, x_3344.y, x_3344.z) * vec3<f32>(x_3349.x, x_3349.y, x_3349.z));
    let x_3352 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3351.x, x_3351.y, x_3351.z, x_3352.w);
    let x_3354 : f32 = u_xlat43;
    let x_3356 : vec4<f32> = u_xlat11;
    let x_3358 : vec3<f32> = (vec3<f32>(x_3354, x_3354, x_3354) * vec3<f32>(x_3356.x, x_3356.y, x_3356.z));
    let x_3359 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3358.x, x_3358.y, x_3358.z, x_3359.w);
    let x_3361 : vec4<f32> = u_xlat1;
    let x_3363 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_3361.x, x_3361.y, x_3361.z), vec3<f32>(x_3363.x, x_3363.y, x_3363.z));
    let x_3366 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3366, 0.0f, 1.0f);
    let x_3368 : f32 = u_xlat65;
    let x_3369 : f32 = u_xlat66;
    u_xlat65 = (x_3368 * x_3369);
    let x_3371 : f32 = u_xlat65;
    let x_3373 : vec4<f32> = u_xlat11;
    let x_3375 : vec3<f32> = (vec3<f32>(x_3371, x_3371, x_3371) * vec3<f32>(x_3373.x, x_3373.y, x_3373.z));
    let x_3376 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3375.x, x_3375.y, x_3375.z, x_3376.w);
    let x_3378 : vec4<f32> = u_xlat9;
    let x_3380 : f32 = u_xlat67;
    let x_3383 : vec4<f32> = u_xlat7;
    let x_3385 : vec3<f32> = ((vec3<f32>(x_3378.x, x_3378.y, x_3378.z) * vec3<f32>(x_3380, x_3380, x_3380)) + vec3<f32>(x_3383.x, x_3383.y, x_3383.z));
    let x_3386 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3385.x, x_3385.y, x_3385.z, x_3386.w);
    let x_3388 : vec4<f32> = u_xlat9;
    let x_3390 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3388.x, x_3388.y, x_3388.z), vec3<f32>(x_3390.x, x_3390.y, x_3390.z));
    let x_3393 : f32 = u_xlat65;
    u_xlat65 = max(x_3393, 1.17549435e-37f);
    let x_3395 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_3395);
    let x_3397 : f32 = u_xlat65;
    let x_3399 : vec4<f32> = u_xlat9;
    let x_3401 : vec3<f32> = (vec3<f32>(x_3397, x_3397, x_3397) * vec3<f32>(x_3399.x, x_3399.y, x_3399.z));
    let x_3402 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3401.x, x_3401.y, x_3401.z, x_3402.w);
    let x_3404 : vec4<f32> = u_xlat1;
    let x_3406 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3404.x, x_3404.y, x_3404.z), vec3<f32>(x_3406.x, x_3406.y, x_3406.z));
    let x_3409 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3409, 0.0f, 1.0f);
    let x_3411 : vec4<f32> = u_xlat10;
    let x_3413 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3411.x, x_3411.y, x_3411.z), vec3<f32>(x_3413.x, x_3413.y, x_3413.z));
    let x_3416 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3416, 0.0f, 1.0f);
    let x_3418 : f32 = u_xlat65;
    let x_3419 : f32 = u_xlat65;
    u_xlat65 = (x_3418 * x_3419);
    let x_3421 : f32 = u_xlat65;
    let x_3423 : f32 = u_xlat0.x;
    u_xlat65 = ((x_3421 * x_3423) + 1.000010014f);
    let x_3426 : f32 = u_xlat66;
    let x_3427 : f32 = u_xlat66;
    u_xlat66 = (x_3426 * x_3427);
    let x_3429 : f32 = u_xlat65;
    let x_3430 : f32 = u_xlat65;
    u_xlat65 = (x_3429 * x_3430);
    let x_3432 : f32 = u_xlat66;
    u_xlat66 = max(x_3432, 0.100000001f);
    let x_3434 : f32 = u_xlat65;
    let x_3435 : f32 = u_xlat66;
    u_xlat65 = (x_3434 * x_3435);
    let x_3437 : f32 = u_xlat63;
    let x_3438 : f32 = u_xlat65;
    u_xlat65 = (x_3437 * x_3438);
    let x_3440 : f32 = u_xlat62;
    let x_3441 : f32 = u_xlat65;
    u_xlat65 = (x_3440 / x_3441);
    let x_3443 : vec4<f32> = u_xlat5;
    let x_3445 : f32 = u_xlat65;
    let x_3448 : vec4<f32> = u_xlat4;
    let x_3450 : vec3<f32> = ((vec3<f32>(x_3443.x, x_3443.y, x_3443.z) * vec3<f32>(x_3445, x_3445, x_3445)) + vec3<f32>(x_3448.x, x_3448.y, x_3448.z));
    let x_3451 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3451.w);
    let x_3453 : vec4<f32> = u_xlat9;
    let x_3455 : vec4<f32> = u_xlat11;
    let x_3458 : vec4<f32> = u_xlat8;
    let x_3460 : vec3<f32> = ((vec3<f32>(x_3453.x, x_3453.y, x_3453.z) * vec3<f32>(x_3455.x, x_3455.y, x_3455.z)) + vec3<f32>(x_3458.x, x_3458.y, x_3458.z));
    let x_3461 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);

    continuing {
      let x_3463 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3463 + bitcast<u32>(1i));
    }
  }
  let x_3465 : vec4<f32> = u_xlat2;
  let x_3467 : f32 = u_xlat20;
  let x_3470 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3465.x, x_3465.y, x_3465.z) * vec3<f32>(x_3467, x_3467, x_3467)) + vec3<f32>(x_3470.x, x_3470.y, x_3470.z));
  let x_3473 : vec4<f32> = u_xlat8;
  let x_3475 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3473.x, x_3473.y, x_3473.z) + x_3475);
  let x_3477 : f32 = u_xlat60;
  let x_3479 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3477, x_3477, x_3477) * x_3479);
  let x_3481 : f32 = u_xlat61;
  let x_3482 : f32 = u_xlat61;
  u_xlat60 = (x_3481 * -(x_3482));
  let x_3485 : f32 = u_xlat60;
  u_xlat60 = exp2(x_3485);
  let x_3489 : vec3<f32> = u_xlat0;
  let x_3490 : f32 = u_xlat60;
  let x_3492 : vec3<f32> = (x_3489 * vec3<f32>(x_3490, x_3490, x_3490));
  let x_3493 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3492.x, x_3492.y, x_3492.z, x_3493.w);
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

