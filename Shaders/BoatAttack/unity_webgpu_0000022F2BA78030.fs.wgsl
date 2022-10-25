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

@group(1) @binding(4) var<uniform> x_1049 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2340 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2545 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2839 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2948 : AdditionalLightsCookies;

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
  var x_2295 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2421 : f32;
  var x_2432 : vec3<f32>;
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
  var x_3241 : f32;
  var x_3254 : f32;
  var x_3306 : f32;
  var x_3317 : vec3<f32>;
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
  let x_291 : f32 = u_xlat61;
  u_xlat61 = (x_291 + 6.10351562e-05f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat61;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_128.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat61;
  u_xlat61 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat61;
  u_xlat61 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_404);
  let x_406 : f32 = u_xlat61;
  u_xlat7.z = max(x_406, 1.00000002e-16f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_30.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_128.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat61;
  u_xlat61 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat61;
  u_xlat61 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_453);
  let x_455 : f32 = u_xlat61;
  u_xlat8.z = max(x_455, 1.00000002e-16f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_30.x_NormalScale1;
  let x_463 : f32 = x_30.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_128.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat61;
  u_xlat61 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat61;
  u_xlat61 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_522);
  let x_524 : f32 = u_xlat61;
  u_xlat8.z = max(x_524, 1.00000002e-16f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_30.x_NormalScale2;
  let x_533 : f32 = x_30.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_128.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat61;
  u_xlat61 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat61;
  u_xlat61 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_585);
  let x_587 : f32 = u_xlat61;
  u_xlat8.z = max(x_587, 1.00000002e-16f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_30.x_NormalScale3;
  let x_596 : f32 = x_30.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00001f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat61;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_30.x_Smoothness0;
  let x_677 : f32 = x_30.x_Smoothness1;
  let x_679 : f32 = x_30.x_Smoothness2;
  let x_681 : f32 = x_30.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_30.x_LayerHasMask0;
  let x_691 : f32 = x_30.x_LayerHasMask1;
  let x_694 : f32 = x_30.x_LayerHasMask2;
  let x_697 : f32 = x_30.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_30.x_Metallic0;
  let x_725 : f32 = x_30.x_Metallic1;
  let x_728 : f32 = x_30.x_Metallic2;
  let x_731 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_30.x_LayerHasMask0;
  let x_738 : f32 = x_30.x_LayerHasMask1;
  let x_740 : f32 = x_30.x_LayerHasMask2;
  let x_742 : f32 = x_30.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_30.x_Metallic0;
  let x_749 : f32 = x_30.x_Metallic1;
  let x_751 : f32 = x_30.x_Metallic2;
  let x_753 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_30.x_LayerHasMask0;
  let x_776 : f32 = x_30.x_LayerHasMask1;
  let x_778 : f32 = x_30.x_LayerHasMask2;
  let x_780 : f32 = x_30.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat61;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_838 : f32 = vs_TEXCOORD7.y;
  let x_840 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat61 = (x_838 * x_840);
  let x_843 : f32 = x_128.unity_MatrixV[0i].z;
  let x_845 : f32 = vs_TEXCOORD7.x;
  let x_847 : f32 = u_xlat61;
  u_xlat61 = ((x_843 * x_845) + x_847);
  let x_850 : f32 = x_128.unity_MatrixV[2i].z;
  let x_852 : f32 = vs_TEXCOORD7.z;
  let x_854 : f32 = u_xlat61;
  u_xlat61 = ((x_850 * x_852) + x_854);
  let x_856 : f32 = u_xlat61;
  let x_858 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat61 = (x_856 + x_858);
  let x_860 : f32 = u_xlat61;
  let x_863 : f32 = x_128.x_ProjectionParams.y;
  u_xlat61 = (-(x_860) + -(x_863));
  let x_866 : f32 = u_xlat61;
  u_xlat61 = max(x_866, 0.0f);
  let x_868 : f32 = u_xlat61;
  let x_870 : f32 = x_128.unity_FogParams.x;
  u_xlat61 = (x_868 * x_870);
  let x_877 : vec4<f32> = vs_TEXCOORD0;
  let x_880 : f32 = x_128.x_GlobalMipBias.x;
  let x_881 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_877.z, x_877.w), x_880);
  u_xlat2 = x_881;
  let x_886 : vec4<f32> = vs_TEXCOORD0;
  let x_889 : f32 = x_128.x_GlobalMipBias.x;
  let x_890 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_886.z, x_886.w), x_889);
  let x_891 : vec3<f32> = vec3<f32>(x_890.x, x_890.y, x_890.z);
  let x_892 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat2;
  let x_898 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_899 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat1;
  let x_903 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_908 : f32 = u_xlat2.x;
  u_xlat2.x = (x_908 + 0.5f);
  let x_911 : vec4<f32> = u_xlat2;
  let x_913 : vec4<f32> = u_xlat3;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.x, x_911.x) * vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_920 : f32 = u_xlat2.w;
  u_xlat62 = max(x_920, 0.0001f);
  let x_923 : vec4<f32> = u_xlat2;
  let x_925 : f32 = u_xlat62;
  let x_927 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) / vec3<f32>(x_925, x_925, x_925));
  let x_928 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_932 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_933 : vec2<f32> = vec2<f32>(x_932.x, x_932.y);
  let x_937 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_933.x, x_933.y));
  let x_938 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat3;
  let x_942 : vec4<f32> = hlslcc_FragCoord;
  let x_944 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_942.x, x_942.y));
  let x_945 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
  let x_948 : f32 = u_xlat3.y;
  let x_950 : f32 = x_128.x_ScaleBiasRt.x;
  let x_953 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat62 = ((x_948 * x_950) + x_953);
  let x_955 : f32 = u_xlat62;
  u_xlat3.z = (-(x_955) + 1.0f);
  let x_960 : f32 = u_xlat0.x;
  u_xlat62 = ((-(x_960) * 0.959999979f) + 0.959999979f);
  let x_966 : f32 = u_xlat40;
  let x_967 : f32 = u_xlat62;
  u_xlat23 = (x_966 + -(x_967));
  let x_970 : f32 = u_xlat62;
  let x_972 : vec4<f32> = u_xlat5;
  let x_974 : vec3<f32> = (vec3<f32>(x_970, x_970, x_970) * vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat5;
  let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_982 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec3<f32> = u_xlat0;
  let x_986 : vec4<f32> = u_xlat5;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.x, x_984.x) * vec3<f32>(x_986.x, x_986.y, x_986.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_992 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : f32 = u_xlat40;
  u_xlat0.x = (-(x_994) + 1.0f);
  let x_999 : f32 = u_xlat0.x;
  let x_1001 : f32 = u_xlat0.x;
  u_xlat40 = (x_999 * x_1001);
  let x_1003 : f32 = u_xlat40;
  u_xlat40 = max(x_1003, 0.0078125f);
  let x_1006 : f32 = u_xlat40;
  let x_1007 : f32 = u_xlat40;
  u_xlat62 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat23;
  u_xlat23 = (x_1009 + 1.0f);
  let x_1011 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1011, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat40;
  u_xlat63 = ((x_1014 * 4.0f) + 2.0f);
  let x_1022 : vec4<f32> = u_xlat3;
  let x_1025 : f32 = x_128.x_GlobalMipBias.x;
  let x_1026 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1022.x, x_1022.z), x_1025);
  u_xlat3.x = x_1026.x;
  let x_1031 : f32 = u_xlat3.x;
  u_xlat43 = (x_1031 + -1.0f);
  let x_1034 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1035 : f32 = u_xlat43;
  u_xlat43 = ((x_1034 * x_1035) + 1.0f);
  let x_1038 : f32 = u_xlat20;
  let x_1040 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1038, x_1040);
  let x_1051 : f32 = x_1049.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1051);
  let x_1055 : bool = u_xlatb3.x;
  if (x_1055) {
    let x_1059 : f32 = x_1049.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1059 == 1.0f);
    let x_1063 : bool = u_xlatb3.x;
    if (x_1063) {
      let x_1067 : vec4<f32> = vs_TEXCOORD8;
      let x_1070 : vec4<f32> = x_1049.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y) + x_1070);
      let x_1073 : vec4<f32> = u_xlat6;
      let x_1074 : vec2<f32> = vec2<f32>(x_1073.x, x_1073.y);
      let x_1076 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1074.x, x_1074.y, x_1076);
      let x_1088 : vec3<f32> = txVec0;
      let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1088.xy, x_1088.z);
      u_xlat7.x = x_1090;
      let x_1093 : vec4<f32> = u_xlat6;
      let x_1094 : vec2<f32> = vec2<f32>(x_1093.z, x_1093.w);
      let x_1096 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1094.x, x_1094.y, x_1096);
      let x_1103 : vec3<f32> = txVec1;
      let x_1105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1103.xy, x_1103.z);
      u_xlat7.y = x_1105;
      let x_1107 : vec4<f32> = vs_TEXCOORD8;
      let x_1110 : vec4<f32> = x_1049.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) + x_1110);
      let x_1113 : vec4<f32> = u_xlat6;
      let x_1114 : vec2<f32> = vec2<f32>(x_1113.x, x_1113.y);
      let x_1116 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
      let x_1123 : vec3<f32> = txVec2;
      let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1123.xy, x_1123.z);
      u_xlat7.z = x_1125;
      let x_1128 : vec4<f32> = u_xlat6;
      let x_1129 : vec2<f32> = vec2<f32>(x_1128.z, x_1128.w);
      let x_1131 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1129.x, x_1129.y, x_1131);
      let x_1138 : vec3<f32> = txVec3;
      let x_1140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1138.xy, x_1138.z);
      u_xlat7.w = x_1140;
      let x_1142 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1142, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1150 : f32 = x_1049.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1150 == 2.0f);
      let x_1152 : bool = u_xlatb64;
      if (x_1152) {
        let x_1155 : vec4<f32> = vs_TEXCOORD8;
        let x_1158 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1161 : vec2<f32> = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1158.z, x_1158.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1162 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1166 : vec2<f32> = floor(vec2<f32>(x_1164.x, x_1164.y));
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1171 : vec4<f32> = vs_TEXCOORD8;
        let x_1174 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(x_1174.z, x_1174.w)) + -(vec2<f32>(x_1177.x, x_1177.y)));
        let x_1181 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1181.x, x_1181.x, x_1181.y, x_1181.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1185 : vec4<f32> = u_xlat7;
        let x_1187 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1185.x, x_1185.x, x_1185.z, x_1185.z) * vec4<f32>(x_1187.x, x_1187.x, x_1187.z, x_1187.z));
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1194 : vec2<f32> = (vec2<f32>(x_1190.y, x_1190.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1195 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1194.x, x_1195.y, x_1194.y, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1200 : vec2<f32> = u_xlat46;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1197.x, x_1197.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1200));
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        let x_1206 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1206) + vec2<f32>(1.0f, 1.0f));
        let x_1209 : vec2<f32> = u_xlat46;
        let x_1211 : vec2<f32> = min(x_1209, vec2<f32>(0.0f, 0.0f));
        let x_1212 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
        let x_1214 : vec4<f32> = u_xlat9;
        let x_1217 : vec4<f32> = u_xlat9;
        let x_1220 : vec2<f32> = u_xlat48;
        let x_1221 : vec2<f32> = ((-(vec2<f32>(x_1214.x, x_1214.y)) * vec2<f32>(x_1217.x, x_1217.y)) + x_1220);
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1224 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1224, vec2<f32>(0.0f, 0.0f));
        let x_1226 : vec2<f32> = u_xlat46;
        let x_1228 : vec2<f32> = u_xlat46;
        let x_1230 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1226) * x_1228) + vec2<f32>(x_1230.y, x_1230.w));
        let x_1233 : vec4<f32> = u_xlat9;
        let x_1235 : vec2<f32> = (vec2<f32>(x_1233.x, x_1233.y) + vec2<f32>(1.0f, 1.0f));
        let x_1236 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1238 + vec2<f32>(1.0f, 1.0f));
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1244 : vec2<f32> = (vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1244.x, x_1244.y, x_1245.z, x_1245.w);
        let x_1247 : vec2<f32> = u_xlat48;
        let x_1248 : vec2<f32> = (x_1247 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1248.x, x_1248.y, x_1249.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat9;
        let x_1253 : vec2<f32> = (vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1254 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1253.x, x_1253.y, x_1254.z, x_1254.w);
        let x_1256 : vec2<f32> = u_xlat46;
        let x_1257 : vec2<f32> = (x_1256 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1260.y, x_1260.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1264 : f32 = u_xlat9.x;
        u_xlat10.z = x_1264;
        let x_1267 : f32 = u_xlat46.x;
        u_xlat10.w = x_1267;
        let x_1270 : f32 = u_xlat11.x;
        u_xlat8.z = x_1270;
        let x_1273 : f32 = u_xlat7.x;
        u_xlat8.w = x_1273;
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1277 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1275.z, x_1275.w, x_1275.x, x_1275.z) + vec4<f32>(x_1277.z, x_1277.w, x_1277.x, x_1277.z));
        let x_1281 : f32 = u_xlat10.y;
        u_xlat9.z = x_1281;
        let x_1284 : f32 = u_xlat46.y;
        u_xlat9.w = x_1284;
        let x_1287 : f32 = u_xlat8.y;
        u_xlat11.z = x_1287;
        let x_1290 : f32 = u_xlat7.z;
        u_xlat11.w = x_1290;
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1296 : vec3<f32> = (vec3<f32>(x_1292.z, x_1292.y, x_1292.w) + vec3<f32>(x_1294.z, x_1294.y, x_1294.w));
        let x_1297 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1301 : vec4<f32> = u_xlat12;
        let x_1303 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.z, x_1299.w) / vec3<f32>(x_1301.z, x_1301.w, x_1301.y));
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1311 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat11;
        let x_1316 : vec4<f32> = u_xlat7;
        let x_1318 : vec3<f32> = (vec3<f32>(x_1314.z, x_1314.y, x_1314.w) / vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat9;
        let x_1323 : vec3<f32> = (vec3<f32>(x_1321.x, x_1321.y, x_1321.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat8;
        let x_1329 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1331 : vec3<f32> = (vec3<f32>(x_1326.y, x_1326.x, x_1326.z) * vec3<f32>(x_1329.x, x_1329.x, x_1329.x));
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
        let x_1334 : vec4<f32> = u_xlat9;
        let x_1337 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1339 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(x_1337.y, x_1337.y, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
        let x_1343 : f32 = u_xlat9.x;
        u_xlat8.w = x_1343;
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1348 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y) * vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y)) + vec4<f32>(x_1351.y, x_1351.w, x_1351.x, x_1351.w));
        let x_1354 : vec4<f32> = u_xlat6;
        let x_1357 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1357.x, x_1357.y)) + vec2<f32>(x_1360.z, x_1360.w));
        let x_1364 : f32 = u_xlat8.y;
        u_xlat9.w = x_1364;
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.y, x_1366.z);
        let x_1368 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1368.x, x_1367.x, x_1368.z, x_1367.y);
        let x_1370 : vec4<f32> = u_xlat6;
        let x_1373 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1370.x, x_1370.y, x_1370.x, x_1370.y) * vec4<f32>(x_1373.x, x_1373.y, x_1373.x, x_1373.y)) + vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1376.y));
        let x_1379 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1379.x, x_1379.y, x_1379.x, x_1379.y) * vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y)) + vec4<f32>(x_1385.w, x_1385.y, x_1385.w, x_1385.z));
        let x_1388 : vec4<f32> = u_xlat6;
        let x_1391 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1388.x, x_1388.y, x_1388.x, x_1388.y) * vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y)) + vec4<f32>(x_1394.x, x_1394.w, x_1394.z, x_1394.w));
        let x_1397 : vec4<f32> = u_xlat7;
        let x_1399 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1397.x, x_1397.x, x_1397.x, x_1397.y) * vec4<f32>(x_1399.z, x_1399.w, x_1399.y, x_1399.z));
        let x_1403 : vec4<f32> = u_xlat7;
        let x_1405 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1403.y, x_1403.y, x_1403.z, x_1403.z) * x_1405);
        let x_1409 : f32 = u_xlat7.z;
        let x_1411 : f32 = u_xlat12.y;
        u_xlat64 = (x_1409 * x_1411);
        let x_1414 : vec4<f32> = u_xlat10;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1425 : vec3<f32> = txVec4;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1425.xy, x_1425.z);
        u_xlat65 = x_1427;
        let x_1429 : vec4<f32> = u_xlat10;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec5;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat6.x = x_1441;
        let x_1444 : f32 = u_xlat6.x;
        let x_1446 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1444 * x_1446);
        let x_1450 : f32 = u_xlat13.x;
        let x_1451 : f32 = u_xlat65;
        let x_1454 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1450 * x_1451) + x_1454);
        let x_1457 : vec2<f32> = u_xlat46;
        let x_1459 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec6;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat6.x = x_1468;
        let x_1471 : f32 = u_xlat13.z;
        let x_1473 : f32 = u_xlat6.x;
        let x_1475 : f32 = u_xlat65;
        u_xlat65 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec7;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat6.x = x_1490;
        let x_1493 : f32 = u_xlat13.w;
        let x_1495 : f32 = u_xlat6.x;
        let x_1497 : f32 = u_xlat65;
        u_xlat65 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat11;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec8;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat6.x = x_1512;
        let x_1515 : f32 = u_xlat14.x;
        let x_1517 : f32 = u_xlat6.x;
        let x_1519 : f32 = u_xlat65;
        u_xlat65 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat11;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.z, x_1522.w);
        let x_1525 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec9;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat6.x = x_1534;
        let x_1537 : f32 = u_xlat14.y;
        let x_1539 : f32 = u_xlat6.x;
        let x_1541 : f32 = u_xlat65;
        u_xlat65 = ((x_1537 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat9;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.z, x_1544.w);
        let x_1547 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec10;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
        u_xlat6.x = x_1556;
        let x_1559 : f32 = u_xlat14.z;
        let x_1561 : f32 = u_xlat6.x;
        let x_1563 : f32 = u_xlat65;
        u_xlat65 = ((x_1559 * x_1561) + x_1563);
        let x_1566 : vec4<f32> = u_xlat8;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.x, x_1566.y);
        let x_1569 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec11;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1576.xy, x_1576.z);
        u_xlat6.x = x_1578;
        let x_1581 : f32 = u_xlat14.w;
        let x_1583 : f32 = u_xlat6.x;
        let x_1585 : f32 = u_xlat65;
        u_xlat65 = ((x_1581 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat8;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec12;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1598.xy, x_1598.z);
        u_xlat6.x = x_1600;
        let x_1602 : f32 = u_xlat64;
        let x_1604 : f32 = u_xlat6.x;
        let x_1606 : f32 = u_xlat65;
        u_xlat3.x = ((x_1602 * x_1604) + x_1606);
      } else {
        let x_1610 : vec4<f32> = vs_TEXCOORD8;
        let x_1613 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1616 : vec2<f32> = ((vec2<f32>(x_1610.x, x_1610.y) * vec2<f32>(x_1613.z, x_1613.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
        let x_1619 : vec4<f32> = u_xlat6;
        let x_1621 : vec2<f32> = floor(vec2<f32>(x_1619.x, x_1619.y));
        let x_1622 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
        let x_1624 : vec4<f32> = vs_TEXCOORD8;
        let x_1627 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1627.z, x_1627.w)) + -(vec2<f32>(x_1630.x, x_1630.y)));
        let x_1634 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1634.x, x_1634.x, x_1634.y, x_1634.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1637 : vec4<f32> = u_xlat7;
        let x_1639 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1637.x, x_1637.x, x_1637.z, x_1637.z) * vec4<f32>(x_1639.x, x_1639.x, x_1639.z, x_1639.z));
        let x_1642 : vec4<f32> = u_xlat8;
        let x_1646 : vec2<f32> = (vec2<f32>(x_1642.y, x_1642.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1647.x, x_1646.x, x_1647.z, x_1646.y);
        let x_1649 : vec4<f32> = u_xlat8;
        let x_1652 : vec2<f32> = u_xlat46;
        let x_1654 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1652));
        let x_1655 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1654.x, x_1655.y, x_1654.y, x_1655.w);
        let x_1657 : vec2<f32> = u_xlat46;
        let x_1659 : vec2<f32> = (-(x_1657) + vec2<f32>(1.0f, 1.0f));
        let x_1660 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
        let x_1662 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1662, vec2<f32>(0.0f, 0.0f));
        let x_1664 : vec2<f32> = u_xlat48;
        let x_1666 : vec2<f32> = u_xlat48;
        let x_1668 : vec4<f32> = u_xlat8;
        let x_1670 : vec2<f32> = ((-(x_1664) * x_1666) + vec2<f32>(x_1668.x, x_1668.y));
        let x_1671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1670.x, x_1670.y, x_1671.z, x_1671.w);
        let x_1673 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1673, vec2<f32>(0.0f, 0.0f));
        let x_1676 : vec2<f32> = u_xlat48;
        let x_1678 : vec2<f32> = u_xlat48;
        let x_1680 : vec4<f32> = u_xlat7;
        let x_1682 : vec2<f32> = ((-(x_1676) * x_1678) + vec2<f32>(x_1680.y, x_1680.w));
        let x_1683 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1682.x, x_1683.y, x_1682.y);
        let x_1685 : vec4<f32> = u_xlat8;
        let x_1687 : vec2<f32> = (vec2<f32>(x_1685.x, x_1685.y) + vec2<f32>(2.0f, 2.0f));
        let x_1688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1687.x, x_1687.y, x_1688.z, x_1688.w);
        let x_1690 : vec3<f32> = u_xlat27;
        let x_1692 : vec2<f32> = (vec2<f32>(x_1690.x, x_1690.z) + vec2<f32>(2.0f, 2.0f));
        let x_1693 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1693.x, x_1692.x, x_1693.z, x_1692.y);
        let x_1696 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1696 * 0.081632003f);
        let x_1700 : vec4<f32> = u_xlat7;
        let x_1703 : vec3<f32> = (vec3<f32>(x_1700.z, x_1700.x, x_1700.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1704 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
        let x_1706 : vec4<f32> = u_xlat8;
        let x_1709 : vec2<f32> = (vec2<f32>(x_1706.x, x_1706.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1710 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1709.x, x_1709.y, x_1710.z, x_1710.w);
        let x_1713 : f32 = u_xlat11.y;
        u_xlat10.x = x_1713;
        let x_1715 : vec2<f32> = u_xlat46;
        let x_1722 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1723 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1723.x, x_1722.x, x_1723.z, x_1722.y);
        let x_1725 : vec2<f32> = u_xlat46;
        let x_1729 : vec2<f32> = ((vec2<f32>(x_1725.x, x_1725.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1730 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1729.x, x_1730.y, x_1729.y, x_1730.w);
        let x_1733 : f32 = u_xlat7.x;
        u_xlat8.y = x_1733;
        let x_1736 : f32 = u_xlat9.y;
        u_xlat8.w = x_1736;
        let x_1738 : vec4<f32> = u_xlat8;
        let x_1739 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1738 + x_1739);
        let x_1741 : vec2<f32> = u_xlat46;
        let x_1744 : vec2<f32> = ((vec2<f32>(x_1741.y, x_1741.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1745 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1745.x, x_1744.x, x_1745.z, x_1744.y);
        let x_1747 : vec2<f32> = u_xlat46;
        let x_1750 : vec2<f32> = ((vec2<f32>(x_1747.y, x_1747.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1751 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1750.x, x_1751.y, x_1750.y, x_1751.w);
        let x_1754 : f32 = u_xlat7.y;
        u_xlat9.y = x_1754;
        let x_1756 : vec4<f32> = u_xlat9;
        let x_1757 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1756 + x_1757);
        let x_1759 : vec4<f32> = u_xlat8;
        let x_1760 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1759 / x_1760);
        let x_1762 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1762 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1768 : vec4<f32> = u_xlat9;
        let x_1769 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1768 / x_1769);
        let x_1771 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1771 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1773 : vec4<f32> = u_xlat8;
        let x_1776 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1773.w, x_1773.x, x_1773.y, x_1773.z) * vec4<f32>(x_1776.x, x_1776.x, x_1776.x, x_1776.x));
        let x_1779 : vec4<f32> = u_xlat9;
        let x_1782 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1779.x, x_1779.w, x_1779.y, x_1779.z) * vec4<f32>(x_1782.y, x_1782.y, x_1782.y, x_1782.y));
        let x_1785 : vec4<f32> = u_xlat8;
        let x_1786 : vec3<f32> = vec3<f32>(x_1785.y, x_1785.z, x_1785.w);
        let x_1787 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1786.x, x_1787.y, x_1786.y, x_1786.z);
        let x_1790 : f32 = u_xlat9.x;
        u_xlat11.y = x_1790;
        let x_1792 : vec4<f32> = u_xlat6;
        let x_1795 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1798 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1792.x, x_1792.y, x_1792.x, x_1792.y) * vec4<f32>(x_1795.x, x_1795.y, x_1795.x, x_1795.y)) + vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1798.y));
        let x_1801 : vec4<f32> = u_xlat6;
        let x_1804 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1807 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1801.x, x_1801.y) * vec2<f32>(x_1804.x, x_1804.y)) + vec2<f32>(x_1807.w, x_1807.y));
        let x_1811 : f32 = u_xlat11.y;
        u_xlat8.y = x_1811;
        let x_1814 : f32 = u_xlat9.z;
        u_xlat11.y = x_1814;
        let x_1816 : vec4<f32> = u_xlat6;
        let x_1819 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1816.x, x_1816.y, x_1816.x, x_1816.y) * vec4<f32>(x_1819.x, x_1819.y, x_1819.x, x_1819.y)) + vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1822.y));
        let x_1825 : vec4<f32> = u_xlat6;
        let x_1828 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1831 : vec4<f32> = u_xlat11;
        let x_1833 : vec2<f32> = ((vec2<f32>(x_1825.x, x_1825.y) * vec2<f32>(x_1828.x, x_1828.y)) + vec2<f32>(x_1831.w, x_1831.y));
        let x_1834 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
        let x_1837 : f32 = u_xlat11.y;
        u_xlat8.z = x_1837;
        let x_1840 : vec4<f32> = u_xlat6;
        let x_1843 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1846 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1840.x, x_1840.y, x_1840.x, x_1840.y) * vec4<f32>(x_1843.x, x_1843.y, x_1843.x, x_1843.y)) + vec4<f32>(x_1846.x, x_1846.y, x_1846.x, x_1846.z));
        let x_1850 : f32 = u_xlat9.w;
        u_xlat11.y = x_1850;
        let x_1853 : vec4<f32> = u_xlat6;
        let x_1856 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1859 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1853.x, x_1853.y, x_1853.x, x_1853.y) * vec4<f32>(x_1856.x, x_1856.y, x_1856.x, x_1856.y)) + vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1859.y));
        let x_1863 : vec4<f32> = u_xlat6;
        let x_1866 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1869 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1863.x, x_1863.y) * vec2<f32>(x_1866.x, x_1866.y)) + vec2<f32>(x_1869.w, x_1869.y));
        let x_1873 : f32 = u_xlat11.y;
        u_xlat8.w = x_1873;
        let x_1876 : vec4<f32> = u_xlat6;
        let x_1879 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1882 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1876.x, x_1876.y) * vec2<f32>(x_1879.x, x_1879.y)) + vec2<f32>(x_1882.x, x_1882.w));
        let x_1885 : vec4<f32> = u_xlat11;
        let x_1886 : vec3<f32> = vec3<f32>(x_1885.x, x_1885.z, x_1885.w);
        let x_1887 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1886.x, x_1887.y, x_1886.y, x_1886.z);
        let x_1889 : vec4<f32> = u_xlat6;
        let x_1892 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1895 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1889.x, x_1889.y, x_1889.x, x_1889.y) * vec4<f32>(x_1892.x, x_1892.y, x_1892.x, x_1892.y)) + vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1895.y));
        let x_1899 : vec4<f32> = u_xlat6;
        let x_1902 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1905 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1899.x, x_1899.y) * vec2<f32>(x_1902.x, x_1902.y)) + vec2<f32>(x_1905.w, x_1905.y));
        let x_1909 : f32 = u_xlat8.x;
        u_xlat9.x = x_1909;
        let x_1911 : vec4<f32> = u_xlat6;
        let x_1914 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1917 : vec4<f32> = u_xlat9;
        let x_1919 : vec2<f32> = ((vec2<f32>(x_1911.x, x_1911.y) * vec2<f32>(x_1914.x, x_1914.y)) + vec2<f32>(x_1917.x, x_1917.y));
        let x_1920 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1919.x, x_1919.y, x_1920.z, x_1920.w);
        let x_1923 : vec4<f32> = u_xlat7;
        let x_1925 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1923.x, x_1923.x, x_1923.x, x_1923.x) * x_1925);
        let x_1928 : vec4<f32> = u_xlat7;
        let x_1930 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1928.y, x_1928.y, x_1928.y, x_1928.y) * x_1930);
        let x_1933 : vec4<f32> = u_xlat7;
        let x_1935 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1933.z, x_1933.z, x_1933.z, x_1933.z) * x_1935);
        let x_1937 : vec4<f32> = u_xlat7;
        let x_1939 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1937.w, x_1937.w, x_1937.w, x_1937.w) * x_1939);
        let x_1942 : vec4<f32> = u_xlat12;
        let x_1943 : vec2<f32> = vec2<f32>(x_1942.x, x_1942.y);
        let x_1945 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1943.x, x_1943.y, x_1945);
        let x_1952 : vec3<f32> = txVec13;
        let x_1954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1952.xy, x_1952.z);
        u_xlat64 = x_1954;
        let x_1956 : vec4<f32> = u_xlat12;
        let x_1957 : vec2<f32> = vec2<f32>(x_1956.z, x_1956.w);
        let x_1959 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec14;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1966.xy, x_1966.z);
        u_xlat65 = x_1968;
        let x_1969 : f32 = u_xlat65;
        let x_1971 : f32 = u_xlat17.y;
        u_xlat65 = (x_1969 * x_1971);
        let x_1974 : f32 = u_xlat17.x;
        let x_1975 : f32 = u_xlat64;
        let x_1977 : f32 = u_xlat65;
        u_xlat64 = ((x_1974 * x_1975) + x_1977);
        let x_1980 : vec2<f32> = u_xlat46;
        let x_1982 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec15;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1989.xy, x_1989.z);
        u_xlat65 = x_1991;
        let x_1993 : f32 = u_xlat17.z;
        let x_1994 : f32 = u_xlat65;
        let x_1996 : f32 = u_xlat64;
        u_xlat64 = ((x_1993 * x_1994) + x_1996);
        let x_1999 : vec4<f32> = u_xlat15;
        let x_2000 : vec2<f32> = vec2<f32>(x_1999.x, x_1999.y);
        let x_2002 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
        let x_2009 : vec3<f32> = txVec16;
        let x_2011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2009.xy, x_2009.z);
        u_xlat65 = x_2011;
        let x_2013 : f32 = u_xlat17.w;
        let x_2014 : f32 = u_xlat65;
        let x_2016 : f32 = u_xlat64;
        u_xlat64 = ((x_2013 * x_2014) + x_2016);
        let x_2019 : vec4<f32> = u_xlat13;
        let x_2020 : vec2<f32> = vec2<f32>(x_2019.x, x_2019.y);
        let x_2022 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec17;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2029.xy, x_2029.z);
        u_xlat65 = x_2031;
        let x_2033 : f32 = u_xlat18.x;
        let x_2034 : f32 = u_xlat65;
        let x_2036 : f32 = u_xlat64;
        u_xlat64 = ((x_2033 * x_2034) + x_2036);
        let x_2039 : vec4<f32> = u_xlat13;
        let x_2040 : vec2<f32> = vec2<f32>(x_2039.z, x_2039.w);
        let x_2042 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
        let x_2049 : vec3<f32> = txVec18;
        let x_2051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2049.xy, x_2049.z);
        u_xlat65 = x_2051;
        let x_2053 : f32 = u_xlat18.y;
        let x_2054 : f32 = u_xlat65;
        let x_2056 : f32 = u_xlat64;
        u_xlat64 = ((x_2053 * x_2054) + x_2056);
        let x_2059 : vec4<f32> = u_xlat14;
        let x_2060 : vec2<f32> = vec2<f32>(x_2059.x, x_2059.y);
        let x_2062 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
        let x_2069 : vec3<f32> = txVec19;
        let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2069.xy, x_2069.z);
        u_xlat65 = x_2071;
        let x_2073 : f32 = u_xlat18.z;
        let x_2074 : f32 = u_xlat65;
        let x_2076 : f32 = u_xlat64;
        u_xlat64 = ((x_2073 * x_2074) + x_2076);
        let x_2079 : vec4<f32> = u_xlat15;
        let x_2080 : vec2<f32> = vec2<f32>(x_2079.z, x_2079.w);
        let x_2082 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec20;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2089.xy, x_2089.z);
        u_xlat65 = x_2091;
        let x_2093 : f32 = u_xlat18.w;
        let x_2094 : f32 = u_xlat65;
        let x_2096 : f32 = u_xlat64;
        u_xlat64 = ((x_2093 * x_2094) + x_2096);
        let x_2099 : vec4<f32> = u_xlat16;
        let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
        let x_2102 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
        let x_2109 : vec3<f32> = txVec21;
        let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2109.xy, x_2109.z);
        u_xlat65 = x_2111;
        let x_2113 : f32 = u_xlat19.x;
        let x_2114 : f32 = u_xlat65;
        let x_2116 : f32 = u_xlat64;
        u_xlat64 = ((x_2113 * x_2114) + x_2116);
        let x_2119 : vec4<f32> = u_xlat16;
        let x_2120 : vec2<f32> = vec2<f32>(x_2119.z, x_2119.w);
        let x_2122 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2129 : vec3<f32> = txVec22;
        let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2129.xy, x_2129.z);
        u_xlat65 = x_2131;
        let x_2133 : f32 = u_xlat19.y;
        let x_2134 : f32 = u_xlat65;
        let x_2136 : f32 = u_xlat64;
        u_xlat64 = ((x_2133 * x_2134) + x_2136);
        let x_2139 : vec2<f32> = u_xlat28;
        let x_2141 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
        let x_2148 : vec3<f32> = txVec23;
        let x_2150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2148.xy, x_2148.z);
        u_xlat65 = x_2150;
        let x_2152 : f32 = u_xlat19.z;
        let x_2153 : f32 = u_xlat65;
        let x_2155 : f32 = u_xlat64;
        u_xlat64 = ((x_2152 * x_2153) + x_2155);
        let x_2158 : vec2<f32> = u_xlat54;
        let x_2160 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2158.x, x_2158.y, x_2160);
        let x_2167 : vec3<f32> = txVec24;
        let x_2169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2167.xy, x_2167.z);
        u_xlat65 = x_2169;
        let x_2171 : f32 = u_xlat19.w;
        let x_2172 : f32 = u_xlat65;
        let x_2174 : f32 = u_xlat64;
        u_xlat64 = ((x_2171 * x_2172) + x_2174);
        let x_2177 : vec4<f32> = u_xlat11;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.x, x_2177.y);
        let x_2180 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec25;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2187.xy, x_2187.z);
        u_xlat65 = x_2189;
        let x_2191 : f32 = u_xlat7.x;
        let x_2192 : f32 = u_xlat65;
        let x_2194 : f32 = u_xlat64;
        u_xlat64 = ((x_2191 * x_2192) + x_2194);
        let x_2197 : vec4<f32> = u_xlat11;
        let x_2198 : vec2<f32> = vec2<f32>(x_2197.z, x_2197.w);
        let x_2200 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2198.x, x_2198.y, x_2200);
        let x_2207 : vec3<f32> = txVec26;
        let x_2209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2207.xy, x_2207.z);
        u_xlat65 = x_2209;
        let x_2211 : f32 = u_xlat7.y;
        let x_2212 : f32 = u_xlat65;
        let x_2214 : f32 = u_xlat64;
        u_xlat64 = ((x_2211 * x_2212) + x_2214);
        let x_2217 : vec2<f32> = u_xlat49;
        let x_2219 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2217.x, x_2217.y, x_2219);
        let x_2226 : vec3<f32> = txVec27;
        let x_2228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2226.xy, x_2226.z);
        u_xlat65 = x_2228;
        let x_2230 : f32 = u_xlat7.z;
        let x_2231 : f32 = u_xlat65;
        let x_2233 : f32 = u_xlat64;
        u_xlat64 = ((x_2230 * x_2231) + x_2233);
        let x_2236 : vec4<f32> = u_xlat6;
        let x_2237 : vec2<f32> = vec2<f32>(x_2236.x, x_2236.y);
        let x_2239 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2237.x, x_2237.y, x_2239);
        let x_2246 : vec3<f32> = txVec28;
        let x_2248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2246.xy, x_2246.z);
        u_xlat65 = x_2248;
        let x_2250 : f32 = u_xlat7.w;
        let x_2251 : f32 = u_xlat65;
        let x_2253 : f32 = u_xlat64;
        u_xlat3.x = ((x_2250 * x_2251) + x_2253);
      }
    }
  } else {
    let x_2258 : vec4<f32> = vs_TEXCOORD8;
    let x_2259 : vec2<f32> = vec2<f32>(x_2258.x, x_2258.y);
    let x_2261 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2259.x, x_2259.y, x_2261);
    let x_2268 : vec3<f32> = txVec29;
    let x_2270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2268.xy, x_2268.z);
    u_xlat3.x = x_2270;
  }
  let x_2273 : f32 = x_1049.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2273) + 1.0f);
  let x_2277 : f32 = u_xlat3.x;
  let x_2279 : f32 = x_1049.x_MainLightShadowParams.x;
  let x_2281 : f32 = u_xlat64;
  u_xlat3.x = ((x_2277 * x_2279) + x_2281);
  let x_2285 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2285);
  let x_2289 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2289 >= 1.0f);
  let x_2291 : bool = u_xlatb64;
  let x_2292 : bool = u_xlatb65;
  u_xlatb64 = (x_2291 | x_2292);
  let x_2294 : bool = u_xlatb64;
  if (x_2294) {
    x_2295 = 1.0f;
  } else {
    let x_2300 : f32 = u_xlat3.x;
    x_2295 = x_2300;
  }
  let x_2301 : f32 = x_2295;
  u_xlat3.x = x_2301;
  let x_2303 : vec3<f32> = vs_TEXCOORD7;
  let x_2306 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_2308 : vec3<f32> = (x_2303 + -(x_2306));
  let x_2309 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
  let x_2311 : vec4<f32> = u_xlat6;
  let x_2313 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2311.x, x_2311.y, x_2311.z), vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
  let x_2316 : f32 = u_xlat64;
  let x_2318 : f32 = x_1049.x_MainLightShadowParams.z;
  let x_2321 : f32 = x_1049.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2316 * x_2318) + x_2321);
  let x_2323 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2323, 0.0f, 1.0f);
  let x_2326 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2326) + 1.0f);
  let x_2329 : f32 = u_xlat64;
  let x_2330 : f32 = u_xlat65;
  let x_2333 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2329 * x_2330) + x_2333);
  let x_2342 : f32 = x_2340.x_MainLightCookieTextureFormat;
  u_xlatb64 = !((x_2342 == -1.0f));
  let x_2344 : bool = u_xlatb64;
  if (x_2344) {
    let x_2347 : vec3<f32> = vs_TEXCOORD7;
    let x_2350 : vec4<f32> = x_2340.x_MainLightWorldToLight[1i];
    let x_2352 : vec2<f32> = (vec2<f32>(x_2347.y, x_2347.y) * vec2<f32>(x_2350.x, x_2350.y));
    let x_2353 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2352.x, x_2352.y, x_2353.z, x_2353.w);
    let x_2356 : vec4<f32> = x_2340.x_MainLightWorldToLight[0i];
    let x_2358 : vec3<f32> = vs_TEXCOORD7;
    let x_2361 : vec4<f32> = u_xlat6;
    let x_2363 : vec2<f32> = ((vec2<f32>(x_2356.x, x_2356.y) * vec2<f32>(x_2358.x, x_2358.x)) + vec2<f32>(x_2361.x, x_2361.y));
    let x_2364 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2363.x, x_2363.y, x_2364.z, x_2364.w);
    let x_2367 : vec4<f32> = x_2340.x_MainLightWorldToLight[2i];
    let x_2369 : vec3<f32> = vs_TEXCOORD7;
    let x_2372 : vec4<f32> = u_xlat6;
    let x_2374 : vec2<f32> = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2369.z, x_2369.z)) + vec2<f32>(x_2372.x, x_2372.y));
    let x_2375 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2374.x, x_2374.y, x_2375.z, x_2375.w);
    let x_2377 : vec4<f32> = u_xlat6;
    let x_2380 : vec4<f32> = x_2340.x_MainLightWorldToLight[3i];
    let x_2382 : vec2<f32> = (vec2<f32>(x_2377.x, x_2377.y) + vec2<f32>(x_2380.x, x_2380.y));
    let x_2383 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2382.x, x_2382.y, x_2383.z, x_2383.w);
    let x_2385 : vec4<f32> = u_xlat6;
    let x_2388 : vec2<f32> = ((vec2<f32>(x_2385.x, x_2385.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2389 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2388.x, x_2388.y, x_2389.z, x_2389.w);
    let x_2396 : vec4<f32> = u_xlat6;
    let x_2399 : f32 = x_128.x_GlobalMipBias.x;
    let x_2400 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2396.x, x_2396.y), x_2399);
    u_xlat6 = x_2400;
    let x_2403 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2405 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2407 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2409 : f32 = x_2340.x_MainLightCookieTextureFormat;
    let x_2410 : vec4<f32> = vec4<f32>(x_2403, x_2405, x_2407, x_2409);
    let x_2417 : vec4<bool> = (vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2410.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2417.x, x_2417.y);
    let x_2420 : bool = u_xlatb7.y;
    if (x_2420) {
      let x_2425 : f32 = u_xlat6.w;
      x_2421 = x_2425;
    } else {
      let x_2428 : f32 = u_xlat6.x;
      x_2421 = x_2428;
    }
    let x_2429 : f32 = x_2421;
    u_xlat64 = x_2429;
    let x_2431 : bool = u_xlatb7.x;
    if (x_2431) {
      let x_2435 : vec4<f32> = u_xlat6;
      x_2432 = vec3<f32>(x_2435.x, x_2435.y, x_2435.z);
    } else {
      let x_2438 : f32 = u_xlat64;
      x_2432 = vec3<f32>(x_2438, x_2438, x_2438);
    }
    let x_2440 : vec3<f32> = x_2432;
    let x_2441 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2447 : vec4<f32> = u_xlat6;
  let x_2450 : vec4<f32> = x_128.x_MainLightColor;
  let x_2452 : vec3<f32> = (vec3<f32>(x_2447.x, x_2447.y, x_2447.z) * vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2455 : f32 = u_xlat43;
  let x_2457 : vec4<f32> = u_xlat6;
  let x_2459 : vec3<f32> = (vec3<f32>(x_2455, x_2455, x_2455) * vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
  let x_2463 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2463;
  let x_2466 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2466;
  let x_2469 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2469;
  let x_2471 : vec4<f32> = u_xlat7;
  let x_2474 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2471.x, x_2471.y, x_2471.z)), vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
  let x_2477 : f32 = u_xlat64;
  let x_2478 : f32 = u_xlat64;
  u_xlat64 = (x_2477 + x_2478);
  let x_2480 : vec4<f32> = u_xlat1;
  let x_2482 : f32 = u_xlat64;
  let x_2486 : vec4<f32> = u_xlat7;
  let x_2489 : vec3<f32> = ((vec3<f32>(x_2480.x, x_2480.y, x_2480.z) * -(vec3<f32>(x_2482, x_2482, x_2482))) + -(vec3<f32>(x_2486.x, x_2486.y, x_2486.z)));
  let x_2490 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2492 : vec4<f32> = u_xlat1;
  let x_2494 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2492.x, x_2492.y, x_2492.z), vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
  let x_2497 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2497, 0.0f, 1.0f);
  let x_2499 : f32 = u_xlat64;
  u_xlat64 = (-(x_2499) + 1.0f);
  let x_2502 : f32 = u_xlat64;
  let x_2503 : f32 = u_xlat64;
  u_xlat64 = (x_2502 * x_2503);
  let x_2505 : f32 = u_xlat64;
  let x_2506 : f32 = u_xlat64;
  u_xlat64 = (x_2505 * x_2506);
  let x_2509 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2509) * 0.699999988f) + 1.700000048f);
  let x_2516 : f32 = u_xlat0.x;
  let x_2517 : f32 = u_xlat65;
  u_xlat0.x = (x_2516 * x_2517);
  let x_2521 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2521 * 6.0f);
  let x_2533 : vec4<f32> = u_xlat8;
  let x_2536 : f32 = u_xlat0.x;
  let x_2537 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2533.x, x_2533.y, x_2533.z), x_2536);
  u_xlat8 = x_2537;
  let x_2539 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2539 + -1.0f);
  let x_2547 : f32 = x_2545.unity_SpecCube0_HDR.w;
  let x_2549 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2547 * x_2549) + 1.0f);
  let x_2554 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2554, 0.0f);
  let x_2558 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2558);
  let x_2562 : f32 = u_xlat0.x;
  let x_2564 : f32 = x_2545.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2562 * x_2564);
  let x_2568 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2568);
  let x_2572 : f32 = u_xlat0.x;
  let x_2574 : f32 = x_2545.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2572 * x_2574);
  let x_2577 : vec4<f32> = u_xlat8;
  let x_2579 : vec3<f32> = u_xlat0;
  let x_2581 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) * vec3<f32>(x_2579.x, x_2579.x, x_2579.x));
  let x_2582 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
  let x_2584 : f32 = u_xlat40;
  let x_2586 : f32 = u_xlat40;
  let x_2590 : vec2<f32> = ((vec2<f32>(x_2584, x_2584) * vec2<f32>(x_2586, x_2586)) + vec2<f32>(-1.0f, 1.0f));
  let x_2591 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2590.x, x_2591.y, x_2590.y);
  let x_2594 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2594);
  let x_2596 : vec4<f32> = u_xlat5;
  let x_2599 : f32 = u_xlat23;
  let x_2601 : vec3<f32> = (-(vec3<f32>(x_2596.x, x_2596.y, x_2596.z)) + vec3<f32>(x_2599, x_2599, x_2599));
  let x_2602 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2602.w);
  let x_2604 : f32 = u_xlat64;
  let x_2606 : vec4<f32> = u_xlat9;
  let x_2609 : vec4<f32> = u_xlat5;
  let x_2611 : vec3<f32> = ((vec3<f32>(x_2604, x_2604, x_2604) * vec3<f32>(x_2606.x, x_2606.y, x_2606.z)) + vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
  let x_2612 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
  let x_2614 : f32 = u_xlat40;
  let x_2616 : vec4<f32> = u_xlat9;
  let x_2618 : vec3<f32> = (vec3<f32>(x_2614, x_2614, x_2614) * vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
  let x_2619 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
  let x_2621 : vec4<f32> = u_xlat8;
  let x_2623 : vec4<f32> = u_xlat9;
  let x_2625 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.y, x_2621.z) * vec3<f32>(x_2623.x, x_2623.y, x_2623.z));
  let x_2626 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
  let x_2628 : vec4<f32> = u_xlat2;
  let x_2630 : vec4<f32> = u_xlat4;
  let x_2633 : vec4<f32> = u_xlat8;
  let x_2635 : vec3<f32> = ((vec3<f32>(x_2628.x, x_2628.y, x_2628.z) * vec3<f32>(x_2630.x, x_2630.y, x_2630.z)) + vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
  let x_2636 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
  let x_2639 : f32 = u_xlat3.x;
  let x_2641 : f32 = x_2545.unity_LightData.z;
  u_xlat40 = (x_2639 * x_2641);
  let x_2643 : vec4<f32> = u_xlat1;
  let x_2646 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2643.x, x_2643.y, x_2643.z), vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
  let x_2651 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2651, 0.0f, 1.0f);
  let x_2654 : f32 = u_xlat40;
  let x_2656 : f32 = u_xlat3.x;
  u_xlat40 = (x_2654 * x_2656);
  let x_2658 : f32 = u_xlat40;
  let x_2660 : vec4<f32> = u_xlat6;
  let x_2662 : vec3<f32> = (vec3<f32>(x_2658, x_2658, x_2658) * vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
  let x_2663 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
  let x_2665 : vec4<f32> = u_xlat7;
  let x_2668 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2670 : vec3<f32> = (vec3<f32>(x_2665.x, x_2665.y, x_2665.z) + vec3<f32>(x_2668.x, x_2668.y, x_2668.z));
  let x_2671 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
  let x_2673 : vec4<f32> = u_xlat8;
  let x_2675 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2673.x, x_2673.y, x_2673.z), vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
  let x_2678 : f32 = u_xlat40;
  u_xlat40 = max(x_2678, 1.17549435e-37f);
  let x_2681 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2681);
  let x_2683 : f32 = u_xlat40;
  let x_2685 : vec4<f32> = u_xlat8;
  let x_2687 : vec3<f32> = (vec3<f32>(x_2683, x_2683, x_2683) * vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
  let x_2688 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
  let x_2690 : vec4<f32> = u_xlat1;
  let x_2692 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2690.x, x_2690.y, x_2690.z), vec3<f32>(x_2692.x, x_2692.y, x_2692.z));
  let x_2695 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2695, 0.0f, 1.0f);
  let x_2698 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2700 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2698.x, x_2698.y, x_2698.z), vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
  let x_2705 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2705, 0.0f, 1.0f);
  let x_2708 : f32 = u_xlat40;
  let x_2709 : f32 = u_xlat40;
  u_xlat40 = (x_2708 * x_2709);
  let x_2711 : f32 = u_xlat40;
  let x_2713 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2711 * x_2713) + 1.000010014f);
  let x_2718 : f32 = u_xlat3.x;
  let x_2720 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2718 * x_2720);
  let x_2723 : f32 = u_xlat40;
  let x_2724 : f32 = u_xlat40;
  u_xlat40 = (x_2723 * x_2724);
  let x_2727 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2727, 0.100000001f);
  let x_2731 : f32 = u_xlat40;
  let x_2733 : f32 = u_xlat3.x;
  u_xlat40 = (x_2731 * x_2733);
  let x_2735 : f32 = u_xlat63;
  let x_2736 : f32 = u_xlat40;
  u_xlat40 = (x_2735 * x_2736);
  let x_2738 : f32 = u_xlat62;
  let x_2739 : f32 = u_xlat40;
  u_xlat40 = (x_2738 / x_2739);
  let x_2741 : vec4<f32> = u_xlat5;
  let x_2743 : f32 = u_xlat40;
  let x_2746 : vec4<f32> = u_xlat4;
  let x_2748 : vec3<f32> = ((vec3<f32>(x_2741.x, x_2741.y, x_2741.z) * vec3<f32>(x_2743, x_2743, x_2743)) + vec3<f32>(x_2746.x, x_2746.y, x_2746.z));
  let x_2749 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
  let x_2751 : vec4<f32> = u_xlat6;
  let x_2753 : vec4<f32> = u_xlat8;
  let x_2755 : vec3<f32> = (vec3<f32>(x_2751.x, x_2751.y, x_2751.z) * vec3<f32>(x_2753.x, x_2753.y, x_2753.z));
  let x_2756 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
  let x_2759 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2761 : f32 = x_2545.unity_LightData.y;
  u_xlat40 = min(x_2759, x_2761);
  let x_2765 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2765));
  let x_2769 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2771 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2773 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2775 : f32 = x_2340.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2776 : vec4<f32> = vec4<f32>(x_2769, x_2771, x_2773, x_2775);
  let x_2782 : vec4<bool> = (vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2776.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_2782.x, x_2782.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2793 : u32 = u_xlatu_loop_1;
    let x_2794 : u32 = u_xlatu40;
    if ((x_2793 < x_2794)) {
    } else {
      break;
    }
    let x_2797 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2797 >> 2u);
    let x_2801 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2801 & 3u));
    let x_2804 : u32 = u_xlatu65;
    let x_2807 : vec4<f32> = x_2545.unity_LightIndices[bitcast<i32>(x_2804)];
    let x_2817 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2822 : vec4<u32> = indexable[x_2817];
    u_xlat65 = dot(x_2807, bitcast<vec4<f32>>(x_2822));
    let x_2825 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2825));
    let x_2828 : vec3<f32> = vs_TEXCOORD7;
    let x_2840 : u32 = u_xlatu65;
    let x_2843 : vec4<f32> = x_2839.x_AdditionalLightsPosition[bitcast<i32>(x_2840)];
    let x_2846 : u32 = u_xlatu65;
    let x_2849 : vec4<f32> = x_2839.x_AdditionalLightsPosition[bitcast<i32>(x_2846)];
    let x_2851 : vec3<f32> = ((-(x_2828) * vec3<f32>(x_2843.w, x_2843.w, x_2843.w)) + vec3<f32>(x_2849.x, x_2849.y, x_2849.z));
    let x_2852 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2851.x, x_2851.y, x_2851.z, x_2852.w);
    let x_2855 : vec4<f32> = u_xlat9;
    let x_2857 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2855.x, x_2855.y, x_2855.z), vec3<f32>(x_2857.x, x_2857.y, x_2857.z));
    let x_2860 : f32 = u_xlat66;
    u_xlat66 = max(x_2860, 6.10351562e-05f);
    let x_2863 : f32 = u_xlat66;
    u_xlat67 = inverseSqrt(x_2863);
    let x_2865 : f32 = u_xlat67;
    let x_2867 : vec4<f32> = u_xlat9;
    let x_2869 : vec3<f32> = (vec3<f32>(x_2865, x_2865, x_2865) * vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
    let x_2873 : f32 = u_xlat66;
    u_xlat68 = (1.0f / x_2873);
    let x_2875 : f32 = u_xlat66;
    let x_2876 : u32 = u_xlatu65;
    let x_2879 : f32 = x_2839.x_AdditionalLightsAttenuation[bitcast<i32>(x_2876)].x;
    u_xlat66 = (x_2875 * x_2879);
    let x_2881 : f32 = u_xlat66;
    let x_2883 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2881) * x_2883) + 1.0f);
    let x_2886 : f32 = u_xlat66;
    u_xlat66 = max(x_2886, 0.0f);
    let x_2888 : f32 = u_xlat66;
    let x_2889 : f32 = u_xlat66;
    u_xlat66 = (x_2888 * x_2889);
    let x_2891 : f32 = u_xlat66;
    let x_2892 : f32 = u_xlat68;
    u_xlat66 = (x_2891 * x_2892);
    let x_2894 : u32 = u_xlatu65;
    let x_2897 : vec4<f32> = x_2839.x_AdditionalLightsSpotDir[bitcast<i32>(x_2894)];
    let x_2899 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_2897.x, x_2897.y, x_2897.z), vec3<f32>(x_2899.x, x_2899.y, x_2899.z));
    let x_2902 : f32 = u_xlat68;
    let x_2903 : u32 = u_xlatu65;
    let x_2906 : f32 = x_2839.x_AdditionalLightsAttenuation[bitcast<i32>(x_2903)].z;
    let x_2908 : u32 = u_xlatu65;
    let x_2911 : f32 = x_2839.x_AdditionalLightsAttenuation[bitcast<i32>(x_2908)].w;
    u_xlat68 = ((x_2902 * x_2906) + x_2911);
    let x_2913 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2913, 0.0f, 1.0f);
    let x_2915 : f32 = u_xlat68;
    let x_2916 : f32 = u_xlat68;
    u_xlat68 = (x_2915 * x_2916);
    let x_2918 : f32 = u_xlat66;
    let x_2919 : f32 = u_xlat68;
    u_xlat66 = (x_2918 * x_2919);
    let x_2922 : u32 = u_xlatu65;
    u_xlatu68 = (x_2922 >> 5u);
    let x_2925 : u32 = u_xlatu65;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2925) & 31i)));
    let x_2930 : i32 = u_xlati69;
    let x_2932 : u32 = u_xlatu68;
    let x_2935 : f32 = x_2340.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2932)].el;
    u_xlati68 = bitcast<i32>((bitcast<u32>(x_2930) & bitcast<u32>(x_2935)));
    let x_2939 : i32 = u_xlati68;
    if ((x_2939 != 0i)) {
      let x_2949 : u32 = u_xlatu65;
      let x_2952 : f32 = x_2948.x_AdditionalLightsLightTypes[bitcast<i32>(x_2949)].el;
      u_xlati68 = i32(x_2952);
      let x_2954 : i32 = u_xlati68;
      u_xlati69 = select(1i, 0i, (x_2954 != 0i));
      let x_2958 : u32 = u_xlatu65;
      u_xlati70 = (bitcast<i32>(x_2958) << bitcast<u32>(2i));
      let x_2961 : i32 = u_xlati69;
      if ((x_2961 != 0i)) {
        let x_2965 : vec3<f32> = vs_TEXCOORD7;
        let x_2967 : i32 = u_xlati70;
        let x_2970 : i32 = u_xlati70;
        let x_2974 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_2967 + 1i) / 4i)][((x_2970 + 1i) % 4i)];
        let x_2976 : vec3<f32> = (vec3<f32>(x_2965.y, x_2965.y, x_2965.y) * vec3<f32>(x_2974.x, x_2974.y, x_2974.w));
        let x_2977 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
        let x_2979 : i32 = u_xlati70;
        let x_2981 : i32 = u_xlati70;
        let x_2984 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[(x_2979 / 4i)][(x_2981 % 4i)];
        let x_2986 : vec3<f32> = vs_TEXCOORD7;
        let x_2989 : vec4<f32> = u_xlat11;
        let x_2991 : vec3<f32> = ((vec3<f32>(x_2984.x, x_2984.y, x_2984.w) * vec3<f32>(x_2986.x, x_2986.x, x_2986.x)) + vec3<f32>(x_2989.x, x_2989.y, x_2989.z));
        let x_2992 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2992.w);
        let x_2994 : i32 = u_xlati70;
        let x_2997 : i32 = u_xlati70;
        let x_3001 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_2994 + 2i) / 4i)][((x_2997 + 2i) % 4i)];
        let x_3003 : vec3<f32> = vs_TEXCOORD7;
        let x_3006 : vec4<f32> = u_xlat11;
        let x_3008 : vec3<f32> = ((vec3<f32>(x_3001.x, x_3001.y, x_3001.w) * vec3<f32>(x_3003.z, x_3003.z, x_3003.z)) + vec3<f32>(x_3006.x, x_3006.y, x_3006.z));
        let x_3009 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3008.x, x_3008.y, x_3008.z, x_3009.w);
        let x_3011 : vec4<f32> = u_xlat11;
        let x_3013 : i32 = u_xlati70;
        let x_3016 : i32 = u_xlati70;
        let x_3020 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_3013 + 3i) / 4i)][((x_3016 + 3i) % 4i)];
        let x_3022 : vec3<f32> = (vec3<f32>(x_3011.x, x_3011.y, x_3011.z) + vec3<f32>(x_3020.x, x_3020.y, x_3020.w));
        let x_3023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3022.x, x_3022.y, x_3022.z, x_3023.w);
        let x_3025 : vec4<f32> = u_xlat11;
        let x_3027 : vec4<f32> = u_xlat11;
        let x_3029 : vec2<f32> = (vec2<f32>(x_3025.x, x_3025.y) / vec2<f32>(x_3027.z, x_3027.z));
        let x_3030 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3029.x, x_3029.y, x_3030.z, x_3030.w);
        let x_3032 : vec4<f32> = u_xlat11;
        let x_3035 : vec2<f32> = ((vec2<f32>(x_3032.x, x_3032.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3036 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3035.x, x_3035.y, x_3036.z, x_3036.w);
        let x_3038 : vec4<f32> = u_xlat11;
        let x_3042 : vec2<f32> = clamp(vec2<f32>(x_3038.x, x_3038.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3043 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3042.x, x_3042.y, x_3043.z, x_3043.w);
        let x_3045 : u32 = u_xlatu65;
        let x_3048 : vec4<f32> = x_2948.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3045)];
        let x_3050 : vec4<f32> = u_xlat11;
        let x_3053 : u32 = u_xlatu65;
        let x_3056 : vec4<f32> = x_2948.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3053)];
        let x_3058 : vec2<f32> = ((vec2<f32>(x_3048.x, x_3048.y) * vec2<f32>(x_3050.x, x_3050.y)) + vec2<f32>(x_3056.z, x_3056.w));
        let x_3059 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3058.x, x_3058.y, x_3059.z, x_3059.w);
      } else {
        let x_3063 : i32 = u_xlati68;
        u_xlatb68 = (x_3063 == 1i);
        let x_3065 : bool = u_xlatb68;
        u_xlati68 = select(0i, 1i, x_3065);
        let x_3067 : i32 = u_xlati68;
        if ((x_3067 != 0i)) {
          let x_3072 : vec3<f32> = vs_TEXCOORD7;
          let x_3074 : i32 = u_xlati70;
          let x_3077 : i32 = u_xlati70;
          let x_3081 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_3074 + 1i) / 4i)][((x_3077 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3072.y, x_3072.y) * vec2<f32>(x_3081.x, x_3081.y));
          let x_3084 : i32 = u_xlati70;
          let x_3086 : i32 = u_xlati70;
          let x_3089 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[(x_3084 / 4i)][(x_3086 % 4i)];
          let x_3091 : vec3<f32> = vs_TEXCOORD7;
          let x_3094 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3089.x, x_3089.y) * vec2<f32>(x_3091.x, x_3091.x)) + x_3094);
          let x_3096 : i32 = u_xlati70;
          let x_3099 : i32 = u_xlati70;
          let x_3103 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_3096 + 2i) / 4i)][((x_3099 + 2i) % 4i)];
          let x_3105 : vec3<f32> = vs_TEXCOORD7;
          let x_3108 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(x_3105.z, x_3105.z)) + x_3108);
          let x_3110 : vec2<f32> = u_xlat51;
          let x_3111 : i32 = u_xlati70;
          let x_3114 : i32 = u_xlati70;
          let x_3118 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_3111 + 3i) / 4i)][((x_3114 + 3i) % 4i)];
          u_xlat51 = (x_3110 + vec2<f32>(x_3118.x, x_3118.y));
          let x_3121 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3121 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3124 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3124);
          let x_3126 : u32 = u_xlatu65;
          let x_3129 : vec4<f32> = x_2948.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3126)];
          let x_3131 : vec2<f32> = u_xlat51;
          let x_3133 : u32 = u_xlatu65;
          let x_3136 : vec4<f32> = x_2948.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3133)];
          let x_3138 : vec2<f32> = ((vec2<f32>(x_3129.x, x_3129.y) * x_3131) + vec2<f32>(x_3136.z, x_3136.w));
          let x_3139 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3138.x, x_3138.y, x_3139.z, x_3139.w);
        } else {
          let x_3142 : vec3<f32> = vs_TEXCOORD7;
          let x_3144 : i32 = u_xlati70;
          let x_3147 : i32 = u_xlati70;
          let x_3151 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_3144 + 1i) / 4i)][((x_3147 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3142.y, x_3142.y, x_3142.y, x_3142.y) * x_3151);
          let x_3153 : i32 = u_xlati70;
          let x_3155 : i32 = u_xlati70;
          let x_3158 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[(x_3153 / 4i)][(x_3155 % 4i)];
          let x_3159 : vec3<f32> = vs_TEXCOORD7;
          let x_3162 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3158 * vec4<f32>(x_3159.x, x_3159.x, x_3159.x, x_3159.x)) + x_3162);
          let x_3164 : i32 = u_xlati70;
          let x_3167 : i32 = u_xlati70;
          let x_3171 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_3164 + 2i) / 4i)][((x_3167 + 2i) % 4i)];
          let x_3172 : vec3<f32> = vs_TEXCOORD7;
          let x_3175 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3171 * vec4<f32>(x_3172.z, x_3172.z, x_3172.z, x_3172.z)) + x_3175);
          let x_3177 : vec4<f32> = u_xlat12;
          let x_3178 : i32 = u_xlati70;
          let x_3181 : i32 = u_xlati70;
          let x_3185 : vec4<f32> = x_2948.x_AdditionalLightsWorldToLights[((x_3178 + 3i) / 4i)][((x_3181 + 3i) % 4i)];
          u_xlat12 = (x_3177 + x_3185);
          let x_3187 : vec4<f32> = u_xlat12;
          let x_3189 : vec4<f32> = u_xlat12;
          let x_3191 : vec3<f32> = (vec3<f32>(x_3187.x, x_3187.y, x_3187.z) / vec3<f32>(x_3189.w, x_3189.w, x_3189.w));
          let x_3192 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3191.x, x_3191.y, x_3191.z, x_3192.w);
          let x_3194 : vec4<f32> = u_xlat12;
          let x_3196 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(vec3<f32>(x_3194.x, x_3194.y, x_3194.z), vec3<f32>(x_3196.x, x_3196.y, x_3196.z));
          let x_3199 : f32 = u_xlat68;
          u_xlat68 = inverseSqrt(x_3199);
          let x_3201 : f32 = u_xlat68;
          let x_3203 : vec4<f32> = u_xlat12;
          let x_3205 : vec3<f32> = (vec3<f32>(x_3201, x_3201, x_3201) * vec3<f32>(x_3203.x, x_3203.y, x_3203.z));
          let x_3206 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3205.x, x_3205.y, x_3205.z, x_3206.w);
          let x_3208 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(abs(vec3<f32>(x_3208.x, x_3208.y, x_3208.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3213 : f32 = u_xlat68;
          u_xlat68 = max(x_3213, 0.000001f);
          let x_3216 : f32 = u_xlat68;
          u_xlat68 = (1.0f / x_3216);
          let x_3218 : f32 = u_xlat68;
          let x_3220 : vec4<f32> = u_xlat12;
          let x_3222 : vec3<f32> = (vec3<f32>(x_3218, x_3218, x_3218) * vec3<f32>(x_3220.z, x_3220.x, x_3220.y));
          let x_3223 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3222.x, x_3222.y, x_3222.z, x_3223.w);
          let x_3226 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3226);
          let x_3230 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3230, 0.0f, 1.0f);
          let x_3234 : vec4<f32> = u_xlat13;
          let x_3237 : vec4<bool> = (vec4<f32>(x_3234.y, x_3234.z, x_3234.y, x_3234.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3237.x, x_3237.y);
          let x_3240 : bool = u_xlatb51.x;
          if (x_3240) {
            let x_3245 : f32 = u_xlat13.x;
            x_3241 = x_3245;
          } else {
            let x_3248 : f32 = u_xlat13.x;
            x_3241 = -(x_3248);
          }
          let x_3250 : f32 = x_3241;
          u_xlat51.x = x_3250;
          let x_3253 : bool = u_xlatb51.y;
          if (x_3253) {
            let x_3258 : f32 = u_xlat13.x;
            x_3254 = x_3258;
          } else {
            let x_3261 : f32 = u_xlat13.x;
            x_3254 = -(x_3261);
          }
          let x_3263 : f32 = x_3254;
          u_xlat51.y = x_3263;
          let x_3265 : vec4<f32> = u_xlat12;
          let x_3267 : f32 = u_xlat68;
          let x_3270 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3265.x, x_3265.y) * vec2<f32>(x_3267, x_3267)) + x_3270);
          let x_3272 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3272 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3275 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3275, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3279 : u32 = u_xlatu65;
          let x_3282 : vec4<f32> = x_2948.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3279)];
          let x_3284 : vec2<f32> = u_xlat51;
          let x_3286 : u32 = u_xlatu65;
          let x_3289 : vec4<f32> = x_2948.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3286)];
          let x_3291 : vec2<f32> = ((vec2<f32>(x_3282.x, x_3282.y) * x_3284) + vec2<f32>(x_3289.z, x_3289.w));
          let x_3292 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3291.x, x_3291.y, x_3292.z, x_3292.w);
        }
      }
      let x_3299 : vec4<f32> = u_xlat11;
      let x_3302 : f32 = x_128.x_GlobalMipBias.x;
      let x_3303 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3299.x, x_3299.y), x_3302);
      u_xlat11 = x_3303;
      let x_3305 : bool = u_xlatb3.y;
      if (x_3305) {
        let x_3310 : f32 = u_xlat11.w;
        x_3306 = x_3310;
      } else {
        let x_3313 : f32 = u_xlat11.x;
        x_3306 = x_3313;
      }
      let x_3314 : f32 = x_3306;
      u_xlat68 = x_3314;
      let x_3316 : bool = u_xlatb3.x;
      if (x_3316) {
        let x_3320 : vec4<f32> = u_xlat11;
        x_3317 = vec3<f32>(x_3320.x, x_3320.y, x_3320.z);
      } else {
        let x_3323 : f32 = u_xlat68;
        x_3317 = vec3<f32>(x_3323, x_3323, x_3323);
      }
      let x_3325 : vec3<f32> = x_3317;
      let x_3326 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3332 : vec4<f32> = u_xlat11;
    let x_3334 : u32 = u_xlatu65;
    let x_3337 : vec4<f32> = x_2839.x_AdditionalLightsColor[bitcast<i32>(x_3334)];
    let x_3339 : vec3<f32> = (vec3<f32>(x_3332.x, x_3332.y, x_3332.z) * vec3<f32>(x_3337.x, x_3337.y, x_3337.z));
    let x_3340 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3339.x, x_3339.y, x_3339.z, x_3340.w);
    let x_3342 : f32 = u_xlat43;
    let x_3344 : vec4<f32> = u_xlat11;
    let x_3346 : vec3<f32> = (vec3<f32>(x_3342, x_3342, x_3342) * vec3<f32>(x_3344.x, x_3344.y, x_3344.z));
    let x_3347 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3346.x, x_3346.y, x_3346.z, x_3347.w);
    let x_3349 : vec4<f32> = u_xlat1;
    let x_3351 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_3349.x, x_3349.y, x_3349.z), vec3<f32>(x_3351.x, x_3351.y, x_3351.z));
    let x_3354 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3354, 0.0f, 1.0f);
    let x_3356 : f32 = u_xlat65;
    let x_3357 : f32 = u_xlat66;
    u_xlat65 = (x_3356 * x_3357);
    let x_3359 : f32 = u_xlat65;
    let x_3361 : vec4<f32> = u_xlat11;
    let x_3363 : vec3<f32> = (vec3<f32>(x_3359, x_3359, x_3359) * vec3<f32>(x_3361.x, x_3361.y, x_3361.z));
    let x_3364 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3363.x, x_3363.y, x_3363.z, x_3364.w);
    let x_3366 : vec4<f32> = u_xlat9;
    let x_3368 : f32 = u_xlat67;
    let x_3371 : vec4<f32> = u_xlat7;
    let x_3373 : vec3<f32> = ((vec3<f32>(x_3366.x, x_3366.y, x_3366.z) * vec3<f32>(x_3368, x_3368, x_3368)) + vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
    let x_3374 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3373.x, x_3373.y, x_3373.z, x_3374.w);
    let x_3376 : vec4<f32> = u_xlat9;
    let x_3378 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3376.x, x_3376.y, x_3376.z), vec3<f32>(x_3378.x, x_3378.y, x_3378.z));
    let x_3381 : f32 = u_xlat65;
    u_xlat65 = max(x_3381, 1.17549435e-37f);
    let x_3383 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_3383);
    let x_3385 : f32 = u_xlat65;
    let x_3387 : vec4<f32> = u_xlat9;
    let x_3389 : vec3<f32> = (vec3<f32>(x_3385, x_3385, x_3385) * vec3<f32>(x_3387.x, x_3387.y, x_3387.z));
    let x_3390 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3389.x, x_3389.y, x_3389.z, x_3390.w);
    let x_3392 : vec4<f32> = u_xlat1;
    let x_3394 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3392.x, x_3392.y, x_3392.z), vec3<f32>(x_3394.x, x_3394.y, x_3394.z));
    let x_3397 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3397, 0.0f, 1.0f);
    let x_3399 : vec4<f32> = u_xlat10;
    let x_3401 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3399.x, x_3399.y, x_3399.z), vec3<f32>(x_3401.x, x_3401.y, x_3401.z));
    let x_3404 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3404, 0.0f, 1.0f);
    let x_3406 : f32 = u_xlat65;
    let x_3407 : f32 = u_xlat65;
    u_xlat65 = (x_3406 * x_3407);
    let x_3409 : f32 = u_xlat65;
    let x_3411 : f32 = u_xlat0.x;
    u_xlat65 = ((x_3409 * x_3411) + 1.000010014f);
    let x_3414 : f32 = u_xlat66;
    let x_3415 : f32 = u_xlat66;
    u_xlat66 = (x_3414 * x_3415);
    let x_3417 : f32 = u_xlat65;
    let x_3418 : f32 = u_xlat65;
    u_xlat65 = (x_3417 * x_3418);
    let x_3420 : f32 = u_xlat66;
    u_xlat66 = max(x_3420, 0.100000001f);
    let x_3422 : f32 = u_xlat65;
    let x_3423 : f32 = u_xlat66;
    u_xlat65 = (x_3422 * x_3423);
    let x_3425 : f32 = u_xlat63;
    let x_3426 : f32 = u_xlat65;
    u_xlat65 = (x_3425 * x_3426);
    let x_3428 : f32 = u_xlat62;
    let x_3429 : f32 = u_xlat65;
    u_xlat65 = (x_3428 / x_3429);
    let x_3431 : vec4<f32> = u_xlat5;
    let x_3433 : f32 = u_xlat65;
    let x_3436 : vec4<f32> = u_xlat4;
    let x_3438 : vec3<f32> = ((vec3<f32>(x_3431.x, x_3431.y, x_3431.z) * vec3<f32>(x_3433, x_3433, x_3433)) + vec3<f32>(x_3436.x, x_3436.y, x_3436.z));
    let x_3439 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3438.x, x_3438.y, x_3438.z, x_3439.w);
    let x_3441 : vec4<f32> = u_xlat9;
    let x_3443 : vec4<f32> = u_xlat11;
    let x_3446 : vec4<f32> = u_xlat8;
    let x_3448 : vec3<f32> = ((vec3<f32>(x_3441.x, x_3441.y, x_3441.z) * vec3<f32>(x_3443.x, x_3443.y, x_3443.z)) + vec3<f32>(x_3446.x, x_3446.y, x_3446.z));
    let x_3449 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3448.x, x_3448.y, x_3448.z, x_3449.w);

    continuing {
      let x_3451 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3451 + bitcast<u32>(1i));
    }
  }
  let x_3453 : vec4<f32> = u_xlat2;
  let x_3455 : f32 = u_xlat20;
  let x_3458 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3453.x, x_3453.y, x_3453.z) * vec3<f32>(x_3455, x_3455, x_3455)) + vec3<f32>(x_3458.x, x_3458.y, x_3458.z));
  let x_3461 : vec4<f32> = u_xlat8;
  let x_3463 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3461.x, x_3461.y, x_3461.z) + x_3463);
  let x_3465 : f32 = u_xlat61;
  let x_3466 : f32 = u_xlat61;
  u_xlat1.x = (x_3465 * -(x_3466));
  let x_3471 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3471);
  let x_3474 : vec3<f32> = u_xlat0;
  let x_3475 : f32 = u_xlat60;
  let x_3479 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_3474 * vec3<f32>(x_3475, x_3475, x_3475)) + -(vec3<f32>(x_3479.x, x_3479.y, x_3479.z)));
  let x_3485 : vec4<f32> = u_xlat1;
  let x_3487 : vec3<f32> = u_xlat0;
  let x_3490 : vec4<f32> = x_128.unity_FogColor;
  let x_3492 : vec3<f32> = ((vec3<f32>(x_3485.x, x_3485.x, x_3485.x) * x_3487) + vec3<f32>(x_3490.x, x_3490.y, x_3490.z));
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

