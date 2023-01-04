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

@group(1) @binding(4) var<uniform> x_588 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_809 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2302 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2774 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2875 : AdditionalLightsCookies;

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
  var u_xlat66 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb67 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat67 : f32;
  var u_xlat44 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat23 : vec3<f32>;
  var x_561 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu67 : u32;
  var u_xlati67 : i32;
  var u_xlat68 : f32;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatb71 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb28 : vec2<bool>;
  var u_xlat28 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat50 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat58 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat73 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb47 : bool;
  var x_2254 : f32;
  var u_xlat25 : vec2<f32>;
  var u_xlat47 : f32;
  var x_2369 : f32;
  var x_2380 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati71 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu73 : u32;
  var u_xlati74 : i32;
  var u_xlati73 : i32;
  var u_xlati76 : i32;
  var u_xlatb73 : bool;
  var u_xlatb55 : vec2<bool>;
  var x_3167 : f32;
  var x_3180 : f32;
  var x_3232 : f32;
  var x_3243 : vec3<f32>;
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
  u_xlat66 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb67 = (4.0f >= x_220);
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
  let x_282 : bool = u_xlatb67;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat67;
  u_xlat67 = (x_291 + 6.10351562e-05f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat67;
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
  u_xlat44 = dot(x_438, x_439);
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
  u_xlat22 = dot(x_521, x_522);
  let x_526 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_526 == 0.0f);
  let x_531 : vec3<f32> = vs_TEXCOORD7;
  let x_535 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat23 = (-(x_531) + x_535);
  let x_537 : vec3<f32> = u_xlat23;
  let x_538 : vec3<f32> = u_xlat23;
  u_xlat2.x = dot(x_537, x_538);
  let x_542 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_542);
  let x_545 : vec3<f32> = u_xlat23;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat23 = (x_545 * vec3<f32>(x_546.x, x_546.x, x_546.x));
  let x_551 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_564 : vec3<f32> = u_xlat23;
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
  u_xlat67 = dot(x_572, x_573);
  let x_575 : f32 = u_xlat67;
  u_xlat67 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat67;
  let x_579 : vec3<f32> = vs_TEXCOORD3;
  let x_580 : vec3<f32> = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec3<f32> = vs_TEXCOORD7;
  let x_590 : vec4<f32> = x_588.x_CascadeShadowSplitSpheres0;
  let x_593 : vec3<f32> = (x_583 + -(vec3<f32>(x_590.x, x_590.y, x_590.z)));
  let x_594 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = vs_TEXCOORD7;
  let x_598 : vec4<f32> = x_588.x_CascadeShadowSplitSpheres1;
  let x_601 : vec3<f32> = (x_596 + -(vec3<f32>(x_598.x, x_598.y, x_598.z)));
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec3<f32> = vs_TEXCOORD7;
  let x_607 : vec4<f32> = x_588.x_CascadeShadowSplitSpheres2;
  let x_610 : vec3<f32> = (x_604 + -(vec3<f32>(x_607.x, x_607.y, x_607.z)));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = vs_TEXCOORD7;
  let x_615 : vec4<f32> = x_588.x_CascadeShadowSplitSpheres3;
  let x_618 : vec3<f32> = (x_613 + -(vec3<f32>(x_615.x, x_615.y, x_615.z)));
  let x_619 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat3;
  let x_623 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_627 : vec4<f32> = u_xlat4;
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat6;
  let x_635 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat7;
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec4<f32> = x_588.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_647 < x_649);
  let x_652 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_652);
  let x_656 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_660);
  let x_664 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_664);
  let x_668 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_668);
  let x_673 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_673);
  let x_677 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_677);
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : vec4<f32> = u_xlat4;
  let x_684 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(x_682.y, x_682.z, x_682.w));
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat3;
  let x_690 : vec3<f32> = max(vec3<f32>(x_687.x, x_687.y, x_687.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_691 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_691.x, x_690.x, x_690.y, x_690.z);
  let x_693 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_693, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_698 : f32 = u_xlat67;
  u_xlat67 = (-(x_698) + 4.0f);
  let x_703 : f32 = u_xlat67;
  u_xlatu67 = u32(x_703);
  let x_707 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_707) << bitcast<u32>(2i));
  let x_710 : vec3<f32> = vs_TEXCOORD7;
  let x_712 : i32 = u_xlati67;
  let x_715 : i32 = u_xlati67;
  let x_719 : vec4<f32> = x_588.x_MainLightWorldToShadow[((x_712 + 1i) / 4i)][((x_715 + 1i) % 4i)];
  let x_721 : vec3<f32> = (vec3<f32>(x_710.y, x_710.y, x_710.y) * vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : i32 = u_xlati67;
  let x_726 : i32 = u_xlati67;
  let x_729 : vec4<f32> = x_588.x_MainLightWorldToShadow[(x_724 / 4i)][(x_726 % 4i)];
  let x_731 : vec3<f32> = vs_TEXCOORD7;
  let x_734 : vec4<f32> = u_xlat3;
  let x_736 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(x_731.x, x_731.x, x_731.x)) + vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : i32 = u_xlati67;
  let x_742 : i32 = u_xlati67;
  let x_746 : vec4<f32> = x_588.x_MainLightWorldToShadow[((x_739 + 2i) / 4i)][((x_742 + 2i) % 4i)];
  let x_748 : vec3<f32> = vs_TEXCOORD7;
  let x_751 : vec4<f32> = u_xlat3;
  let x_753 : vec3<f32> = ((vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(x_748.z, x_748.z, x_748.z)) + vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat3;
  let x_758 : i32 = u_xlati67;
  let x_761 : i32 = u_xlati67;
  let x_765 : vec4<f32> = x_588.x_MainLightWorldToShadow[((x_758 + 3i) / 4i)][((x_761 + 3i) % 4i)];
  let x_767 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) + vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_771 : f32 = vs_TEXCOORD7.y;
  let x_773 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat67 = (x_771 * x_773);
  let x_776 : f32 = x_128.unity_MatrixV[0i].z;
  let x_778 : f32 = vs_TEXCOORD7.x;
  let x_780 : f32 = u_xlat67;
  u_xlat67 = ((x_776 * x_778) + x_780);
  let x_783 : f32 = x_128.unity_MatrixV[2i].z;
  let x_785 : f32 = vs_TEXCOORD7.z;
  let x_787 : f32 = u_xlat67;
  u_xlat67 = ((x_783 * x_785) + x_787);
  let x_789 : f32 = u_xlat67;
  let x_791 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat67 = (x_789 + x_791);
  let x_793 : f32 = u_xlat67;
  let x_796 : f32 = x_128.x_ProjectionParams.y;
  u_xlat67 = (-(x_793) + -(x_796));
  let x_799 : f32 = u_xlat67;
  u_xlat67 = max(x_799, 0.0f);
  let x_801 : f32 = u_xlat67;
  let x_803 : f32 = x_128.unity_FogParams.x;
  u_xlat67 = (x_801 * x_803);
  u_xlat2.w = 1.0f;
  let x_811 : vec4<f32> = x_809.unity_SHAr;
  let x_812 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_811, x_812);
  let x_816 : vec4<f32> = x_809.unity_SHAg;
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_816, x_817);
  let x_821 : vec4<f32> = x_809.unity_SHAb;
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_821, x_822);
  let x_825 : vec4<f32> = u_xlat2;
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_825.y, x_825.z, x_825.z, x_825.x) * vec4<f32>(x_827.x, x_827.y, x_827.z, x_827.z));
  let x_831 : vec4<f32> = x_809.unity_SHBr;
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_831, x_832);
  let x_836 : vec4<f32> = x_809.unity_SHBg;
  let x_837 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_836, x_837);
  let x_841 : vec4<f32> = x_809.unity_SHBb;
  let x_842 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_841, x_842);
  let x_847 : f32 = u_xlat2.y;
  let x_849 : f32 = u_xlat2.y;
  u_xlat68 = (x_847 * x_849);
  let x_852 : f32 = u_xlat2.x;
  let x_854 : f32 = u_xlat2.x;
  let x_856 : f32 = u_xlat68;
  u_xlat68 = ((x_852 * x_854) + -(x_856));
  let x_861 : vec4<f32> = x_809.unity_SHC;
  let x_863 : f32 = u_xlat68;
  let x_866 : vec4<f32> = u_xlat7;
  let x_868 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_863, x_863, x_863)) + vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat4;
  let x_873 : vec4<f32> = u_xlat6;
  let x_875 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat4;
  let x_880 : vec3<f32> = max(vec3<f32>(x_878.x, x_878.y, x_878.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_885 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_886 : vec2<f32> = vec2<f32>(x_885.x, x_885.y);
  let x_890 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_886.x, x_886.y));
  let x_891 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat6;
  let x_895 : vec4<f32> = hlslcc_FragCoord;
  let x_897 : vec2<f32> = (vec2<f32>(x_893.x, x_893.y) * vec2<f32>(x_895.x, x_895.y));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
  let x_901 : f32 = u_xlat6.y;
  let x_903 : f32 = x_128.x_ScaleBiasRt.x;
  let x_906 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat68 = ((x_901 * x_903) + x_906);
  let x_908 : f32 = u_xlat68;
  u_xlat6.z = (-(x_908) + 1.0f);
  let x_913 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_913) * 0.959999979f) + 0.959999979f);
  let x_919 : f32 = u_xlat68;
  u_xlat69 = (-(x_919) + 1.0f);
  let x_922 : f32 = u_xlat68;
  let x_924 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_934 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec3<f32> = u_xlat0;
  let x_938 : vec4<f32> = u_xlat5;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.x, x_936.x) * vec3<f32>(x_938.x, x_938.y, x_938.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_944 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat44;
  u_xlat0.x = (-(x_946) + 1.0f);
  let x_951 : f32 = u_xlat0.x;
  let x_953 : f32 = u_xlat0.x;
  u_xlat68 = (x_951 * x_953);
  let x_955 : f32 = u_xlat68;
  u_xlat68 = max(x_955, 0.0078125f);
  let x_959 : f32 = u_xlat68;
  let x_960 : f32 = u_xlat68;
  u_xlat70 = (x_959 * x_960);
  let x_962 : f32 = u_xlat44;
  let x_963 : f32 = u_xlat69;
  u_xlat44 = (x_962 + x_963);
  let x_965 : f32 = u_xlat44;
  u_xlat44 = clamp(x_965, 0.0f, 1.0f);
  let x_967 : f32 = u_xlat68;
  u_xlat69 = ((x_967 * 4.0f) + 2.0f);
  let x_976 : vec4<f32> = u_xlat6;
  let x_979 : f32 = x_128.x_GlobalMipBias.x;
  let x_980 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_976.x, x_976.z), x_979);
  u_xlat71 = x_980.x;
  let x_982 : f32 = u_xlat71;
  u_xlat6.x = (x_982 + -1.0f);
  let x_986 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_988 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_986 * x_988) + 1.0f);
  let x_992 : f32 = u_xlat22;
  let x_993 : f32 = u_xlat71;
  u_xlat22 = min(x_992, x_993);
  let x_997 : f32 = x_588.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_997);
  let x_999 : bool = u_xlatb71;
  if (x_999) {
    let x_1003 : f32 = x_588.x_MainLightShadowParams.y;
    u_xlatb71 = (x_1003 == 1.0f);
    let x_1005 : bool = u_xlatb71;
    if (x_1005) {
      let x_1008 : vec4<f32> = u_xlat3;
      let x_1011 : vec4<f32> = x_588.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.y) + x_1011);
      let x_1014 : vec4<f32> = u_xlat8;
      let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
      let x_1017 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
      let x_1029 : vec3<f32> = txVec0;
      let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1029.xy, x_1029.z);
      u_xlat9.x = x_1031;
      let x_1034 : vec4<f32> = u_xlat8;
      let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
      let x_1037 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
      let x_1044 : vec3<f32> = txVec1;
      let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
      u_xlat9.y = x_1046;
      let x_1048 : vec4<f32> = u_xlat3;
      let x_1051 : vec4<f32> = x_588.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) + x_1051);
      let x_1054 : vec4<f32> = u_xlat8;
      let x_1055 : vec2<f32> = vec2<f32>(x_1054.x, x_1054.y);
      let x_1057 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1055.x, x_1055.y, x_1057);
      let x_1064 : vec3<f32> = txVec2;
      let x_1066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1064.xy, x_1064.z);
      u_xlat9.z = x_1066;
      let x_1069 : vec4<f32> = u_xlat8;
      let x_1070 : vec2<f32> = vec2<f32>(x_1069.z, x_1069.w);
      let x_1072 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1070.x, x_1070.y, x_1072);
      let x_1079 : vec3<f32> = txVec3;
      let x_1081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1079.xy, x_1079.z);
      u_xlat9.w = x_1081;
      let x_1083 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1083, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1092 : f32 = x_588.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_1092 == 2.0f);
      let x_1096 : bool = u_xlatb28.x;
      if (x_1096) {
        let x_1100 : vec4<f32> = u_xlat3;
        let x_1103 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.z, x_1103.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1107 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1106.x, x_1106.y, x_1107.z);
        let x_1109 : vec3<f32> = u_xlat28;
        let x_1111 : vec2<f32> = floor(vec2<f32>(x_1109.x, x_1109.y));
        let x_1112 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1111.x, x_1111.y, x_1112.z);
        let x_1114 : vec4<f32> = u_xlat3;
        let x_1117 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1120 : vec3<f32> = u_xlat28;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.y) * vec2<f32>(x_1117.z, x_1117.w)) + -(vec2<f32>(x_1120.x, x_1120.y)));
        let x_1124 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1126.x, x_1126.x, x_1126.y, x_1126.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1130 : vec4<f32> = u_xlat9;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1130.x, x_1130.x, x_1130.z, x_1130.z) * vec4<f32>(x_1132.x, x_1132.x, x_1132.z, x_1132.z));
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1137.y, x_1137.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1142.x, x_1142.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1145.x, x_1145.y)));
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1148.x, x_1149.y, x_1148.y, x_1149.w);
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1154 : vec2<f32> = (-(vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1158.x, x_1158.y), vec2<f32>(0.0f, 0.0f));
        let x_1162 : vec2<f32> = u_xlat54;
        let x_1164 : vec2<f32> = u_xlat54;
        let x_1166 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1162) * x_1164) + vec2<f32>(x_1166.x, x_1166.y));
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1171 : vec2<f32> = max(vec2<f32>(x_1169.x, x_1169.y), vec2<f32>(0.0f, 0.0f));
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1177 : vec4<f32> = u_xlat8;
        let x_1180 : vec4<f32> = u_xlat9;
        let x_1182 : vec2<f32> = ((-(vec2<f32>(x_1174.x, x_1174.y)) * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1180.y, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1185 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1185 + vec2<f32>(1.0f, 1.0f));
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1187.x, x_1187.y) + vec2<f32>(1.0f, 1.0f));
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1192.x, x_1192.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat10;
        let x_1201 : vec2<f32> = (vec2<f32>(x_1199.x, x_1199.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1202 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec2<f32> = u_xlat54;
        let x_1205 : vec2<f32> = (x_1204 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1206 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1210 : vec2<f32> = (vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1211 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat9;
        let x_1215 : vec2<f32> = (vec2<f32>(x_1213.y, x_1213.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1219 : f32 = u_xlat10.x;
        u_xlat11.z = x_1219;
        let x_1222 : f32 = u_xlat8.x;
        u_xlat11.w = x_1222;
        let x_1225 : f32 = u_xlat13.x;
        u_xlat12.z = x_1225;
        let x_1228 : f32 = u_xlat52.x;
        u_xlat12.w = x_1228;
        let x_1230 : vec4<f32> = u_xlat11;
        let x_1232 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1230.z, x_1230.w, x_1230.x, x_1230.z) + vec4<f32>(x_1232.z, x_1232.w, x_1232.x, x_1232.z));
        let x_1236 : f32 = u_xlat11.y;
        u_xlat10.z = x_1236;
        let x_1239 : f32 = u_xlat8.y;
        u_xlat10.w = x_1239;
        let x_1242 : f32 = u_xlat12.y;
        u_xlat13.z = x_1242;
        let x_1245 : f32 = u_xlat52.y;
        u_xlat13.w = x_1245;
        let x_1247 : vec4<f32> = u_xlat10;
        let x_1249 : vec4<f32> = u_xlat13;
        let x_1251 : vec3<f32> = (vec3<f32>(x_1247.z, x_1247.y, x_1247.w) + vec3<f32>(x_1249.z, x_1249.y, x_1249.w));
        let x_1252 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
        let x_1254 : vec4<f32> = u_xlat12;
        let x_1256 : vec4<f32> = u_xlat9;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1254.x, x_1254.z, x_1254.w) / vec3<f32>(x_1256.z, x_1256.w, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1267 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.y, x_1261.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1268 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
        let x_1270 : vec4<f32> = u_xlat13;
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1274 : vec3<f32> = (vec3<f32>(x_1270.z, x_1270.y, x_1270.w) / vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1279 : vec3<f32> = (vec3<f32>(x_1277.x, x_1277.y, x_1277.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1280 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
        let x_1282 : vec4<f32> = u_xlat10;
        let x_1285 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1287 : vec3<f32> = (vec3<f32>(x_1282.y, x_1282.x, x_1282.z) * vec3<f32>(x_1285.x, x_1285.x, x_1285.x));
        let x_1288 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat11;
        let x_1293 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1295 : vec3<f32> = (vec3<f32>(x_1290.x, x_1290.y, x_1290.z) * vec3<f32>(x_1293.y, x_1293.y, x_1293.y));
        let x_1296 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
        let x_1299 : f32 = u_xlat11.x;
        u_xlat10.w = x_1299;
        let x_1301 : vec3<f32> = u_xlat28;
        let x_1304 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y) * vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y)) + vec4<f32>(x_1307.y, x_1307.w, x_1307.x, x_1307.w));
        let x_1310 : vec3<f32> = u_xlat28;
        let x_1313 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat10;
        let x_1318 : vec2<f32> = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.z, x_1316.w));
        let x_1319 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
        let x_1322 : f32 = u_xlat10.y;
        u_xlat11.w = x_1322;
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.y, x_1324.z);
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1326.x, x_1325.x, x_1326.z, x_1325.y);
        let x_1329 : vec3<f32> = u_xlat28;
        let x_1332 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y) * vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y)) + vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1335.y));
        let x_1338 : vec3<f32> = u_xlat28;
        let x_1341 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y) * vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y)) + vec4<f32>(x_1344.w, x_1344.y, x_1344.w, x_1344.z));
        let x_1347 : vec3<f32> = u_xlat28;
        let x_1350 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y) * vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y)) + vec4<f32>(x_1353.x, x_1353.w, x_1353.z, x_1353.w));
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1359 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1357.x, x_1357.x, x_1357.x, x_1357.y) * vec4<f32>(x_1359.z, x_1359.w, x_1359.y, x_1359.z));
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1363.y, x_1363.y, x_1363.z, x_1363.z) * x_1365);
        let x_1368 : f32 = u_xlat8.z;
        let x_1370 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1368 * x_1370);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1385 : vec3<f32> = txVec4;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1385.xy, x_1385.z);
        u_xlat50 = x_1387;
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.z, x_1389.w);
        let x_1392 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1400 : vec3<f32> = txVec5;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat72 = x_1402;
        let x_1403 : f32 = u_xlat72;
        let x_1405 : f32 = u_xlat15.y;
        u_xlat72 = (x_1403 * x_1405);
        let x_1408 : f32 = u_xlat15.x;
        let x_1409 : f32 = u_xlat50;
        let x_1411 : f32 = u_xlat72;
        u_xlat50 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat13;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec6;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1424.xy, x_1424.z);
        u_xlat72 = x_1426;
        let x_1428 : f32 = u_xlat15.z;
        let x_1429 : f32 = u_xlat72;
        let x_1431 : f32 = u_xlat50;
        u_xlat50 = ((x_1428 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat11;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec7;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat72 = x_1446;
        let x_1448 : f32 = u_xlat15.w;
        let x_1449 : f32 = u_xlat72;
        let x_1451 : f32 = u_xlat50;
        u_xlat50 = ((x_1448 * x_1449) + x_1451);
        let x_1454 : vec4<f32> = u_xlat14;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.x, x_1454.y);
        let x_1457 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec8;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat72 = x_1466;
        let x_1468 : f32 = u_xlat16.x;
        let x_1469 : f32 = u_xlat72;
        let x_1471 : f32 = u_xlat50;
        u_xlat50 = ((x_1468 * x_1469) + x_1471);
        let x_1474 : vec4<f32> = u_xlat14;
        let x_1475 : vec2<f32> = vec2<f32>(x_1474.z, x_1474.w);
        let x_1477 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec9;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1484.xy, x_1484.z);
        u_xlat72 = x_1486;
        let x_1488 : f32 = u_xlat16.y;
        let x_1489 : f32 = u_xlat72;
        let x_1491 : f32 = u_xlat50;
        u_xlat50 = ((x_1488 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat11;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec10;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat72 = x_1506;
        let x_1508 : f32 = u_xlat16.z;
        let x_1509 : f32 = u_xlat72;
        let x_1511 : f32 = u_xlat50;
        u_xlat50 = ((x_1508 * x_1509) + x_1511);
        let x_1514 : vec4<f32> = u_xlat10;
        let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
        let x_1517 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec11;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
        u_xlat72 = x_1526;
        let x_1528 : f32 = u_xlat16.w;
        let x_1529 : f32 = u_xlat72;
        let x_1531 : f32 = u_xlat50;
        u_xlat50 = ((x_1528 * x_1529) + x_1531);
        let x_1534 : vec4<f32> = u_xlat10;
        let x_1535 : vec2<f32> = vec2<f32>(x_1534.z, x_1534.w);
        let x_1537 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec12;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1544.xy, x_1544.z);
        u_xlat72 = x_1546;
        let x_1548 : f32 = u_xlat28.x;
        let x_1549 : f32 = u_xlat72;
        let x_1551 : f32 = u_xlat50;
        u_xlat71 = ((x_1548 * x_1549) + x_1551);
      } else {
        let x_1554 : vec4<f32> = u_xlat3;
        let x_1557 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1560 : vec2<f32> = ((vec2<f32>(x_1554.x, x_1554.y) * vec2<f32>(x_1557.z, x_1557.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1561 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1560.x, x_1560.y, x_1561.z);
        let x_1563 : vec3<f32> = u_xlat28;
        let x_1565 : vec2<f32> = floor(vec2<f32>(x_1563.x, x_1563.y));
        let x_1566 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1565.x, x_1565.y, x_1566.z);
        let x_1568 : vec4<f32> = u_xlat3;
        let x_1571 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1574 : vec3<f32> = u_xlat28;
        let x_1577 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.z, x_1571.w)) + -(vec2<f32>(x_1574.x, x_1574.y)));
        let x_1578 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1580.x, x_1580.x, x_1580.y, x_1580.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1583 : vec4<f32> = u_xlat9;
        let x_1585 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1583.x, x_1583.x, x_1583.z, x_1583.z) * vec4<f32>(x_1585.x, x_1585.x, x_1585.z, x_1585.z));
        let x_1588 : vec4<f32> = u_xlat10;
        let x_1592 : vec2<f32> = (vec2<f32>(x_1588.y, x_1588.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1593 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1593.x, x_1592.x, x_1593.z, x_1592.y);
        let x_1595 : vec4<f32> = u_xlat10;
        let x_1598 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1595.x, x_1595.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1598.x, x_1598.y)));
        let x_1602 : vec4<f32> = u_xlat8;
        let x_1605 : vec2<f32> = (-(vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1606 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1605.x, x_1606.y, x_1605.y, x_1606.w);
        let x_1608 : vec4<f32> = u_xlat8;
        let x_1610 : vec2<f32> = min(vec2<f32>(x_1608.x, x_1608.y), vec2<f32>(0.0f, 0.0f));
        let x_1611 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1616 : vec4<f32> = u_xlat10;
        let x_1619 : vec4<f32> = u_xlat9;
        let x_1621 : vec2<f32> = ((-(vec2<f32>(x_1613.x, x_1613.y)) * vec2<f32>(x_1616.x, x_1616.y)) + vec2<f32>(x_1619.x, x_1619.z));
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1621.x, x_1622.y, x_1621.y, x_1622.w);
        let x_1624 : vec4<f32> = u_xlat8;
        let x_1626 : vec2<f32> = max(vec2<f32>(x_1624.x, x_1624.y), vec2<f32>(0.0f, 0.0f));
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1626.x, x_1626.y, x_1627.z, x_1627.w);
        let x_1629 : vec4<f32> = u_xlat10;
        let x_1632 : vec4<f32> = u_xlat10;
        let x_1635 : vec4<f32> = u_xlat9;
        let x_1637 : vec2<f32> = ((-(vec2<f32>(x_1629.x, x_1629.y)) * vec2<f32>(x_1632.x, x_1632.y)) + vec2<f32>(x_1635.y, x_1635.w));
        let x_1638 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1638.x, x_1637.x, x_1638.z, x_1637.y);
        let x_1640 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1640 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1644 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1644 * 0.081632003f);
        let x_1648 : vec2<f32> = u_xlat52;
        let x_1651 : vec2<f32> = (vec2<f32>(x_1648.y, x_1648.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1652 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
        let x_1654 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1654.x, x_1654.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1658 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1658 * 0.081632003f);
        let x_1662 : f32 = u_xlat12.y;
        u_xlat10.x = x_1662;
        let x_1664 : vec4<f32> = u_xlat8;
        let x_1671 : vec2<f32> = ((vec2<f32>(x_1664.x, x_1664.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1672 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1672.x, x_1671.x, x_1672.z, x_1671.y);
        let x_1674 : vec4<f32> = u_xlat8;
        let x_1678 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1679 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1678.x, x_1679.y, x_1678.y, x_1679.w);
        let x_1682 : f32 = u_xlat52.x;
        u_xlat9.y = x_1682;
        let x_1685 : f32 = u_xlat11.y;
        u_xlat9.w = x_1685;
        let x_1687 : vec4<f32> = u_xlat9;
        let x_1688 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1687 + x_1688);
        let x_1690 : vec4<f32> = u_xlat8;
        let x_1693 : vec2<f32> = ((vec2<f32>(x_1690.y, x_1690.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1694 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1694.x, x_1693.x, x_1694.z, x_1693.y);
        let x_1696 : vec4<f32> = u_xlat8;
        let x_1699 : vec2<f32> = ((vec2<f32>(x_1696.y, x_1696.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1700 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1699.x, x_1700.y, x_1699.y, x_1700.w);
        let x_1703 : f32 = u_xlat52.y;
        u_xlat11.y = x_1703;
        let x_1705 : vec4<f32> = u_xlat11;
        let x_1706 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1705 + x_1706);
        let x_1708 : vec4<f32> = u_xlat9;
        let x_1709 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1708 / x_1709);
        let x_1711 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1711 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1717 : vec4<f32> = u_xlat11;
        let x_1718 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1717 / x_1718);
        let x_1720 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1720 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1722 : vec4<f32> = u_xlat9;
        let x_1725 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1722.w, x_1722.x, x_1722.y, x_1722.z) * vec4<f32>(x_1725.x, x_1725.x, x_1725.x, x_1725.x));
        let x_1728 : vec4<f32> = u_xlat11;
        let x_1731 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1728.x, x_1728.w, x_1728.y, x_1728.z) * vec4<f32>(x_1731.y, x_1731.y, x_1731.y, x_1731.y));
        let x_1734 : vec4<f32> = u_xlat9;
        let x_1735 : vec3<f32> = vec3<f32>(x_1734.y, x_1734.z, x_1734.w);
        let x_1736 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1735.x, x_1736.y, x_1735.y, x_1735.z);
        let x_1739 : f32 = u_xlat11.x;
        u_xlat12.y = x_1739;
        let x_1741 : vec3<f32> = u_xlat28;
        let x_1744 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y) * vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y)) + vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1747.y));
        let x_1750 : vec3<f32> = u_xlat28;
        let x_1753 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat12;
        let x_1758 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1753.x, x_1753.y)) + vec2<f32>(x_1756.w, x_1756.y));
        let x_1759 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1758.x, x_1758.y, x_1759.z, x_1759.w);
        let x_1762 : f32 = u_xlat12.y;
        u_xlat9.y = x_1762;
        let x_1765 : f32 = u_xlat11.z;
        u_xlat12.y = x_1765;
        let x_1767 : vec3<f32> = u_xlat28;
        let x_1770 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1773 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1767.x, x_1767.y, x_1767.x, x_1767.y) * vec4<f32>(x_1770.x, x_1770.y, x_1770.x, x_1770.y)) + vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1773.y));
        let x_1777 : vec3<f32> = u_xlat28;
        let x_1780 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1783 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1777.x, x_1777.y) * vec2<f32>(x_1780.x, x_1780.y)) + vec2<f32>(x_1783.w, x_1783.y));
        let x_1787 : f32 = u_xlat12.y;
        u_xlat9.z = x_1787;
        let x_1789 : vec3<f32> = u_xlat28;
        let x_1792 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1795 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1789.x, x_1789.y, x_1789.x, x_1789.y) * vec4<f32>(x_1792.x, x_1792.y, x_1792.x, x_1792.y)) + vec4<f32>(x_1795.x, x_1795.y, x_1795.x, x_1795.z));
        let x_1799 : f32 = u_xlat11.w;
        u_xlat12.y = x_1799;
        let x_1802 : vec3<f32> = u_xlat28;
        let x_1805 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1808 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1802.x, x_1802.y, x_1802.x, x_1802.y) * vec4<f32>(x_1805.x, x_1805.y, x_1805.x, x_1805.y)) + vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1808.y));
        let x_1812 : vec3<f32> = u_xlat28;
        let x_1815 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1818 : vec4<f32> = u_xlat12;
        let x_1820 : vec2<f32> = ((vec2<f32>(x_1812.x, x_1812.y) * vec2<f32>(x_1815.x, x_1815.y)) + vec2<f32>(x_1818.w, x_1818.y));
        let x_1821 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1820.x, x_1820.y, x_1821.z);
        let x_1824 : f32 = u_xlat12.y;
        u_xlat9.w = x_1824;
        let x_1827 : vec3<f32> = u_xlat28;
        let x_1830 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1833 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1827.x, x_1827.y) * vec2<f32>(x_1830.x, x_1830.y)) + vec2<f32>(x_1833.x, x_1833.w));
        let x_1836 : vec4<f32> = u_xlat12;
        let x_1837 : vec3<f32> = vec3<f32>(x_1836.x, x_1836.z, x_1836.w);
        let x_1838 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1837.x, x_1838.y, x_1837.y, x_1837.z);
        let x_1840 : vec3<f32> = u_xlat28;
        let x_1843 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1846 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1840.x, x_1840.y, x_1840.x, x_1840.y) * vec4<f32>(x_1843.x, x_1843.y, x_1843.x, x_1843.y)) + vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1846.y));
        let x_1850 : vec3<f32> = u_xlat28;
        let x_1853 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1856 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(x_1853.x, x_1853.y)) + vec2<f32>(x_1856.w, x_1856.y));
        let x_1860 : f32 = u_xlat9.x;
        u_xlat11.x = x_1860;
        let x_1862 : vec3<f32> = u_xlat28;
        let x_1865 : vec4<f32> = x_588.x_MainLightShadowmapSize;
        let x_1868 : vec4<f32> = u_xlat11;
        let x_1870 : vec2<f32> = ((vec2<f32>(x_1862.x, x_1862.y) * vec2<f32>(x_1865.x, x_1865.y)) + vec2<f32>(x_1868.x, x_1868.y));
        let x_1871 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1870.x, x_1870.y, x_1871.z);
        let x_1874 : vec4<f32> = u_xlat8;
        let x_1876 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1874.x, x_1874.x, x_1874.x, x_1874.x) * x_1876);
        let x_1879 : vec4<f32> = u_xlat8;
        let x_1881 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1879.y, x_1879.y, x_1879.y, x_1879.y) * x_1881);
        let x_1884 : vec4<f32> = u_xlat8;
        let x_1886 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1884.z, x_1884.z, x_1884.z, x_1884.z) * x_1886);
        let x_1888 : vec4<f32> = u_xlat8;
        let x_1890 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1888.w, x_1888.w, x_1888.w, x_1888.w) * x_1890);
        let x_1893 : vec4<f32> = u_xlat13;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec13;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1903.xy, x_1903.z);
        u_xlat72 = x_1905;
        let x_1907 : vec4<f32> = u_xlat13;
        let x_1908 : vec2<f32> = vec2<f32>(x_1907.z, x_1907.w);
        let x_1910 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1908.x, x_1908.y, x_1910);
        let x_1918 : vec3<f32> = txVec14;
        let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1918.xy, x_1918.z);
        u_xlat73 = x_1920;
        let x_1921 : f32 = u_xlat73;
        let x_1923 : f32 = u_xlat19.y;
        u_xlat73 = (x_1921 * x_1923);
        let x_1926 : f32 = u_xlat19.x;
        let x_1927 : f32 = u_xlat72;
        let x_1929 : f32 = u_xlat73;
        u_xlat72 = ((x_1926 * x_1927) + x_1929);
        let x_1932 : vec4<f32> = u_xlat14;
        let x_1933 : vec2<f32> = vec2<f32>(x_1932.x, x_1932.y);
        let x_1935 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec15;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat73 = x_1944;
        let x_1946 : f32 = u_xlat19.z;
        let x_1947 : f32 = u_xlat73;
        let x_1949 : f32 = u_xlat72;
        u_xlat72 = ((x_1946 * x_1947) + x_1949);
        let x_1952 : vec4<f32> = u_xlat16;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec16;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1962.xy, x_1962.z);
        u_xlat73 = x_1964;
        let x_1966 : f32 = u_xlat19.w;
        let x_1967 : f32 = u_xlat73;
        let x_1969 : f32 = u_xlat72;
        u_xlat72 = ((x_1966 * x_1967) + x_1969);
        let x_1972 : vec4<f32> = u_xlat15;
        let x_1973 : vec2<f32> = vec2<f32>(x_1972.x, x_1972.y);
        let x_1975 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec17;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1982.xy, x_1982.z);
        u_xlat73 = x_1984;
        let x_1986 : f32 = u_xlat20.x;
        let x_1987 : f32 = u_xlat73;
        let x_1989 : f32 = u_xlat72;
        u_xlat72 = ((x_1986 * x_1987) + x_1989);
        let x_1992 : vec4<f32> = u_xlat15;
        let x_1993 : vec2<f32> = vec2<f32>(x_1992.z, x_1992.w);
        let x_1995 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec18;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2002.xy, x_2002.z);
        u_xlat73 = x_2004;
        let x_2006 : f32 = u_xlat20.y;
        let x_2007 : f32 = u_xlat73;
        let x_2009 : f32 = u_xlat72;
        u_xlat72 = ((x_2006 * x_2007) + x_2009);
        let x_2012 : vec2<f32> = u_xlat58;
        let x_2014 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec19;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2021.xy, x_2021.z);
        u_xlat73 = x_2023;
        let x_2025 : f32 = u_xlat20.z;
        let x_2026 : f32 = u_xlat73;
        let x_2028 : f32 = u_xlat72;
        u_xlat72 = ((x_2025 * x_2026) + x_2028);
        let x_2031 : vec4<f32> = u_xlat16;
        let x_2032 : vec2<f32> = vec2<f32>(x_2031.z, x_2031.w);
        let x_2034 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec20;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2041.xy, x_2041.z);
        u_xlat73 = x_2043;
        let x_2045 : f32 = u_xlat20.w;
        let x_2046 : f32 = u_xlat73;
        let x_2048 : f32 = u_xlat72;
        u_xlat72 = ((x_2045 * x_2046) + x_2048);
        let x_2051 : vec4<f32> = u_xlat17;
        let x_2052 : vec2<f32> = vec2<f32>(x_2051.x, x_2051.y);
        let x_2054 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
        let x_2061 : vec3<f32> = txVec21;
        let x_2063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2061.xy, x_2061.z);
        u_xlat73 = x_2063;
        let x_2065 : f32 = u_xlat21.x;
        let x_2066 : f32 = u_xlat73;
        let x_2068 : f32 = u_xlat72;
        u_xlat72 = ((x_2065 * x_2066) + x_2068);
        let x_2071 : vec4<f32> = u_xlat17;
        let x_2072 : vec2<f32> = vec2<f32>(x_2071.z, x_2071.w);
        let x_2074 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
        let x_2081 : vec3<f32> = txVec22;
        let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2081.xy, x_2081.z);
        u_xlat73 = x_2083;
        let x_2085 : f32 = u_xlat21.y;
        let x_2086 : f32 = u_xlat73;
        let x_2088 : f32 = u_xlat72;
        u_xlat72 = ((x_2085 * x_2086) + x_2088);
        let x_2091 : vec3<f32> = u_xlat31;
        let x_2092 : vec2<f32> = vec2<f32>(x_2091.x, x_2091.y);
        let x_2094 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2101 : vec3<f32> = txVec23;
        let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2101.xy, x_2101.z);
        u_xlat73 = x_2103;
        let x_2105 : f32 = u_xlat21.z;
        let x_2106 : f32 = u_xlat73;
        let x_2108 : f32 = u_xlat72;
        u_xlat72 = ((x_2105 * x_2106) + x_2108);
        let x_2111 : vec2<f32> = u_xlat18;
        let x_2113 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec24;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2120.xy, x_2120.z);
        u_xlat73 = x_2122;
        let x_2124 : f32 = u_xlat21.w;
        let x_2125 : f32 = u_xlat73;
        let x_2127 : f32 = u_xlat72;
        u_xlat72 = ((x_2124 * x_2125) + x_2127);
        let x_2130 : vec4<f32> = u_xlat12;
        let x_2131 : vec2<f32> = vec2<f32>(x_2130.x, x_2130.y);
        let x_2133 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2131.x, x_2131.y, x_2133);
        let x_2140 : vec3<f32> = txVec25;
        let x_2142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2140.xy, x_2140.z);
        u_xlat73 = x_2142;
        let x_2144 : f32 = u_xlat8.x;
        let x_2145 : f32 = u_xlat73;
        let x_2147 : f32 = u_xlat72;
        u_xlat72 = ((x_2144 * x_2145) + x_2147);
        let x_2150 : vec4<f32> = u_xlat12;
        let x_2151 : vec2<f32> = vec2<f32>(x_2150.z, x_2150.w);
        let x_2153 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
        let x_2160 : vec3<f32> = txVec26;
        let x_2162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2160.xy, x_2160.z);
        u_xlat73 = x_2162;
        let x_2164 : f32 = u_xlat8.y;
        let x_2165 : f32 = u_xlat73;
        let x_2167 : f32 = u_xlat72;
        u_xlat72 = ((x_2164 * x_2165) + x_2167);
        let x_2170 : vec2<f32> = u_xlat55;
        let x_2172 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec27;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2179.xy, x_2179.z);
        u_xlat73 = x_2181;
        let x_2183 : f32 = u_xlat8.z;
        let x_2184 : f32 = u_xlat73;
        let x_2186 : f32 = u_xlat72;
        u_xlat72 = ((x_2183 * x_2184) + x_2186);
        let x_2189 : vec3<f32> = u_xlat28;
        let x_2190 : vec2<f32> = vec2<f32>(x_2189.x, x_2189.y);
        let x_2192 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2190.x, x_2190.y, x_2192);
        let x_2199 : vec3<f32> = txVec28;
        let x_2201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2199.xy, x_2199.z);
        u_xlat28.x = x_2201;
        let x_2204 : f32 = u_xlat8.w;
        let x_2206 : f32 = u_xlat28.x;
        let x_2208 : f32 = u_xlat72;
        u_xlat71 = ((x_2204 * x_2206) + x_2208);
      }
    }
  } else {
    let x_2212 : vec4<f32> = u_xlat3;
    let x_2213 : vec2<f32> = vec2<f32>(x_2212.x, x_2212.y);
    let x_2215 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2213.x, x_2213.y, x_2215);
    let x_2222 : vec3<f32> = txVec29;
    let x_2224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2222.xy, x_2222.z);
    u_xlat71 = x_2224;
  }
  let x_2226 : f32 = x_588.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2226) + 1.0f);
  let x_2230 : f32 = u_xlat71;
  let x_2232 : f32 = x_588.x_MainLightShadowParams.x;
  let x_2235 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2230 * x_2232) + x_2235);
  let x_2240 : f32 = u_xlat3.z;
  u_xlatb25.x = (0.0f >= x_2240);
  let x_2245 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2245 >= 1.0f);
  let x_2247 : bool = u_xlatb47;
  let x_2249 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2247 | x_2249);
  let x_2253 : bool = u_xlatb25.x;
  if (x_2253) {
    x_2254 = 1.0f;
  } else {
    let x_2259 : f32 = u_xlat3.x;
    x_2254 = x_2259;
  }
  let x_2260 : f32 = x_2254;
  u_xlat3.x = x_2260;
  let x_2262 : vec3<f32> = vs_TEXCOORD7;
  let x_2264 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2262 + -(x_2264));
  let x_2268 : vec3<f32> = u_xlat28;
  let x_2269 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2268, x_2269);
  let x_2273 : f32 = u_xlat25.x;
  let x_2275 : f32 = x_588.x_MainLightShadowParams.z;
  let x_2278 : f32 = x_588.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2273 * x_2275) + x_2278);
  let x_2282 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2282, 0.0f, 1.0f);
  let x_2287 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2287) + 1.0f);
  let x_2291 : f32 = u_xlat25.x;
  let x_2292 : f32 = u_xlat47;
  let x_2295 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2291 * x_2292) + x_2295);
  let x_2304 : f32 = x_2302.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2304 == -1.0f));
  let x_2308 : bool = u_xlatb25.x;
  if (x_2308) {
    let x_2311 : vec3<f32> = vs_TEXCOORD7;
    let x_2314 : vec4<f32> = x_2302.x_MainLightWorldToLight[1i];
    u_xlat25 = (vec2<f32>(x_2311.y, x_2311.y) * vec2<f32>(x_2314.x, x_2314.y));
    let x_2318 : vec4<f32> = x_2302.x_MainLightWorldToLight[0i];
    let x_2320 : vec3<f32> = vs_TEXCOORD7;
    let x_2323 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_2318.x, x_2318.y) * vec2<f32>(x_2320.x, x_2320.x)) + x_2323);
    let x_2326 : vec4<f32> = x_2302.x_MainLightWorldToLight[2i];
    let x_2328 : vec3<f32> = vs_TEXCOORD7;
    let x_2331 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_2326.x, x_2326.y) * vec2<f32>(x_2328.z, x_2328.z)) + x_2331);
    let x_2333 : vec2<f32> = u_xlat25;
    let x_2335 : vec4<f32> = x_2302.x_MainLightWorldToLight[3i];
    u_xlat25 = (x_2333 + vec2<f32>(x_2335.x, x_2335.y));
    let x_2338 : vec2<f32> = u_xlat25;
    u_xlat25 = ((x_2338 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2346 : vec2<f32> = u_xlat25;
    let x_2348 : f32 = x_128.x_GlobalMipBias.x;
    let x_2349 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2346, x_2348);
    u_xlat8 = x_2349;
    let x_2351 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2353 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2355 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2357 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2358 : vec4<f32> = vec4<f32>(x_2351, x_2353, x_2355, x_2357);
    let x_2365 : vec4<bool> = (vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2358.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2365.x, x_2365.y);
    let x_2368 : bool = u_xlatb25.y;
    if (x_2368) {
      let x_2373 : f32 = u_xlat8.w;
      x_2369 = x_2373;
    } else {
      let x_2376 : f32 = u_xlat8.x;
      x_2369 = x_2376;
    }
    let x_2377 : f32 = x_2369;
    u_xlat47 = x_2377;
    let x_2379 : bool = u_xlatb25.x;
    if (x_2379) {
      let x_2383 : vec4<f32> = u_xlat8;
      x_2380 = vec3<f32>(x_2383.x, x_2383.y, x_2383.z);
    } else {
      let x_2386 : f32 = u_xlat47;
      x_2380 = vec3<f32>(x_2386, x_2386, x_2386);
    }
    let x_2388 : vec3<f32> = x_2380;
    u_xlat28 = x_2388;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_2393 : vec3<f32> = u_xlat28;
  let x_2395 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat28 = (x_2393 * vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = u_xlat6;
  let x_2400 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2398.x, x_2398.x, x_2398.x) * x_2400);
  let x_2402 : vec4<f32> = u_xlat1;
  let x_2405 : vec4<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2402.x, x_2402.y, x_2402.z)), vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
  let x_2410 : f32 = u_xlat25.x;
  let x_2412 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2410 + x_2412);
  let x_2415 : vec4<f32> = u_xlat2;
  let x_2417 : vec2<f32> = u_xlat25;
  let x_2421 : vec4<f32> = u_xlat1;
  let x_2424 : vec3<f32> = ((vec3<f32>(x_2415.x, x_2415.y, x_2415.z) * -(vec3<f32>(x_2417.x, x_2417.x, x_2417.x))) + -(vec3<f32>(x_2421.x, x_2421.y, x_2421.z)));
  let x_2425 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
  let x_2427 : vec4<f32> = u_xlat2;
  let x_2429 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(vec3<f32>(x_2427.x, x_2427.y, x_2427.z), vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
  let x_2434 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2434, 0.0f, 1.0f);
  let x_2438 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2438) + 1.0f);
  let x_2443 : f32 = u_xlat25.x;
  let x_2445 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2443 * x_2445);
  let x_2449 : f32 = u_xlat25.x;
  let x_2451 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2449 * x_2451);
  let x_2455 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2455) * 0.699999988f) + 1.700000048f);
  let x_2462 : f32 = u_xlat0.x;
  let x_2463 : f32 = u_xlat47;
  u_xlat0.x = (x_2462 * x_2463);
  let x_2467 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2467 * 6.0f);
  let x_2479 : vec4<f32> = u_xlat8;
  let x_2482 : f32 = u_xlat0.x;
  let x_2483 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2479.x, x_2479.y, x_2479.z), x_2482);
  u_xlat8 = x_2483;
  let x_2485 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2485 + -1.0f);
  let x_2489 : f32 = x_809.unity_SpecCube0_HDR.w;
  let x_2491 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2489 * x_2491) + 1.0f);
  let x_2496 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2496, 0.0f);
  let x_2500 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2500);
  let x_2504 : f32 = u_xlat0.x;
  let x_2506 : f32 = x_809.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2504 * x_2506);
  let x_2510 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2510);
  let x_2514 : f32 = u_xlat0.x;
  let x_2516 : f32 = x_809.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2514 * x_2516);
  let x_2519 : vec4<f32> = u_xlat8;
  let x_2521 : vec3<f32> = u_xlat0;
  let x_2523 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.y, x_2519.z) * vec3<f32>(x_2521.x, x_2521.x, x_2521.x));
  let x_2524 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);
  let x_2526 : f32 = u_xlat68;
  let x_2528 : f32 = u_xlat68;
  let x_2532 : vec2<f32> = ((vec2<f32>(x_2526, x_2526) * vec2<f32>(x_2528, x_2528)) + vec2<f32>(-1.0f, 1.0f));
  let x_2533 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
  let x_2536 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2536);
  let x_2539 : vec4<f32> = u_xlat5;
  let x_2542 : f32 = u_xlat44;
  u_xlat31 = (-(vec3<f32>(x_2539.x, x_2539.y, x_2539.z)) + vec3<f32>(x_2542, x_2542, x_2542));
  let x_2545 : vec2<f32> = u_xlat25;
  let x_2547 : vec3<f32> = u_xlat31;
  let x_2549 : vec4<f32> = u_xlat5;
  u_xlat31 = ((vec3<f32>(x_2545.x, x_2545.x, x_2545.x) * x_2547) + vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
  let x_2552 : vec3<f32> = u_xlat0;
  let x_2554 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2552.x, x_2552.x, x_2552.x) * x_2554);
  let x_2556 : vec4<f32> = u_xlat8;
  let x_2558 : vec3<f32> = u_xlat31;
  let x_2559 : vec3<f32> = (vec3<f32>(x_2556.x, x_2556.y, x_2556.z) * x_2558);
  let x_2560 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
  let x_2562 : vec4<f32> = u_xlat4;
  let x_2564 : vec4<f32> = u_xlat7;
  let x_2567 : vec4<f32> = u_xlat8;
  let x_2569 : vec3<f32> = ((vec3<f32>(x_2562.x, x_2562.y, x_2562.z) * vec3<f32>(x_2564.x, x_2564.y, x_2564.z)) + vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2573 : f32 = u_xlat3.x;
  let x_2575 : f32 = x_809.unity_LightData.z;
  u_xlat0.x = (x_2573 * x_2575);
  let x_2578 : vec4<f32> = u_xlat2;
  let x_2581 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2584, 0.0f, 1.0f);
  let x_2586 : f32 = u_xlat44;
  let x_2588 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2586 * x_2588);
  let x_2591 : vec3<f32> = u_xlat0;
  let x_2593 : vec3<f32> = u_xlat28;
  let x_2594 : vec3<f32> = (vec3<f32>(x_2591.x, x_2591.x, x_2591.x) * x_2593);
  let x_2595 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
  let x_2597 : vec4<f32> = u_xlat1;
  let x_2600 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2597.x, x_2597.y, x_2597.z) + vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
  let x_2603 : vec3<f32> = u_xlat28;
  let x_2604 : vec3<f32> = u_xlat28;
  u_xlat0.x = dot(x_2603, x_2604);
  let x_2608 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2608, 1.17549435e-37f);
  let x_2613 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2613);
  let x_2616 : vec3<f32> = u_xlat0;
  let x_2618 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2616.x, x_2616.x, x_2616.x) * x_2618);
  let x_2620 : vec4<f32> = u_xlat2;
  let x_2622 : vec3<f32> = u_xlat28;
  u_xlat0.x = dot(vec3<f32>(x_2620.x, x_2620.y, x_2620.z), x_2622);
  let x_2626 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2626, 0.0f, 1.0f);
  let x_2630 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2632 : vec3<f32> = u_xlat28;
  u_xlat0.z = dot(vec3<f32>(x_2630.x, x_2630.y, x_2630.z), x_2632);
  let x_2636 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2636, 0.0f, 1.0f);
  let x_2639 : vec3<f32> = u_xlat0;
  let x_2641 : vec3<f32> = u_xlat0;
  let x_2643 : vec2<f32> = (vec2<f32>(x_2639.x, x_2639.z) * vec2<f32>(x_2641.x, x_2641.z));
  let x_2644 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2643.x, x_2644.y, x_2643.y);
  let x_2647 : f32 = u_xlat0.x;
  let x_2649 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2647 * x_2649) + 1.000010014f);
  let x_2655 : f32 = u_xlat0.x;
  let x_2657 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2655 * x_2657);
  let x_2661 : f32 = u_xlat0.z;
  u_xlat44 = max(x_2661, 0.100000001f);
  let x_2664 : f32 = u_xlat44;
  let x_2666 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2664 * x_2666);
  let x_2669 : f32 = u_xlat69;
  let x_2671 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2669 * x_2671);
  let x_2674 : f32 = u_xlat70;
  let x_2676 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2674 / x_2676);
  let x_2679 : vec4<f32> = u_xlat5;
  let x_2681 : vec3<f32> = u_xlat0;
  let x_2684 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2679.x, x_2679.y, x_2679.z) * vec3<f32>(x_2681.x, x_2681.x, x_2681.x)) + vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
  let x_2687 : vec4<f32> = u_xlat3;
  let x_2689 : vec3<f32> = u_xlat28;
  let x_2690 : vec3<f32> = (vec3<f32>(x_2687.x, x_2687.y, x_2687.z) * x_2689);
  let x_2691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2690.x, x_2690.y, x_2690.z, x_2691.w);
  let x_2694 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2696 : f32 = x_809.unity_LightData.y;
  u_xlat0.x = min(x_2694, x_2696);
  let x_2701 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2701));
  let x_2705 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2707 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2709 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2711 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2712 : vec4<f32> = vec4<f32>(x_2705, x_2707, x_2709, x_2711);
  let x_2718 : vec4<bool> = (vec4<f32>(x_2712.x, x_2712.y, x_2712.z, x_2712.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_2718.x, x_2718.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2729 : u32 = u_xlatu_loop_1;
    let x_2730 : u32 = u_xlatu0;
    if ((x_2729 < x_2730)) {
    } else {
      break;
    }
    let x_2733 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2733 >> 2u);
    let x_2736 : u32 = u_xlatu_loop_1;
    u_xlati71 = bitcast<i32>((x_2736 & 3u));
    let x_2739 : u32 = u_xlatu68;
    let x_2742 : vec4<f32> = x_809.unity_LightIndices[bitcast<i32>(x_2739)];
    let x_2752 : i32 = u_xlati71;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2757 : vec4<u32> = indexable[x_2752];
    u_xlat68 = dot(x_2742, bitcast<vec4<f32>>(x_2757));
    let x_2760 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2760));
    let x_2763 : vec3<f32> = vs_TEXCOORD7;
    let x_2775 : u32 = u_xlatu68;
    let x_2778 : vec4<f32> = x_2774.x_AdditionalLightsPosition[bitcast<i32>(x_2775)];
    let x_2781 : u32 = u_xlatu68;
    let x_2784 : vec4<f32> = x_2774.x_AdditionalLightsPosition[bitcast<i32>(x_2781)];
    u_xlat31 = ((-(x_2763) * vec3<f32>(x_2778.w, x_2778.w, x_2778.w)) + vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
    let x_2787 : vec3<f32> = u_xlat31;
    let x_2788 : vec3<f32> = u_xlat31;
    u_xlat71 = dot(x_2787, x_2788);
    let x_2790 : f32 = u_xlat71;
    u_xlat71 = max(x_2790, 6.10351562e-05f);
    let x_2792 : f32 = u_xlat71;
    u_xlat72 = inverseSqrt(x_2792);
    let x_2794 : f32 = u_xlat72;
    let x_2796 : vec3<f32> = u_xlat31;
    let x_2797 : vec3<f32> = (vec3<f32>(x_2794, x_2794, x_2794) * x_2796);
    let x_2798 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
    let x_2800 : f32 = u_xlat71;
    u_xlat73 = (1.0f / x_2800);
    let x_2802 : f32 = u_xlat71;
    let x_2803 : u32 = u_xlatu68;
    let x_2806 : f32 = x_2774.x_AdditionalLightsAttenuation[bitcast<i32>(x_2803)].x;
    u_xlat71 = (x_2802 * x_2806);
    let x_2808 : f32 = u_xlat71;
    let x_2810 : f32 = u_xlat71;
    u_xlat71 = ((-(x_2808) * x_2810) + 1.0f);
    let x_2813 : f32 = u_xlat71;
    u_xlat71 = max(x_2813, 0.0f);
    let x_2815 : f32 = u_xlat71;
    let x_2816 : f32 = u_xlat71;
    u_xlat71 = (x_2815 * x_2816);
    let x_2818 : f32 = u_xlat71;
    let x_2819 : f32 = u_xlat73;
    u_xlat71 = (x_2818 * x_2819);
    let x_2821 : u32 = u_xlatu68;
    let x_2824 : vec4<f32> = x_2774.x_AdditionalLightsSpotDir[bitcast<i32>(x_2821)];
    let x_2826 : vec4<f32> = u_xlat10;
    u_xlat73 = dot(vec3<f32>(x_2824.x, x_2824.y, x_2824.z), vec3<f32>(x_2826.x, x_2826.y, x_2826.z));
    let x_2829 : f32 = u_xlat73;
    let x_2830 : u32 = u_xlatu68;
    let x_2833 : f32 = x_2774.x_AdditionalLightsAttenuation[bitcast<i32>(x_2830)].z;
    let x_2835 : u32 = u_xlatu68;
    let x_2838 : f32 = x_2774.x_AdditionalLightsAttenuation[bitcast<i32>(x_2835)].w;
    u_xlat73 = ((x_2829 * x_2833) + x_2838);
    let x_2840 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2840, 0.0f, 1.0f);
    let x_2842 : f32 = u_xlat73;
    let x_2843 : f32 = u_xlat73;
    u_xlat73 = (x_2842 * x_2843);
    let x_2845 : f32 = u_xlat71;
    let x_2846 : f32 = u_xlat73;
    u_xlat71 = (x_2845 * x_2846);
    let x_2849 : u32 = u_xlatu68;
    u_xlatu73 = (x_2849 >> 5u);
    let x_2852 : u32 = u_xlatu68;
    u_xlati74 = (1i << bitcast<u32>((bitcast<i32>(x_2852) & 31i)));
    let x_2857 : i32 = u_xlati74;
    let x_2859 : u32 = u_xlatu73;
    let x_2862 : f32 = x_2302.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2859)].el;
    u_xlati73 = bitcast<i32>((bitcast<u32>(x_2857) & bitcast<u32>(x_2862)));
    let x_2866 : i32 = u_xlati73;
    if ((x_2866 != 0i)) {
      let x_2876 : u32 = u_xlatu68;
      let x_2879 : f32 = x_2875.x_AdditionalLightsLightTypes[bitcast<i32>(x_2876)].el;
      u_xlati73 = i32(x_2879);
      let x_2881 : i32 = u_xlati73;
      u_xlati74 = select(1i, 0i, (x_2881 != 0i));
      let x_2885 : u32 = u_xlatu68;
      u_xlati76 = (bitcast<i32>(x_2885) << bitcast<u32>(2i));
      let x_2888 : i32 = u_xlati74;
      if ((x_2888 != 0i)) {
        let x_2892 : vec3<f32> = vs_TEXCOORD7;
        let x_2894 : i32 = u_xlati76;
        let x_2897 : i32 = u_xlati76;
        let x_2901 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_2894 + 1i) / 4i)][((x_2897 + 1i) % 4i)];
        let x_2903 : vec3<f32> = (vec3<f32>(x_2892.y, x_2892.y, x_2892.y) * vec3<f32>(x_2901.x, x_2901.y, x_2901.w));
        let x_2904 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2903.x, x_2903.y, x_2903.z, x_2904.w);
        let x_2906 : i32 = u_xlati76;
        let x_2908 : i32 = u_xlati76;
        let x_2911 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[(x_2906 / 4i)][(x_2908 % 4i)];
        let x_2913 : vec3<f32> = vs_TEXCOORD7;
        let x_2916 : vec4<f32> = u_xlat11;
        let x_2918 : vec3<f32> = ((vec3<f32>(x_2911.x, x_2911.y, x_2911.w) * vec3<f32>(x_2913.x, x_2913.x, x_2913.x)) + vec3<f32>(x_2916.x, x_2916.y, x_2916.z));
        let x_2919 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2919.w);
        let x_2921 : i32 = u_xlati76;
        let x_2924 : i32 = u_xlati76;
        let x_2928 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_2921 + 2i) / 4i)][((x_2924 + 2i) % 4i)];
        let x_2930 : vec3<f32> = vs_TEXCOORD7;
        let x_2933 : vec4<f32> = u_xlat11;
        let x_2935 : vec3<f32> = ((vec3<f32>(x_2928.x, x_2928.y, x_2928.w) * vec3<f32>(x_2930.z, x_2930.z, x_2930.z)) + vec3<f32>(x_2933.x, x_2933.y, x_2933.z));
        let x_2936 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2935.x, x_2935.y, x_2935.z, x_2936.w);
        let x_2938 : vec4<f32> = u_xlat11;
        let x_2940 : i32 = u_xlati76;
        let x_2943 : i32 = u_xlati76;
        let x_2947 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_2940 + 3i) / 4i)][((x_2943 + 3i) % 4i)];
        let x_2949 : vec3<f32> = (vec3<f32>(x_2938.x, x_2938.y, x_2938.z) + vec3<f32>(x_2947.x, x_2947.y, x_2947.w));
        let x_2950 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2949.x, x_2949.y, x_2949.z, x_2950.w);
        let x_2952 : vec4<f32> = u_xlat11;
        let x_2954 : vec4<f32> = u_xlat11;
        let x_2956 : vec2<f32> = (vec2<f32>(x_2952.x, x_2952.y) / vec2<f32>(x_2954.z, x_2954.z));
        let x_2957 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
        let x_2959 : vec4<f32> = u_xlat11;
        let x_2962 : vec2<f32> = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2963 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2962.x, x_2962.y, x_2963.z, x_2963.w);
        let x_2965 : vec4<f32> = u_xlat11;
        let x_2969 : vec2<f32> = clamp(vec2<f32>(x_2965.x, x_2965.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2970 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2969.x, x_2969.y, x_2970.z, x_2970.w);
        let x_2972 : u32 = u_xlatu68;
        let x_2975 : vec4<f32> = x_2875.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2972)];
        let x_2977 : vec4<f32> = u_xlat11;
        let x_2980 : u32 = u_xlatu68;
        let x_2983 : vec4<f32> = x_2875.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2980)];
        let x_2985 : vec2<f32> = ((vec2<f32>(x_2975.x, x_2975.y) * vec2<f32>(x_2977.x, x_2977.y)) + vec2<f32>(x_2983.z, x_2983.w));
        let x_2986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
      } else {
        let x_2990 : i32 = u_xlati73;
        u_xlatb73 = (x_2990 == 1i);
        let x_2992 : bool = u_xlatb73;
        u_xlati73 = select(0i, 1i, x_2992);
        let x_2994 : i32 = u_xlati73;
        if ((x_2994 != 0i)) {
          let x_2998 : vec3<f32> = vs_TEXCOORD7;
          let x_3000 : i32 = u_xlati76;
          let x_3003 : i32 = u_xlati76;
          let x_3007 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_3000 + 1i) / 4i)][((x_3003 + 1i) % 4i)];
          u_xlat55 = (vec2<f32>(x_2998.y, x_2998.y) * vec2<f32>(x_3007.x, x_3007.y));
          let x_3010 : i32 = u_xlati76;
          let x_3012 : i32 = u_xlati76;
          let x_3015 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[(x_3010 / 4i)][(x_3012 % 4i)];
          let x_3017 : vec3<f32> = vs_TEXCOORD7;
          let x_3020 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3015.x, x_3015.y) * vec2<f32>(x_3017.x, x_3017.x)) + x_3020);
          let x_3022 : i32 = u_xlati76;
          let x_3025 : i32 = u_xlati76;
          let x_3029 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_3022 + 2i) / 4i)][((x_3025 + 2i) % 4i)];
          let x_3031 : vec3<f32> = vs_TEXCOORD7;
          let x_3034 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3029.x, x_3029.y) * vec2<f32>(x_3031.z, x_3031.z)) + x_3034);
          let x_3036 : vec2<f32> = u_xlat55;
          let x_3037 : i32 = u_xlati76;
          let x_3040 : i32 = u_xlati76;
          let x_3044 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_3037 + 3i) / 4i)][((x_3040 + 3i) % 4i)];
          u_xlat55 = (x_3036 + vec2<f32>(x_3044.x, x_3044.y));
          let x_3047 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3047 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3050 : vec2<f32> = u_xlat55;
          u_xlat55 = fract(x_3050);
          let x_3052 : u32 = u_xlatu68;
          let x_3055 : vec4<f32> = x_2875.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3052)];
          let x_3057 : vec2<f32> = u_xlat55;
          let x_3059 : u32 = u_xlatu68;
          let x_3062 : vec4<f32> = x_2875.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3059)];
          let x_3064 : vec2<f32> = ((vec2<f32>(x_3055.x, x_3055.y) * x_3057) + vec2<f32>(x_3062.z, x_3062.w));
          let x_3065 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3064.x, x_3064.y, x_3065.z, x_3065.w);
        } else {
          let x_3068 : vec3<f32> = vs_TEXCOORD7;
          let x_3070 : i32 = u_xlati76;
          let x_3073 : i32 = u_xlati76;
          let x_3077 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_3070 + 1i) / 4i)][((x_3073 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3068.y, x_3068.y, x_3068.y, x_3068.y) * x_3077);
          let x_3079 : i32 = u_xlati76;
          let x_3081 : i32 = u_xlati76;
          let x_3084 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[(x_3079 / 4i)][(x_3081 % 4i)];
          let x_3085 : vec3<f32> = vs_TEXCOORD7;
          let x_3088 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3084 * vec4<f32>(x_3085.x, x_3085.x, x_3085.x, x_3085.x)) + x_3088);
          let x_3090 : i32 = u_xlati76;
          let x_3093 : i32 = u_xlati76;
          let x_3097 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_3090 + 2i) / 4i)][((x_3093 + 2i) % 4i)];
          let x_3098 : vec3<f32> = vs_TEXCOORD7;
          let x_3101 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3097 * vec4<f32>(x_3098.z, x_3098.z, x_3098.z, x_3098.z)) + x_3101);
          let x_3103 : vec4<f32> = u_xlat12;
          let x_3104 : i32 = u_xlati76;
          let x_3107 : i32 = u_xlati76;
          let x_3111 : vec4<f32> = x_2875.x_AdditionalLightsWorldToLights[((x_3104 + 3i) / 4i)][((x_3107 + 3i) % 4i)];
          u_xlat12 = (x_3103 + x_3111);
          let x_3113 : vec4<f32> = u_xlat12;
          let x_3115 : vec4<f32> = u_xlat12;
          let x_3117 : vec3<f32> = (vec3<f32>(x_3113.x, x_3113.y, x_3113.z) / vec3<f32>(x_3115.w, x_3115.w, x_3115.w));
          let x_3118 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3117.x, x_3117.y, x_3117.z, x_3118.w);
          let x_3120 : vec4<f32> = u_xlat12;
          let x_3122 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(vec3<f32>(x_3120.x, x_3120.y, x_3120.z), vec3<f32>(x_3122.x, x_3122.y, x_3122.z));
          let x_3125 : f32 = u_xlat73;
          u_xlat73 = inverseSqrt(x_3125);
          let x_3127 : f32 = u_xlat73;
          let x_3129 : vec4<f32> = u_xlat12;
          let x_3131 : vec3<f32> = (vec3<f32>(x_3127, x_3127, x_3127) * vec3<f32>(x_3129.x, x_3129.y, x_3129.z));
          let x_3132 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3131.x, x_3131.y, x_3131.z, x_3132.w);
          let x_3134 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(abs(vec3<f32>(x_3134.x, x_3134.y, x_3134.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3139 : f32 = u_xlat73;
          u_xlat73 = max(x_3139, 0.000001f);
          let x_3142 : f32 = u_xlat73;
          u_xlat73 = (1.0f / x_3142);
          let x_3144 : f32 = u_xlat73;
          let x_3146 : vec4<f32> = u_xlat12;
          let x_3148 : vec3<f32> = (vec3<f32>(x_3144, x_3144, x_3144) * vec3<f32>(x_3146.z, x_3146.x, x_3146.y));
          let x_3149 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3148.x, x_3148.y, x_3148.z, x_3149.w);
          let x_3152 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3152);
          let x_3156 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3156, 0.0f, 1.0f);
          let x_3160 : vec4<f32> = u_xlat13;
          let x_3163 : vec4<bool> = (vec4<f32>(x_3160.y, x_3160.z, x_3160.y, x_3160.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3163.x, x_3163.y);
          let x_3166 : bool = u_xlatb55.x;
          if (x_3166) {
            let x_3171 : f32 = u_xlat13.x;
            x_3167 = x_3171;
          } else {
            let x_3174 : f32 = u_xlat13.x;
            x_3167 = -(x_3174);
          }
          let x_3176 : f32 = x_3167;
          u_xlat55.x = x_3176;
          let x_3179 : bool = u_xlatb55.y;
          if (x_3179) {
            let x_3184 : f32 = u_xlat13.x;
            x_3180 = x_3184;
          } else {
            let x_3187 : f32 = u_xlat13.x;
            x_3180 = -(x_3187);
          }
          let x_3189 : f32 = x_3180;
          u_xlat55.y = x_3189;
          let x_3191 : vec4<f32> = u_xlat12;
          let x_3193 : f32 = u_xlat73;
          let x_3196 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(x_3193, x_3193)) + x_3196);
          let x_3198 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3198 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3201 : vec2<f32> = u_xlat55;
          u_xlat55 = clamp(x_3201, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3205 : u32 = u_xlatu68;
          let x_3208 : vec4<f32> = x_2875.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3205)];
          let x_3210 : vec2<f32> = u_xlat55;
          let x_3212 : u32 = u_xlatu68;
          let x_3215 : vec4<f32> = x_2875.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3212)];
          let x_3217 : vec2<f32> = ((vec2<f32>(x_3208.x, x_3208.y) * x_3210) + vec2<f32>(x_3215.z, x_3215.w));
          let x_3218 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3217.x, x_3217.y, x_3218.z, x_3218.w);
        }
      }
      let x_3225 : vec4<f32> = u_xlat11;
      let x_3228 : f32 = x_128.x_GlobalMipBias.x;
      let x_3229 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3225.x, x_3225.y), x_3228);
      u_xlat11 = x_3229;
      let x_3231 : bool = u_xlatb28.y;
      if (x_3231) {
        let x_3236 : f32 = u_xlat11.w;
        x_3232 = x_3236;
      } else {
        let x_3239 : f32 = u_xlat11.x;
        x_3232 = x_3239;
      }
      let x_3240 : f32 = x_3232;
      u_xlat73 = x_3240;
      let x_3242 : bool = u_xlatb28.x;
      if (x_3242) {
        let x_3246 : vec4<f32> = u_xlat11;
        x_3243 = vec3<f32>(x_3246.x, x_3246.y, x_3246.z);
      } else {
        let x_3249 : f32 = u_xlat73;
        x_3243 = vec3<f32>(x_3249, x_3249, x_3249);
      }
      let x_3251 : vec3<f32> = x_3243;
      let x_3252 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3251.x, x_3251.y, x_3251.z, x_3252.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3258 : vec4<f32> = u_xlat11;
    let x_3260 : u32 = u_xlatu68;
    let x_3263 : vec4<f32> = x_2774.x_AdditionalLightsColor[bitcast<i32>(x_3260)];
    let x_3265 : vec3<f32> = (vec3<f32>(x_3258.x, x_3258.y, x_3258.z) * vec3<f32>(x_3263.x, x_3263.y, x_3263.z));
    let x_3266 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
    let x_3268 : vec4<f32> = u_xlat6;
    let x_3270 : vec4<f32> = u_xlat11;
    let x_3272 : vec3<f32> = (vec3<f32>(x_3268.x, x_3268.x, x_3268.x) * vec3<f32>(x_3270.x, x_3270.y, x_3270.z));
    let x_3273 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3272.x, x_3272.y, x_3272.z, x_3273.w);
    let x_3275 : vec4<f32> = u_xlat2;
    let x_3277 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3275.x, x_3275.y, x_3275.z), vec3<f32>(x_3277.x, x_3277.y, x_3277.z));
    let x_3280 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3280, 0.0f, 1.0f);
    let x_3282 : f32 = u_xlat68;
    let x_3283 : f32 = u_xlat71;
    u_xlat68 = (x_3282 * x_3283);
    let x_3285 : f32 = u_xlat68;
    let x_3287 : vec4<f32> = u_xlat11;
    let x_3289 : vec3<f32> = (vec3<f32>(x_3285, x_3285, x_3285) * vec3<f32>(x_3287.x, x_3287.y, x_3287.z));
    let x_3290 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);
    let x_3292 : vec3<f32> = u_xlat31;
    let x_3293 : f32 = u_xlat72;
    let x_3296 : vec4<f32> = u_xlat1;
    u_xlat31 = ((x_3292 * vec3<f32>(x_3293, x_3293, x_3293)) + vec3<f32>(x_3296.x, x_3296.y, x_3296.z));
    let x_3299 : vec3<f32> = u_xlat31;
    let x_3300 : vec3<f32> = u_xlat31;
    u_xlat68 = dot(x_3299, x_3300);
    let x_3302 : f32 = u_xlat68;
    u_xlat68 = max(x_3302, 1.17549435e-37f);
    let x_3304 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3304);
    let x_3306 : f32 = u_xlat68;
    let x_3308 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_3306, x_3306, x_3306) * x_3308);
    let x_3310 : vec4<f32> = u_xlat2;
    let x_3312 : vec3<f32> = u_xlat31;
    u_xlat68 = dot(vec3<f32>(x_3310.x, x_3310.y, x_3310.z), x_3312);
    let x_3314 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3314, 0.0f, 1.0f);
    let x_3316 : vec4<f32> = u_xlat10;
    let x_3318 : vec3<f32> = u_xlat31;
    u_xlat71 = dot(vec3<f32>(x_3316.x, x_3316.y, x_3316.z), x_3318);
    let x_3320 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3320, 0.0f, 1.0f);
    let x_3322 : f32 = u_xlat68;
    let x_3323 : f32 = u_xlat68;
    u_xlat68 = (x_3322 * x_3323);
    let x_3325 : f32 = u_xlat68;
    let x_3327 : f32 = u_xlat9.x;
    u_xlat68 = ((x_3325 * x_3327) + 1.000010014f);
    let x_3330 : f32 = u_xlat71;
    let x_3331 : f32 = u_xlat71;
    u_xlat71 = (x_3330 * x_3331);
    let x_3333 : f32 = u_xlat68;
    let x_3334 : f32 = u_xlat68;
    u_xlat68 = (x_3333 * x_3334);
    let x_3336 : f32 = u_xlat71;
    u_xlat71 = max(x_3336, 0.100000001f);
    let x_3338 : f32 = u_xlat68;
    let x_3339 : f32 = u_xlat71;
    u_xlat68 = (x_3338 * x_3339);
    let x_3341 : f32 = u_xlat69;
    let x_3342 : f32 = u_xlat68;
    u_xlat68 = (x_3341 * x_3342);
    let x_3344 : f32 = u_xlat70;
    let x_3345 : f32 = u_xlat68;
    u_xlat68 = (x_3344 / x_3345);
    let x_3347 : vec4<f32> = u_xlat5;
    let x_3349 : f32 = u_xlat68;
    let x_3352 : vec4<f32> = u_xlat7;
    u_xlat31 = ((vec3<f32>(x_3347.x, x_3347.y, x_3347.z) * vec3<f32>(x_3349, x_3349, x_3349)) + vec3<f32>(x_3352.x, x_3352.y, x_3352.z));
    let x_3355 : vec3<f32> = u_xlat31;
    let x_3356 : vec4<f32> = u_xlat11;
    let x_3359 : vec4<f32> = u_xlat8;
    let x_3361 : vec3<f32> = ((x_3355 * vec3<f32>(x_3356.x, x_3356.y, x_3356.z)) + vec3<f32>(x_3359.x, x_3359.y, x_3359.z));
    let x_3362 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3361.x, x_3361.y, x_3361.z, x_3362.w);

    continuing {
      let x_3364 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3364 + bitcast<u32>(1i));
    }
  }
  let x_3366 : vec4<f32> = u_xlat4;
  let x_3368 : f32 = u_xlat22;
  let x_3371 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_3366.x, x_3366.y, x_3366.z) * vec3<f32>(x_3368, x_3368, x_3368)) + vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
  let x_3374 : vec4<f32> = u_xlat8;
  let x_3376 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3374.x, x_3374.y, x_3374.z) + x_3376);
  let x_3378 : f32 = u_xlat67;
  let x_3379 : f32 = u_xlat67;
  u_xlat1.x = (x_3378 * -(x_3379));
  let x_3384 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3384);
  let x_3387 : vec3<f32> = u_xlat0;
  let x_3388 : f32 = u_xlat66;
  let x_3392 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_3387 * vec3<f32>(x_3388, x_3388, x_3388)) + -(vec3<f32>(x_3392.x, x_3392.y, x_3392.z)));
  let x_3398 : vec4<f32> = u_xlat1;
  let x_3400 : vec3<f32> = u_xlat0;
  let x_3403 : vec4<f32> = x_128.unity_FogColor;
  let x_3405 : vec3<f32> = ((vec3<f32>(x_3398.x, x_3398.x, x_3398.x) * x_3400) + vec3<f32>(x_3403.x, x_3403.y, x_3403.z));
  let x_3406 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3405.x, x_3405.y, x_3405.z, x_3406.w);
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

