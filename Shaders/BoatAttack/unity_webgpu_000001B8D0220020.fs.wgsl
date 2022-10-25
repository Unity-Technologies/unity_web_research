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

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(17) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

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

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2487 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2693 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2979 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_3087 : AdditionalLightsCookies;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatu64 : u32;
  var u_xlati64 : i32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : f32;
  var u_xlatb4 : vec4<bool>;
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
  var x_2434 : f32;
  var u_xlat23 : vec2<f32>;
  var u_xlat44 : f32;
  var x_2554 : f32;
  var x_2565 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var u_xlati71 : i32;
  var u_xlati73 : i32;
  var u_xlatb71 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3380 : f32;
  var x_3393 : f32;
  var x_3445 : f32;
  var x_3456 : vec3<f32>;
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
  u_xlat64 = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_962 : f32 = u_xlat64;
  u_xlat64 = (-(x_962) + 4.0f);
  let x_967 : f32 = u_xlat64;
  u_xlatu64 = u32(x_967);
  let x_971 : u32 = u_xlatu64;
  u_xlati64 = (bitcast<i32>(x_971) << bitcast<u32>(2i));
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_976 : i32 = u_xlati64;
  let x_979 : i32 = u_xlati64;
  let x_983 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_976 + 1i) / 4i)][((x_979 + 1i) % 4i)];
  let x_985 : vec3<f32> = (vec3<f32>(x_974.y, x_974.y, x_974.y) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : i32 = u_xlati64;
  let x_990 : i32 = u_xlati64;
  let x_993 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_988 / 4i)][(x_990 % 4i)];
  let x_995 : vec3<f32> = vs_TEXCOORD7;
  let x_998 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_995.x, x_995.x, x_995.x)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : i32 = u_xlati64;
  let x_1006 : i32 = u_xlati64;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : i32 = u_xlati64;
  let x_1025 : i32 = u_xlati64;
  let x_1029 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1022 + 3i) / 4i)][((x_1025 + 3i) % 4i)];
  let x_1031 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1035 : f32 = vs_TEXCOORD7.y;
  let x_1037 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat64 = (x_1035 * x_1037);
  let x_1040 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1042 : f32 = vs_TEXCOORD7.x;
  let x_1044 : f32 = u_xlat64;
  u_xlat64 = ((x_1040 * x_1042) + x_1044);
  let x_1047 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1049 : f32 = vs_TEXCOORD7.z;
  let x_1051 : f32 = u_xlat64;
  u_xlat64 = ((x_1047 * x_1049) + x_1051);
  let x_1053 : f32 = u_xlat64;
  let x_1055 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat64 = (x_1053 + x_1055);
  let x_1057 : f32 = u_xlat64;
  let x_1060 : f32 = x_128.x_ProjectionParams.y;
  u_xlat64 = (-(x_1057) + -(x_1060));
  let x_1063 : f32 = u_xlat64;
  u_xlat64 = max(x_1063, 0.0f);
  let x_1065 : f32 = u_xlat64;
  let x_1067 : f32 = x_128.unity_FogParams.x;
  u_xlat64 = (x_1065 * x_1067);
  let x_1074 : vec4<f32> = vs_TEXCOORD0;
  let x_1077 : f32 = x_128.x_GlobalMipBias.x;
  let x_1078 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1074.z, x_1074.w), x_1077);
  let x_1079 : vec3<f32> = vec3<f32>(x_1078.x, x_1078.y, x_1078.z);
  let x_1080 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1084 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1085 : vec2<f32> = vec2<f32>(x_1084.x, x_1084.y);
  let x_1089 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1085.x, x_1085.y));
  let x_1090 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat4;
  let x_1094 : vec4<f32> = hlslcc_FragCoord;
  let x_1096 : vec2<f32> = (vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1094.x, x_1094.y));
  let x_1097 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
  let x_1101 : f32 = u_xlat4.y;
  let x_1103 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1106 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat65 = ((x_1101 * x_1103) + x_1106);
  let x_1108 : f32 = u_xlat65;
  u_xlat4.z = (-(x_1108) + 1.0f);
  let x_1113 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_1113) * 0.959999979f) + 0.959999979f);
  let x_1119 : f32 = u_xlat42;
  let x_1120 : f32 = u_xlat65;
  u_xlat66 = (x_1119 + -(x_1120));
  let x_1123 : f32 = u_xlat65;
  let x_1125 : vec4<f32> = u_xlat5;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1123, x_1123, x_1123) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.y, x_1130.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1135 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec3<f32> = u_xlat0;
  let x_1139 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1137.x, x_1137.x, x_1137.x) * vec3<f32>(x_1139.x, x_1139.y, x_1139.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : f32 = u_xlat42;
  u_xlat0.x = (-(x_1147) + 1.0f);
  let x_1152 : f32 = u_xlat0.x;
  let x_1154 : f32 = u_xlat0.x;
  u_xlat42 = (x_1152 * x_1154);
  let x_1156 : f32 = u_xlat42;
  u_xlat42 = max(x_1156, 0.0078125f);
  let x_1159 : f32 = u_xlat42;
  let x_1160 : f32 = u_xlat42;
  u_xlat65 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat66;
  u_xlat66 = (x_1162 + 1.0f);
  let x_1164 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1164, 0.0f, 1.0f);
  let x_1167 : f32 = u_xlat42;
  u_xlat25 = ((x_1167 * 4.0f) + 2.0f);
  let x_1175 : vec4<f32> = u_xlat4;
  let x_1178 : f32 = x_128.x_GlobalMipBias.x;
  let x_1179 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1175.x, x_1175.z), x_1178);
  u_xlat4.x = x_1179.x;
  let x_1184 : f32 = u_xlat4.x;
  u_xlat46 = (x_1184 + -1.0f);
  let x_1187 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1188 : f32 = u_xlat46;
  u_xlat46 = ((x_1187 * x_1188) + 1.0f);
  let x_1191 : f32 = u_xlat21;
  let x_1193 : f32 = u_xlat4.x;
  u_xlat21 = min(x_1191, x_1193);
  let x_1197 : f32 = x_854.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_1197);
  let x_1201 : bool = u_xlatb4.x;
  if (x_1201) {
    let x_1205 : f32 = x_854.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_1205 == 1.0f);
    let x_1209 : bool = u_xlatb4.x;
    if (x_1209) {
      let x_1212 : vec4<f32> = u_xlat2;
      let x_1215 : vec4<f32> = x_854.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y) + x_1215);
      let x_1218 : vec4<f32> = u_xlat7;
      let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
      let x_1221 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
      let x_1233 : vec3<f32> = txVec0;
      let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1233.xy, x_1233.z);
      u_xlat8.x = x_1235;
      let x_1238 : vec4<f32> = u_xlat7;
      let x_1239 : vec2<f32> = vec2<f32>(x_1238.z, x_1238.w);
      let x_1241 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
      let x_1248 : vec3<f32> = txVec1;
      let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1248.xy, x_1248.z);
      u_xlat8.y = x_1250;
      let x_1252 : vec4<f32> = u_xlat2;
      let x_1255 : vec4<f32> = x_854.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) + x_1255);
      let x_1258 : vec4<f32> = u_xlat7;
      let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
      let x_1261 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
      let x_1268 : vec3<f32> = txVec2;
      let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1268.xy, x_1268.z);
      u_xlat8.z = x_1270;
      let x_1273 : vec4<f32> = u_xlat7;
      let x_1274 : vec2<f32> = vec2<f32>(x_1273.z, x_1273.w);
      let x_1276 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
      let x_1283 : vec3<f32> = txVec3;
      let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1283.xy, x_1283.z);
      u_xlat8.w = x_1285;
      let x_1287 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_1287, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1295 : f32 = x_854.x_MainLightShadowParams.y;
      u_xlatb67 = (x_1295 == 2.0f);
      let x_1297 : bool = u_xlatb67;
      if (x_1297) {
        let x_1300 : vec4<f32> = u_xlat2;
        let x_1303 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1303.z, x_1303.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1307 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1306.x, x_1306.y, x_1307.z, x_1307.w);
        let x_1309 : vec4<f32> = u_xlat7;
        let x_1311 : vec2<f32> = floor(vec2<f32>(x_1309.x, x_1309.y));
        let x_1312 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1316 : vec4<f32> = u_xlat2;
        let x_1319 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.z, x_1319.w)) + -(vec2<f32>(x_1322.x, x_1322.y)));
        let x_1326 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1326.x, x_1326.x, x_1326.y, x_1326.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1330 : vec4<f32> = u_xlat8;
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1330.x, x_1330.x, x_1330.z, x_1330.z) * vec4<f32>(x_1332.x, x_1332.x, x_1332.z, x_1332.z));
        let x_1335 : vec4<f32> = u_xlat9;
        let x_1339 : vec2<f32> = (vec2<f32>(x_1335.y, x_1335.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1340.w);
        let x_1342 : vec4<f32> = u_xlat9;
        let x_1345 : vec2<f32> = u_xlat49;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1342.x, x_1342.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1345));
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1351 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_1351) + vec2<f32>(1.0f, 1.0f));
        let x_1354 : vec2<f32> = u_xlat49;
        let x_1356 : vec2<f32> = min(x_1354, vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1359 : vec4<f32> = u_xlat10;
        let x_1362 : vec4<f32> = u_xlat10;
        let x_1365 : vec2<f32> = u_xlat51;
        let x_1366 : vec2<f32> = ((-(vec2<f32>(x_1359.x, x_1359.y)) * vec2<f32>(x_1362.x, x_1362.y)) + x_1365);
        let x_1367 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1369 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_1369, vec2<f32>(0.0f, 0.0f));
        let x_1371 : vec2<f32> = u_xlat49;
        let x_1373 : vec2<f32> = u_xlat49;
        let x_1375 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_1371) * x_1373) + vec2<f32>(x_1375.y, x_1375.w));
        let x_1378 : vec4<f32> = u_xlat10;
        let x_1380 : vec2<f32> = (vec2<f32>(x_1378.x, x_1378.y) + vec2<f32>(1.0f, 1.0f));
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1381.w);
        let x_1383 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1383 + vec2<f32>(1.0f, 1.0f));
        let x_1385 : vec4<f32> = u_xlat9;
        let x_1389 : vec2<f32> = (vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
        let x_1392 : vec2<f32> = u_xlat51;
        let x_1393 : vec2<f32> = (x_1392 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1394 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1396 : vec4<f32> = u_xlat10;
        let x_1398 : vec2<f32> = (vec2<f32>(x_1396.x, x_1396.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1398.x, x_1398.y, x_1399.z, x_1399.w);
        let x_1401 : vec2<f32> = u_xlat49;
        let x_1402 : vec2<f32> = (x_1401 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1403 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1402.x, x_1402.y, x_1403.z, x_1403.w);
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1405.y, x_1405.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1409 : f32 = u_xlat10.x;
        u_xlat11.z = x_1409;
        let x_1412 : f32 = u_xlat49.x;
        u_xlat11.w = x_1412;
        let x_1415 : f32 = u_xlat12.x;
        u_xlat9.z = x_1415;
        let x_1418 : f32 = u_xlat8.x;
        u_xlat9.w = x_1418;
        let x_1420 : vec4<f32> = u_xlat9;
        let x_1422 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1420.z, x_1420.w, x_1420.x, x_1420.z) + vec4<f32>(x_1422.z, x_1422.w, x_1422.x, x_1422.z));
        let x_1426 : f32 = u_xlat11.y;
        u_xlat10.z = x_1426;
        let x_1429 : f32 = u_xlat49.y;
        u_xlat10.w = x_1429;
        let x_1432 : f32 = u_xlat9.y;
        u_xlat12.z = x_1432;
        let x_1435 : f32 = u_xlat8.z;
        u_xlat12.w = x_1435;
        let x_1437 : vec4<f32> = u_xlat10;
        let x_1439 : vec4<f32> = u_xlat12;
        let x_1441 : vec3<f32> = (vec3<f32>(x_1437.z, x_1437.y, x_1437.w) + vec3<f32>(x_1439.z, x_1439.y, x_1439.w));
        let x_1442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat9;
        let x_1446 : vec4<f32> = u_xlat13;
        let x_1448 : vec3<f32> = (vec3<f32>(x_1444.x, x_1444.z, x_1444.w) / vec3<f32>(x_1446.z, x_1446.w, x_1446.y));
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1457 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1458 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
        let x_1460 : vec4<f32> = u_xlat12;
        let x_1462 : vec4<f32> = u_xlat8;
        let x_1464 : vec3<f32> = (vec3<f32>(x_1460.z, x_1460.y, x_1460.w) / vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
        let x_1465 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
        let x_1467 : vec4<f32> = u_xlat10;
        let x_1469 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1470 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
        let x_1472 : vec4<f32> = u_xlat9;
        let x_1475 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1477 : vec3<f32> = (vec3<f32>(x_1472.y, x_1472.x, x_1472.z) * vec3<f32>(x_1475.x, x_1475.x, x_1475.x));
        let x_1478 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
        let x_1480 : vec4<f32> = u_xlat10;
        let x_1483 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1485 : vec3<f32> = (vec3<f32>(x_1480.x, x_1480.y, x_1480.z) * vec3<f32>(x_1483.y, x_1483.y, x_1483.y));
        let x_1486 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
        let x_1489 : f32 = u_xlat10.x;
        u_xlat9.w = x_1489;
        let x_1491 : vec4<f32> = u_xlat7;
        let x_1494 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1491.x, x_1491.y, x_1491.x, x_1491.y) * vec4<f32>(x_1494.x, x_1494.y, x_1494.x, x_1494.y)) + vec4<f32>(x_1497.y, x_1497.w, x_1497.x, x_1497.w));
        let x_1500 : vec4<f32> = u_xlat7;
        let x_1503 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1506 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1500.x, x_1500.y) * vec2<f32>(x_1503.x, x_1503.y)) + vec2<f32>(x_1506.z, x_1506.w));
        let x_1510 : f32 = u_xlat9.y;
        u_xlat10.w = x_1510;
        let x_1512 : vec4<f32> = u_xlat10;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.y, x_1512.z);
        let x_1514 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1514.x, x_1513.x, x_1514.z, x_1513.y);
        let x_1516 : vec4<f32> = u_xlat7;
        let x_1519 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1516.x, x_1516.y, x_1516.x, x_1516.y) * vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y)) + vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1522.y));
        let x_1525 : vec4<f32> = u_xlat7;
        let x_1528 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1531 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y) * vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y)) + vec4<f32>(x_1531.w, x_1531.y, x_1531.w, x_1531.z));
        let x_1534 : vec4<f32> = u_xlat7;
        let x_1537 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y) * vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y)) + vec4<f32>(x_1540.x, x_1540.w, x_1540.z, x_1540.w));
        let x_1544 : vec4<f32> = u_xlat8;
        let x_1546 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1544.x, x_1544.x, x_1544.x, x_1544.y) * vec4<f32>(x_1546.z, x_1546.w, x_1546.y, x_1546.z));
        let x_1550 : vec4<f32> = u_xlat8;
        let x_1552 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1550.y, x_1550.y, x_1550.z, x_1550.z) * x_1552);
        let x_1556 : f32 = u_xlat8.z;
        let x_1558 : f32 = u_xlat13.y;
        u_xlat67 = (x_1556 * x_1558);
        let x_1561 : vec4<f32> = u_xlat11;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
        let x_1564 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1572 : vec3<f32> = txVec4;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1572.xy, x_1572.z);
        u_xlat68 = x_1574;
        let x_1576 : vec4<f32> = u_xlat11;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1587 : vec3<f32> = txVec5;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
        u_xlat69 = x_1589;
        let x_1590 : f32 = u_xlat69;
        let x_1592 : f32 = u_xlat14.y;
        u_xlat69 = (x_1590 * x_1592);
        let x_1595 : f32 = u_xlat14.x;
        let x_1596 : f32 = u_xlat68;
        let x_1598 : f32 = u_xlat69;
        u_xlat68 = ((x_1595 * x_1596) + x_1598);
        let x_1601 : vec2<f32> = u_xlat49;
        let x_1603 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec6;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1610.xy, x_1610.z);
        u_xlat69 = x_1612;
        let x_1614 : f32 = u_xlat14.z;
        let x_1615 : f32 = u_xlat69;
        let x_1617 : f32 = u_xlat68;
        u_xlat68 = ((x_1614 * x_1615) + x_1617);
        let x_1620 : vec4<f32> = u_xlat10;
        let x_1621 : vec2<f32> = vec2<f32>(x_1620.x, x_1620.y);
        let x_1623 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1621.x, x_1621.y, x_1623);
        let x_1630 : vec3<f32> = txVec7;
        let x_1632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1630.xy, x_1630.z);
        u_xlat69 = x_1632;
        let x_1634 : f32 = u_xlat14.w;
        let x_1635 : f32 = u_xlat69;
        let x_1637 : f32 = u_xlat68;
        u_xlat68 = ((x_1634 * x_1635) + x_1637);
        let x_1640 : vec4<f32> = u_xlat12;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec8;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1650.xy, x_1650.z);
        u_xlat69 = x_1652;
        let x_1654 : f32 = u_xlat15.x;
        let x_1655 : f32 = u_xlat69;
        let x_1657 : f32 = u_xlat68;
        u_xlat68 = ((x_1654 * x_1655) + x_1657);
        let x_1660 : vec4<f32> = u_xlat12;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.z, x_1660.w);
        let x_1663 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec9;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1670.xy, x_1670.z);
        u_xlat69 = x_1672;
        let x_1674 : f32 = u_xlat15.y;
        let x_1675 : f32 = u_xlat69;
        let x_1677 : f32 = u_xlat68;
        u_xlat68 = ((x_1674 * x_1675) + x_1677);
        let x_1680 : vec4<f32> = u_xlat10;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.z, x_1680.w);
        let x_1683 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec10;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1690.xy, x_1690.z);
        u_xlat69 = x_1692;
        let x_1694 : f32 = u_xlat15.z;
        let x_1695 : f32 = u_xlat69;
        let x_1697 : f32 = u_xlat68;
        u_xlat68 = ((x_1694 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat9;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec11;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat69 = x_1712;
        let x_1714 : f32 = u_xlat15.w;
        let x_1715 : f32 = u_xlat69;
        let x_1717 : f32 = u_xlat68;
        u_xlat68 = ((x_1714 * x_1715) + x_1717);
        let x_1720 : vec4<f32> = u_xlat9;
        let x_1721 : vec2<f32> = vec2<f32>(x_1720.z, x_1720.w);
        let x_1723 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1721.x, x_1721.y, x_1723);
        let x_1730 : vec3<f32> = txVec12;
        let x_1732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1730.xy, x_1730.z);
        u_xlat69 = x_1732;
        let x_1733 : f32 = u_xlat67;
        let x_1734 : f32 = u_xlat69;
        let x_1736 : f32 = u_xlat68;
        u_xlat4.x = ((x_1733 * x_1734) + x_1736);
      } else {
        let x_1740 : vec4<f32> = u_xlat2;
        let x_1743 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1746 : vec2<f32> = ((vec2<f32>(x_1740.x, x_1740.y) * vec2<f32>(x_1743.z, x_1743.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1746.x, x_1746.y, x_1747.z, x_1747.w);
        let x_1749 : vec4<f32> = u_xlat7;
        let x_1751 : vec2<f32> = floor(vec2<f32>(x_1749.x, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
        let x_1754 : vec4<f32> = u_xlat2;
        let x_1757 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1760 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(x_1757.z, x_1757.w)) + -(vec2<f32>(x_1760.x, x_1760.y)));
        let x_1764 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1764.x, x_1764.x, x_1764.y, x_1764.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1767 : vec4<f32> = u_xlat8;
        let x_1769 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1767.x, x_1767.x, x_1767.z, x_1767.z) * vec4<f32>(x_1769.x, x_1769.x, x_1769.z, x_1769.z));
        let x_1772 : vec4<f32> = u_xlat9;
        let x_1776 : vec2<f32> = (vec2<f32>(x_1772.y, x_1772.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1777 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1777.x, x_1776.x, x_1777.z, x_1776.y);
        let x_1779 : vec4<f32> = u_xlat9;
        let x_1782 : vec2<f32> = u_xlat49;
        let x_1784 : vec2<f32> = ((vec2<f32>(x_1779.x, x_1779.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1782));
        let x_1785 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1784.x, x_1785.y, x_1784.y, x_1785.w);
        let x_1787 : vec2<f32> = u_xlat49;
        let x_1789 : vec2<f32> = (-(x_1787) + vec2<f32>(1.0f, 1.0f));
        let x_1790 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1789.x, x_1789.y, x_1790.z, x_1790.w);
        let x_1792 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1792, vec2<f32>(0.0f, 0.0f));
        let x_1794 : vec2<f32> = u_xlat51;
        let x_1796 : vec2<f32> = u_xlat51;
        let x_1798 : vec4<f32> = u_xlat9;
        let x_1800 : vec2<f32> = ((-(x_1794) * x_1796) + vec2<f32>(x_1798.x, x_1798.y));
        let x_1801 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1800.x, x_1800.y, x_1801.z, x_1801.w);
        let x_1803 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1803, vec2<f32>(0.0f, 0.0f));
        let x_1806 : vec2<f32> = u_xlat51;
        let x_1808 : vec2<f32> = u_xlat51;
        let x_1810 : vec4<f32> = u_xlat8;
        let x_1812 : vec2<f32> = ((-(x_1806) * x_1808) + vec2<f32>(x_1810.y, x_1810.w));
        let x_1813 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1812.x, x_1813.y, x_1812.y);
        let x_1815 : vec4<f32> = u_xlat9;
        let x_1817 : vec2<f32> = (vec2<f32>(x_1815.x, x_1815.y) + vec2<f32>(2.0f, 2.0f));
        let x_1818 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1817.x, x_1817.y, x_1818.z, x_1818.w);
        let x_1820 : vec3<f32> = u_xlat29;
        let x_1822 : vec2<f32> = (vec2<f32>(x_1820.x, x_1820.z) + vec2<f32>(2.0f, 2.0f));
        let x_1823 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1823.x, x_1822.x, x_1823.z, x_1822.y);
        let x_1826 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1826 * 0.081632003f);
        let x_1830 : vec4<f32> = u_xlat8;
        let x_1833 : vec3<f32> = (vec3<f32>(x_1830.z, x_1830.x, x_1830.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1834 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);
        let x_1836 : vec4<f32> = u_xlat9;
        let x_1839 : vec2<f32> = (vec2<f32>(x_1836.x, x_1836.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1840 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
        let x_1843 : f32 = u_xlat12.y;
        u_xlat11.x = x_1843;
        let x_1845 : vec2<f32> = u_xlat49;
        let x_1852 : vec2<f32> = ((vec2<f32>(x_1845.x, x_1845.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1853 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1853.x, x_1852.x, x_1853.z, x_1852.y);
        let x_1855 : vec2<f32> = u_xlat49;
        let x_1859 : vec2<f32> = ((vec2<f32>(x_1855.x, x_1855.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1860 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1859.x, x_1860.y, x_1859.y, x_1860.w);
        let x_1863 : f32 = u_xlat8.x;
        u_xlat9.y = x_1863;
        let x_1866 : f32 = u_xlat10.y;
        u_xlat9.w = x_1866;
        let x_1868 : vec4<f32> = u_xlat9;
        let x_1869 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1868 + x_1869);
        let x_1871 : vec2<f32> = u_xlat49;
        let x_1874 : vec2<f32> = ((vec2<f32>(x_1871.y, x_1871.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1875 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1875.x, x_1874.x, x_1875.z, x_1874.y);
        let x_1877 : vec2<f32> = u_xlat49;
        let x_1880 : vec2<f32> = ((vec2<f32>(x_1877.y, x_1877.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1881 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1880.x, x_1881.y, x_1880.y, x_1881.w);
        let x_1884 : f32 = u_xlat8.y;
        u_xlat10.y = x_1884;
        let x_1886 : vec4<f32> = u_xlat10;
        let x_1887 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1886 + x_1887);
        let x_1889 : vec4<f32> = u_xlat9;
        let x_1890 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1889 / x_1890);
        let x_1892 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1892 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1898 : vec4<f32> = u_xlat10;
        let x_1899 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1898 / x_1899);
        let x_1901 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1901 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1903 : vec4<f32> = u_xlat9;
        let x_1906 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1903.w, x_1903.x, x_1903.y, x_1903.z) * vec4<f32>(x_1906.x, x_1906.x, x_1906.x, x_1906.x));
        let x_1909 : vec4<f32> = u_xlat10;
        let x_1912 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1909.x, x_1909.w, x_1909.y, x_1909.z) * vec4<f32>(x_1912.y, x_1912.y, x_1912.y, x_1912.y));
        let x_1915 : vec4<f32> = u_xlat9;
        let x_1916 : vec3<f32> = vec3<f32>(x_1915.y, x_1915.z, x_1915.w);
        let x_1917 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1916.x, x_1917.y, x_1916.y, x_1916.z);
        let x_1920 : f32 = u_xlat10.x;
        u_xlat12.y = x_1920;
        let x_1922 : vec4<f32> = u_xlat7;
        let x_1925 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1928 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1922.x, x_1922.y, x_1922.x, x_1922.y) * vec4<f32>(x_1925.x, x_1925.y, x_1925.x, x_1925.y)) + vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1928.y));
        let x_1931 : vec4<f32> = u_xlat7;
        let x_1934 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1937 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1931.x, x_1931.y) * vec2<f32>(x_1934.x, x_1934.y)) + vec2<f32>(x_1937.w, x_1937.y));
        let x_1941 : f32 = u_xlat12.y;
        u_xlat9.y = x_1941;
        let x_1944 : f32 = u_xlat10.z;
        u_xlat12.y = x_1944;
        let x_1946 : vec4<f32> = u_xlat7;
        let x_1949 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1952 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1946.x, x_1946.y, x_1946.x, x_1946.y) * vec4<f32>(x_1949.x, x_1949.y, x_1949.x, x_1949.y)) + vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1952.y));
        let x_1955 : vec4<f32> = u_xlat7;
        let x_1958 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1961 : vec4<f32> = u_xlat12;
        let x_1963 : vec2<f32> = ((vec2<f32>(x_1955.x, x_1955.y) * vec2<f32>(x_1958.x, x_1958.y)) + vec2<f32>(x_1961.w, x_1961.y));
        let x_1964 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1963.x, x_1963.y, x_1964.z, x_1964.w);
        let x_1967 : f32 = u_xlat12.y;
        u_xlat9.z = x_1967;
        let x_1970 : vec4<f32> = u_xlat7;
        let x_1973 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1976 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1970.x, x_1970.y, x_1970.x, x_1970.y) * vec4<f32>(x_1973.x, x_1973.y, x_1973.x, x_1973.y)) + vec4<f32>(x_1976.x, x_1976.y, x_1976.x, x_1976.z));
        let x_1980 : f32 = u_xlat10.w;
        u_xlat12.y = x_1980;
        let x_1983 : vec4<f32> = u_xlat7;
        let x_1986 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1983.x, x_1983.y, x_1983.x, x_1983.y) * vec4<f32>(x_1986.x, x_1986.y, x_1986.x, x_1986.y)) + vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1989.y));
        let x_1993 : vec4<f32> = u_xlat7;
        let x_1996 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_1999 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1993.x, x_1993.y) * vec2<f32>(x_1996.x, x_1996.y)) + vec2<f32>(x_1999.w, x_1999.y));
        let x_2003 : f32 = u_xlat12.y;
        u_xlat9.w = x_2003;
        let x_2006 : vec4<f32> = u_xlat7;
        let x_2009 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2012 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_2006.x, x_2006.y) * vec2<f32>(x_2009.x, x_2009.y)) + vec2<f32>(x_2012.x, x_2012.w));
        let x_2015 : vec4<f32> = u_xlat12;
        let x_2016 : vec3<f32> = vec3<f32>(x_2015.x, x_2015.z, x_2015.w);
        let x_2017 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2016.x, x_2017.y, x_2016.y, x_2016.z);
        let x_2019 : vec4<f32> = u_xlat7;
        let x_2022 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2025 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2019.x, x_2019.y, x_2019.x, x_2019.y) * vec4<f32>(x_2022.x, x_2022.y, x_2022.x, x_2022.y)) + vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2025.y));
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2032 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2035 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_2029.x, x_2029.y) * vec2<f32>(x_2032.x, x_2032.y)) + vec2<f32>(x_2035.w, x_2035.y));
        let x_2039 : f32 = u_xlat9.x;
        u_xlat10.x = x_2039;
        let x_2041 : vec4<f32> = u_xlat7;
        let x_2044 : vec4<f32> = x_854.x_MainLightShadowmapSize;
        let x_2047 : vec4<f32> = u_xlat10;
        let x_2049 : vec2<f32> = ((vec2<f32>(x_2041.x, x_2041.y) * vec2<f32>(x_2044.x, x_2044.y)) + vec2<f32>(x_2047.x, x_2047.y));
        let x_2050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2049.x, x_2049.y, x_2050.z, x_2050.w);
        let x_2053 : vec4<f32> = u_xlat8;
        let x_2055 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_2053.x, x_2053.x, x_2053.x, x_2053.x) * x_2055);
        let x_2058 : vec4<f32> = u_xlat8;
        let x_2060 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_2058.y, x_2058.y, x_2058.y, x_2058.y) * x_2060);
        let x_2063 : vec4<f32> = u_xlat8;
        let x_2065 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_2063.z, x_2063.z, x_2063.z, x_2063.z) * x_2065);
        let x_2067 : vec4<f32> = u_xlat8;
        let x_2069 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2067.w, x_2067.w, x_2067.w, x_2067.w) * x_2069);
        let x_2072 : vec4<f32> = u_xlat13;
        let x_2073 : vec2<f32> = vec2<f32>(x_2072.x, x_2072.y);
        let x_2075 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2073.x, x_2073.y, x_2075);
        let x_2082 : vec3<f32> = txVec13;
        let x_2084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2082.xy, x_2082.z);
        u_xlat67 = x_2084;
        let x_2086 : vec4<f32> = u_xlat13;
        let x_2087 : vec2<f32> = vec2<f32>(x_2086.z, x_2086.w);
        let x_2089 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2087.x, x_2087.y, x_2089);
        let x_2096 : vec3<f32> = txVec14;
        let x_2098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2096.xy, x_2096.z);
        u_xlat68 = x_2098;
        let x_2099 : f32 = u_xlat68;
        let x_2101 : f32 = u_xlat18.y;
        u_xlat68 = (x_2099 * x_2101);
        let x_2104 : f32 = u_xlat18.x;
        let x_2105 : f32 = u_xlat67;
        let x_2107 : f32 = u_xlat68;
        u_xlat67 = ((x_2104 * x_2105) + x_2107);
        let x_2110 : vec2<f32> = u_xlat49;
        let x_2112 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec15;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2119.xy, x_2119.z);
        u_xlat68 = x_2121;
        let x_2123 : f32 = u_xlat18.z;
        let x_2124 : f32 = u_xlat68;
        let x_2126 : f32 = u_xlat67;
        u_xlat67 = ((x_2123 * x_2124) + x_2126);
        let x_2129 : vec4<f32> = u_xlat16;
        let x_2130 : vec2<f32> = vec2<f32>(x_2129.x, x_2129.y);
        let x_2132 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2130.x, x_2130.y, x_2132);
        let x_2139 : vec3<f32> = txVec16;
        let x_2141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2139.xy, x_2139.z);
        u_xlat68 = x_2141;
        let x_2143 : f32 = u_xlat18.w;
        let x_2144 : f32 = u_xlat68;
        let x_2146 : f32 = u_xlat67;
        u_xlat67 = ((x_2143 * x_2144) + x_2146);
        let x_2149 : vec4<f32> = u_xlat14;
        let x_2150 : vec2<f32> = vec2<f32>(x_2149.x, x_2149.y);
        let x_2152 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2150.x, x_2150.y, x_2152);
        let x_2159 : vec3<f32> = txVec17;
        let x_2161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2159.xy, x_2159.z);
        u_xlat68 = x_2161;
        let x_2163 : f32 = u_xlat19.x;
        let x_2164 : f32 = u_xlat68;
        let x_2166 : f32 = u_xlat67;
        u_xlat67 = ((x_2163 * x_2164) + x_2166);
        let x_2169 : vec4<f32> = u_xlat14;
        let x_2170 : vec2<f32> = vec2<f32>(x_2169.z, x_2169.w);
        let x_2172 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec18;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2179.xy, x_2179.z);
        u_xlat68 = x_2181;
        let x_2183 : f32 = u_xlat19.y;
        let x_2184 : f32 = u_xlat68;
        let x_2186 : f32 = u_xlat67;
        u_xlat67 = ((x_2183 * x_2184) + x_2186);
        let x_2189 : vec4<f32> = u_xlat15;
        let x_2190 : vec2<f32> = vec2<f32>(x_2189.x, x_2189.y);
        let x_2192 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2190.x, x_2190.y, x_2192);
        let x_2199 : vec3<f32> = txVec19;
        let x_2201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2199.xy, x_2199.z);
        u_xlat68 = x_2201;
        let x_2203 : f32 = u_xlat19.z;
        let x_2204 : f32 = u_xlat68;
        let x_2206 : f32 = u_xlat67;
        u_xlat67 = ((x_2203 * x_2204) + x_2206);
        let x_2209 : vec4<f32> = u_xlat16;
        let x_2210 : vec2<f32> = vec2<f32>(x_2209.z, x_2209.w);
        let x_2212 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
        let x_2219 : vec3<f32> = txVec20;
        let x_2221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2219.xy, x_2219.z);
        u_xlat68 = x_2221;
        let x_2223 : f32 = u_xlat19.w;
        let x_2224 : f32 = u_xlat68;
        let x_2226 : f32 = u_xlat67;
        u_xlat67 = ((x_2223 * x_2224) + x_2226);
        let x_2229 : vec4<f32> = u_xlat17;
        let x_2230 : vec2<f32> = vec2<f32>(x_2229.x, x_2229.y);
        let x_2232 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2230.x, x_2230.y, x_2232);
        let x_2239 : vec3<f32> = txVec21;
        let x_2241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2239.xy, x_2239.z);
        u_xlat68 = x_2241;
        let x_2243 : f32 = u_xlat20.x;
        let x_2244 : f32 = u_xlat68;
        let x_2246 : f32 = u_xlat67;
        u_xlat67 = ((x_2243 * x_2244) + x_2246);
        let x_2249 : vec4<f32> = u_xlat17;
        let x_2250 : vec2<f32> = vec2<f32>(x_2249.z, x_2249.w);
        let x_2252 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2250.x, x_2250.y, x_2252);
        let x_2259 : vec3<f32> = txVec22;
        let x_2261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2259.xy, x_2259.z);
        u_xlat68 = x_2261;
        let x_2263 : f32 = u_xlat20.y;
        let x_2264 : f32 = u_xlat68;
        let x_2266 : f32 = u_xlat67;
        u_xlat67 = ((x_2263 * x_2264) + x_2266);
        let x_2269 : vec2<f32> = u_xlat30;
        let x_2271 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2269.x, x_2269.y, x_2271);
        let x_2278 : vec3<f32> = txVec23;
        let x_2280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2278.xy, x_2278.z);
        u_xlat68 = x_2280;
        let x_2282 : f32 = u_xlat20.z;
        let x_2283 : f32 = u_xlat68;
        let x_2285 : f32 = u_xlat67;
        u_xlat67 = ((x_2282 * x_2283) + x_2285);
        let x_2288 : vec2<f32> = u_xlat57;
        let x_2290 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2288.x, x_2288.y, x_2290);
        let x_2297 : vec3<f32> = txVec24;
        let x_2299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2297.xy, x_2297.z);
        u_xlat68 = x_2299;
        let x_2301 : f32 = u_xlat20.w;
        let x_2302 : f32 = u_xlat68;
        let x_2304 : f32 = u_xlat67;
        u_xlat67 = ((x_2301 * x_2302) + x_2304);
        let x_2307 : vec4<f32> = u_xlat12;
        let x_2308 : vec2<f32> = vec2<f32>(x_2307.x, x_2307.y);
        let x_2310 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2308.x, x_2308.y, x_2310);
        let x_2317 : vec3<f32> = txVec25;
        let x_2319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2317.xy, x_2317.z);
        u_xlat68 = x_2319;
        let x_2321 : f32 = u_xlat8.x;
        let x_2322 : f32 = u_xlat68;
        let x_2324 : f32 = u_xlat67;
        u_xlat67 = ((x_2321 * x_2322) + x_2324);
        let x_2327 : vec4<f32> = u_xlat12;
        let x_2328 : vec2<f32> = vec2<f32>(x_2327.z, x_2327.w);
        let x_2330 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
        let x_2337 : vec3<f32> = txVec26;
        let x_2339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2337.xy, x_2337.z);
        u_xlat68 = x_2339;
        let x_2341 : f32 = u_xlat8.y;
        let x_2342 : f32 = u_xlat68;
        let x_2344 : f32 = u_xlat67;
        u_xlat67 = ((x_2341 * x_2342) + x_2344);
        let x_2347 : vec2<f32> = u_xlat52;
        let x_2349 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2347.x, x_2347.y, x_2349);
        let x_2356 : vec3<f32> = txVec27;
        let x_2358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2356.xy, x_2356.z);
        u_xlat68 = x_2358;
        let x_2360 : f32 = u_xlat8.z;
        let x_2361 : f32 = u_xlat68;
        let x_2363 : f32 = u_xlat67;
        u_xlat67 = ((x_2360 * x_2361) + x_2363);
        let x_2366 : vec4<f32> = u_xlat7;
        let x_2367 : vec2<f32> = vec2<f32>(x_2366.x, x_2366.y);
        let x_2369 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2367.x, x_2367.y, x_2369);
        let x_2376 : vec3<f32> = txVec28;
        let x_2378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2376.xy, x_2376.z);
        u_xlat68 = x_2378;
        let x_2380 : f32 = u_xlat8.w;
        let x_2381 : f32 = u_xlat68;
        let x_2383 : f32 = u_xlat67;
        u_xlat4.x = ((x_2380 * x_2381) + x_2383);
      }
    }
  } else {
    let x_2388 : vec4<f32> = u_xlat2;
    let x_2389 : vec2<f32> = vec2<f32>(x_2388.x, x_2388.y);
    let x_2391 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2389.x, x_2389.y, x_2391);
    let x_2398 : vec3<f32> = txVec29;
    let x_2400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2398.xy, x_2398.z);
    u_xlat4.x = x_2400;
  }
  let x_2403 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2403) + 1.0f);
  let x_2408 : f32 = u_xlat4.x;
  let x_2410 : f32 = x_854.x_MainLightShadowParams.x;
  let x_2413 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2408 * x_2410) + x_2413);
  let x_2420 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_2420);
  let x_2425 : f32 = u_xlat2.z;
  u_xlatb44 = (x_2425 >= 1.0f);
  let x_2427 : bool = u_xlatb44;
  let x_2429 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_2427 | x_2429);
  let x_2433 : bool = u_xlatb23.x;
  if (x_2433) {
    x_2434 = 1.0f;
  } else {
    let x_2439 : f32 = u_xlat2.x;
    x_2434 = x_2439;
  }
  let x_2440 : f32 = x_2434;
  u_xlat2.x = x_2440;
  let x_2442 : vec3<f32> = vs_TEXCOORD7;
  let x_2445 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_2447 : vec3<f32> = (x_2442 + -(x_2445));
  let x_2448 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
  let x_2451 : vec4<f32> = u_xlat7;
  let x_2453 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_2451.x, x_2451.y, x_2451.z), vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2458 : f32 = u_xlat23.x;
  let x_2460 : f32 = x_854.x_MainLightShadowParams.z;
  let x_2463 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_2458 * x_2460) + x_2463);
  let x_2467 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2467, 0.0f, 1.0f);
  let x_2472 : f32 = u_xlat2.x;
  u_xlat44 = (-(x_2472) + 1.0f);
  let x_2476 : f32 = u_xlat23.x;
  let x_2477 : f32 = u_xlat44;
  let x_2480 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2476 * x_2477) + x_2480);
  let x_2489 : f32 = x_2487.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2489 == -1.0f));
  let x_2493 : bool = u_xlatb23.x;
  if (x_2493) {
    let x_2496 : vec3<f32> = vs_TEXCOORD7;
    let x_2499 : vec4<f32> = x_2487.x_MainLightWorldToLight[1i];
    u_xlat23 = (vec2<f32>(x_2496.y, x_2496.y) * vec2<f32>(x_2499.x, x_2499.y));
    let x_2503 : vec4<f32> = x_2487.x_MainLightWorldToLight[0i];
    let x_2505 : vec3<f32> = vs_TEXCOORD7;
    let x_2508 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(x_2505.x, x_2505.x)) + x_2508);
    let x_2511 : vec4<f32> = x_2487.x_MainLightWorldToLight[2i];
    let x_2513 : vec3<f32> = vs_TEXCOORD7;
    let x_2516 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_2511.x, x_2511.y) * vec2<f32>(x_2513.z, x_2513.z)) + x_2516);
    let x_2518 : vec2<f32> = u_xlat23;
    let x_2520 : vec4<f32> = x_2487.x_MainLightWorldToLight[3i];
    u_xlat23 = (x_2518 + vec2<f32>(x_2520.x, x_2520.y));
    let x_2523 : vec2<f32> = u_xlat23;
    u_xlat23 = ((x_2523 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2531 : vec2<f32> = u_xlat23;
    let x_2533 : f32 = x_128.x_GlobalMipBias.x;
    let x_2534 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2531, x_2533);
    u_xlat7 = x_2534;
    let x_2536 : f32 = x_2487.x_MainLightCookieTextureFormat;
    let x_2538 : f32 = x_2487.x_MainLightCookieTextureFormat;
    let x_2540 : f32 = x_2487.x_MainLightCookieTextureFormat;
    let x_2542 : f32 = x_2487.x_MainLightCookieTextureFormat;
    let x_2543 : vec4<f32> = vec4<f32>(x_2536, x_2538, x_2540, x_2542);
    let x_2550 : vec4<bool> = (vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2543.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_2550.x, x_2550.y);
    let x_2553 : bool = u_xlatb23.y;
    if (x_2553) {
      let x_2558 : f32 = u_xlat7.w;
      x_2554 = x_2558;
    } else {
      let x_2561 : f32 = u_xlat7.x;
      x_2554 = x_2561;
    }
    let x_2562 : f32 = x_2554;
    u_xlat44 = x_2562;
    let x_2564 : bool = u_xlatb23.x;
    if (x_2564) {
      let x_2568 : vec4<f32> = u_xlat7;
      x_2565 = vec3<f32>(x_2568.x, x_2568.y, x_2568.z);
    } else {
      let x_2571 : f32 = u_xlat44;
      x_2565 = vec3<f32>(x_2571, x_2571, x_2571);
    }
    let x_2573 : vec3<f32> = x_2565;
    let x_2574 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2580 : vec4<f32> = u_xlat7;
  let x_2583 : vec4<f32> = x_128.x_MainLightColor;
  let x_2585 : vec3<f32> = (vec3<f32>(x_2580.x, x_2580.y, x_2580.z) * vec3<f32>(x_2583.x, x_2583.y, x_2583.z));
  let x_2586 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);
  let x_2588 : f32 = u_xlat46;
  let x_2590 : vec4<f32> = u_xlat7;
  let x_2592 : vec3<f32> = (vec3<f32>(x_2588, x_2588, x_2588) * vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
  let x_2593 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
  let x_2596 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_2596;
  let x_2599 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_2599;
  let x_2602 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_2602;
  let x_2604 : vec4<f32> = u_xlat8;
  let x_2607 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(-(vec3<f32>(x_2604.x, x_2604.y, x_2604.z)), vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
  let x_2612 : f32 = u_xlat23.x;
  let x_2614 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2612 + x_2614);
  let x_2617 : vec4<f32> = u_xlat1;
  let x_2619 : vec2<f32> = u_xlat23;
  let x_2623 : vec4<f32> = u_xlat8;
  let x_2626 : vec3<f32> = ((vec3<f32>(x_2617.x, x_2617.y, x_2617.z) * -(vec3<f32>(x_2619.x, x_2619.x, x_2619.x))) + -(vec3<f32>(x_2623.x, x_2623.y, x_2623.z)));
  let x_2627 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
  let x_2629 : vec4<f32> = u_xlat1;
  let x_2631 : vec4<f32> = u_xlat8;
  u_xlat23.x = dot(vec3<f32>(x_2629.x, x_2629.y, x_2629.z), vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
  let x_2636 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2636, 0.0f, 1.0f);
  let x_2640 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2640) + 1.0f);
  let x_2645 : f32 = u_xlat23.x;
  let x_2647 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2645 * x_2647);
  let x_2651 : f32 = u_xlat23.x;
  let x_2653 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2651 * x_2653);
  let x_2657 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_2657) * 0.699999988f) + 1.700000048f);
  let x_2664 : f32 = u_xlat0.x;
  let x_2665 : f32 = u_xlat44;
  u_xlat0.x = (x_2664 * x_2665);
  let x_2669 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2669 * 6.0f);
  let x_2681 : vec4<f32> = u_xlat9;
  let x_2684 : f32 = u_xlat0.x;
  let x_2685 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2681.x, x_2681.y, x_2681.z), x_2684);
  u_xlat9 = x_2685;
  let x_2687 : f32 = u_xlat9.w;
  u_xlat0.x = (x_2687 + -1.0f);
  let x_2695 : f32 = x_2693.unity_SpecCube0_HDR.w;
  let x_2697 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2695 * x_2697) + 1.0f);
  let x_2702 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2702, 0.0f);
  let x_2706 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2706);
  let x_2710 : f32 = u_xlat0.x;
  let x_2712 : f32 = x_2693.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2710 * x_2712);
  let x_2716 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2716);
  let x_2720 : f32 = u_xlat0.x;
  let x_2722 : f32 = x_2693.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2720 * x_2722);
  let x_2725 : vec4<f32> = u_xlat9;
  let x_2727 : vec3<f32> = u_xlat0;
  let x_2729 : vec3<f32> = (vec3<f32>(x_2725.x, x_2725.y, x_2725.z) * vec3<f32>(x_2727.x, x_2727.x, x_2727.x));
  let x_2730 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
  let x_2732 : f32 = u_xlat42;
  let x_2734 : f32 = u_xlat42;
  let x_2738 : vec2<f32> = ((vec2<f32>(x_2732, x_2732) * vec2<f32>(x_2734, x_2734)) + vec2<f32>(-1.0f, 1.0f));
  let x_2739 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2738.x, x_2739.y, x_2738.y);
  let x_2742 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2742);
  let x_2744 : vec4<f32> = u_xlat5;
  let x_2747 : f32 = u_xlat66;
  let x_2749 : vec3<f32> = (-(vec3<f32>(x_2744.x, x_2744.y, x_2744.z)) + vec3<f32>(x_2747, x_2747, x_2747));
  let x_2750 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2749.x, x_2749.y, x_2749.z, x_2750.w);
  let x_2752 : vec2<f32> = u_xlat23;
  let x_2754 : vec4<f32> = u_xlat10;
  let x_2757 : vec4<f32> = u_xlat5;
  let x_2759 : vec3<f32> = ((vec3<f32>(x_2752.x, x_2752.x, x_2752.x) * vec3<f32>(x_2754.x, x_2754.y, x_2754.z)) + vec3<f32>(x_2757.x, x_2757.y, x_2757.z));
  let x_2760 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2760.w);
  let x_2762 : f32 = u_xlat42;
  let x_2764 : vec4<f32> = u_xlat10;
  let x_2766 : vec3<f32> = (vec3<f32>(x_2762, x_2762, x_2762) * vec3<f32>(x_2764.x, x_2764.y, x_2764.z));
  let x_2767 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2767.w);
  let x_2769 : vec4<f32> = u_xlat9;
  let x_2771 : vec4<f32> = u_xlat10;
  let x_2773 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.y, x_2769.z) * vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
  let x_2774 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
  let x_2776 : vec4<f32> = u_xlat3;
  let x_2778 : vec4<f32> = u_xlat6;
  let x_2781 : vec4<f32> = u_xlat9;
  let x_2783 : vec3<f32> = ((vec3<f32>(x_2776.x, x_2776.y, x_2776.z) * vec3<f32>(x_2778.x, x_2778.y, x_2778.z)) + vec3<f32>(x_2781.x, x_2781.y, x_2781.z));
  let x_2784 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2784.w);
  let x_2787 : f32 = u_xlat2.x;
  let x_2789 : f32 = x_2693.unity_LightData.z;
  u_xlat42 = (x_2787 * x_2789);
  let x_2791 : vec4<f32> = u_xlat1;
  let x_2794 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2791.x, x_2791.y, x_2791.z), vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
  let x_2799 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2799, 0.0f, 1.0f);
  let x_2802 : f32 = u_xlat42;
  let x_2804 : f32 = u_xlat2.x;
  u_xlat42 = (x_2802 * x_2804);
  let x_2806 : f32 = u_xlat42;
  let x_2808 : vec4<f32> = u_xlat7;
  let x_2810 : vec3<f32> = (vec3<f32>(x_2806, x_2806, x_2806) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
  let x_2811 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
  let x_2813 : vec4<f32> = u_xlat8;
  let x_2816 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2818 : vec3<f32> = (vec3<f32>(x_2813.x, x_2813.y, x_2813.z) + vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
  let x_2819 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
  let x_2821 : vec4<f32> = u_xlat7;
  let x_2823 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2821.x, x_2821.y, x_2821.z), vec3<f32>(x_2823.x, x_2823.y, x_2823.z));
  let x_2826 : f32 = u_xlat42;
  u_xlat42 = max(x_2826, 1.17549435e-37f);
  let x_2829 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2829);
  let x_2831 : f32 = u_xlat42;
  let x_2833 : vec4<f32> = u_xlat7;
  let x_2835 : vec3<f32> = (vec3<f32>(x_2831, x_2831, x_2831) * vec3<f32>(x_2833.x, x_2833.y, x_2833.z));
  let x_2836 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2835.x, x_2835.y, x_2835.z, x_2836.w);
  let x_2838 : vec4<f32> = u_xlat1;
  let x_2840 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2838.x, x_2838.y, x_2838.z), vec3<f32>(x_2840.x, x_2840.y, x_2840.z));
  let x_2843 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2843, 0.0f, 1.0f);
  let x_2846 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2848 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2846.x, x_2846.y, x_2846.z), vec3<f32>(x_2848.x, x_2848.y, x_2848.z));
  let x_2851 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2851, 0.0f, 1.0f);
  let x_2853 : f32 = u_xlat42;
  let x_2854 : f32 = u_xlat42;
  u_xlat42 = (x_2853 * x_2854);
  let x_2856 : f32 = u_xlat42;
  let x_2858 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2856 * x_2858) + 1.000010014f);
  let x_2862 : f32 = u_xlat66;
  let x_2863 : f32 = u_xlat66;
  u_xlat66 = (x_2862 * x_2863);
  let x_2865 : f32 = u_xlat42;
  let x_2866 : f32 = u_xlat42;
  u_xlat42 = (x_2865 * x_2866);
  let x_2868 : f32 = u_xlat66;
  u_xlat66 = max(x_2868, 0.100000001f);
  let x_2871 : f32 = u_xlat42;
  let x_2872 : f32 = u_xlat66;
  u_xlat42 = (x_2871 * x_2872);
  let x_2874 : f32 = u_xlat25;
  let x_2875 : f32 = u_xlat42;
  u_xlat42 = (x_2874 * x_2875);
  let x_2877 : f32 = u_xlat65;
  let x_2878 : f32 = u_xlat42;
  u_xlat42 = (x_2877 / x_2878);
  let x_2880 : vec4<f32> = u_xlat5;
  let x_2882 : f32 = u_xlat42;
  let x_2885 : vec4<f32> = u_xlat6;
  let x_2887 : vec3<f32> = ((vec3<f32>(x_2880.x, x_2880.y, x_2880.z) * vec3<f32>(x_2882, x_2882, x_2882)) + vec3<f32>(x_2885.x, x_2885.y, x_2885.z));
  let x_2888 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2888.w);
  let x_2890 : vec4<f32> = u_xlat2;
  let x_2892 : vec4<f32> = u_xlat7;
  let x_2894 : vec3<f32> = (vec3<f32>(x_2890.x, x_2890.y, x_2890.z) * vec3<f32>(x_2892.x, x_2892.y, x_2892.z));
  let x_2895 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2894.x, x_2894.y, x_2894.z, x_2895.w);
  let x_2898 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2900 : f32 = x_2693.unity_LightData.y;
  u_xlat42 = min(x_2898, x_2900);
  let x_2903 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2903));
  let x_2907 : f32 = x_2487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2909 : f32 = x_2487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2911 : f32 = x_2487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2913 : f32 = x_2487.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2914 : vec4<f32> = vec4<f32>(x_2907, x_2909, x_2911, x_2913);
  let x_2921 : vec4<bool> = (vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2914.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2922 : vec2<bool> = vec2<bool>(x_2921.x, x_2921.w);
  let x_2923 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2922.x, x_2923.y, x_2923.z, x_2922.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2934 : u32 = u_xlatu_loop_1;
    let x_2935 : u32 = u_xlatu42;
    if ((x_2934 < x_2935)) {
    } else {
      break;
    }
    let x_2938 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2938 >> 2u);
    let x_2941 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2941 & 3u));
    let x_2944 : u32 = u_xlatu68;
    let x_2947 : vec4<f32> = x_2693.unity_LightIndices[bitcast<i32>(x_2944)];
    let x_2957 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2962 : vec4<u32> = indexable[x_2957];
    u_xlat68 = dot(x_2947, bitcast<vec4<f32>>(x_2962));
    let x_2965 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2965));
    let x_2968 : vec3<f32> = vs_TEXCOORD7;
    let x_2980 : u32 = u_xlatu68;
    let x_2983 : vec4<f32> = x_2979.x_AdditionalLightsPosition[bitcast<i32>(x_2980)];
    let x_2986 : u32 = u_xlatu68;
    let x_2989 : vec4<f32> = x_2979.x_AdditionalLightsPosition[bitcast<i32>(x_2986)];
    let x_2991 : vec3<f32> = ((-(x_2968) * vec3<f32>(x_2983.w, x_2983.w, x_2983.w)) + vec3<f32>(x_2989.x, x_2989.y, x_2989.z));
    let x_2992 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2992.w);
    let x_2994 : vec4<f32> = u_xlat9;
    let x_2996 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2994.x, x_2994.y, x_2994.z), vec3<f32>(x_2996.x, x_2996.y, x_2996.z));
    let x_2999 : f32 = u_xlat69;
    u_xlat69 = max(x_2999, 6.10351562e-05f);
    let x_3002 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_3002);
    let x_3004 : f32 = u_xlat70;
    let x_3006 : vec4<f32> = u_xlat9;
    let x_3008 : vec3<f32> = (vec3<f32>(x_3004, x_3004, x_3004) * vec3<f32>(x_3006.x, x_3006.y, x_3006.z));
    let x_3009 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3008.x, x_3008.y, x_3008.z, x_3009.w);
    let x_3012 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_3012);
    let x_3014 : f32 = u_xlat69;
    let x_3015 : u32 = u_xlatu68;
    let x_3018 : f32 = x_2979.x_AdditionalLightsAttenuation[bitcast<i32>(x_3015)].x;
    u_xlat69 = (x_3014 * x_3018);
    let x_3020 : f32 = u_xlat69;
    let x_3022 : f32 = u_xlat69;
    u_xlat69 = ((-(x_3020) * x_3022) + 1.0f);
    let x_3025 : f32 = u_xlat69;
    u_xlat69 = max(x_3025, 0.0f);
    let x_3027 : f32 = u_xlat69;
    let x_3028 : f32 = u_xlat69;
    u_xlat69 = (x_3027 * x_3028);
    let x_3030 : f32 = u_xlat69;
    let x_3031 : f32 = u_xlat71;
    u_xlat69 = (x_3030 * x_3031);
    let x_3033 : u32 = u_xlatu68;
    let x_3036 : vec4<f32> = x_2979.x_AdditionalLightsSpotDir[bitcast<i32>(x_3033)];
    let x_3038 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_3036.x, x_3036.y, x_3036.z), vec3<f32>(x_3038.x, x_3038.y, x_3038.z));
    let x_3041 : f32 = u_xlat71;
    let x_3042 : u32 = u_xlatu68;
    let x_3045 : f32 = x_2979.x_AdditionalLightsAttenuation[bitcast<i32>(x_3042)].z;
    let x_3047 : u32 = u_xlatu68;
    let x_3050 : f32 = x_2979.x_AdditionalLightsAttenuation[bitcast<i32>(x_3047)].w;
    u_xlat71 = ((x_3041 * x_3045) + x_3050);
    let x_3052 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3052, 0.0f, 1.0f);
    let x_3054 : f32 = u_xlat71;
    let x_3055 : f32 = u_xlat71;
    u_xlat71 = (x_3054 * x_3055);
    let x_3057 : f32 = u_xlat69;
    let x_3058 : f32 = u_xlat71;
    u_xlat69 = (x_3057 * x_3058);
    let x_3061 : u32 = u_xlatu68;
    u_xlatu71 = (x_3061 >> 5u);
    let x_3064 : u32 = u_xlatu68;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_3064) & 31i)));
    let x_3069 : i32 = u_xlati72;
    let x_3071 : u32 = u_xlatu71;
    let x_3074 : f32 = x_2487.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_3071)].el;
    u_xlati71 = bitcast<i32>((bitcast<u32>(x_3069) & bitcast<u32>(x_3074)));
    let x_3078 : i32 = u_xlati71;
    if ((x_3078 != 0i)) {
      let x_3088 : u32 = u_xlatu68;
      let x_3091 : f32 = x_3087.x_AdditionalLightsLightTypes[bitcast<i32>(x_3088)].el;
      u_xlati71 = i32(x_3091);
      let x_3093 : i32 = u_xlati71;
      u_xlati72 = select(1i, 0i, (x_3093 != 0i));
      let x_3097 : u32 = u_xlatu68;
      u_xlati73 = (bitcast<i32>(x_3097) << bitcast<u32>(2i));
      let x_3100 : i32 = u_xlati72;
      if ((x_3100 != 0i)) {
        let x_3104 : vec3<f32> = vs_TEXCOORD7;
        let x_3106 : i32 = u_xlati73;
        let x_3109 : i32 = u_xlati73;
        let x_3113 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3106 + 1i) / 4i)][((x_3109 + 1i) % 4i)];
        let x_3115 : vec3<f32> = (vec3<f32>(x_3104.y, x_3104.y, x_3104.y) * vec3<f32>(x_3113.x, x_3113.y, x_3113.w));
        let x_3116 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3115.x, x_3115.y, x_3115.z, x_3116.w);
        let x_3118 : i32 = u_xlati73;
        let x_3120 : i32 = u_xlati73;
        let x_3123 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[(x_3118 / 4i)][(x_3120 % 4i)];
        let x_3125 : vec3<f32> = vs_TEXCOORD7;
        let x_3128 : vec4<f32> = u_xlat11;
        let x_3130 : vec3<f32> = ((vec3<f32>(x_3123.x, x_3123.y, x_3123.w) * vec3<f32>(x_3125.x, x_3125.x, x_3125.x)) + vec3<f32>(x_3128.x, x_3128.y, x_3128.z));
        let x_3131 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3131.w);
        let x_3133 : i32 = u_xlati73;
        let x_3136 : i32 = u_xlati73;
        let x_3140 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3133 + 2i) / 4i)][((x_3136 + 2i) % 4i)];
        let x_3142 : vec3<f32> = vs_TEXCOORD7;
        let x_3145 : vec4<f32> = u_xlat11;
        let x_3147 : vec3<f32> = ((vec3<f32>(x_3140.x, x_3140.y, x_3140.w) * vec3<f32>(x_3142.z, x_3142.z, x_3142.z)) + vec3<f32>(x_3145.x, x_3145.y, x_3145.z));
        let x_3148 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3148.w);
        let x_3150 : vec4<f32> = u_xlat11;
        let x_3152 : i32 = u_xlati73;
        let x_3155 : i32 = u_xlati73;
        let x_3159 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3152 + 3i) / 4i)][((x_3155 + 3i) % 4i)];
        let x_3161 : vec3<f32> = (vec3<f32>(x_3150.x, x_3150.y, x_3150.z) + vec3<f32>(x_3159.x, x_3159.y, x_3159.w));
        let x_3162 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3161.x, x_3161.y, x_3161.z, x_3162.w);
        let x_3164 : vec4<f32> = u_xlat11;
        let x_3166 : vec4<f32> = u_xlat11;
        let x_3168 : vec2<f32> = (vec2<f32>(x_3164.x, x_3164.y) / vec2<f32>(x_3166.z, x_3166.z));
        let x_3169 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3168.x, x_3168.y, x_3169.z, x_3169.w);
        let x_3171 : vec4<f32> = u_xlat11;
        let x_3174 : vec2<f32> = ((vec2<f32>(x_3171.x, x_3171.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3175 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
        let x_3177 : vec4<f32> = u_xlat11;
        let x_3181 : vec2<f32> = clamp(vec2<f32>(x_3177.x, x_3177.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3182 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3181.x, x_3181.y, x_3182.z, x_3182.w);
        let x_3184 : u32 = u_xlatu68;
        let x_3187 : vec4<f32> = x_3087.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3184)];
        let x_3189 : vec4<f32> = u_xlat11;
        let x_3192 : u32 = u_xlatu68;
        let x_3195 : vec4<f32> = x_3087.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3192)];
        let x_3197 : vec2<f32> = ((vec2<f32>(x_3187.x, x_3187.y) * vec2<f32>(x_3189.x, x_3189.y)) + vec2<f32>(x_3195.z, x_3195.w));
        let x_3198 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3197.x, x_3197.y, x_3198.z, x_3198.w);
      } else {
        let x_3202 : i32 = u_xlati71;
        u_xlatb71 = (x_3202 == 1i);
        let x_3204 : bool = u_xlatb71;
        u_xlati71 = select(0i, 1i, x_3204);
        let x_3206 : i32 = u_xlati71;
        if ((x_3206 != 0i)) {
          let x_3211 : vec3<f32> = vs_TEXCOORD7;
          let x_3213 : i32 = u_xlati73;
          let x_3216 : i32 = u_xlati73;
          let x_3220 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3213 + 1i) / 4i)][((x_3216 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3211.y, x_3211.y) * vec2<f32>(x_3220.x, x_3220.y));
          let x_3223 : i32 = u_xlati73;
          let x_3225 : i32 = u_xlati73;
          let x_3228 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[(x_3223 / 4i)][(x_3225 % 4i)];
          let x_3230 : vec3<f32> = vs_TEXCOORD7;
          let x_3233 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3228.x, x_3228.y) * vec2<f32>(x_3230.x, x_3230.x)) + x_3233);
          let x_3235 : i32 = u_xlati73;
          let x_3238 : i32 = u_xlati73;
          let x_3242 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3235 + 2i) / 4i)][((x_3238 + 2i) % 4i)];
          let x_3244 : vec3<f32> = vs_TEXCOORD7;
          let x_3247 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3242.x, x_3242.y) * vec2<f32>(x_3244.z, x_3244.z)) + x_3247);
          let x_3249 : vec2<f32> = u_xlat53;
          let x_3250 : i32 = u_xlati73;
          let x_3253 : i32 = u_xlati73;
          let x_3257 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3250 + 3i) / 4i)][((x_3253 + 3i) % 4i)];
          u_xlat53 = (x_3249 + vec2<f32>(x_3257.x, x_3257.y));
          let x_3260 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3260 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3263 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3263);
          let x_3265 : u32 = u_xlatu68;
          let x_3268 : vec4<f32> = x_3087.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3265)];
          let x_3270 : vec2<f32> = u_xlat53;
          let x_3272 : u32 = u_xlatu68;
          let x_3275 : vec4<f32> = x_3087.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3272)];
          let x_3277 : vec2<f32> = ((vec2<f32>(x_3268.x, x_3268.y) * x_3270) + vec2<f32>(x_3275.z, x_3275.w));
          let x_3278 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3277.x, x_3277.y, x_3278.z, x_3278.w);
        } else {
          let x_3281 : vec3<f32> = vs_TEXCOORD7;
          let x_3283 : i32 = u_xlati73;
          let x_3286 : i32 = u_xlati73;
          let x_3290 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3283 + 1i) / 4i)][((x_3286 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3281.y, x_3281.y, x_3281.y, x_3281.y) * x_3290);
          let x_3292 : i32 = u_xlati73;
          let x_3294 : i32 = u_xlati73;
          let x_3297 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[(x_3292 / 4i)][(x_3294 % 4i)];
          let x_3298 : vec3<f32> = vs_TEXCOORD7;
          let x_3301 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3297 * vec4<f32>(x_3298.x, x_3298.x, x_3298.x, x_3298.x)) + x_3301);
          let x_3303 : i32 = u_xlati73;
          let x_3306 : i32 = u_xlati73;
          let x_3310 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3303 + 2i) / 4i)][((x_3306 + 2i) % 4i)];
          let x_3311 : vec3<f32> = vs_TEXCOORD7;
          let x_3314 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3310 * vec4<f32>(x_3311.z, x_3311.z, x_3311.z, x_3311.z)) + x_3314);
          let x_3316 : vec4<f32> = u_xlat12;
          let x_3317 : i32 = u_xlati73;
          let x_3320 : i32 = u_xlati73;
          let x_3324 : vec4<f32> = x_3087.x_AdditionalLightsWorldToLights[((x_3317 + 3i) / 4i)][((x_3320 + 3i) % 4i)];
          u_xlat12 = (x_3316 + x_3324);
          let x_3326 : vec4<f32> = u_xlat12;
          let x_3328 : vec4<f32> = u_xlat12;
          let x_3330 : vec3<f32> = (vec3<f32>(x_3326.x, x_3326.y, x_3326.z) / vec3<f32>(x_3328.w, x_3328.w, x_3328.w));
          let x_3331 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3330.x, x_3330.y, x_3330.z, x_3331.w);
          let x_3333 : vec4<f32> = u_xlat12;
          let x_3335 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(vec3<f32>(x_3333.x, x_3333.y, x_3333.z), vec3<f32>(x_3335.x, x_3335.y, x_3335.z));
          let x_3338 : f32 = u_xlat71;
          u_xlat71 = inverseSqrt(x_3338);
          let x_3340 : f32 = u_xlat71;
          let x_3342 : vec4<f32> = u_xlat12;
          let x_3344 : vec3<f32> = (vec3<f32>(x_3340, x_3340, x_3340) * vec3<f32>(x_3342.x, x_3342.y, x_3342.z));
          let x_3345 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3344.x, x_3344.y, x_3344.z, x_3345.w);
          let x_3347 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(abs(vec3<f32>(x_3347.x, x_3347.y, x_3347.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3352 : f32 = u_xlat71;
          u_xlat71 = max(x_3352, 0.000001f);
          let x_3355 : f32 = u_xlat71;
          u_xlat71 = (1.0f / x_3355);
          let x_3357 : f32 = u_xlat71;
          let x_3359 : vec4<f32> = u_xlat12;
          let x_3361 : vec3<f32> = (vec3<f32>(x_3357, x_3357, x_3357) * vec3<f32>(x_3359.z, x_3359.x, x_3359.y));
          let x_3362 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3361.x, x_3361.y, x_3361.z, x_3362.w);
          let x_3365 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3365);
          let x_3369 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3369, 0.0f, 1.0f);
          let x_3373 : vec4<f32> = u_xlat13;
          let x_3376 : vec4<bool> = (vec4<f32>(x_3373.y, x_3373.z, x_3373.y, x_3373.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3376.x, x_3376.y);
          let x_3379 : bool = u_xlatb53.x;
          if (x_3379) {
            let x_3384 : f32 = u_xlat13.x;
            x_3380 = x_3384;
          } else {
            let x_3387 : f32 = u_xlat13.x;
            x_3380 = -(x_3387);
          }
          let x_3389 : f32 = x_3380;
          u_xlat53.x = x_3389;
          let x_3392 : bool = u_xlatb53.y;
          if (x_3392) {
            let x_3397 : f32 = u_xlat13.x;
            x_3393 = x_3397;
          } else {
            let x_3400 : f32 = u_xlat13.x;
            x_3393 = -(x_3400);
          }
          let x_3402 : f32 = x_3393;
          u_xlat53.y = x_3402;
          let x_3404 : vec4<f32> = u_xlat12;
          let x_3406 : f32 = u_xlat71;
          let x_3409 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3404.x, x_3404.y) * vec2<f32>(x_3406, x_3406)) + x_3409);
          let x_3411 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3411 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3414 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3414, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3418 : u32 = u_xlatu68;
          let x_3421 : vec4<f32> = x_3087.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3418)];
          let x_3423 : vec2<f32> = u_xlat53;
          let x_3425 : u32 = u_xlatu68;
          let x_3428 : vec4<f32> = x_3087.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3425)];
          let x_3430 : vec2<f32> = ((vec2<f32>(x_3421.x, x_3421.y) * x_3423) + vec2<f32>(x_3428.z, x_3428.w));
          let x_3431 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3430.x, x_3430.y, x_3431.z, x_3431.w);
        }
      }
      let x_3438 : vec4<f32> = u_xlat11;
      let x_3441 : f32 = x_128.x_GlobalMipBias.x;
      let x_3442 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3438.x, x_3438.y), x_3441);
      u_xlat11 = x_3442;
      let x_3444 : bool = u_xlatb4.w;
      if (x_3444) {
        let x_3449 : f32 = u_xlat11.w;
        x_3445 = x_3449;
      } else {
        let x_3452 : f32 = u_xlat11.x;
        x_3445 = x_3452;
      }
      let x_3453 : f32 = x_3445;
      u_xlat71 = x_3453;
      let x_3455 : bool = u_xlatb4.x;
      if (x_3455) {
        let x_3459 : vec4<f32> = u_xlat11;
        x_3456 = vec3<f32>(x_3459.x, x_3459.y, x_3459.z);
      } else {
        let x_3462 : f32 = u_xlat71;
        x_3456 = vec3<f32>(x_3462, x_3462, x_3462);
      }
      let x_3464 : vec3<f32> = x_3456;
      let x_3465 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3464.x, x_3464.y, x_3464.z, x_3465.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3471 : vec4<f32> = u_xlat11;
    let x_3473 : u32 = u_xlatu68;
    let x_3476 : vec4<f32> = x_2979.x_AdditionalLightsColor[bitcast<i32>(x_3473)];
    let x_3478 : vec3<f32> = (vec3<f32>(x_3471.x, x_3471.y, x_3471.z) * vec3<f32>(x_3476.x, x_3476.y, x_3476.z));
    let x_3479 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3478.x, x_3478.y, x_3478.z, x_3479.w);
    let x_3481 : f32 = u_xlat46;
    let x_3483 : vec4<f32> = u_xlat11;
    let x_3485 : vec3<f32> = (vec3<f32>(x_3481, x_3481, x_3481) * vec3<f32>(x_3483.x, x_3483.y, x_3483.z));
    let x_3486 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3485.x, x_3485.y, x_3485.z, x_3486.w);
    let x_3488 : vec4<f32> = u_xlat1;
    let x_3490 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3488.x, x_3488.y, x_3488.z), vec3<f32>(x_3490.x, x_3490.y, x_3490.z));
    let x_3493 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3493, 0.0f, 1.0f);
    let x_3495 : f32 = u_xlat68;
    let x_3496 : f32 = u_xlat69;
    u_xlat68 = (x_3495 * x_3496);
    let x_3498 : f32 = u_xlat68;
    let x_3500 : vec4<f32> = u_xlat11;
    let x_3502 : vec3<f32> = (vec3<f32>(x_3498, x_3498, x_3498) * vec3<f32>(x_3500.x, x_3500.y, x_3500.z));
    let x_3503 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3502.x, x_3502.y, x_3502.z, x_3503.w);
    let x_3505 : vec4<f32> = u_xlat9;
    let x_3507 : f32 = u_xlat70;
    let x_3510 : vec4<f32> = u_xlat8;
    let x_3512 : vec3<f32> = ((vec3<f32>(x_3505.x, x_3505.y, x_3505.z) * vec3<f32>(x_3507, x_3507, x_3507)) + vec3<f32>(x_3510.x, x_3510.y, x_3510.z));
    let x_3513 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3512.x, x_3512.y, x_3512.z, x_3513.w);
    let x_3515 : vec4<f32> = u_xlat9;
    let x_3517 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3515.x, x_3515.y, x_3515.z), vec3<f32>(x_3517.x, x_3517.y, x_3517.z));
    let x_3520 : f32 = u_xlat68;
    u_xlat68 = max(x_3520, 1.17549435e-37f);
    let x_3522 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3522);
    let x_3524 : f32 = u_xlat68;
    let x_3526 : vec4<f32> = u_xlat9;
    let x_3528 : vec3<f32> = (vec3<f32>(x_3524, x_3524, x_3524) * vec3<f32>(x_3526.x, x_3526.y, x_3526.z));
    let x_3529 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3528.x, x_3528.y, x_3528.z, x_3529.w);
    let x_3531 : vec4<f32> = u_xlat1;
    let x_3533 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3531.x, x_3531.y, x_3531.z), vec3<f32>(x_3533.x, x_3533.y, x_3533.z));
    let x_3536 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3536, 0.0f, 1.0f);
    let x_3538 : vec4<f32> = u_xlat10;
    let x_3540 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3538.x, x_3538.y, x_3538.z), vec3<f32>(x_3540.x, x_3540.y, x_3540.z));
    let x_3543 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3543, 0.0f, 1.0f);
    let x_3545 : f32 = u_xlat68;
    let x_3546 : f32 = u_xlat68;
    u_xlat68 = (x_3545 * x_3546);
    let x_3548 : f32 = u_xlat68;
    let x_3550 : f32 = u_xlat0.x;
    u_xlat68 = ((x_3548 * x_3550) + 1.000010014f);
    let x_3553 : f32 = u_xlat69;
    let x_3554 : f32 = u_xlat69;
    u_xlat69 = (x_3553 * x_3554);
    let x_3556 : f32 = u_xlat68;
    let x_3557 : f32 = u_xlat68;
    u_xlat68 = (x_3556 * x_3557);
    let x_3559 : f32 = u_xlat69;
    u_xlat69 = max(x_3559, 0.100000001f);
    let x_3561 : f32 = u_xlat68;
    let x_3562 : f32 = u_xlat69;
    u_xlat68 = (x_3561 * x_3562);
    let x_3564 : f32 = u_xlat25;
    let x_3565 : f32 = u_xlat68;
    u_xlat68 = (x_3564 * x_3565);
    let x_3567 : f32 = u_xlat65;
    let x_3568 : f32 = u_xlat68;
    u_xlat68 = (x_3567 / x_3568);
    let x_3570 : vec4<f32> = u_xlat5;
    let x_3572 : f32 = u_xlat68;
    let x_3575 : vec4<f32> = u_xlat6;
    let x_3577 : vec3<f32> = ((vec3<f32>(x_3570.x, x_3570.y, x_3570.z) * vec3<f32>(x_3572, x_3572, x_3572)) + vec3<f32>(x_3575.x, x_3575.y, x_3575.z));
    let x_3578 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3577.x, x_3577.y, x_3577.z, x_3578.w);
    let x_3580 : vec4<f32> = u_xlat9;
    let x_3582 : vec4<f32> = u_xlat11;
    let x_3585 : vec4<f32> = u_xlat7;
    let x_3587 : vec3<f32> = ((vec3<f32>(x_3580.x, x_3580.y, x_3580.z) * vec3<f32>(x_3582.x, x_3582.y, x_3582.z)) + vec3<f32>(x_3585.x, x_3585.y, x_3585.z));
    let x_3588 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);

    continuing {
      let x_3590 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3590 + bitcast<u32>(1i));
    }
  }
  let x_3592 : vec4<f32> = u_xlat3;
  let x_3594 : f32 = u_xlat21;
  let x_3597 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_3592.x, x_3592.y, x_3592.z) * vec3<f32>(x_3594, x_3594, x_3594)) + vec3<f32>(x_3597.x, x_3597.y, x_3597.z));
  let x_3600 : vec4<f32> = u_xlat7;
  let x_3602 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3600.x, x_3600.y, x_3600.z) + x_3602);
  let x_3604 : f32 = u_xlat63;
  let x_3606 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3604, x_3604, x_3604) * x_3606);
  let x_3608 : f32 = u_xlat64;
  let x_3609 : f32 = u_xlat64;
  u_xlat63 = (x_3608 * -(x_3609));
  let x_3612 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3612);
  let x_3616 : vec3<f32> = u_xlat0;
  let x_3617 : f32 = u_xlat63;
  let x_3619 : vec3<f32> = (x_3616 * vec3<f32>(x_3617, x_3617, x_3617));
  let x_3620 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3619.x, x_3619.y, x_3619.z, x_3620.w);
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

