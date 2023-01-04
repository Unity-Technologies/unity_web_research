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
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_623 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_817 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2093 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2571 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2679 : AdditionalLightsCookies;

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
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_561 : vec3<f32>;
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
  var u_xlatb68 : bool;
  var x_2049 : f32;
  var u_xlatb8 : vec2<bool>;
  var x_2176 : f32;
  var x_2187 : vec3<f32>;
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
  var x_2972 : f32;
  var x_2985 : f32;
  var x_3037 : f32;
  var x_3048 : vec3<f32>;
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
  let x_291 : f32 = u_xlat64;
  u_xlat64 = (x_291 + 6.10351562e-05f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat64;
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
  let x_368 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_368;
  let x_371 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_371;
  let x_374 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_374;
  let x_377 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_377;
  let x_380 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_380;
  let x_383 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_383;
  let x_386 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_386;
  let x_389 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_389;
  let x_391 : vec4<f32> = u_xlat6;
  let x_392 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_391 + x_392);
  let x_395 : f32 = u_xlat0.z;
  u_xlat7.x = x_395;
  let x_398 : f32 = u_xlat1.z;
  u_xlat7.y = x_398;
  let x_401 : f32 = u_xlat2.z;
  u_xlat7.z = x_401;
  let x_404 : f32 = u_xlat3.y;
  u_xlat7.w = x_404;
  let x_406 : vec4<f32> = u_xlat9;
  let x_409 : f32 = x_30.x_Smoothness0;
  let x_411 : f32 = x_30.x_Smoothness1;
  let x_413 : f32 = x_30.x_Smoothness2;
  let x_415 : f32 = x_30.x_Smoothness3;
  let x_418 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_406) * vec4<f32>(x_409, x_411, x_413, x_415)) + x_418);
  let x_422 : f32 = x_30.x_LayerHasMask0;
  let x_425 : f32 = x_30.x_LayerHasMask1;
  let x_428 : f32 = x_30.x_LayerHasMask2;
  let x_431 : f32 = x_30.x_LayerHasMask3;
  let x_433 : vec4<f32> = u_xlat7;
  let x_435 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_422, x_425, x_428, x_431) * x_433) + x_435);
  let x_438 : vec4<f32> = u_xlat4;
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_438, x_439);
  let x_442 : f32 = u_xlat0.x;
  u_xlat7.x = x_442;
  let x_445 : f32 = u_xlat1.x;
  u_xlat7.y = x_445;
  let x_448 : f32 = u_xlat2.x;
  u_xlat7.z = x_448;
  let x_451 : f32 = u_xlat3.x;
  u_xlat7.w = x_451;
  let x_453 : vec4<f32> = u_xlat7;
  let x_456 : f32 = x_30.x_Metallic0;
  let x_459 : f32 = x_30.x_Metallic1;
  let x_462 : f32 = x_30.x_Metallic2;
  let x_465 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_453 + -(vec4<f32>(x_456, x_459, x_462, x_465)));
  let x_470 : f32 = x_30.x_LayerHasMask0;
  let x_472 : f32 = x_30.x_LayerHasMask1;
  let x_474 : f32 = x_30.x_LayerHasMask2;
  let x_476 : f32 = x_30.x_LayerHasMask3;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : f32 = x_30.x_Metallic0;
  let x_483 : f32 = x_30.x_Metallic1;
  let x_485 : f32 = x_30.x_Metallic2;
  let x_487 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_470, x_472, x_474, x_476) * x_478) + vec4<f32>(x_481, x_483, x_485, x_487));
  let x_490 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_490, x_491);
  let x_495 : f32 = u_xlat0.y;
  u_xlat3.x = x_495;
  let x_498 : f32 = u_xlat1.y;
  u_xlat3.y = x_498;
  let x_501 : f32 = u_xlat2.y;
  u_xlat3.z = x_501;
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_503) + x_505);
  let x_508 : f32 = x_30.x_LayerHasMask0;
  let x_510 : f32 = x_30.x_LayerHasMask1;
  let x_512 : f32 = x_30.x_LayerHasMask2;
  let x_514 : f32 = x_30.x_LayerHasMask3;
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_508, x_510, x_512, x_514) * x_516) + x_518);
  let x_521 : vec4<f32> = u_xlat4;
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(x_521, x_522);
  let x_526 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_526 == 0.0f);
  let x_531 : vec3<f32> = vs_TEXCOORD7;
  let x_535 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_531) + x_535);
  let x_537 : vec3<f32> = u_xlat22;
  let x_538 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_537, x_538);
  let x_542 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_542);
  let x_545 : vec3<f32> = u_xlat22;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat22 = (x_545 * vec3<f32>(x_546.x, x_546.x, x_546.x));
  let x_551 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_564 : vec3<f32> = u_xlat22;
    x_561 = x_564;
  } else {
    let x_566 : vec4<f32> = u_xlat2;
    x_561 = vec3<f32>(x_566.x, x_566.y, x_566.z);
  }
  let x_568 : vec3<f32> = x_561;
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat64 = dot(x_572, x_573);
  let x_575 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat64;
  let x_579 : vec3<f32> = vs_TEXCOORD3;
  let x_580 : vec3<f32> = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : f32 = vs_TEXCOORD7.y;
  let x_586 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat64 = (x_584 * x_586);
  let x_589 : f32 = x_128.unity_MatrixV[0i].z;
  let x_591 : f32 = vs_TEXCOORD7.x;
  let x_593 : f32 = u_xlat64;
  u_xlat64 = ((x_589 * x_591) + x_593);
  let x_596 : f32 = x_128.unity_MatrixV[2i].z;
  let x_598 : f32 = vs_TEXCOORD7.z;
  let x_600 : f32 = u_xlat64;
  u_xlat64 = ((x_596 * x_598) + x_600);
  let x_602 : f32 = u_xlat64;
  let x_605 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat64 = (x_602 + x_605);
  let x_607 : f32 = u_xlat64;
  let x_610 : f32 = x_128.x_ProjectionParams.y;
  u_xlat64 = (-(x_607) + -(x_610));
  let x_613 : f32 = u_xlat64;
  u_xlat64 = max(x_613, 0.0f);
  let x_615 : f32 = u_xlat64;
  let x_617 : f32 = x_128.unity_FogParams.x;
  u_xlat64 = (x_615 * x_617);
  u_xlat2.w = 1.0f;
  let x_625 : vec4<f32> = x_623.unity_SHAr;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_625, x_626);
  let x_630 : vec4<f32> = x_623.unity_SHAg;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_630, x_631);
  let x_635 : vec4<f32> = x_623.unity_SHAb;
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_635, x_636);
  let x_639 : vec4<f32> = u_xlat2;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_639.y, x_639.z, x_639.z, x_639.x) * vec4<f32>(x_641.x, x_641.y, x_641.z, x_641.z));
  let x_645 : vec4<f32> = x_623.unity_SHBr;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_645, x_646);
  let x_650 : vec4<f32> = x_623.unity_SHBg;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_650, x_651);
  let x_655 : vec4<f32> = x_623.unity_SHBb;
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_655, x_656);
  let x_661 : f32 = u_xlat2.y;
  let x_663 : f32 = u_xlat2.y;
  u_xlat65 = (x_661 * x_663);
  let x_666 : f32 = u_xlat2.x;
  let x_668 : f32 = u_xlat2.x;
  let x_670 : f32 = u_xlat65;
  u_xlat65 = ((x_666 * x_668) + -(x_670));
  let x_675 : vec4<f32> = x_623.unity_SHC;
  let x_677 : f32 = u_xlat65;
  let x_680 : vec4<f32> = u_xlat6;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677, x_677, x_677)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : vec4<f32> = u_xlat4;
  let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = max(vec3<f32>(x_692.x, x_692.y, x_692.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_701 : vec2<f32> = vec2<f32>(x_700.x, x_700.y);
  let x_705 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_701.x, x_701.y));
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec4<f32> = hlslcc_FragCoord;
  let x_712 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_710.x, x_710.y));
  let x_713 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
  let x_716 : f32 = u_xlat4.y;
  let x_718 : f32 = x_128.x_ScaleBiasRt.x;
  let x_721 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat65 = ((x_716 * x_718) + x_721);
  let x_723 : f32 = u_xlat65;
  u_xlat4.z = (-(x_723) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_728) * 0.959999979f) + 0.959999979f);
  let x_734 : f32 = u_xlat42;
  let x_735 : f32 = u_xlat65;
  u_xlat66 = (x_734 + -(x_735));
  let x_738 : f32 = u_xlat65;
  let x_740 : vec4<f32> = u_xlat5;
  let x_742 : vec3<f32> = (vec3<f32>(x_738, x_738, x_738) * vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat5;
  let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_750 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec3<f32> = u_xlat0;
  let x_754 : vec4<f32> = u_xlat5;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.x, x_752.x) * vec3<f32>(x_754.x, x_754.y, x_754.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_760 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : f32 = u_xlat42;
  u_xlat0.x = (-(x_762) + 1.0f);
  let x_767 : f32 = u_xlat0.x;
  let x_769 : f32 = u_xlat0.x;
  u_xlat42 = (x_767 * x_769);
  let x_771 : f32 = u_xlat42;
  u_xlat42 = max(x_771, 0.0078125f);
  let x_774 : f32 = u_xlat42;
  let x_775 : f32 = u_xlat42;
  u_xlat65 = (x_774 * x_775);
  let x_777 : f32 = u_xlat66;
  u_xlat66 = (x_777 + 1.0f);
  let x_779 : f32 = u_xlat66;
  u_xlat66 = clamp(x_779, 0.0f, 1.0f);
  let x_782 : f32 = u_xlat42;
  u_xlat25 = ((x_782 * 4.0f) + 2.0f);
  let x_791 : vec4<f32> = u_xlat4;
  let x_794 : f32 = x_128.x_GlobalMipBias.x;
  let x_795 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_791.x, x_791.z), x_794);
  u_xlat4.x = x_795.x;
  let x_800 : f32 = u_xlat4.x;
  u_xlat46 = (x_800 + -1.0f);
  let x_803 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_804 : f32 = u_xlat46;
  u_xlat46 = ((x_803 * x_804) + 1.0f);
  let x_807 : f32 = u_xlat21;
  let x_809 : f32 = u_xlat4.x;
  u_xlat21 = min(x_807, x_809);
  let x_819 : f32 = x_817.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_819);
  let x_823 : bool = u_xlatb4.x;
  if (x_823) {
    let x_827 : f32 = x_817.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_827 == 1.0f);
    let x_831 : bool = u_xlatb4.x;
    if (x_831) {
      let x_835 : vec4<f32> = vs_TEXCOORD8;
      let x_838 : vec4<f32> = x_817.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) + x_838);
      let x_841 : vec4<f32> = u_xlat7;
      let x_842 : vec2<f32> = vec2<f32>(x_841.x, x_841.y);
      let x_844 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_842.x, x_842.y, x_844);
      let x_856 : vec3<f32> = txVec0;
      let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_856.xy, x_856.z);
      u_xlat8.x = x_858;
      let x_861 : vec4<f32> = u_xlat7;
      let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
      let x_864 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_862.x, x_862.y, x_864);
      let x_871 : vec3<f32> = txVec1;
      let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_871.xy, x_871.z);
      u_xlat8.y = x_873;
      let x_875 : vec4<f32> = vs_TEXCOORD8;
      let x_878 : vec4<f32> = x_817.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_875.x, x_875.y, x_875.x, x_875.y) + x_878);
      let x_881 : vec4<f32> = u_xlat7;
      let x_882 : vec2<f32> = vec2<f32>(x_881.x, x_881.y);
      let x_884 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_882.x, x_882.y, x_884);
      let x_891 : vec3<f32> = txVec2;
      let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_891.xy, x_891.z);
      u_xlat8.z = x_893;
      let x_896 : vec4<f32> = u_xlat7;
      let x_897 : vec2<f32> = vec2<f32>(x_896.z, x_896.w);
      let x_899 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_897.x, x_897.y, x_899);
      let x_906 : vec3<f32> = txVec3;
      let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_906.xy, x_906.z);
      u_xlat8.w = x_908;
      let x_910 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_910, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_918 : f32 = x_817.x_MainLightShadowParams.y;
      u_xlatb67 = (x_918 == 2.0f);
      let x_920 : bool = u_xlatb67;
      if (x_920) {
        let x_923 : vec4<f32> = vs_TEXCOORD8;
        let x_926 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_929 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_926.z, x_926.w)) + vec2<f32>(0.5f, 0.5f));
        let x_930 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat7;
        let x_934 : vec2<f32> = floor(vec2<f32>(x_932.x, x_932.y));
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_939 : vec4<f32> = vs_TEXCOORD8;
        let x_942 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_945 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_939.x, x_939.y) * vec2<f32>(x_942.z, x_942.w)) + -(vec2<f32>(x_945.x, x_945.y)));
        let x_949 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_949.x, x_949.x, x_949.y, x_949.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_953 : vec4<f32> = u_xlat8;
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_953.x, x_953.x, x_953.z, x_953.z) * vec4<f32>(x_955.x, x_955.x, x_955.z, x_955.z));
        let x_958 : vec4<f32> = u_xlat9;
        let x_962 : vec2<f32> = (vec2<f32>(x_958.y, x_958.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_963 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_962.x, x_963.y, x_962.y, x_963.w);
        let x_965 : vec4<f32> = u_xlat9;
        let x_968 : vec2<f32> = u_xlat49;
        let x_970 : vec2<f32> = ((vec2<f32>(x_965.x, x_965.z) * vec2<f32>(0.5f, 0.5f)) + -(x_968));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_974 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_974) + vec2<f32>(1.0f, 1.0f));
        let x_977 : vec2<f32> = u_xlat49;
        let x_979 : vec2<f32> = min(x_977, vec2<f32>(0.0f, 0.0f));
        let x_980 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat10;
        let x_985 : vec4<f32> = u_xlat10;
        let x_988 : vec2<f32> = u_xlat51;
        let x_989 : vec2<f32> = ((-(vec2<f32>(x_982.x, x_982.y)) * vec2<f32>(x_985.x, x_985.y)) + x_988);
        let x_990 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_992, vec2<f32>(0.0f, 0.0f));
        let x_994 : vec2<f32> = u_xlat49;
        let x_996 : vec2<f32> = u_xlat49;
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_994) * x_996) + vec2<f32>(x_998.y, x_998.w));
        let x_1001 : vec4<f32> = u_xlat10;
        let x_1003 : vec2<f32> = (vec2<f32>(x_1001.x, x_1001.y) + vec2<f32>(1.0f, 1.0f));
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
        let x_1006 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1006 + vec2<f32>(1.0f, 1.0f));
        let x_1008 : vec4<f32> = u_xlat9;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1013 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
        let x_1015 : vec2<f32> = u_xlat51;
        let x_1016 : vec2<f32> = (x_1015 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat10;
        let x_1021 : vec2<f32> = (vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1022 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec2<f32> = u_xlat49;
        let x_1025 : vec2<f32> = (x_1024 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1026 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1028.y, x_1028.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1032 : f32 = u_xlat10.x;
        u_xlat11.z = x_1032;
        let x_1035 : f32 = u_xlat49.x;
        u_xlat11.w = x_1035;
        let x_1038 : f32 = u_xlat12.x;
        u_xlat9.z = x_1038;
        let x_1041 : f32 = u_xlat8.x;
        u_xlat9.w = x_1041;
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1045 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1043.z, x_1043.w, x_1043.x, x_1043.z) + vec4<f32>(x_1045.z, x_1045.w, x_1045.x, x_1045.z));
        let x_1049 : f32 = u_xlat11.y;
        u_xlat10.z = x_1049;
        let x_1052 : f32 = u_xlat49.y;
        u_xlat10.w = x_1052;
        let x_1055 : f32 = u_xlat9.y;
        u_xlat12.z = x_1055;
        let x_1058 : f32 = u_xlat8.z;
        u_xlat12.w = x_1058;
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1062 : vec4<f32> = u_xlat12;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1060.z, x_1060.y, x_1060.w) + vec3<f32>(x_1062.z, x_1062.y, x_1062.w));
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat9;
        let x_1069 : vec4<f32> = u_xlat13;
        let x_1071 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.z, x_1067.w) / vec3<f32>(x_1069.z, x_1069.w, x_1069.y));
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1080 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat12;
        let x_1085 : vec4<f32> = u_xlat8;
        let x_1087 : vec3<f32> = (vec3<f32>(x_1083.z, x_1083.y, x_1083.w) / vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat10;
        let x_1092 : vec3<f32> = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1093 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1098 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1100 : vec3<f32> = (vec3<f32>(x_1095.y, x_1095.x, x_1095.z) * vec3<f32>(x_1098.x, x_1098.x, x_1098.x));
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat10;
        let x_1106 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1108 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(x_1106.y, x_1106.y, x_1106.y));
        let x_1109 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
        let x_1112 : f32 = u_xlat10.x;
        u_xlat9.w = x_1112;
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1117 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y) * vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y)) + vec4<f32>(x_1120.y, x_1120.w, x_1120.x, x_1120.w));
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1126 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.x, x_1126.y)) + vec2<f32>(x_1129.z, x_1129.w));
        let x_1133 : f32 = u_xlat9.y;
        u_xlat10.w = x_1133;
        let x_1135 : vec4<f32> = u_xlat10;
        let x_1136 : vec2<f32> = vec2<f32>(x_1135.y, x_1135.z);
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1136.x, x_1137.z, x_1136.y);
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1142 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y) * vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y)) + vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1145.y));
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1151 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y) * vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y)) + vec4<f32>(x_1154.w, x_1154.y, x_1154.w, x_1154.z));
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1160 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y) * vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y)) + vec4<f32>(x_1163.x, x_1163.w, x_1163.z, x_1163.w));
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1169 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1167.x, x_1167.x, x_1167.x, x_1167.y) * vec4<f32>(x_1169.z, x_1169.w, x_1169.y, x_1169.z));
        let x_1173 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1173.y, x_1173.y, x_1173.z, x_1173.z) * x_1175);
        let x_1179 : f32 = u_xlat8.z;
        let x_1181 : f32 = u_xlat13.y;
        u_xlat67 = (x_1179 * x_1181);
        let x_1184 : vec4<f32> = u_xlat11;
        let x_1185 : vec2<f32> = vec2<f32>(x_1184.x, x_1184.y);
        let x_1187 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
        let x_1195 : vec3<f32> = txVec4;
        let x_1197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1195.xy, x_1195.z);
        u_xlat68 = x_1197;
        let x_1199 : vec4<f32> = u_xlat11;
        let x_1200 : vec2<f32> = vec2<f32>(x_1199.z, x_1199.w);
        let x_1202 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1200.x, x_1200.y, x_1202);
        let x_1210 : vec3<f32> = txVec5;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1210.xy, x_1210.z);
        u_xlat69 = x_1212;
        let x_1213 : f32 = u_xlat69;
        let x_1215 : f32 = u_xlat14.y;
        u_xlat69 = (x_1213 * x_1215);
        let x_1218 : f32 = u_xlat14.x;
        let x_1219 : f32 = u_xlat68;
        let x_1221 : f32 = u_xlat69;
        u_xlat68 = ((x_1218 * x_1219) + x_1221);
        let x_1224 : vec2<f32> = u_xlat49;
        let x_1226 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec6;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1233.xy, x_1233.z);
        u_xlat69 = x_1235;
        let x_1237 : f32 = u_xlat14.z;
        let x_1238 : f32 = u_xlat69;
        let x_1240 : f32 = u_xlat68;
        u_xlat68 = ((x_1237 * x_1238) + x_1240);
        let x_1243 : vec4<f32> = u_xlat10;
        let x_1244 : vec2<f32> = vec2<f32>(x_1243.x, x_1243.y);
        let x_1246 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec7;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1253.xy, x_1253.z);
        u_xlat69 = x_1255;
        let x_1257 : f32 = u_xlat14.w;
        let x_1258 : f32 = u_xlat69;
        let x_1260 : f32 = u_xlat68;
        u_xlat68 = ((x_1257 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat12;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec8;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1273.xy, x_1273.z);
        u_xlat69 = x_1275;
        let x_1277 : f32 = u_xlat15.x;
        let x_1278 : f32 = u_xlat69;
        let x_1280 : f32 = u_xlat68;
        u_xlat68 = ((x_1277 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat12;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec9;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1293.xy, x_1293.z);
        u_xlat69 = x_1295;
        let x_1297 : f32 = u_xlat15.y;
        let x_1298 : f32 = u_xlat69;
        let x_1300 : f32 = u_xlat68;
        u_xlat68 = ((x_1297 * x_1298) + x_1300);
        let x_1303 : vec4<f32> = u_xlat10;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec10;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1313.xy, x_1313.z);
        u_xlat69 = x_1315;
        let x_1317 : f32 = u_xlat15.z;
        let x_1318 : f32 = u_xlat69;
        let x_1320 : f32 = u_xlat68;
        u_xlat68 = ((x_1317 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat9;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.x, x_1323.y);
        let x_1326 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec11;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1333.xy, x_1333.z);
        u_xlat69 = x_1335;
        let x_1337 : f32 = u_xlat15.w;
        let x_1338 : f32 = u_xlat69;
        let x_1340 : f32 = u_xlat68;
        u_xlat68 = ((x_1337 * x_1338) + x_1340);
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.z, x_1343.w);
        let x_1346 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec12;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1353.xy, x_1353.z);
        u_xlat69 = x_1355;
        let x_1356 : f32 = u_xlat67;
        let x_1357 : f32 = u_xlat69;
        let x_1359 : f32 = u_xlat68;
        u_xlat4.x = ((x_1356 * x_1357) + x_1359);
      } else {
        let x_1363 : vec4<f32> = vs_TEXCOORD8;
        let x_1366 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1369 : vec2<f32> = ((vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(x_1366.z, x_1366.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1370 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1374 : vec2<f32> = floor(vec2<f32>(x_1372.x, x_1372.y));
        let x_1375 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1374.x, x_1374.y, x_1375.z, x_1375.w);
        let x_1377 : vec4<f32> = vs_TEXCOORD8;
        let x_1380 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1377.x, x_1377.y) * vec2<f32>(x_1380.z, x_1380.w)) + -(vec2<f32>(x_1383.x, x_1383.y)));
        let x_1387 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1387.x, x_1387.x, x_1387.y, x_1387.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1390 : vec4<f32> = u_xlat8;
        let x_1392 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1390.x, x_1390.x, x_1390.z, x_1390.z) * vec4<f32>(x_1392.x, x_1392.x, x_1392.z, x_1392.z));
        let x_1395 : vec4<f32> = u_xlat9;
        let x_1399 : vec2<f32> = (vec2<f32>(x_1395.y, x_1395.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1400 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1400.x, x_1399.x, x_1400.z, x_1399.y);
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1405 : vec2<f32> = u_xlat49;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1402.x, x_1402.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1405));
        let x_1408 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1407.x, x_1408.y, x_1407.y, x_1408.w);
        let x_1410 : vec2<f32> = u_xlat49;
        let x_1412 : vec2<f32> = (-(x_1410) + vec2<f32>(1.0f, 1.0f));
        let x_1413 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
        let x_1415 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1415, vec2<f32>(0.0f, 0.0f));
        let x_1417 : vec2<f32> = u_xlat51;
        let x_1419 : vec2<f32> = u_xlat51;
        let x_1421 : vec4<f32> = u_xlat9;
        let x_1423 : vec2<f32> = ((-(x_1417) * x_1419) + vec2<f32>(x_1421.x, x_1421.y));
        let x_1424 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1423.x, x_1423.y, x_1424.z, x_1424.w);
        let x_1426 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1426, vec2<f32>(0.0f, 0.0f));
        let x_1429 : vec2<f32> = u_xlat51;
        let x_1431 : vec2<f32> = u_xlat51;
        let x_1433 : vec4<f32> = u_xlat8;
        let x_1435 : vec2<f32> = ((-(x_1429) * x_1431) + vec2<f32>(x_1433.y, x_1433.w));
        let x_1436 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1435.x, x_1436.y, x_1435.y);
        let x_1438 : vec4<f32> = u_xlat9;
        let x_1441 : vec2<f32> = (vec2<f32>(x_1438.x, x_1438.y) + vec2<f32>(2.0f, 2.0f));
        let x_1442 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1441.x, x_1441.y, x_1442.z, x_1442.w);
        let x_1444 : vec3<f32> = u_xlat29;
        let x_1446 : vec2<f32> = (vec2<f32>(x_1444.x, x_1444.z) + vec2<f32>(2.0f, 2.0f));
        let x_1447 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1447.x, x_1446.x, x_1447.z, x_1446.y);
        let x_1450 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1450 * 0.081632003f);
        let x_1454 : vec4<f32> = u_xlat8;
        let x_1457 : vec3<f32> = (vec3<f32>(x_1454.z, x_1454.x, x_1454.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1458 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = (vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1464 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
        let x_1467 : f32 = u_xlat12.y;
        u_xlat11.x = x_1467;
        let x_1469 : vec2<f32> = u_xlat49;
        let x_1476 : vec2<f32> = ((vec2<f32>(x_1469.x, x_1469.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1477 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1477.x, x_1476.x, x_1477.z, x_1476.y);
        let x_1479 : vec2<f32> = u_xlat49;
        let x_1483 : vec2<f32> = ((vec2<f32>(x_1479.x, x_1479.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1484 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1483.x, x_1484.y, x_1483.y, x_1484.w);
        let x_1487 : f32 = u_xlat8.x;
        u_xlat9.y = x_1487;
        let x_1490 : f32 = u_xlat10.y;
        u_xlat9.w = x_1490;
        let x_1492 : vec4<f32> = u_xlat9;
        let x_1493 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1492 + x_1493);
        let x_1495 : vec2<f32> = u_xlat49;
        let x_1498 : vec2<f32> = ((vec2<f32>(x_1495.y, x_1495.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1499 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1499.x, x_1498.x, x_1499.z, x_1498.y);
        let x_1501 : vec2<f32> = u_xlat49;
        let x_1504 : vec2<f32> = ((vec2<f32>(x_1501.y, x_1501.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1505 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1504.x, x_1505.y, x_1504.y, x_1505.w);
        let x_1508 : f32 = u_xlat8.y;
        u_xlat10.y = x_1508;
        let x_1510 : vec4<f32> = u_xlat10;
        let x_1511 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1510 + x_1511);
        let x_1513 : vec4<f32> = u_xlat9;
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1513 / x_1514);
        let x_1516 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1516 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1522 : vec4<f32> = u_xlat10;
        let x_1523 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1522 / x_1523);
        let x_1525 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1525 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1527 : vec4<f32> = u_xlat9;
        let x_1530 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1527.w, x_1527.x, x_1527.y, x_1527.z) * vec4<f32>(x_1530.x, x_1530.x, x_1530.x, x_1530.x));
        let x_1533 : vec4<f32> = u_xlat10;
        let x_1536 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1533.x, x_1533.w, x_1533.y, x_1533.z) * vec4<f32>(x_1536.y, x_1536.y, x_1536.y, x_1536.y));
        let x_1539 : vec4<f32> = u_xlat9;
        let x_1540 : vec3<f32> = vec3<f32>(x_1539.y, x_1539.z, x_1539.w);
        let x_1541 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1540.x, x_1541.y, x_1540.y, x_1540.z);
        let x_1544 : f32 = u_xlat10.x;
        u_xlat12.y = x_1544;
        let x_1546 : vec4<f32> = u_xlat7;
        let x_1549 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y) * vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y)) + vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1552.y));
        let x_1555 : vec4<f32> = u_xlat7;
        let x_1558 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1565 : f32 = u_xlat12.y;
        u_xlat9.y = x_1565;
        let x_1568 : f32 = u_xlat10.z;
        u_xlat12.y = x_1568;
        let x_1570 : vec4<f32> = u_xlat7;
        let x_1573 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y) * vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.y)) + vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1576.y));
        let x_1579 : vec4<f32> = u_xlat7;
        let x_1582 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1585 : vec4<f32> = u_xlat12;
        let x_1587 : vec2<f32> = ((vec2<f32>(x_1579.x, x_1579.y) * vec2<f32>(x_1582.x, x_1582.y)) + vec2<f32>(x_1585.w, x_1585.y));
        let x_1588 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1587.x, x_1587.y, x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat12.y;
        u_xlat9.z = x_1591;
        let x_1594 : vec4<f32> = u_xlat7;
        let x_1597 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1600 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1594.x, x_1594.y, x_1594.x, x_1594.y) * vec4<f32>(x_1597.x, x_1597.y, x_1597.x, x_1597.y)) + vec4<f32>(x_1600.x, x_1600.y, x_1600.x, x_1600.z));
        let x_1604 : f32 = u_xlat10.w;
        u_xlat12.y = x_1604;
        let x_1607 : vec4<f32> = u_xlat7;
        let x_1610 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1613 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1607.x, x_1607.y, x_1607.x, x_1607.y) * vec4<f32>(x_1610.x, x_1610.y, x_1610.x, x_1610.y)) + vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1613.y));
        let x_1617 : vec4<f32> = u_xlat7;
        let x_1620 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1623 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1617.x, x_1617.y) * vec2<f32>(x_1620.x, x_1620.y)) + vec2<f32>(x_1623.w, x_1623.y));
        let x_1627 : f32 = u_xlat12.y;
        u_xlat9.w = x_1627;
        let x_1630 : vec4<f32> = u_xlat7;
        let x_1633 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1636 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1630.x, x_1630.y) * vec2<f32>(x_1633.x, x_1633.y)) + vec2<f32>(x_1636.x, x_1636.w));
        let x_1639 : vec4<f32> = u_xlat12;
        let x_1640 : vec3<f32> = vec3<f32>(x_1639.x, x_1639.z, x_1639.w);
        let x_1641 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1640.x, x_1641.y, x_1640.y, x_1640.z);
        let x_1643 : vec4<f32> = u_xlat7;
        let x_1646 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1649 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1643.x, x_1643.y, x_1643.x, x_1643.y) * vec4<f32>(x_1646.x, x_1646.y, x_1646.x, x_1646.y)) + vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1649.y));
        let x_1653 : vec4<f32> = u_xlat7;
        let x_1656 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1659 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1653.x, x_1653.y) * vec2<f32>(x_1656.x, x_1656.y)) + vec2<f32>(x_1659.w, x_1659.y));
        let x_1663 : f32 = u_xlat9.x;
        u_xlat10.x = x_1663;
        let x_1665 : vec4<f32> = u_xlat7;
        let x_1668 : vec4<f32> = x_817.x_MainLightShadowmapSize;
        let x_1671 : vec4<f32> = u_xlat10;
        let x_1673 : vec2<f32> = ((vec2<f32>(x_1665.x, x_1665.y) * vec2<f32>(x_1668.x, x_1668.y)) + vec2<f32>(x_1671.x, x_1671.y));
        let x_1674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1673.x, x_1673.y, x_1674.z, x_1674.w);
        let x_1677 : vec4<f32> = u_xlat8;
        let x_1679 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1677.x, x_1677.x, x_1677.x, x_1677.x) * x_1679);
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1684 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1682.y, x_1682.y, x_1682.y, x_1682.y) * x_1684);
        let x_1687 : vec4<f32> = u_xlat8;
        let x_1689 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1687.z, x_1687.z, x_1687.z, x_1687.z) * x_1689);
        let x_1691 : vec4<f32> = u_xlat8;
        let x_1693 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1691.w, x_1691.w, x_1691.w, x_1691.w) * x_1693);
        let x_1696 : vec4<f32> = u_xlat13;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec13;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1706.xy, x_1706.z);
        u_xlat67 = x_1708;
        let x_1710 : vec4<f32> = u_xlat13;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.z, x_1710.w);
        let x_1713 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec14;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat68 = x_1722;
        let x_1723 : f32 = u_xlat68;
        let x_1725 : f32 = u_xlat18.y;
        u_xlat68 = (x_1723 * x_1725);
        let x_1728 : f32 = u_xlat18.x;
        let x_1729 : f32 = u_xlat67;
        let x_1731 : f32 = u_xlat68;
        u_xlat67 = ((x_1728 * x_1729) + x_1731);
        let x_1734 : vec2<f32> = u_xlat49;
        let x_1736 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec15;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1743.xy, x_1743.z);
        u_xlat68 = x_1745;
        let x_1747 : f32 = u_xlat18.z;
        let x_1748 : f32 = u_xlat68;
        let x_1750 : f32 = u_xlat67;
        u_xlat67 = ((x_1747 * x_1748) + x_1750);
        let x_1753 : vec4<f32> = u_xlat16;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec16;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
        u_xlat68 = x_1765;
        let x_1767 : f32 = u_xlat18.w;
        let x_1768 : f32 = u_xlat68;
        let x_1770 : f32 = u_xlat67;
        u_xlat67 = ((x_1767 * x_1768) + x_1770);
        let x_1773 : vec4<f32> = u_xlat14;
        let x_1774 : vec2<f32> = vec2<f32>(x_1773.x, x_1773.y);
        let x_1776 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
        let x_1783 : vec3<f32> = txVec17;
        let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1783.xy, x_1783.z);
        u_xlat68 = x_1785;
        let x_1787 : f32 = u_xlat19.x;
        let x_1788 : f32 = u_xlat68;
        let x_1790 : f32 = u_xlat67;
        u_xlat67 = ((x_1787 * x_1788) + x_1790);
        let x_1793 : vec4<f32> = u_xlat14;
        let x_1794 : vec2<f32> = vec2<f32>(x_1793.z, x_1793.w);
        let x_1796 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
        let x_1803 : vec3<f32> = txVec18;
        let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1803.xy, x_1803.z);
        u_xlat68 = x_1805;
        let x_1807 : f32 = u_xlat19.y;
        let x_1808 : f32 = u_xlat68;
        let x_1810 : f32 = u_xlat67;
        u_xlat67 = ((x_1807 * x_1808) + x_1810);
        let x_1813 : vec4<f32> = u_xlat15;
        let x_1814 : vec2<f32> = vec2<f32>(x_1813.x, x_1813.y);
        let x_1816 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1814.x, x_1814.y, x_1816);
        let x_1823 : vec3<f32> = txVec19;
        let x_1825 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1823.xy, x_1823.z);
        u_xlat68 = x_1825;
        let x_1827 : f32 = u_xlat19.z;
        let x_1828 : f32 = u_xlat68;
        let x_1830 : f32 = u_xlat67;
        u_xlat67 = ((x_1827 * x_1828) + x_1830);
        let x_1833 : vec4<f32> = u_xlat16;
        let x_1834 : vec2<f32> = vec2<f32>(x_1833.z, x_1833.w);
        let x_1836 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1834.x, x_1834.y, x_1836);
        let x_1843 : vec3<f32> = txVec20;
        let x_1845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1843.xy, x_1843.z);
        u_xlat68 = x_1845;
        let x_1847 : f32 = u_xlat19.w;
        let x_1848 : f32 = u_xlat68;
        let x_1850 : f32 = u_xlat67;
        u_xlat67 = ((x_1847 * x_1848) + x_1850);
        let x_1853 : vec4<f32> = u_xlat17;
        let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
        let x_1856 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec21;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1863.xy, x_1863.z);
        u_xlat68 = x_1865;
        let x_1867 : f32 = u_xlat20.x;
        let x_1868 : f32 = u_xlat68;
        let x_1870 : f32 = u_xlat67;
        u_xlat67 = ((x_1867 * x_1868) + x_1870);
        let x_1873 : vec4<f32> = u_xlat17;
        let x_1874 : vec2<f32> = vec2<f32>(x_1873.z, x_1873.w);
        let x_1876 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec22;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1883.xy, x_1883.z);
        u_xlat68 = x_1885;
        let x_1887 : f32 = u_xlat20.y;
        let x_1888 : f32 = u_xlat68;
        let x_1890 : f32 = u_xlat67;
        u_xlat67 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec2<f32> = u_xlat30;
        let x_1895 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec23;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat68 = x_1904;
        let x_1906 : f32 = u_xlat20.z;
        let x_1907 : f32 = u_xlat68;
        let x_1909 : f32 = u_xlat67;
        u_xlat67 = ((x_1906 * x_1907) + x_1909);
        let x_1912 : vec2<f32> = u_xlat57;
        let x_1914 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
        let x_1921 : vec3<f32> = txVec24;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1921.xy, x_1921.z);
        u_xlat68 = x_1923;
        let x_1925 : f32 = u_xlat20.w;
        let x_1926 : f32 = u_xlat68;
        let x_1928 : f32 = u_xlat67;
        u_xlat67 = ((x_1925 * x_1926) + x_1928);
        let x_1931 : vec4<f32> = u_xlat12;
        let x_1932 : vec2<f32> = vec2<f32>(x_1931.x, x_1931.y);
        let x_1934 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
        let x_1941 : vec3<f32> = txVec25;
        let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1941.xy, x_1941.z);
        u_xlat68 = x_1943;
        let x_1945 : f32 = u_xlat8.x;
        let x_1946 : f32 = u_xlat68;
        let x_1948 : f32 = u_xlat67;
        u_xlat67 = ((x_1945 * x_1946) + x_1948);
        let x_1951 : vec4<f32> = u_xlat12;
        let x_1952 : vec2<f32> = vec2<f32>(x_1951.z, x_1951.w);
        let x_1954 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec26;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1961.xy, x_1961.z);
        u_xlat68 = x_1963;
        let x_1965 : f32 = u_xlat8.y;
        let x_1966 : f32 = u_xlat68;
        let x_1968 : f32 = u_xlat67;
        u_xlat67 = ((x_1965 * x_1966) + x_1968);
        let x_1971 : vec2<f32> = u_xlat52;
        let x_1973 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
        let x_1980 : vec3<f32> = txVec27;
        let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1980.xy, x_1980.z);
        u_xlat68 = x_1982;
        let x_1984 : f32 = u_xlat8.z;
        let x_1985 : f32 = u_xlat68;
        let x_1987 : f32 = u_xlat67;
        u_xlat67 = ((x_1984 * x_1985) + x_1987);
        let x_1990 : vec4<f32> = u_xlat7;
        let x_1991 : vec2<f32> = vec2<f32>(x_1990.x, x_1990.y);
        let x_1993 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1991.x, x_1991.y, x_1993);
        let x_2000 : vec3<f32> = txVec28;
        let x_2002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2000.xy, x_2000.z);
        u_xlat68 = x_2002;
        let x_2004 : f32 = u_xlat8.w;
        let x_2005 : f32 = u_xlat68;
        let x_2007 : f32 = u_xlat67;
        u_xlat4.x = ((x_2004 * x_2005) + x_2007);
      }
    }
  } else {
    let x_2012 : vec4<f32> = vs_TEXCOORD8;
    let x_2013 : vec2<f32> = vec2<f32>(x_2012.x, x_2012.y);
    let x_2015 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
    let x_2022 : vec3<f32> = txVec29;
    let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2022.xy, x_2022.z);
    u_xlat4.x = x_2024;
  }
  let x_2027 : f32 = x_817.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_2027) + 1.0f);
  let x_2031 : f32 = u_xlat4.x;
  let x_2033 : f32 = x_817.x_MainLightShadowParams.x;
  let x_2035 : f32 = u_xlat67;
  u_xlat4.x = ((x_2031 * x_2033) + x_2035);
  let x_2039 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_2039);
  let x_2043 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_2043 >= 1.0f);
  let x_2045 : bool = u_xlatb67;
  let x_2046 : bool = u_xlatb68;
  u_xlatb67 = (x_2045 | x_2046);
  let x_2048 : bool = u_xlatb67;
  if (x_2048) {
    x_2049 = 1.0f;
  } else {
    let x_2054 : f32 = u_xlat4.x;
    x_2049 = x_2054;
  }
  let x_2055 : f32 = x_2049;
  u_xlat4.x = x_2055;
  let x_2057 : vec3<f32> = vs_TEXCOORD7;
  let x_2059 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_2061 : vec3<f32> = (x_2057 + -(x_2059));
  let x_2062 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
  let x_2064 : vec4<f32> = u_xlat7;
  let x_2066 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_2064.x, x_2064.y, x_2064.z), vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
  let x_2069 : f32 = u_xlat67;
  let x_2071 : f32 = x_817.x_MainLightShadowParams.z;
  let x_2074 : f32 = x_817.x_MainLightShadowParams.w;
  u_xlat67 = ((x_2069 * x_2071) + x_2074);
  let x_2076 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2076, 0.0f, 1.0f);
  let x_2079 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2079) + 1.0f);
  let x_2082 : f32 = u_xlat67;
  let x_2083 : f32 = u_xlat68;
  let x_2086 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2082 * x_2083) + x_2086);
  let x_2095 : f32 = x_2093.x_MainLightCookieTextureFormat;
  u_xlatb67 = !((x_2095 == -1.0f));
  let x_2097 : bool = u_xlatb67;
  if (x_2097) {
    let x_2100 : vec3<f32> = vs_TEXCOORD7;
    let x_2103 : vec4<f32> = x_2093.x_MainLightWorldToLight[1i];
    let x_2105 : vec2<f32> = (vec2<f32>(x_2100.y, x_2100.y) * vec2<f32>(x_2103.x, x_2103.y));
    let x_2106 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2105.x, x_2105.y, x_2106.z, x_2106.w);
    let x_2109 : vec4<f32> = x_2093.x_MainLightWorldToLight[0i];
    let x_2111 : vec3<f32> = vs_TEXCOORD7;
    let x_2114 : vec4<f32> = u_xlat7;
    let x_2116 : vec2<f32> = ((vec2<f32>(x_2109.x, x_2109.y) * vec2<f32>(x_2111.x, x_2111.x)) + vec2<f32>(x_2114.x, x_2114.y));
    let x_2117 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
    let x_2120 : vec4<f32> = x_2093.x_MainLightWorldToLight[2i];
    let x_2122 : vec3<f32> = vs_TEXCOORD7;
    let x_2125 : vec4<f32> = u_xlat7;
    let x_2127 : vec2<f32> = ((vec2<f32>(x_2120.x, x_2120.y) * vec2<f32>(x_2122.z, x_2122.z)) + vec2<f32>(x_2125.x, x_2125.y));
    let x_2128 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2127.x, x_2127.y, x_2128.z, x_2128.w);
    let x_2130 : vec4<f32> = u_xlat7;
    let x_2133 : vec4<f32> = x_2093.x_MainLightWorldToLight[3i];
    let x_2135 : vec2<f32> = (vec2<f32>(x_2130.x, x_2130.y) + vec2<f32>(x_2133.x, x_2133.y));
    let x_2136 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2135.x, x_2135.y, x_2136.z, x_2136.w);
    let x_2138 : vec4<f32> = u_xlat7;
    let x_2141 : vec2<f32> = ((vec2<f32>(x_2138.x, x_2138.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2142 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
    let x_2149 : vec4<f32> = u_xlat7;
    let x_2152 : f32 = x_128.x_GlobalMipBias.x;
    let x_2153 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2149.x, x_2149.y), x_2152);
    u_xlat7 = x_2153;
    let x_2158 : f32 = x_2093.x_MainLightCookieTextureFormat;
    let x_2160 : f32 = x_2093.x_MainLightCookieTextureFormat;
    let x_2162 : f32 = x_2093.x_MainLightCookieTextureFormat;
    let x_2164 : f32 = x_2093.x_MainLightCookieTextureFormat;
    let x_2165 : vec4<f32> = vec4<f32>(x_2158, x_2160, x_2162, x_2164);
    let x_2172 : vec4<bool> = (vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2165.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2172.x, x_2172.y);
    let x_2175 : bool = u_xlatb8.y;
    if (x_2175) {
      let x_2180 : f32 = u_xlat7.w;
      x_2176 = x_2180;
    } else {
      let x_2183 : f32 = u_xlat7.x;
      x_2176 = x_2183;
    }
    let x_2184 : f32 = x_2176;
    u_xlat67 = x_2184;
    let x_2186 : bool = u_xlatb8.x;
    if (x_2186) {
      let x_2190 : vec4<f32> = u_xlat7;
      x_2187 = vec3<f32>(x_2190.x, x_2190.y, x_2190.z);
    } else {
      let x_2193 : f32 = u_xlat67;
      x_2187 = vec3<f32>(x_2193, x_2193, x_2193);
    }
    let x_2195 : vec3<f32> = x_2187;
    let x_2196 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2202 : vec4<f32> = u_xlat7;
  let x_2205 : vec4<f32> = x_128.x_MainLightColor;
  let x_2207 : vec3<f32> = (vec3<f32>(x_2202.x, x_2202.y, x_2202.z) * vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2210 : f32 = u_xlat46;
  let x_2212 : vec4<f32> = u_xlat7;
  let x_2214 : vec3<f32> = (vec3<f32>(x_2210, x_2210, x_2210) * vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2215 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
  let x_2217 : vec4<f32> = u_xlat1;
  let x_2220 : vec4<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2217.x, x_2217.y, x_2217.z)), vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
  let x_2223 : f32 = u_xlat67;
  let x_2224 : f32 = u_xlat67;
  u_xlat67 = (x_2223 + x_2224);
  let x_2226 : vec4<f32> = u_xlat2;
  let x_2228 : f32 = u_xlat67;
  let x_2232 : vec4<f32> = u_xlat1;
  let x_2235 : vec3<f32> = ((vec3<f32>(x_2226.x, x_2226.y, x_2226.z) * -(vec3<f32>(x_2228, x_2228, x_2228))) + -(vec3<f32>(x_2232.x, x_2232.y, x_2232.z)));
  let x_2236 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2238 : vec4<f32> = u_xlat2;
  let x_2240 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2243, 0.0f, 1.0f);
  let x_2245 : f32 = u_xlat67;
  u_xlat67 = (-(x_2245) + 1.0f);
  let x_2248 : f32 = u_xlat67;
  let x_2249 : f32 = u_xlat67;
  u_xlat67 = (x_2248 * x_2249);
  let x_2251 : f32 = u_xlat67;
  let x_2252 : f32 = u_xlat67;
  u_xlat67 = (x_2251 * x_2252);
  let x_2255 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2255) * 0.699999988f) + 1.700000048f);
  let x_2262 : f32 = u_xlat0.x;
  let x_2263 : f32 = u_xlat68;
  u_xlat0.x = (x_2262 * x_2263);
  let x_2267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2267 * 6.0f);
  let x_2279 : vec4<f32> = u_xlat8;
  let x_2282 : f32 = u_xlat0.x;
  let x_2283 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2279.x, x_2279.y, x_2279.z), x_2282);
  u_xlat8 = x_2283;
  let x_2285 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2285 + -1.0f);
  let x_2289 : f32 = x_623.unity_SpecCube0_HDR.w;
  let x_2291 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2289 * x_2291) + 1.0f);
  let x_2296 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2296, 0.0f);
  let x_2300 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2300);
  let x_2304 : f32 = u_xlat0.x;
  let x_2306 : f32 = x_623.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2304 * x_2306);
  let x_2310 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2310);
  let x_2314 : f32 = u_xlat0.x;
  let x_2316 : f32 = x_623.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2314 * x_2316);
  let x_2319 : vec4<f32> = u_xlat8;
  let x_2321 : vec3<f32> = u_xlat0;
  let x_2323 : vec3<f32> = (vec3<f32>(x_2319.x, x_2319.y, x_2319.z) * vec3<f32>(x_2321.x, x_2321.x, x_2321.x));
  let x_2324 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : f32 = u_xlat42;
  let x_2328 : f32 = u_xlat42;
  let x_2332 : vec2<f32> = ((vec2<f32>(x_2326, x_2326) * vec2<f32>(x_2328, x_2328)) + vec2<f32>(-1.0f, 1.0f));
  let x_2333 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2332.x, x_2333.y, x_2332.y);
  let x_2336 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2336);
  let x_2338 : vec4<f32> = u_xlat5;
  let x_2341 : f32 = u_xlat66;
  let x_2343 : vec3<f32> = (-(vec3<f32>(x_2338.x, x_2338.y, x_2338.z)) + vec3<f32>(x_2341, x_2341, x_2341));
  let x_2344 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
  let x_2346 : f32 = u_xlat67;
  let x_2348 : vec4<f32> = u_xlat9;
  let x_2351 : vec4<f32> = u_xlat5;
  let x_2353 : vec3<f32> = ((vec3<f32>(x_2346, x_2346, x_2346) * vec3<f32>(x_2348.x, x_2348.y, x_2348.z)) + vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
  let x_2354 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
  let x_2356 : f32 = u_xlat42;
  let x_2358 : vec4<f32> = u_xlat9;
  let x_2360 : vec3<f32> = (vec3<f32>(x_2356, x_2356, x_2356) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
  let x_2363 : vec4<f32> = u_xlat8;
  let x_2365 : vec4<f32> = u_xlat9;
  let x_2367 : vec3<f32> = (vec3<f32>(x_2363.x, x_2363.y, x_2363.z) * vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
  let x_2368 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2367.x, x_2367.y, x_2367.z, x_2368.w);
  let x_2370 : vec4<f32> = u_xlat3;
  let x_2372 : vec4<f32> = u_xlat6;
  let x_2375 : vec4<f32> = u_xlat8;
  let x_2377 : vec3<f32> = ((vec3<f32>(x_2370.x, x_2370.y, x_2370.z) * vec3<f32>(x_2372.x, x_2372.y, x_2372.z)) + vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2381 : f32 = u_xlat4.x;
  let x_2383 : f32 = x_623.unity_LightData.z;
  u_xlat42 = (x_2381 * x_2383);
  let x_2385 : vec4<f32> = u_xlat2;
  let x_2388 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_2385.x, x_2385.y, x_2385.z), vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
  let x_2391 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2391, 0.0f, 1.0f);
  let x_2393 : f32 = u_xlat42;
  let x_2394 : f32 = u_xlat66;
  u_xlat42 = (x_2393 * x_2394);
  let x_2396 : f32 = u_xlat42;
  let x_2398 : vec4<f32> = u_xlat7;
  let x_2400 : vec3<f32> = (vec3<f32>(x_2396, x_2396, x_2396) * vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
  let x_2401 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
  let x_2403 : vec4<f32> = u_xlat1;
  let x_2406 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2408 : vec3<f32> = (vec3<f32>(x_2403.x, x_2403.y, x_2403.z) + vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2409 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
  let x_2411 : vec4<f32> = u_xlat8;
  let x_2413 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2411.x, x_2411.y, x_2411.z), vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
  let x_2416 : f32 = u_xlat42;
  u_xlat42 = max(x_2416, 1.17549435e-37f);
  let x_2419 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2419);
  let x_2421 : f32 = u_xlat42;
  let x_2423 : vec4<f32> = u_xlat8;
  let x_2425 : vec3<f32> = (vec3<f32>(x_2421, x_2421, x_2421) * vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
  let x_2426 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
  let x_2428 : vec4<f32> = u_xlat2;
  let x_2430 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2428.x, x_2428.y, x_2428.z), vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
  let x_2433 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2433, 0.0f, 1.0f);
  let x_2436 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2438 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2436.x, x_2436.y, x_2436.z), vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2441 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2441, 0.0f, 1.0f);
  let x_2443 : f32 = u_xlat42;
  let x_2444 : f32 = u_xlat42;
  u_xlat42 = (x_2443 * x_2444);
  let x_2446 : f32 = u_xlat42;
  let x_2448 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2446 * x_2448) + 1.000010014f);
  let x_2452 : f32 = u_xlat66;
  let x_2453 : f32 = u_xlat66;
  u_xlat66 = (x_2452 * x_2453);
  let x_2455 : f32 = u_xlat42;
  let x_2456 : f32 = u_xlat42;
  u_xlat42 = (x_2455 * x_2456);
  let x_2458 : f32 = u_xlat66;
  u_xlat66 = max(x_2458, 0.100000001f);
  let x_2461 : f32 = u_xlat42;
  let x_2462 : f32 = u_xlat66;
  u_xlat42 = (x_2461 * x_2462);
  let x_2464 : f32 = u_xlat25;
  let x_2465 : f32 = u_xlat42;
  u_xlat42 = (x_2464 * x_2465);
  let x_2467 : f32 = u_xlat65;
  let x_2468 : f32 = u_xlat42;
  u_xlat42 = (x_2467 / x_2468);
  let x_2470 : vec4<f32> = u_xlat5;
  let x_2472 : f32 = u_xlat42;
  let x_2475 : vec4<f32> = u_xlat6;
  let x_2477 : vec3<f32> = ((vec3<f32>(x_2470.x, x_2470.y, x_2470.z) * vec3<f32>(x_2472, x_2472, x_2472)) + vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2478 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
  let x_2480 : vec4<f32> = u_xlat7;
  let x_2482 : vec4<f32> = u_xlat8;
  let x_2484 : vec3<f32> = (vec3<f32>(x_2480.x, x_2480.y, x_2480.z) * vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
  let x_2485 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
  let x_2488 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2490 : f32 = x_623.unity_LightData.y;
  u_xlat42 = min(x_2488, x_2490);
  let x_2494 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2494));
  let x_2498 : f32 = x_2093.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2500 : f32 = x_2093.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2502 : f32 = x_2093.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2504 : f32 = x_2093.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2505 : vec4<f32> = vec4<f32>(x_2498, x_2500, x_2502, x_2504);
  let x_2512 : vec4<bool> = (vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2505.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2513 : vec2<bool> = vec2<bool>(x_2512.x, x_2512.w);
  let x_2514 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2513.x, x_2514.y, x_2514.z, x_2513.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2525 : u32 = u_xlatu_loop_1;
    let x_2526 : u32 = u_xlatu42;
    if ((x_2525 < x_2526)) {
    } else {
      break;
    }
    let x_2529 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2529 >> 2u);
    let x_2533 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2533 & 3u));
    let x_2536 : u32 = u_xlatu68;
    let x_2539 : vec4<f32> = x_623.unity_LightIndices[bitcast<i32>(x_2536)];
    let x_2549 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2554 : vec4<u32> = indexable[x_2549];
    u_xlat68 = dot(x_2539, bitcast<vec4<f32>>(x_2554));
    let x_2557 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2557));
    let x_2560 : vec3<f32> = vs_TEXCOORD7;
    let x_2572 : u32 = u_xlatu68;
    let x_2575 : vec4<f32> = x_2571.x_AdditionalLightsPosition[bitcast<i32>(x_2572)];
    let x_2578 : u32 = u_xlatu68;
    let x_2581 : vec4<f32> = x_2571.x_AdditionalLightsPosition[bitcast<i32>(x_2578)];
    let x_2583 : vec3<f32> = ((-(x_2560) * vec3<f32>(x_2575.w, x_2575.w, x_2575.w)) + vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
    let x_2584 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
    let x_2586 : vec4<f32> = u_xlat9;
    let x_2588 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2586.x, x_2586.y, x_2586.z), vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
    let x_2591 : f32 = u_xlat69;
    u_xlat69 = max(x_2591, 6.10351562e-05f);
    let x_2594 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2594);
    let x_2596 : f32 = u_xlat70;
    let x_2598 : vec4<f32> = u_xlat9;
    let x_2600 : vec3<f32> = (vec3<f32>(x_2596, x_2596, x_2596) * vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
    let x_2601 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
    let x_2604 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2604);
    let x_2606 : f32 = u_xlat69;
    let x_2607 : u32 = u_xlatu68;
    let x_2610 : f32 = x_2571.x_AdditionalLightsAttenuation[bitcast<i32>(x_2607)].x;
    u_xlat69 = (x_2606 * x_2610);
    let x_2612 : f32 = u_xlat69;
    let x_2614 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2612) * x_2614) + 1.0f);
    let x_2617 : f32 = u_xlat69;
    u_xlat69 = max(x_2617, 0.0f);
    let x_2619 : f32 = u_xlat69;
    let x_2620 : f32 = u_xlat69;
    u_xlat69 = (x_2619 * x_2620);
    let x_2622 : f32 = u_xlat69;
    let x_2623 : f32 = u_xlat71;
    u_xlat69 = (x_2622 * x_2623);
    let x_2625 : u32 = u_xlatu68;
    let x_2628 : vec4<f32> = x_2571.x_AdditionalLightsSpotDir[bitcast<i32>(x_2625)];
    let x_2630 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_2628.x, x_2628.y, x_2628.z), vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : f32 = u_xlat71;
    let x_2634 : u32 = u_xlatu68;
    let x_2637 : f32 = x_2571.x_AdditionalLightsAttenuation[bitcast<i32>(x_2634)].z;
    let x_2639 : u32 = u_xlatu68;
    let x_2642 : f32 = x_2571.x_AdditionalLightsAttenuation[bitcast<i32>(x_2639)].w;
    u_xlat71 = ((x_2633 * x_2637) + x_2642);
    let x_2644 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2644, 0.0f, 1.0f);
    let x_2646 : f32 = u_xlat71;
    let x_2647 : f32 = u_xlat71;
    u_xlat71 = (x_2646 * x_2647);
    let x_2649 : f32 = u_xlat69;
    let x_2650 : f32 = u_xlat71;
    u_xlat69 = (x_2649 * x_2650);
    let x_2653 : u32 = u_xlatu68;
    u_xlatu71 = (x_2653 >> 5u);
    let x_2656 : u32 = u_xlatu68;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2656) & 31i)));
    let x_2661 : i32 = u_xlati72;
    let x_2663 : u32 = u_xlatu71;
    let x_2666 : f32 = x_2093.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2663)].el;
    u_xlati71 = bitcast<i32>((bitcast<u32>(x_2661) & bitcast<u32>(x_2666)));
    let x_2670 : i32 = u_xlati71;
    if ((x_2670 != 0i)) {
      let x_2680 : u32 = u_xlatu68;
      let x_2683 : f32 = x_2679.x_AdditionalLightsLightTypes[bitcast<i32>(x_2680)].el;
      u_xlati71 = i32(x_2683);
      let x_2685 : i32 = u_xlati71;
      u_xlati72 = select(1i, 0i, (x_2685 != 0i));
      let x_2689 : u32 = u_xlatu68;
      u_xlati73 = (bitcast<i32>(x_2689) << bitcast<u32>(2i));
      let x_2692 : i32 = u_xlati72;
      if ((x_2692 != 0i)) {
        let x_2696 : vec3<f32> = vs_TEXCOORD7;
        let x_2698 : i32 = u_xlati73;
        let x_2701 : i32 = u_xlati73;
        let x_2705 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2698 + 1i) / 4i)][((x_2701 + 1i) % 4i)];
        let x_2707 : vec3<f32> = (vec3<f32>(x_2696.y, x_2696.y, x_2696.y) * vec3<f32>(x_2705.x, x_2705.y, x_2705.w));
        let x_2708 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
        let x_2710 : i32 = u_xlati73;
        let x_2712 : i32 = u_xlati73;
        let x_2715 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[(x_2710 / 4i)][(x_2712 % 4i)];
        let x_2717 : vec3<f32> = vs_TEXCOORD7;
        let x_2720 : vec4<f32> = u_xlat11;
        let x_2722 : vec3<f32> = ((vec3<f32>(x_2715.x, x_2715.y, x_2715.w) * vec3<f32>(x_2717.x, x_2717.x, x_2717.x)) + vec3<f32>(x_2720.x, x_2720.y, x_2720.z));
        let x_2723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2722.x, x_2722.y, x_2722.z, x_2723.w);
        let x_2725 : i32 = u_xlati73;
        let x_2728 : i32 = u_xlati73;
        let x_2732 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2725 + 2i) / 4i)][((x_2728 + 2i) % 4i)];
        let x_2734 : vec3<f32> = vs_TEXCOORD7;
        let x_2737 : vec4<f32> = u_xlat11;
        let x_2739 : vec3<f32> = ((vec3<f32>(x_2732.x, x_2732.y, x_2732.w) * vec3<f32>(x_2734.z, x_2734.z, x_2734.z)) + vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
        let x_2740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
        let x_2742 : vec4<f32> = u_xlat11;
        let x_2744 : i32 = u_xlati73;
        let x_2747 : i32 = u_xlati73;
        let x_2751 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2744 + 3i) / 4i)][((x_2747 + 3i) % 4i)];
        let x_2753 : vec3<f32> = (vec3<f32>(x_2742.x, x_2742.y, x_2742.z) + vec3<f32>(x_2751.x, x_2751.y, x_2751.w));
        let x_2754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
        let x_2756 : vec4<f32> = u_xlat11;
        let x_2758 : vec4<f32> = u_xlat11;
        let x_2760 : vec2<f32> = (vec2<f32>(x_2756.x, x_2756.y) / vec2<f32>(x_2758.z, x_2758.z));
        let x_2761 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2760.x, x_2760.y, x_2761.z, x_2761.w);
        let x_2763 : vec4<f32> = u_xlat11;
        let x_2766 : vec2<f32> = ((vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2767 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
        let x_2769 : vec4<f32> = u_xlat11;
        let x_2773 : vec2<f32> = clamp(vec2<f32>(x_2769.x, x_2769.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2774 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
        let x_2776 : u32 = u_xlatu68;
        let x_2779 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2776)];
        let x_2781 : vec4<f32> = u_xlat11;
        let x_2784 : u32 = u_xlatu68;
        let x_2787 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2784)];
        let x_2789 : vec2<f32> = ((vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(x_2781.x, x_2781.y)) + vec2<f32>(x_2787.z, x_2787.w));
        let x_2790 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
      } else {
        let x_2794 : i32 = u_xlati71;
        u_xlatb71 = (x_2794 == 1i);
        let x_2796 : bool = u_xlatb71;
        u_xlati71 = select(0i, 1i, x_2796);
        let x_2798 : i32 = u_xlati71;
        if ((x_2798 != 0i)) {
          let x_2803 : vec3<f32> = vs_TEXCOORD7;
          let x_2805 : i32 = u_xlati73;
          let x_2808 : i32 = u_xlati73;
          let x_2812 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2805 + 1i) / 4i)][((x_2808 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2803.y, x_2803.y) * vec2<f32>(x_2812.x, x_2812.y));
          let x_2815 : i32 = u_xlati73;
          let x_2817 : i32 = u_xlati73;
          let x_2820 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[(x_2815 / 4i)][(x_2817 % 4i)];
          let x_2822 : vec3<f32> = vs_TEXCOORD7;
          let x_2825 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2820.x, x_2820.y) * vec2<f32>(x_2822.x, x_2822.x)) + x_2825);
          let x_2827 : i32 = u_xlati73;
          let x_2830 : i32 = u_xlati73;
          let x_2834 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2827 + 2i) / 4i)][((x_2830 + 2i) % 4i)];
          let x_2836 : vec3<f32> = vs_TEXCOORD7;
          let x_2839 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2834.x, x_2834.y) * vec2<f32>(x_2836.z, x_2836.z)) + x_2839);
          let x_2841 : vec2<f32> = u_xlat53;
          let x_2842 : i32 = u_xlati73;
          let x_2845 : i32 = u_xlati73;
          let x_2849 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2842 + 3i) / 4i)][((x_2845 + 3i) % 4i)];
          u_xlat53 = (x_2841 + vec2<f32>(x_2849.x, x_2849.y));
          let x_2852 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2852 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2855 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2855);
          let x_2857 : u32 = u_xlatu68;
          let x_2860 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2857)];
          let x_2862 : vec2<f32> = u_xlat53;
          let x_2864 : u32 = u_xlatu68;
          let x_2867 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2864)];
          let x_2869 : vec2<f32> = ((vec2<f32>(x_2860.x, x_2860.y) * x_2862) + vec2<f32>(x_2867.z, x_2867.w));
          let x_2870 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2869.x, x_2869.y, x_2870.z, x_2870.w);
        } else {
          let x_2873 : vec3<f32> = vs_TEXCOORD7;
          let x_2875 : i32 = u_xlati73;
          let x_2878 : i32 = u_xlati73;
          let x_2882 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2875 + 1i) / 4i)][((x_2878 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2873.y, x_2873.y, x_2873.y, x_2873.y) * x_2882);
          let x_2884 : i32 = u_xlati73;
          let x_2886 : i32 = u_xlati73;
          let x_2889 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[(x_2884 / 4i)][(x_2886 % 4i)];
          let x_2890 : vec3<f32> = vs_TEXCOORD7;
          let x_2893 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2889 * vec4<f32>(x_2890.x, x_2890.x, x_2890.x, x_2890.x)) + x_2893);
          let x_2895 : i32 = u_xlati73;
          let x_2898 : i32 = u_xlati73;
          let x_2902 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2895 + 2i) / 4i)][((x_2898 + 2i) % 4i)];
          let x_2903 : vec3<f32> = vs_TEXCOORD7;
          let x_2906 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2902 * vec4<f32>(x_2903.z, x_2903.z, x_2903.z, x_2903.z)) + x_2906);
          let x_2908 : vec4<f32> = u_xlat12;
          let x_2909 : i32 = u_xlati73;
          let x_2912 : i32 = u_xlati73;
          let x_2916 : vec4<f32> = x_2679.x_AdditionalLightsWorldToLights[((x_2909 + 3i) / 4i)][((x_2912 + 3i) % 4i)];
          u_xlat12 = (x_2908 + x_2916);
          let x_2918 : vec4<f32> = u_xlat12;
          let x_2920 : vec4<f32> = u_xlat12;
          let x_2922 : vec3<f32> = (vec3<f32>(x_2918.x, x_2918.y, x_2918.z) / vec3<f32>(x_2920.w, x_2920.w, x_2920.w));
          let x_2923 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
          let x_2925 : vec4<f32> = u_xlat12;
          let x_2927 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(vec3<f32>(x_2925.x, x_2925.y, x_2925.z), vec3<f32>(x_2927.x, x_2927.y, x_2927.z));
          let x_2930 : f32 = u_xlat71;
          u_xlat71 = inverseSqrt(x_2930);
          let x_2932 : f32 = u_xlat71;
          let x_2934 : vec4<f32> = u_xlat12;
          let x_2936 : vec3<f32> = (vec3<f32>(x_2932, x_2932, x_2932) * vec3<f32>(x_2934.x, x_2934.y, x_2934.z));
          let x_2937 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2936.x, x_2936.y, x_2936.z, x_2937.w);
          let x_2939 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(abs(vec3<f32>(x_2939.x, x_2939.y, x_2939.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2944 : f32 = u_xlat71;
          u_xlat71 = max(x_2944, 0.000001f);
          let x_2947 : f32 = u_xlat71;
          u_xlat71 = (1.0f / x_2947);
          let x_2949 : f32 = u_xlat71;
          let x_2951 : vec4<f32> = u_xlat12;
          let x_2953 : vec3<f32> = (vec3<f32>(x_2949, x_2949, x_2949) * vec3<f32>(x_2951.z, x_2951.x, x_2951.y));
          let x_2954 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2953.x, x_2953.y, x_2953.z, x_2954.w);
          let x_2957 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2957);
          let x_2961 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2961, 0.0f, 1.0f);
          let x_2965 : vec4<f32> = u_xlat13;
          let x_2968 : vec4<bool> = (vec4<f32>(x_2965.y, x_2965.z, x_2965.y, x_2965.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2968.x, x_2968.y);
          let x_2971 : bool = u_xlatb53.x;
          if (x_2971) {
            let x_2976 : f32 = u_xlat13.x;
            x_2972 = x_2976;
          } else {
            let x_2979 : f32 = u_xlat13.x;
            x_2972 = -(x_2979);
          }
          let x_2981 : f32 = x_2972;
          u_xlat53.x = x_2981;
          let x_2984 : bool = u_xlatb53.y;
          if (x_2984) {
            let x_2989 : f32 = u_xlat13.x;
            x_2985 = x_2989;
          } else {
            let x_2992 : f32 = u_xlat13.x;
            x_2985 = -(x_2992);
          }
          let x_2994 : f32 = x_2985;
          u_xlat53.y = x_2994;
          let x_2996 : vec4<f32> = u_xlat12;
          let x_2998 : f32 = u_xlat71;
          let x_3001 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2996.x, x_2996.y) * vec2<f32>(x_2998, x_2998)) + x_3001);
          let x_3003 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3003 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3006 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3006, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3010 : u32 = u_xlatu68;
          let x_3013 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3010)];
          let x_3015 : vec2<f32> = u_xlat53;
          let x_3017 : u32 = u_xlatu68;
          let x_3020 : vec4<f32> = x_2679.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3017)];
          let x_3022 : vec2<f32> = ((vec2<f32>(x_3013.x, x_3013.y) * x_3015) + vec2<f32>(x_3020.z, x_3020.w));
          let x_3023 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3022.x, x_3022.y, x_3023.z, x_3023.w);
        }
      }
      let x_3030 : vec4<f32> = u_xlat11;
      let x_3033 : f32 = x_128.x_GlobalMipBias.x;
      let x_3034 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3030.x, x_3030.y), x_3033);
      u_xlat11 = x_3034;
      let x_3036 : bool = u_xlatb4.w;
      if (x_3036) {
        let x_3041 : f32 = u_xlat11.w;
        x_3037 = x_3041;
      } else {
        let x_3044 : f32 = u_xlat11.x;
        x_3037 = x_3044;
      }
      let x_3045 : f32 = x_3037;
      u_xlat71 = x_3045;
      let x_3047 : bool = u_xlatb4.x;
      if (x_3047) {
        let x_3051 : vec4<f32> = u_xlat11;
        x_3048 = vec3<f32>(x_3051.x, x_3051.y, x_3051.z);
      } else {
        let x_3054 : f32 = u_xlat71;
        x_3048 = vec3<f32>(x_3054, x_3054, x_3054);
      }
      let x_3056 : vec3<f32> = x_3048;
      let x_3057 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3057.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3063 : vec4<f32> = u_xlat11;
    let x_3065 : u32 = u_xlatu68;
    let x_3068 : vec4<f32> = x_2571.x_AdditionalLightsColor[bitcast<i32>(x_3065)];
    let x_3070 : vec3<f32> = (vec3<f32>(x_3063.x, x_3063.y, x_3063.z) * vec3<f32>(x_3068.x, x_3068.y, x_3068.z));
    let x_3071 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3070.x, x_3070.y, x_3070.z, x_3071.w);
    let x_3073 : f32 = u_xlat46;
    let x_3075 : vec4<f32> = u_xlat11;
    let x_3077 : vec3<f32> = (vec3<f32>(x_3073, x_3073, x_3073) * vec3<f32>(x_3075.x, x_3075.y, x_3075.z));
    let x_3078 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3078.w);
    let x_3080 : vec4<f32> = u_xlat2;
    let x_3082 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3080.x, x_3080.y, x_3080.z), vec3<f32>(x_3082.x, x_3082.y, x_3082.z));
    let x_3085 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3085, 0.0f, 1.0f);
    let x_3087 : f32 = u_xlat68;
    let x_3088 : f32 = u_xlat69;
    u_xlat68 = (x_3087 * x_3088);
    let x_3090 : f32 = u_xlat68;
    let x_3092 : vec4<f32> = u_xlat11;
    let x_3094 : vec3<f32> = (vec3<f32>(x_3090, x_3090, x_3090) * vec3<f32>(x_3092.x, x_3092.y, x_3092.z));
    let x_3095 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
    let x_3097 : vec4<f32> = u_xlat9;
    let x_3099 : f32 = u_xlat70;
    let x_3102 : vec4<f32> = u_xlat1;
    let x_3104 : vec3<f32> = ((vec3<f32>(x_3097.x, x_3097.y, x_3097.z) * vec3<f32>(x_3099, x_3099, x_3099)) + vec3<f32>(x_3102.x, x_3102.y, x_3102.z));
    let x_3105 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
    let x_3107 : vec4<f32> = u_xlat9;
    let x_3109 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3107.x, x_3107.y, x_3107.z), vec3<f32>(x_3109.x, x_3109.y, x_3109.z));
    let x_3112 : f32 = u_xlat68;
    u_xlat68 = max(x_3112, 1.17549435e-37f);
    let x_3114 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3114);
    let x_3116 : f32 = u_xlat68;
    let x_3118 : vec4<f32> = u_xlat9;
    let x_3120 : vec3<f32> = (vec3<f32>(x_3116, x_3116, x_3116) * vec3<f32>(x_3118.x, x_3118.y, x_3118.z));
    let x_3121 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3120.x, x_3120.y, x_3120.z, x_3121.w);
    let x_3123 : vec4<f32> = u_xlat2;
    let x_3125 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3123.x, x_3123.y, x_3123.z), vec3<f32>(x_3125.x, x_3125.y, x_3125.z));
    let x_3128 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3128, 0.0f, 1.0f);
    let x_3130 : vec4<f32> = u_xlat10;
    let x_3132 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3130.x, x_3130.y, x_3130.z), vec3<f32>(x_3132.x, x_3132.y, x_3132.z));
    let x_3135 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3135, 0.0f, 1.0f);
    let x_3137 : f32 = u_xlat68;
    let x_3138 : f32 = u_xlat68;
    u_xlat68 = (x_3137 * x_3138);
    let x_3140 : f32 = u_xlat68;
    let x_3142 : f32 = u_xlat0.x;
    u_xlat68 = ((x_3140 * x_3142) + 1.000010014f);
    let x_3145 : f32 = u_xlat69;
    let x_3146 : f32 = u_xlat69;
    u_xlat69 = (x_3145 * x_3146);
    let x_3148 : f32 = u_xlat68;
    let x_3149 : f32 = u_xlat68;
    u_xlat68 = (x_3148 * x_3149);
    let x_3151 : f32 = u_xlat69;
    u_xlat69 = max(x_3151, 0.100000001f);
    let x_3153 : f32 = u_xlat68;
    let x_3154 : f32 = u_xlat69;
    u_xlat68 = (x_3153 * x_3154);
    let x_3156 : f32 = u_xlat25;
    let x_3157 : f32 = u_xlat68;
    u_xlat68 = (x_3156 * x_3157);
    let x_3159 : f32 = u_xlat65;
    let x_3160 : f32 = u_xlat68;
    u_xlat68 = (x_3159 / x_3160);
    let x_3162 : vec4<f32> = u_xlat5;
    let x_3164 : f32 = u_xlat68;
    let x_3167 : vec4<f32> = u_xlat6;
    let x_3169 : vec3<f32> = ((vec3<f32>(x_3162.x, x_3162.y, x_3162.z) * vec3<f32>(x_3164, x_3164, x_3164)) + vec3<f32>(x_3167.x, x_3167.y, x_3167.z));
    let x_3170 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3169.x, x_3169.y, x_3169.z, x_3170.w);
    let x_3172 : vec4<f32> = u_xlat9;
    let x_3174 : vec4<f32> = u_xlat11;
    let x_3177 : vec4<f32> = u_xlat8;
    let x_3179 : vec3<f32> = ((vec3<f32>(x_3172.x, x_3172.y, x_3172.z) * vec3<f32>(x_3174.x, x_3174.y, x_3174.z)) + vec3<f32>(x_3177.x, x_3177.y, x_3177.z));
    let x_3180 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3179.x, x_3179.y, x_3179.z, x_3180.w);

    continuing {
      let x_3182 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3182 + bitcast<u32>(1i));
    }
  }
  let x_3184 : vec4<f32> = u_xlat3;
  let x_3186 : f32 = u_xlat21;
  let x_3189 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_3184.x, x_3184.y, x_3184.z) * vec3<f32>(x_3186, x_3186, x_3186)) + vec3<f32>(x_3189.x, x_3189.y, x_3189.z));
  let x_3192 : vec4<f32> = u_xlat8;
  let x_3194 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3192.x, x_3192.y, x_3192.z) + x_3194);
  let x_3196 : f32 = u_xlat64;
  let x_3197 : f32 = u_xlat64;
  u_xlat1.x = (x_3196 * -(x_3197));
  let x_3202 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3202);
  let x_3205 : vec3<f32> = u_xlat0;
  let x_3206 : f32 = u_xlat63;
  let x_3210 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_3205 * vec3<f32>(x_3206, x_3206, x_3206)) + -(vec3<f32>(x_3210.x, x_3210.y, x_3210.z)));
  let x_3216 : vec4<f32> = u_xlat1;
  let x_3218 : vec3<f32> = u_xlat0;
  let x_3221 : vec4<f32> = x_128.unity_FogColor;
  let x_3223 : vec3<f32> = ((vec3<f32>(x_3216.x, x_3216.x, x_3216.x) * x_3218) + vec3<f32>(x_3221.x, x_3221.y, x_3221.z));
  let x_3224 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3223.x, x_3223.y, x_3223.z, x_3224.w);
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

