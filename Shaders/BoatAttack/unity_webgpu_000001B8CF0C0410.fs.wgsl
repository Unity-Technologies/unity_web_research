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

@group(1) @binding(4) var<uniform> x_600 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_821 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2314 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2786 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2887 : AdditionalLightsCookies;

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
  var u_xlatb68 : bool;
  var u_xlat44 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat23 : vec3<f32>;
  var x_573 : vec3<f32>;
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
  var x_2266 : f32;
  var u_xlat25 : vec2<f32>;
  var u_xlat47 : f32;
  var x_2381 : f32;
  var x_2392 : vec3<f32>;
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
  var x_3179 : f32;
  var x_3192 : f32;
  var x_3244 : f32;
  var x_3255 : vec3<f32>;
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
  let x_293 : f32 = u_xlat67;
  u_xlatb68 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb68;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat67;
  u_xlat67 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat67;
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
  u_xlat44 = dot(x_451, x_452);
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
  u_xlat22 = dot(x_534, x_535);
  let x_539 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_539 == 0.0f);
  let x_544 : vec3<f32> = vs_TEXCOORD7;
  let x_548 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat23 = (-(x_544) + x_548);
  let x_550 : vec3<f32> = u_xlat23;
  let x_551 : vec3<f32> = u_xlat23;
  u_xlat2.x = dot(x_550, x_551);
  let x_555 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_555);
  let x_558 : vec3<f32> = u_xlat23;
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat23 = (x_558 * vec3<f32>(x_559.x, x_559.x, x_559.x));
  let x_563 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_563;
  let x_566 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_566;
  let x_570 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_570;
  let x_572 : bool = u_xlatb1;
  if (x_572) {
    let x_576 : vec3<f32> = u_xlat23;
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
  u_xlat67 = dot(x_584, x_585);
  let x_587 : f32 = u_xlat67;
  u_xlat67 = inverseSqrt(x_587);
  let x_589 : f32 = u_xlat67;
  let x_591 : vec3<f32> = vs_TEXCOORD3;
  let x_592 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres0;
  let x_605 : vec3<f32> = (x_595 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_610 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres1;
  let x_613 : vec3<f32> = (x_608 + -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
  let x_614 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec3<f32> = vs_TEXCOORD7;
  let x_619 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres2;
  let x_622 : vec3<f32> = (x_616 + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_623 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec3<f32> = vs_TEXCOORD7;
  let x_627 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres3;
  let x_630 : vec3<f32> = (x_625 + -(vec3<f32>(x_627.x, x_627.y, x_627.z)));
  let x_631 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat3;
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat4;
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat6;
  let x_647 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec4<f32> = u_xlat7;
  let x_653 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_659 : vec4<f32> = u_xlat3;
  let x_661 : vec4<f32> = x_600.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_659 < x_661);
  let x_664 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_664);
  let x_668 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_668);
  let x_672 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_672);
  let x_676 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_676);
  let x_680 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_680);
  let x_685 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_685);
  let x_689 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_689);
  let x_692 : vec4<f32> = u_xlat3;
  let x_694 : vec4<f32> = u_xlat4;
  let x_696 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) + vec3<f32>(x_694.y, x_694.z, x_694.w));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec4<f32> = u_xlat3;
  let x_702 : vec3<f32> = max(vec3<f32>(x_699.x, x_699.y, x_699.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_703 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_703.x, x_702.x, x_702.y, x_702.z);
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_705, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_710 : f32 = u_xlat67;
  u_xlat67 = (-(x_710) + 4.0f);
  let x_715 : f32 = u_xlat67;
  u_xlatu67 = u32(x_715);
  let x_719 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_719) << bitcast<u32>(2i));
  let x_722 : vec3<f32> = vs_TEXCOORD7;
  let x_724 : i32 = u_xlati67;
  let x_727 : i32 = u_xlati67;
  let x_731 : vec4<f32> = x_600.x_MainLightWorldToShadow[((x_724 + 1i) / 4i)][((x_727 + 1i) % 4i)];
  let x_733 : vec3<f32> = (vec3<f32>(x_722.y, x_722.y, x_722.y) * vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : i32 = u_xlati67;
  let x_738 : i32 = u_xlati67;
  let x_741 : vec4<f32> = x_600.x_MainLightWorldToShadow[(x_736 / 4i)][(x_738 % 4i)];
  let x_743 : vec3<f32> = vs_TEXCOORD7;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.x, x_743.x, x_743.x)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : i32 = u_xlati67;
  let x_754 : i32 = u_xlati67;
  let x_758 : vec4<f32> = x_600.x_MainLightWorldToShadow[((x_751 + 2i) / 4i)][((x_754 + 2i) % 4i)];
  let x_760 : vec3<f32> = vs_TEXCOORD7;
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : vec3<f32> = ((vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(x_760.z, x_760.z, x_760.z)) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat3;
  let x_770 : i32 = u_xlati67;
  let x_773 : i32 = u_xlati67;
  let x_777 : vec4<f32> = x_600.x_MainLightWorldToShadow[((x_770 + 3i) / 4i)][((x_773 + 3i) % 4i)];
  let x_779 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_783 : f32 = vs_TEXCOORD7.y;
  let x_785 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat67 = (x_783 * x_785);
  let x_788 : f32 = x_128.unity_MatrixV[0i].z;
  let x_790 : f32 = vs_TEXCOORD7.x;
  let x_792 : f32 = u_xlat67;
  u_xlat67 = ((x_788 * x_790) + x_792);
  let x_795 : f32 = x_128.unity_MatrixV[2i].z;
  let x_797 : f32 = vs_TEXCOORD7.z;
  let x_799 : f32 = u_xlat67;
  u_xlat67 = ((x_795 * x_797) + x_799);
  let x_801 : f32 = u_xlat67;
  let x_803 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat67 = (x_801 + x_803);
  let x_805 : f32 = u_xlat67;
  let x_808 : f32 = x_128.x_ProjectionParams.y;
  u_xlat67 = (-(x_805) + -(x_808));
  let x_811 : f32 = u_xlat67;
  u_xlat67 = max(x_811, 0.0f);
  let x_813 : f32 = u_xlat67;
  let x_815 : f32 = x_128.unity_FogParams.x;
  u_xlat67 = (x_813 * x_815);
  u_xlat2.w = 1.0f;
  let x_823 : vec4<f32> = x_821.unity_SHAr;
  let x_824 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_823, x_824);
  let x_828 : vec4<f32> = x_821.unity_SHAg;
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_828, x_829);
  let x_833 : vec4<f32> = x_821.unity_SHAb;
  let x_834 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_833, x_834);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_837.y, x_837.z, x_837.z, x_837.x) * vec4<f32>(x_839.x, x_839.y, x_839.z, x_839.z));
  let x_843 : vec4<f32> = x_821.unity_SHBr;
  let x_844 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_843, x_844);
  let x_848 : vec4<f32> = x_821.unity_SHBg;
  let x_849 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_848, x_849);
  let x_853 : vec4<f32> = x_821.unity_SHBb;
  let x_854 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_853, x_854);
  let x_859 : f32 = u_xlat2.y;
  let x_861 : f32 = u_xlat2.y;
  u_xlat68 = (x_859 * x_861);
  let x_864 : f32 = u_xlat2.x;
  let x_866 : f32 = u_xlat2.x;
  let x_868 : f32 = u_xlat68;
  u_xlat68 = ((x_864 * x_866) + -(x_868));
  let x_873 : vec4<f32> = x_821.unity_SHC;
  let x_875 : f32 = u_xlat68;
  let x_878 : vec4<f32> = u_xlat7;
  let x_880 : vec3<f32> = ((vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_875, x_875, x_875)) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec4<f32> = u_xlat6;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat4;
  let x_892 : vec3<f32> = max(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_893 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_897 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
  let x_902 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_898.x, x_898.y));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat6;
  let x_907 : vec4<f32> = hlslcc_FragCoord;
  let x_909 : vec2<f32> = (vec2<f32>(x_905.x, x_905.y) * vec2<f32>(x_907.x, x_907.y));
  let x_910 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_909.x, x_909.y, x_910.z, x_910.w);
  let x_913 : f32 = u_xlat6.y;
  let x_915 : f32 = x_128.x_ScaleBiasRt.x;
  let x_918 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat68 = ((x_913 * x_915) + x_918);
  let x_920 : f32 = u_xlat68;
  u_xlat6.z = (-(x_920) + 1.0f);
  let x_925 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_925) * 0.959999979f) + 0.959999979f);
  let x_931 : f32 = u_xlat68;
  u_xlat69 = (-(x_931) + 1.0f);
  let x_934 : f32 = u_xlat68;
  let x_936 : vec4<f32> = u_xlat5;
  let x_938 : vec3<f32> = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat5;
  let x_945 : vec3<f32> = (vec3<f32>(x_941.x, x_941.y, x_941.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_946 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec3<f32> = u_xlat0;
  let x_950 : vec4<f32> = u_xlat5;
  let x_955 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.x, x_948.x) * vec3<f32>(x_950.x, x_950.y, x_950.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_956 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : f32 = u_xlat44;
  u_xlat0.x = (-(x_958) + 1.0f);
  let x_963 : f32 = u_xlat0.x;
  let x_965 : f32 = u_xlat0.x;
  u_xlat68 = (x_963 * x_965);
  let x_967 : f32 = u_xlat68;
  u_xlat68 = max(x_967, 0.0078125f);
  let x_971 : f32 = u_xlat68;
  let x_972 : f32 = u_xlat68;
  u_xlat70 = (x_971 * x_972);
  let x_974 : f32 = u_xlat44;
  let x_975 : f32 = u_xlat69;
  u_xlat44 = (x_974 + x_975);
  let x_977 : f32 = u_xlat44;
  u_xlat44 = clamp(x_977, 0.0f, 1.0f);
  let x_979 : f32 = u_xlat68;
  u_xlat69 = ((x_979 * 4.0f) + 2.0f);
  let x_988 : vec4<f32> = u_xlat6;
  let x_991 : f32 = x_128.x_GlobalMipBias.x;
  let x_992 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_988.x, x_988.z), x_991);
  u_xlat71 = x_992.x;
  let x_994 : f32 = u_xlat71;
  u_xlat6.x = (x_994 + -1.0f);
  let x_998 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1000 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_998 * x_1000) + 1.0f);
  let x_1004 : f32 = u_xlat22;
  let x_1005 : f32 = u_xlat71;
  u_xlat22 = min(x_1004, x_1005);
  let x_1009 : f32 = x_600.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_1009);
  let x_1011 : bool = u_xlatb71;
  if (x_1011) {
    let x_1015 : f32 = x_600.x_MainLightShadowParams.y;
    u_xlatb71 = (x_1015 == 1.0f);
    let x_1017 : bool = u_xlatb71;
    if (x_1017) {
      let x_1020 : vec4<f32> = u_xlat3;
      let x_1023 : vec4<f32> = x_600.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) + x_1023);
      let x_1026 : vec4<f32> = u_xlat8;
      let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
      let x_1029 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
      let x_1041 : vec3<f32> = txVec0;
      let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
      u_xlat9.x = x_1043;
      let x_1046 : vec4<f32> = u_xlat8;
      let x_1047 : vec2<f32> = vec2<f32>(x_1046.z, x_1046.w);
      let x_1049 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
      let x_1056 : vec3<f32> = txVec1;
      let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
      u_xlat9.y = x_1058;
      let x_1060 : vec4<f32> = u_xlat3;
      let x_1063 : vec4<f32> = x_600.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y) + x_1063);
      let x_1066 : vec4<f32> = u_xlat8;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.x, x_1066.y);
      let x_1069 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec2;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
      u_xlat9.z = x_1078;
      let x_1081 : vec4<f32> = u_xlat8;
      let x_1082 : vec2<f32> = vec2<f32>(x_1081.z, x_1081.w);
      let x_1084 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1082.x, x_1082.y, x_1084);
      let x_1091 : vec3<f32> = txVec3;
      let x_1093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1091.xy, x_1091.z);
      u_xlat9.w = x_1093;
      let x_1095 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1095, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1104 : f32 = x_600.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_1104 == 2.0f);
      let x_1108 : bool = u_xlatb28.x;
      if (x_1108) {
        let x_1112 : vec4<f32> = u_xlat3;
        let x_1115 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1115.z, x_1115.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1119 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1118.x, x_1118.y, x_1119.z);
        let x_1121 : vec3<f32> = u_xlat28;
        let x_1123 : vec2<f32> = floor(vec2<f32>(x_1121.x, x_1121.y));
        let x_1124 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1123.x, x_1123.y, x_1124.z);
        let x_1126 : vec4<f32> = u_xlat3;
        let x_1129 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1132 : vec3<f32> = u_xlat28;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.z, x_1129.w)) + -(vec2<f32>(x_1132.x, x_1132.y)));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.y, x_1138.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1142 : vec4<f32> = u_xlat9;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1142.x, x_1142.x, x_1142.z, x_1142.z) * vec4<f32>(x_1144.x, x_1144.x, x_1144.z, x_1144.z));
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1149.y, x_1149.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1154 : vec4<f32> = u_xlat10;
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1157.x, x_1157.y)));
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1166 : vec2<f32> = (-(vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1167 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1170.x, x_1170.y), vec2<f32>(0.0f, 0.0f));
        let x_1174 : vec2<f32> = u_xlat54;
        let x_1176 : vec2<f32> = u_xlat54;
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1174) * x_1176) + vec2<f32>(x_1178.x, x_1178.y));
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1183 : vec2<f32> = max(vec2<f32>(x_1181.x, x_1181.y), vec2<f32>(0.0f, 0.0f));
        let x_1184 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat8;
        let x_1189 : vec4<f32> = u_xlat8;
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1194 : vec2<f32> = ((-(vec2<f32>(x_1186.x, x_1186.y)) * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1192.y, x_1192.w));
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
        let x_1197 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1197 + vec2<f32>(1.0f, 1.0f));
        let x_1199 : vec4<f32> = u_xlat8;
        let x_1201 : vec2<f32> = (vec2<f32>(x_1199.x, x_1199.y) + vec2<f32>(1.0f, 1.0f));
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1204.x, x_1204.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1209 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat10;
        let x_1213 : vec2<f32> = (vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1214 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec2<f32> = u_xlat54;
        let x_1217 : vec2<f32> = (x_1216 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1218 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
        let x_1220 : vec4<f32> = u_xlat8;
        let x_1222 : vec2<f32> = (vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1223 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1227 : vec2<f32> = (vec2<f32>(x_1225.y, x_1225.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1228 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1231 : f32 = u_xlat10.x;
        u_xlat11.z = x_1231;
        let x_1234 : f32 = u_xlat8.x;
        u_xlat11.w = x_1234;
        let x_1237 : f32 = u_xlat13.x;
        u_xlat12.z = x_1237;
        let x_1240 : f32 = u_xlat52.x;
        u_xlat12.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat11;
        let x_1244 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1242.z, x_1242.w, x_1242.x, x_1242.z) + vec4<f32>(x_1244.z, x_1244.w, x_1244.x, x_1244.z));
        let x_1248 : f32 = u_xlat11.y;
        u_xlat10.z = x_1248;
        let x_1251 : f32 = u_xlat8.y;
        u_xlat10.w = x_1251;
        let x_1254 : f32 = u_xlat12.y;
        u_xlat13.z = x_1254;
        let x_1257 : f32 = u_xlat52.y;
        u_xlat13.w = x_1257;
        let x_1259 : vec4<f32> = u_xlat10;
        let x_1261 : vec4<f32> = u_xlat13;
        let x_1263 : vec3<f32> = (vec3<f32>(x_1259.z, x_1259.y, x_1259.w) + vec3<f32>(x_1261.z, x_1261.y, x_1261.w));
        let x_1264 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat12;
        let x_1268 : vec4<f32> = u_xlat9;
        let x_1270 : vec3<f32> = (vec3<f32>(x_1266.x, x_1266.z, x_1266.w) / vec3<f32>(x_1268.z, x_1268.w, x_1268.y));
        let x_1271 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1279 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1280 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
        let x_1282 : vec4<f32> = u_xlat13;
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1286 : vec3<f32> = (vec3<f32>(x_1282.z, x_1282.y, x_1282.w) / vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
        let x_1287 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1291 : vec3<f32> = (vec3<f32>(x_1289.x, x_1289.y, x_1289.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1292 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat10;
        let x_1297 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1299 : vec3<f32> = (vec3<f32>(x_1294.y, x_1294.x, x_1294.z) * vec3<f32>(x_1297.x, x_1297.x, x_1297.x));
        let x_1300 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
        let x_1302 : vec4<f32> = u_xlat11;
        let x_1305 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1307 : vec3<f32> = (vec3<f32>(x_1302.x, x_1302.y, x_1302.z) * vec3<f32>(x_1305.y, x_1305.y, x_1305.y));
        let x_1308 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
        let x_1311 : f32 = u_xlat11.x;
        u_xlat10.w = x_1311;
        let x_1313 : vec3<f32> = u_xlat28;
        let x_1316 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.y, x_1319.w, x_1319.x, x_1319.w));
        let x_1322 : vec3<f32> = u_xlat28;
        let x_1325 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat10;
        let x_1330 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.z, x_1328.w));
        let x_1331 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        let x_1334 : f32 = u_xlat10.y;
        u_xlat11.w = x_1334;
        let x_1336 : vec4<f32> = u_xlat11;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.y, x_1336.z);
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1341 : vec3<f32> = u_xlat28;
        let x_1344 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y) * vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y)) + vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1347.y));
        let x_1350 : vec3<f32> = u_xlat28;
        let x_1353 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.w, x_1356.y, x_1356.w, x_1356.z));
        let x_1359 : vec3<f32> = u_xlat28;
        let x_1362 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.w, x_1365.z, x_1365.w));
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1371 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1369.x, x_1369.x, x_1369.x, x_1369.y) * vec4<f32>(x_1371.z, x_1371.w, x_1371.y, x_1371.z));
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1377 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1375.y, x_1375.y, x_1375.z, x_1375.z) * x_1377);
        let x_1380 : f32 = u_xlat8.z;
        let x_1382 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1380 * x_1382);
        let x_1386 : vec4<f32> = u_xlat12;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.x, x_1386.y);
        let x_1389 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1397 : vec3<f32> = txVec4;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat50 = x_1399;
        let x_1401 : vec4<f32> = u_xlat12;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1412 : vec3<f32> = txVec5;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat72 = x_1414;
        let x_1415 : f32 = u_xlat72;
        let x_1417 : f32 = u_xlat15.y;
        u_xlat72 = (x_1415 * x_1417);
        let x_1420 : f32 = u_xlat15.x;
        let x_1421 : f32 = u_xlat50;
        let x_1423 : f32 = u_xlat72;
        u_xlat50 = ((x_1420 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat13;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec6;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1436.xy, x_1436.z);
        u_xlat72 = x_1438;
        let x_1440 : f32 = u_xlat15.z;
        let x_1441 : f32 = u_xlat72;
        let x_1443 : f32 = u_xlat50;
        u_xlat50 = ((x_1440 * x_1441) + x_1443);
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec7;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat72 = x_1458;
        let x_1460 : f32 = u_xlat15.w;
        let x_1461 : f32 = u_xlat72;
        let x_1463 : f32 = u_xlat50;
        u_xlat50 = ((x_1460 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat14;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec8;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat72 = x_1478;
        let x_1480 : f32 = u_xlat16.x;
        let x_1481 : f32 = u_xlat72;
        let x_1483 : f32 = u_xlat50;
        u_xlat50 = ((x_1480 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat14;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec9;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1496.xy, x_1496.z);
        u_xlat72 = x_1498;
        let x_1500 : f32 = u_xlat16.y;
        let x_1501 : f32 = u_xlat72;
        let x_1503 : f32 = u_xlat50;
        u_xlat50 = ((x_1500 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat11;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.z, x_1506.w);
        let x_1509 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec10;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1516.xy, x_1516.z);
        u_xlat72 = x_1518;
        let x_1520 : f32 = u_xlat16.z;
        let x_1521 : f32 = u_xlat72;
        let x_1523 : f32 = u_xlat50;
        u_xlat50 = ((x_1520 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec11;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat72 = x_1538;
        let x_1540 : f32 = u_xlat16.w;
        let x_1541 : f32 = u_xlat72;
        let x_1543 : f32 = u_xlat50;
        u_xlat50 = ((x_1540 * x_1541) + x_1543);
        let x_1546 : vec4<f32> = u_xlat10;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.z, x_1546.w);
        let x_1549 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec12;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1556.xy, x_1556.z);
        u_xlat72 = x_1558;
        let x_1560 : f32 = u_xlat28.x;
        let x_1561 : f32 = u_xlat72;
        let x_1563 : f32 = u_xlat50;
        u_xlat71 = ((x_1560 * x_1561) + x_1563);
      } else {
        let x_1566 : vec4<f32> = u_xlat3;
        let x_1569 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1572 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.y) * vec2<f32>(x_1569.z, x_1569.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1573 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1572.x, x_1572.y, x_1573.z);
        let x_1575 : vec3<f32> = u_xlat28;
        let x_1577 : vec2<f32> = floor(vec2<f32>(x_1575.x, x_1575.y));
        let x_1578 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1577.x, x_1577.y, x_1578.z);
        let x_1580 : vec4<f32> = u_xlat3;
        let x_1583 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1586 : vec3<f32> = u_xlat28;
        let x_1589 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(x_1583.z, x_1583.w)) + -(vec2<f32>(x_1586.x, x_1586.y)));
        let x_1590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
        let x_1592 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1592.x, x_1592.x, x_1592.y, x_1592.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1595 : vec4<f32> = u_xlat9;
        let x_1597 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1595.x, x_1595.x, x_1595.z, x_1595.z) * vec4<f32>(x_1597.x, x_1597.x, x_1597.z, x_1597.z));
        let x_1600 : vec4<f32> = u_xlat10;
        let x_1604 : vec2<f32> = (vec2<f32>(x_1600.y, x_1600.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1605 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1605.x, x_1604.x, x_1605.z, x_1604.y);
        let x_1607 : vec4<f32> = u_xlat10;
        let x_1610 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1607.x, x_1607.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1610.x, x_1610.y)));
        let x_1614 : vec4<f32> = u_xlat8;
        let x_1617 : vec2<f32> = (-(vec2<f32>(x_1614.x, x_1614.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1617.x, x_1618.y, x_1617.y, x_1618.w);
        let x_1620 : vec4<f32> = u_xlat8;
        let x_1622 : vec2<f32> = min(vec2<f32>(x_1620.x, x_1620.y), vec2<f32>(0.0f, 0.0f));
        let x_1623 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1622.x, x_1622.y, x_1623.z, x_1623.w);
        let x_1625 : vec4<f32> = u_xlat10;
        let x_1628 : vec4<f32> = u_xlat10;
        let x_1631 : vec4<f32> = u_xlat9;
        let x_1633 : vec2<f32> = ((-(vec2<f32>(x_1625.x, x_1625.y)) * vec2<f32>(x_1628.x, x_1628.y)) + vec2<f32>(x_1631.x, x_1631.z));
        let x_1634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1634.w);
        let x_1636 : vec4<f32> = u_xlat8;
        let x_1638 : vec2<f32> = max(vec2<f32>(x_1636.x, x_1636.y), vec2<f32>(0.0f, 0.0f));
        let x_1639 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1638.x, x_1638.y, x_1639.z, x_1639.w);
        let x_1641 : vec4<f32> = u_xlat10;
        let x_1644 : vec4<f32> = u_xlat10;
        let x_1647 : vec4<f32> = u_xlat9;
        let x_1649 : vec2<f32> = ((-(vec2<f32>(x_1641.x, x_1641.y)) * vec2<f32>(x_1644.x, x_1644.y)) + vec2<f32>(x_1647.y, x_1647.w));
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1650.x, x_1649.x, x_1650.z, x_1649.y);
        let x_1652 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1652 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1656 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1656 * 0.081632003f);
        let x_1660 : vec2<f32> = u_xlat52;
        let x_1663 : vec2<f32> = (vec2<f32>(x_1660.y, x_1660.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1664 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1663.x, x_1663.y, x_1664.z, x_1664.w);
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1666.x, x_1666.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1670 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1670 * 0.081632003f);
        let x_1674 : f32 = u_xlat12.y;
        u_xlat10.x = x_1674;
        let x_1676 : vec4<f32> = u_xlat8;
        let x_1683 : vec2<f32> = ((vec2<f32>(x_1676.x, x_1676.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1684 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1684.x, x_1683.x, x_1684.z, x_1683.y);
        let x_1686 : vec4<f32> = u_xlat8;
        let x_1690 : vec2<f32> = ((vec2<f32>(x_1686.x, x_1686.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1691 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1690.x, x_1691.y, x_1690.y, x_1691.w);
        let x_1694 : f32 = u_xlat52.x;
        u_xlat9.y = x_1694;
        let x_1697 : f32 = u_xlat11.y;
        u_xlat9.w = x_1697;
        let x_1699 : vec4<f32> = u_xlat9;
        let x_1700 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1699 + x_1700);
        let x_1702 : vec4<f32> = u_xlat8;
        let x_1705 : vec2<f32> = ((vec2<f32>(x_1702.y, x_1702.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1706 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1706.x, x_1705.x, x_1706.z, x_1705.y);
        let x_1708 : vec4<f32> = u_xlat8;
        let x_1711 : vec2<f32> = ((vec2<f32>(x_1708.y, x_1708.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1712 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1711.x, x_1712.y, x_1711.y, x_1712.w);
        let x_1715 : f32 = u_xlat52.y;
        u_xlat11.y = x_1715;
        let x_1717 : vec4<f32> = u_xlat11;
        let x_1718 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1717 + x_1718);
        let x_1720 : vec4<f32> = u_xlat9;
        let x_1721 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1720 / x_1721);
        let x_1723 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1723 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1729 : vec4<f32> = u_xlat11;
        let x_1730 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1729 / x_1730);
        let x_1732 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1732 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1734 : vec4<f32> = u_xlat9;
        let x_1737 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1734.w, x_1734.x, x_1734.y, x_1734.z) * vec4<f32>(x_1737.x, x_1737.x, x_1737.x, x_1737.x));
        let x_1740 : vec4<f32> = u_xlat11;
        let x_1743 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1740.x, x_1740.w, x_1740.y, x_1740.z) * vec4<f32>(x_1743.y, x_1743.y, x_1743.y, x_1743.y));
        let x_1746 : vec4<f32> = u_xlat9;
        let x_1747 : vec3<f32> = vec3<f32>(x_1746.y, x_1746.z, x_1746.w);
        let x_1748 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1747.x, x_1748.y, x_1747.y, x_1747.z);
        let x_1751 : f32 = u_xlat11.x;
        u_xlat12.y = x_1751;
        let x_1753 : vec3<f32> = u_xlat28;
        let x_1756 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1759 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1753.x, x_1753.y, x_1753.x, x_1753.y) * vec4<f32>(x_1756.x, x_1756.y, x_1756.x, x_1756.y)) + vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1759.y));
        let x_1762 : vec3<f32> = u_xlat28;
        let x_1765 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat12;
        let x_1770 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1765.x, x_1765.y)) + vec2<f32>(x_1768.w, x_1768.y));
        let x_1771 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1770.x, x_1770.y, x_1771.z, x_1771.w);
        let x_1774 : f32 = u_xlat12.y;
        u_xlat9.y = x_1774;
        let x_1777 : f32 = u_xlat11.z;
        u_xlat12.y = x_1777;
        let x_1779 : vec3<f32> = u_xlat28;
        let x_1782 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1785 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1779.x, x_1779.y, x_1779.x, x_1779.y) * vec4<f32>(x_1782.x, x_1782.y, x_1782.x, x_1782.y)) + vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1785.y));
        let x_1789 : vec3<f32> = u_xlat28;
        let x_1792 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1795 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1789.x, x_1789.y) * vec2<f32>(x_1792.x, x_1792.y)) + vec2<f32>(x_1795.w, x_1795.y));
        let x_1799 : f32 = u_xlat12.y;
        u_xlat9.z = x_1799;
        let x_1801 : vec3<f32> = u_xlat28;
        let x_1804 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1807 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1801.x, x_1801.y, x_1801.x, x_1801.y) * vec4<f32>(x_1804.x, x_1804.y, x_1804.x, x_1804.y)) + vec4<f32>(x_1807.x, x_1807.y, x_1807.x, x_1807.z));
        let x_1811 : f32 = u_xlat11.w;
        u_xlat12.y = x_1811;
        let x_1814 : vec3<f32> = u_xlat28;
        let x_1817 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1820 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y) * vec4<f32>(x_1817.x, x_1817.y, x_1817.x, x_1817.y)) + vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1820.y));
        let x_1824 : vec3<f32> = u_xlat28;
        let x_1827 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1830 : vec4<f32> = u_xlat12;
        let x_1832 : vec2<f32> = ((vec2<f32>(x_1824.x, x_1824.y) * vec2<f32>(x_1827.x, x_1827.y)) + vec2<f32>(x_1830.w, x_1830.y));
        let x_1833 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1832.x, x_1832.y, x_1833.z);
        let x_1836 : f32 = u_xlat12.y;
        u_xlat9.w = x_1836;
        let x_1839 : vec3<f32> = u_xlat28;
        let x_1842 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1845 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1839.x, x_1839.y) * vec2<f32>(x_1842.x, x_1842.y)) + vec2<f32>(x_1845.x, x_1845.w));
        let x_1848 : vec4<f32> = u_xlat12;
        let x_1849 : vec3<f32> = vec3<f32>(x_1848.x, x_1848.z, x_1848.w);
        let x_1850 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1849.x, x_1850.y, x_1849.y, x_1849.z);
        let x_1852 : vec3<f32> = u_xlat28;
        let x_1855 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1858 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1852.x, x_1852.y, x_1852.x, x_1852.y) * vec4<f32>(x_1855.x, x_1855.y, x_1855.x, x_1855.y)) + vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1858.y));
        let x_1862 : vec3<f32> = u_xlat28;
        let x_1865 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1868 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1862.x, x_1862.y) * vec2<f32>(x_1865.x, x_1865.y)) + vec2<f32>(x_1868.w, x_1868.y));
        let x_1872 : f32 = u_xlat9.x;
        u_xlat11.x = x_1872;
        let x_1874 : vec3<f32> = u_xlat28;
        let x_1877 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1880 : vec4<f32> = u_xlat11;
        let x_1882 : vec2<f32> = ((vec2<f32>(x_1874.x, x_1874.y) * vec2<f32>(x_1877.x, x_1877.y)) + vec2<f32>(x_1880.x, x_1880.y));
        let x_1883 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1882.x, x_1882.y, x_1883.z);
        let x_1886 : vec4<f32> = u_xlat8;
        let x_1888 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1886.x, x_1886.x, x_1886.x, x_1886.x) * x_1888);
        let x_1891 : vec4<f32> = u_xlat8;
        let x_1893 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1891.y, x_1891.y, x_1891.y, x_1891.y) * x_1893);
        let x_1896 : vec4<f32> = u_xlat8;
        let x_1898 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1896.z, x_1896.z, x_1896.z, x_1896.z) * x_1898);
        let x_1900 : vec4<f32> = u_xlat8;
        let x_1902 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1900.w, x_1900.w, x_1900.w, x_1900.w) * x_1902);
        let x_1905 : vec4<f32> = u_xlat13;
        let x_1906 : vec2<f32> = vec2<f32>(x_1905.x, x_1905.y);
        let x_1908 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec13;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1915.xy, x_1915.z);
        u_xlat72 = x_1917;
        let x_1919 : vec4<f32> = u_xlat13;
        let x_1920 : vec2<f32> = vec2<f32>(x_1919.z, x_1919.w);
        let x_1922 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1920.x, x_1920.y, x_1922);
        let x_1930 : vec3<f32> = txVec14;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1930.xy, x_1930.z);
        u_xlat73 = x_1932;
        let x_1933 : f32 = u_xlat73;
        let x_1935 : f32 = u_xlat19.y;
        u_xlat73 = (x_1933 * x_1935);
        let x_1938 : f32 = u_xlat19.x;
        let x_1939 : f32 = u_xlat72;
        let x_1941 : f32 = u_xlat73;
        u_xlat72 = ((x_1938 * x_1939) + x_1941);
        let x_1944 : vec4<f32> = u_xlat14;
        let x_1945 : vec2<f32> = vec2<f32>(x_1944.x, x_1944.y);
        let x_1947 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1945.x, x_1945.y, x_1947);
        let x_1954 : vec3<f32> = txVec15;
        let x_1956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1954.xy, x_1954.z);
        u_xlat73 = x_1956;
        let x_1958 : f32 = u_xlat19.z;
        let x_1959 : f32 = u_xlat73;
        let x_1961 : f32 = u_xlat72;
        u_xlat72 = ((x_1958 * x_1959) + x_1961);
        let x_1964 : vec4<f32> = u_xlat16;
        let x_1965 : vec2<f32> = vec2<f32>(x_1964.x, x_1964.y);
        let x_1967 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1965.x, x_1965.y, x_1967);
        let x_1974 : vec3<f32> = txVec16;
        let x_1976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1974.xy, x_1974.z);
        u_xlat73 = x_1976;
        let x_1978 : f32 = u_xlat19.w;
        let x_1979 : f32 = u_xlat73;
        let x_1981 : f32 = u_xlat72;
        u_xlat72 = ((x_1978 * x_1979) + x_1981);
        let x_1984 : vec4<f32> = u_xlat15;
        let x_1985 : vec2<f32> = vec2<f32>(x_1984.x, x_1984.y);
        let x_1987 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
        let x_1994 : vec3<f32> = txVec17;
        let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1994.xy, x_1994.z);
        u_xlat73 = x_1996;
        let x_1998 : f32 = u_xlat20.x;
        let x_1999 : f32 = u_xlat73;
        let x_2001 : f32 = u_xlat72;
        u_xlat72 = ((x_1998 * x_1999) + x_2001);
        let x_2004 : vec4<f32> = u_xlat15;
        let x_2005 : vec2<f32> = vec2<f32>(x_2004.z, x_2004.w);
        let x_2007 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec18;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2014.xy, x_2014.z);
        u_xlat73 = x_2016;
        let x_2018 : f32 = u_xlat20.y;
        let x_2019 : f32 = u_xlat73;
        let x_2021 : f32 = u_xlat72;
        u_xlat72 = ((x_2018 * x_2019) + x_2021);
        let x_2024 : vec2<f32> = u_xlat58;
        let x_2026 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec19;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2033.xy, x_2033.z);
        u_xlat73 = x_2035;
        let x_2037 : f32 = u_xlat20.z;
        let x_2038 : f32 = u_xlat73;
        let x_2040 : f32 = u_xlat72;
        u_xlat72 = ((x_2037 * x_2038) + x_2040);
        let x_2043 : vec4<f32> = u_xlat16;
        let x_2044 : vec2<f32> = vec2<f32>(x_2043.z, x_2043.w);
        let x_2046 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2044.x, x_2044.y, x_2046);
        let x_2053 : vec3<f32> = txVec20;
        let x_2055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2053.xy, x_2053.z);
        u_xlat73 = x_2055;
        let x_2057 : f32 = u_xlat20.w;
        let x_2058 : f32 = u_xlat73;
        let x_2060 : f32 = u_xlat72;
        u_xlat72 = ((x_2057 * x_2058) + x_2060);
        let x_2063 : vec4<f32> = u_xlat17;
        let x_2064 : vec2<f32> = vec2<f32>(x_2063.x, x_2063.y);
        let x_2066 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
        let x_2073 : vec3<f32> = txVec21;
        let x_2075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2073.xy, x_2073.z);
        u_xlat73 = x_2075;
        let x_2077 : f32 = u_xlat21.x;
        let x_2078 : f32 = u_xlat73;
        let x_2080 : f32 = u_xlat72;
        u_xlat72 = ((x_2077 * x_2078) + x_2080);
        let x_2083 : vec4<f32> = u_xlat17;
        let x_2084 : vec2<f32> = vec2<f32>(x_2083.z, x_2083.w);
        let x_2086 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
        let x_2093 : vec3<f32> = txVec22;
        let x_2095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2093.xy, x_2093.z);
        u_xlat73 = x_2095;
        let x_2097 : f32 = u_xlat21.y;
        let x_2098 : f32 = u_xlat73;
        let x_2100 : f32 = u_xlat72;
        u_xlat72 = ((x_2097 * x_2098) + x_2100);
        let x_2103 : vec3<f32> = u_xlat31;
        let x_2104 : vec2<f32> = vec2<f32>(x_2103.x, x_2103.y);
        let x_2106 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2104.x, x_2104.y, x_2106);
        let x_2113 : vec3<f32> = txVec23;
        let x_2115 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2113.xy, x_2113.z);
        u_xlat73 = x_2115;
        let x_2117 : f32 = u_xlat21.z;
        let x_2118 : f32 = u_xlat73;
        let x_2120 : f32 = u_xlat72;
        u_xlat72 = ((x_2117 * x_2118) + x_2120);
        let x_2123 : vec2<f32> = u_xlat18;
        let x_2125 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2123.x, x_2123.y, x_2125);
        let x_2132 : vec3<f32> = txVec24;
        let x_2134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2132.xy, x_2132.z);
        u_xlat73 = x_2134;
        let x_2136 : f32 = u_xlat21.w;
        let x_2137 : f32 = u_xlat73;
        let x_2139 : f32 = u_xlat72;
        u_xlat72 = ((x_2136 * x_2137) + x_2139);
        let x_2142 : vec4<f32> = u_xlat12;
        let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
        let x_2145 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
        let x_2152 : vec3<f32> = txVec25;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2152.xy, x_2152.z);
        u_xlat73 = x_2154;
        let x_2156 : f32 = u_xlat8.x;
        let x_2157 : f32 = u_xlat73;
        let x_2159 : f32 = u_xlat72;
        u_xlat72 = ((x_2156 * x_2157) + x_2159);
        let x_2162 : vec4<f32> = u_xlat12;
        let x_2163 : vec2<f32> = vec2<f32>(x_2162.z, x_2162.w);
        let x_2165 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
        let x_2172 : vec3<f32> = txVec26;
        let x_2174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2172.xy, x_2172.z);
        u_xlat73 = x_2174;
        let x_2176 : f32 = u_xlat8.y;
        let x_2177 : f32 = u_xlat73;
        let x_2179 : f32 = u_xlat72;
        u_xlat72 = ((x_2176 * x_2177) + x_2179);
        let x_2182 : vec2<f32> = u_xlat55;
        let x_2184 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2182.x, x_2182.y, x_2184);
        let x_2191 : vec3<f32> = txVec27;
        let x_2193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2191.xy, x_2191.z);
        u_xlat73 = x_2193;
        let x_2195 : f32 = u_xlat8.z;
        let x_2196 : f32 = u_xlat73;
        let x_2198 : f32 = u_xlat72;
        u_xlat72 = ((x_2195 * x_2196) + x_2198);
        let x_2201 : vec3<f32> = u_xlat28;
        let x_2202 : vec2<f32> = vec2<f32>(x_2201.x, x_2201.y);
        let x_2204 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2202.x, x_2202.y, x_2204);
        let x_2211 : vec3<f32> = txVec28;
        let x_2213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2211.xy, x_2211.z);
        u_xlat28.x = x_2213;
        let x_2216 : f32 = u_xlat8.w;
        let x_2218 : f32 = u_xlat28.x;
        let x_2220 : f32 = u_xlat72;
        u_xlat71 = ((x_2216 * x_2218) + x_2220);
      }
    }
  } else {
    let x_2224 : vec4<f32> = u_xlat3;
    let x_2225 : vec2<f32> = vec2<f32>(x_2224.x, x_2224.y);
    let x_2227 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2225.x, x_2225.y, x_2227);
    let x_2234 : vec3<f32> = txVec29;
    let x_2236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2234.xy, x_2234.z);
    u_xlat71 = x_2236;
  }
  let x_2238 : f32 = x_600.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2238) + 1.0f);
  let x_2242 : f32 = u_xlat71;
  let x_2244 : f32 = x_600.x_MainLightShadowParams.x;
  let x_2247 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2242 * x_2244) + x_2247);
  let x_2252 : f32 = u_xlat3.z;
  u_xlatb25.x = (0.0f >= x_2252);
  let x_2257 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2257 >= 1.0f);
  let x_2259 : bool = u_xlatb47;
  let x_2261 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2259 | x_2261);
  let x_2265 : bool = u_xlatb25.x;
  if (x_2265) {
    x_2266 = 1.0f;
  } else {
    let x_2271 : f32 = u_xlat3.x;
    x_2266 = x_2271;
  }
  let x_2272 : f32 = x_2266;
  u_xlat3.x = x_2272;
  let x_2274 : vec3<f32> = vs_TEXCOORD7;
  let x_2276 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2274 + -(x_2276));
  let x_2280 : vec3<f32> = u_xlat28;
  let x_2281 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2280, x_2281);
  let x_2285 : f32 = u_xlat25.x;
  let x_2287 : f32 = x_600.x_MainLightShadowParams.z;
  let x_2290 : f32 = x_600.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2285 * x_2287) + x_2290);
  let x_2294 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2294, 0.0f, 1.0f);
  let x_2299 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2299) + 1.0f);
  let x_2303 : f32 = u_xlat25.x;
  let x_2304 : f32 = u_xlat47;
  let x_2307 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2303 * x_2304) + x_2307);
  let x_2316 : f32 = x_2314.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2316 == -1.0f));
  let x_2320 : bool = u_xlatb25.x;
  if (x_2320) {
    let x_2323 : vec3<f32> = vs_TEXCOORD7;
    let x_2326 : vec4<f32> = x_2314.x_MainLightWorldToLight[1i];
    u_xlat25 = (vec2<f32>(x_2323.y, x_2323.y) * vec2<f32>(x_2326.x, x_2326.y));
    let x_2330 : vec4<f32> = x_2314.x_MainLightWorldToLight[0i];
    let x_2332 : vec3<f32> = vs_TEXCOORD7;
    let x_2335 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_2330.x, x_2330.y) * vec2<f32>(x_2332.x, x_2332.x)) + x_2335);
    let x_2338 : vec4<f32> = x_2314.x_MainLightWorldToLight[2i];
    let x_2340 : vec3<f32> = vs_TEXCOORD7;
    let x_2343 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_2338.x, x_2338.y) * vec2<f32>(x_2340.z, x_2340.z)) + x_2343);
    let x_2345 : vec2<f32> = u_xlat25;
    let x_2347 : vec4<f32> = x_2314.x_MainLightWorldToLight[3i];
    u_xlat25 = (x_2345 + vec2<f32>(x_2347.x, x_2347.y));
    let x_2350 : vec2<f32> = u_xlat25;
    u_xlat25 = ((x_2350 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2358 : vec2<f32> = u_xlat25;
    let x_2360 : f32 = x_128.x_GlobalMipBias.x;
    let x_2361 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2358, x_2360);
    u_xlat8 = x_2361;
    let x_2363 : f32 = x_2314.x_MainLightCookieTextureFormat;
    let x_2365 : f32 = x_2314.x_MainLightCookieTextureFormat;
    let x_2367 : f32 = x_2314.x_MainLightCookieTextureFormat;
    let x_2369 : f32 = x_2314.x_MainLightCookieTextureFormat;
    let x_2370 : vec4<f32> = vec4<f32>(x_2363, x_2365, x_2367, x_2369);
    let x_2377 : vec4<bool> = (vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2370.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2377.x, x_2377.y);
    let x_2380 : bool = u_xlatb25.y;
    if (x_2380) {
      let x_2385 : f32 = u_xlat8.w;
      x_2381 = x_2385;
    } else {
      let x_2388 : f32 = u_xlat8.x;
      x_2381 = x_2388;
    }
    let x_2389 : f32 = x_2381;
    u_xlat47 = x_2389;
    let x_2391 : bool = u_xlatb25.x;
    if (x_2391) {
      let x_2395 : vec4<f32> = u_xlat8;
      x_2392 = vec3<f32>(x_2395.x, x_2395.y, x_2395.z);
    } else {
      let x_2398 : f32 = u_xlat47;
      x_2392 = vec3<f32>(x_2398, x_2398, x_2398);
    }
    let x_2400 : vec3<f32> = x_2392;
    u_xlat28 = x_2400;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_2405 : vec3<f32> = u_xlat28;
  let x_2407 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat28 = (x_2405 * vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : vec4<f32> = u_xlat6;
  let x_2412 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2410.x, x_2410.x, x_2410.x) * x_2412);
  let x_2414 : vec4<f32> = u_xlat1;
  let x_2417 : vec4<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2414.x, x_2414.y, x_2414.z)), vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2422 : f32 = u_xlat25.x;
  let x_2424 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2422 + x_2424);
  let x_2427 : vec4<f32> = u_xlat2;
  let x_2429 : vec2<f32> = u_xlat25;
  let x_2433 : vec4<f32> = u_xlat1;
  let x_2436 : vec3<f32> = ((vec3<f32>(x_2427.x, x_2427.y, x_2427.z) * -(vec3<f32>(x_2429.x, x_2429.x, x_2429.x))) + -(vec3<f32>(x_2433.x, x_2433.y, x_2433.z)));
  let x_2437 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
  let x_2439 : vec4<f32> = u_xlat2;
  let x_2441 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(vec3<f32>(x_2439.x, x_2439.y, x_2439.z), vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
  let x_2446 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2446, 0.0f, 1.0f);
  let x_2450 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2450) + 1.0f);
  let x_2455 : f32 = u_xlat25.x;
  let x_2457 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2455 * x_2457);
  let x_2461 : f32 = u_xlat25.x;
  let x_2463 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2461 * x_2463);
  let x_2467 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2467) * 0.699999988f) + 1.700000048f);
  let x_2474 : f32 = u_xlat0.x;
  let x_2475 : f32 = u_xlat47;
  u_xlat0.x = (x_2474 * x_2475);
  let x_2479 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2479 * 6.0f);
  let x_2491 : vec4<f32> = u_xlat8;
  let x_2494 : f32 = u_xlat0.x;
  let x_2495 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2491.x, x_2491.y, x_2491.z), x_2494);
  u_xlat8 = x_2495;
  let x_2497 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2497 + -1.0f);
  let x_2501 : f32 = x_821.unity_SpecCube0_HDR.w;
  let x_2503 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2501 * x_2503) + 1.0f);
  let x_2508 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2508, 0.0f);
  let x_2512 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2512);
  let x_2516 : f32 = u_xlat0.x;
  let x_2518 : f32 = x_821.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2516 * x_2518);
  let x_2522 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2522);
  let x_2526 : f32 = u_xlat0.x;
  let x_2528 : f32 = x_821.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2526 * x_2528);
  let x_2531 : vec4<f32> = u_xlat8;
  let x_2533 : vec3<f32> = u_xlat0;
  let x_2535 : vec3<f32> = (vec3<f32>(x_2531.x, x_2531.y, x_2531.z) * vec3<f32>(x_2533.x, x_2533.x, x_2533.x));
  let x_2536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
  let x_2538 : f32 = u_xlat68;
  let x_2540 : f32 = u_xlat68;
  let x_2544 : vec2<f32> = ((vec2<f32>(x_2538, x_2538) * vec2<f32>(x_2540, x_2540)) + vec2<f32>(-1.0f, 1.0f));
  let x_2545 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2544.x, x_2544.y, x_2545.z, x_2545.w);
  let x_2548 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2548);
  let x_2551 : vec4<f32> = u_xlat5;
  let x_2554 : f32 = u_xlat44;
  u_xlat31 = (-(vec3<f32>(x_2551.x, x_2551.y, x_2551.z)) + vec3<f32>(x_2554, x_2554, x_2554));
  let x_2557 : vec2<f32> = u_xlat25;
  let x_2559 : vec3<f32> = u_xlat31;
  let x_2561 : vec4<f32> = u_xlat5;
  u_xlat31 = ((vec3<f32>(x_2557.x, x_2557.x, x_2557.x) * x_2559) + vec3<f32>(x_2561.x, x_2561.y, x_2561.z));
  let x_2564 : vec3<f32> = u_xlat0;
  let x_2566 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2564.x, x_2564.x, x_2564.x) * x_2566);
  let x_2568 : vec4<f32> = u_xlat8;
  let x_2570 : vec3<f32> = u_xlat31;
  let x_2571 : vec3<f32> = (vec3<f32>(x_2568.x, x_2568.y, x_2568.z) * x_2570);
  let x_2572 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
  let x_2574 : vec4<f32> = u_xlat4;
  let x_2576 : vec4<f32> = u_xlat7;
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec3<f32> = ((vec3<f32>(x_2574.x, x_2574.y, x_2574.z) * vec3<f32>(x_2576.x, x_2576.y, x_2576.z)) + vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
  let x_2582 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
  let x_2585 : f32 = u_xlat3.x;
  let x_2587 : f32 = x_821.unity_LightData.z;
  u_xlat0.x = (x_2585 * x_2587);
  let x_2590 : vec4<f32> = u_xlat2;
  let x_2593 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_2590.x, x_2590.y, x_2590.z), vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
  let x_2596 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2596, 0.0f, 1.0f);
  let x_2598 : f32 = u_xlat44;
  let x_2600 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2598 * x_2600);
  let x_2603 : vec3<f32> = u_xlat0;
  let x_2605 : vec3<f32> = u_xlat28;
  let x_2606 : vec3<f32> = (vec3<f32>(x_2603.x, x_2603.x, x_2603.x) * x_2605);
  let x_2607 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
  let x_2609 : vec4<f32> = u_xlat1;
  let x_2612 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) + vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
  let x_2615 : vec3<f32> = u_xlat28;
  let x_2616 : vec3<f32> = u_xlat28;
  u_xlat0.x = dot(x_2615, x_2616);
  let x_2620 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2620, 1.17549435e-37f);
  let x_2625 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2625);
  let x_2628 : vec3<f32> = u_xlat0;
  let x_2630 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2628.x, x_2628.x, x_2628.x) * x_2630);
  let x_2632 : vec4<f32> = u_xlat2;
  let x_2634 : vec3<f32> = u_xlat28;
  u_xlat0.x = dot(vec3<f32>(x_2632.x, x_2632.y, x_2632.z), x_2634);
  let x_2638 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2638, 0.0f, 1.0f);
  let x_2642 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2644 : vec3<f32> = u_xlat28;
  u_xlat0.z = dot(vec3<f32>(x_2642.x, x_2642.y, x_2642.z), x_2644);
  let x_2648 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2648, 0.0f, 1.0f);
  let x_2651 : vec3<f32> = u_xlat0;
  let x_2653 : vec3<f32> = u_xlat0;
  let x_2655 : vec2<f32> = (vec2<f32>(x_2651.x, x_2651.z) * vec2<f32>(x_2653.x, x_2653.z));
  let x_2656 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2655.x, x_2656.y, x_2655.y);
  let x_2659 : f32 = u_xlat0.x;
  let x_2661 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2659 * x_2661) + 1.000010014f);
  let x_2667 : f32 = u_xlat0.x;
  let x_2669 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2667 * x_2669);
  let x_2673 : f32 = u_xlat0.z;
  u_xlat44 = max(x_2673, 0.100000001f);
  let x_2676 : f32 = u_xlat44;
  let x_2678 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2676 * x_2678);
  let x_2681 : f32 = u_xlat69;
  let x_2683 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2681 * x_2683);
  let x_2686 : f32 = u_xlat70;
  let x_2688 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2686 / x_2688);
  let x_2691 : vec4<f32> = u_xlat5;
  let x_2693 : vec3<f32> = u_xlat0;
  let x_2696 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2691.x, x_2691.y, x_2691.z) * vec3<f32>(x_2693.x, x_2693.x, x_2693.x)) + vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
  let x_2699 : vec4<f32> = u_xlat3;
  let x_2701 : vec3<f32> = u_xlat28;
  let x_2702 : vec3<f32> = (vec3<f32>(x_2699.x, x_2699.y, x_2699.z) * x_2701);
  let x_2703 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
  let x_2706 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2708 : f32 = x_821.unity_LightData.y;
  u_xlat0.x = min(x_2706, x_2708);
  let x_2713 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2713));
  let x_2717 : f32 = x_2314.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2719 : f32 = x_2314.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2721 : f32 = x_2314.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2723 : f32 = x_2314.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2724 : vec4<f32> = vec4<f32>(x_2717, x_2719, x_2721, x_2723);
  let x_2730 : vec4<bool> = (vec4<f32>(x_2724.x, x_2724.y, x_2724.z, x_2724.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_2730.x, x_2730.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2741 : u32 = u_xlatu_loop_1;
    let x_2742 : u32 = u_xlatu0;
    if ((x_2741 < x_2742)) {
    } else {
      break;
    }
    let x_2745 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2745 >> 2u);
    let x_2748 : u32 = u_xlatu_loop_1;
    u_xlati71 = bitcast<i32>((x_2748 & 3u));
    let x_2751 : u32 = u_xlatu68;
    let x_2754 : vec4<f32> = x_821.unity_LightIndices[bitcast<i32>(x_2751)];
    let x_2764 : i32 = u_xlati71;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2769 : vec4<u32> = indexable[x_2764];
    u_xlat68 = dot(x_2754, bitcast<vec4<f32>>(x_2769));
    let x_2772 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2772));
    let x_2775 : vec3<f32> = vs_TEXCOORD7;
    let x_2787 : u32 = u_xlatu68;
    let x_2790 : vec4<f32> = x_2786.x_AdditionalLightsPosition[bitcast<i32>(x_2787)];
    let x_2793 : u32 = u_xlatu68;
    let x_2796 : vec4<f32> = x_2786.x_AdditionalLightsPosition[bitcast<i32>(x_2793)];
    u_xlat31 = ((-(x_2775) * vec3<f32>(x_2790.w, x_2790.w, x_2790.w)) + vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
    let x_2799 : vec3<f32> = u_xlat31;
    let x_2800 : vec3<f32> = u_xlat31;
    u_xlat71 = dot(x_2799, x_2800);
    let x_2802 : f32 = u_xlat71;
    u_xlat71 = max(x_2802, 6.10351562e-05f);
    let x_2804 : f32 = u_xlat71;
    u_xlat72 = inverseSqrt(x_2804);
    let x_2806 : f32 = u_xlat72;
    let x_2808 : vec3<f32> = u_xlat31;
    let x_2809 : vec3<f32> = (vec3<f32>(x_2806, x_2806, x_2806) * x_2808);
    let x_2810 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
    let x_2812 : f32 = u_xlat71;
    u_xlat73 = (1.0f / x_2812);
    let x_2814 : f32 = u_xlat71;
    let x_2815 : u32 = u_xlatu68;
    let x_2818 : f32 = x_2786.x_AdditionalLightsAttenuation[bitcast<i32>(x_2815)].x;
    u_xlat71 = (x_2814 * x_2818);
    let x_2820 : f32 = u_xlat71;
    let x_2822 : f32 = u_xlat71;
    u_xlat71 = ((-(x_2820) * x_2822) + 1.0f);
    let x_2825 : f32 = u_xlat71;
    u_xlat71 = max(x_2825, 0.0f);
    let x_2827 : f32 = u_xlat71;
    let x_2828 : f32 = u_xlat71;
    u_xlat71 = (x_2827 * x_2828);
    let x_2830 : f32 = u_xlat71;
    let x_2831 : f32 = u_xlat73;
    u_xlat71 = (x_2830 * x_2831);
    let x_2833 : u32 = u_xlatu68;
    let x_2836 : vec4<f32> = x_2786.x_AdditionalLightsSpotDir[bitcast<i32>(x_2833)];
    let x_2838 : vec4<f32> = u_xlat10;
    u_xlat73 = dot(vec3<f32>(x_2836.x, x_2836.y, x_2836.z), vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : f32 = u_xlat73;
    let x_2842 : u32 = u_xlatu68;
    let x_2845 : f32 = x_2786.x_AdditionalLightsAttenuation[bitcast<i32>(x_2842)].z;
    let x_2847 : u32 = u_xlatu68;
    let x_2850 : f32 = x_2786.x_AdditionalLightsAttenuation[bitcast<i32>(x_2847)].w;
    u_xlat73 = ((x_2841 * x_2845) + x_2850);
    let x_2852 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2852, 0.0f, 1.0f);
    let x_2854 : f32 = u_xlat73;
    let x_2855 : f32 = u_xlat73;
    u_xlat73 = (x_2854 * x_2855);
    let x_2857 : f32 = u_xlat71;
    let x_2858 : f32 = u_xlat73;
    u_xlat71 = (x_2857 * x_2858);
    let x_2861 : u32 = u_xlatu68;
    u_xlatu73 = (x_2861 >> 5u);
    let x_2864 : u32 = u_xlatu68;
    u_xlati74 = (1i << bitcast<u32>((bitcast<i32>(x_2864) & 31i)));
    let x_2869 : i32 = u_xlati74;
    let x_2871 : u32 = u_xlatu73;
    let x_2874 : f32 = x_2314.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2871)].el;
    u_xlati73 = bitcast<i32>((bitcast<u32>(x_2869) & bitcast<u32>(x_2874)));
    let x_2878 : i32 = u_xlati73;
    if ((x_2878 != 0i)) {
      let x_2888 : u32 = u_xlatu68;
      let x_2891 : f32 = x_2887.x_AdditionalLightsLightTypes[bitcast<i32>(x_2888)].el;
      u_xlati73 = i32(x_2891);
      let x_2893 : i32 = u_xlati73;
      u_xlati74 = select(1i, 0i, (x_2893 != 0i));
      let x_2897 : u32 = u_xlatu68;
      u_xlati76 = (bitcast<i32>(x_2897) << bitcast<u32>(2i));
      let x_2900 : i32 = u_xlati74;
      if ((x_2900 != 0i)) {
        let x_2904 : vec3<f32> = vs_TEXCOORD7;
        let x_2906 : i32 = u_xlati76;
        let x_2909 : i32 = u_xlati76;
        let x_2913 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_2906 + 1i) / 4i)][((x_2909 + 1i) % 4i)];
        let x_2915 : vec3<f32> = (vec3<f32>(x_2904.y, x_2904.y, x_2904.y) * vec3<f32>(x_2913.x, x_2913.y, x_2913.w));
        let x_2916 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);
        let x_2918 : i32 = u_xlati76;
        let x_2920 : i32 = u_xlati76;
        let x_2923 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[(x_2918 / 4i)][(x_2920 % 4i)];
        let x_2925 : vec3<f32> = vs_TEXCOORD7;
        let x_2928 : vec4<f32> = u_xlat11;
        let x_2930 : vec3<f32> = ((vec3<f32>(x_2923.x, x_2923.y, x_2923.w) * vec3<f32>(x_2925.x, x_2925.x, x_2925.x)) + vec3<f32>(x_2928.x, x_2928.y, x_2928.z));
        let x_2931 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2931.w);
        let x_2933 : i32 = u_xlati76;
        let x_2936 : i32 = u_xlati76;
        let x_2940 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_2933 + 2i) / 4i)][((x_2936 + 2i) % 4i)];
        let x_2942 : vec3<f32> = vs_TEXCOORD7;
        let x_2945 : vec4<f32> = u_xlat11;
        let x_2947 : vec3<f32> = ((vec3<f32>(x_2940.x, x_2940.y, x_2940.w) * vec3<f32>(x_2942.z, x_2942.z, x_2942.z)) + vec3<f32>(x_2945.x, x_2945.y, x_2945.z));
        let x_2948 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2948.w);
        let x_2950 : vec4<f32> = u_xlat11;
        let x_2952 : i32 = u_xlati76;
        let x_2955 : i32 = u_xlati76;
        let x_2959 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_2952 + 3i) / 4i)][((x_2955 + 3i) % 4i)];
        let x_2961 : vec3<f32> = (vec3<f32>(x_2950.x, x_2950.y, x_2950.z) + vec3<f32>(x_2959.x, x_2959.y, x_2959.w));
        let x_2962 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2961.x, x_2961.y, x_2961.z, x_2962.w);
        let x_2964 : vec4<f32> = u_xlat11;
        let x_2966 : vec4<f32> = u_xlat11;
        let x_2968 : vec2<f32> = (vec2<f32>(x_2964.x, x_2964.y) / vec2<f32>(x_2966.z, x_2966.z));
        let x_2969 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2968.x, x_2968.y, x_2969.z, x_2969.w);
        let x_2971 : vec4<f32> = u_xlat11;
        let x_2974 : vec2<f32> = ((vec2<f32>(x_2971.x, x_2971.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2975 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
        let x_2977 : vec4<f32> = u_xlat11;
        let x_2981 : vec2<f32> = clamp(vec2<f32>(x_2977.x, x_2977.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2981.x, x_2981.y, x_2982.z, x_2982.w);
        let x_2984 : u32 = u_xlatu68;
        let x_2987 : vec4<f32> = x_2887.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2984)];
        let x_2989 : vec4<f32> = u_xlat11;
        let x_2992 : u32 = u_xlatu68;
        let x_2995 : vec4<f32> = x_2887.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2992)];
        let x_2997 : vec2<f32> = ((vec2<f32>(x_2987.x, x_2987.y) * vec2<f32>(x_2989.x, x_2989.y)) + vec2<f32>(x_2995.z, x_2995.w));
        let x_2998 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2997.x, x_2997.y, x_2998.z, x_2998.w);
      } else {
        let x_3002 : i32 = u_xlati73;
        u_xlatb73 = (x_3002 == 1i);
        let x_3004 : bool = u_xlatb73;
        u_xlati73 = select(0i, 1i, x_3004);
        let x_3006 : i32 = u_xlati73;
        if ((x_3006 != 0i)) {
          let x_3010 : vec3<f32> = vs_TEXCOORD7;
          let x_3012 : i32 = u_xlati76;
          let x_3015 : i32 = u_xlati76;
          let x_3019 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_3012 + 1i) / 4i)][((x_3015 + 1i) % 4i)];
          u_xlat55 = (vec2<f32>(x_3010.y, x_3010.y) * vec2<f32>(x_3019.x, x_3019.y));
          let x_3022 : i32 = u_xlati76;
          let x_3024 : i32 = u_xlati76;
          let x_3027 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[(x_3022 / 4i)][(x_3024 % 4i)];
          let x_3029 : vec3<f32> = vs_TEXCOORD7;
          let x_3032 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3027.x, x_3027.y) * vec2<f32>(x_3029.x, x_3029.x)) + x_3032);
          let x_3034 : i32 = u_xlati76;
          let x_3037 : i32 = u_xlati76;
          let x_3041 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_3034 + 2i) / 4i)][((x_3037 + 2i) % 4i)];
          let x_3043 : vec3<f32> = vs_TEXCOORD7;
          let x_3046 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3043.z, x_3043.z)) + x_3046);
          let x_3048 : vec2<f32> = u_xlat55;
          let x_3049 : i32 = u_xlati76;
          let x_3052 : i32 = u_xlati76;
          let x_3056 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_3049 + 3i) / 4i)][((x_3052 + 3i) % 4i)];
          u_xlat55 = (x_3048 + vec2<f32>(x_3056.x, x_3056.y));
          let x_3059 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3059 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3062 : vec2<f32> = u_xlat55;
          u_xlat55 = fract(x_3062);
          let x_3064 : u32 = u_xlatu68;
          let x_3067 : vec4<f32> = x_2887.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3064)];
          let x_3069 : vec2<f32> = u_xlat55;
          let x_3071 : u32 = u_xlatu68;
          let x_3074 : vec4<f32> = x_2887.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3071)];
          let x_3076 : vec2<f32> = ((vec2<f32>(x_3067.x, x_3067.y) * x_3069) + vec2<f32>(x_3074.z, x_3074.w));
          let x_3077 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3076.x, x_3076.y, x_3077.z, x_3077.w);
        } else {
          let x_3080 : vec3<f32> = vs_TEXCOORD7;
          let x_3082 : i32 = u_xlati76;
          let x_3085 : i32 = u_xlati76;
          let x_3089 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_3082 + 1i) / 4i)][((x_3085 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3080.y, x_3080.y, x_3080.y, x_3080.y) * x_3089);
          let x_3091 : i32 = u_xlati76;
          let x_3093 : i32 = u_xlati76;
          let x_3096 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[(x_3091 / 4i)][(x_3093 % 4i)];
          let x_3097 : vec3<f32> = vs_TEXCOORD7;
          let x_3100 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3096 * vec4<f32>(x_3097.x, x_3097.x, x_3097.x, x_3097.x)) + x_3100);
          let x_3102 : i32 = u_xlati76;
          let x_3105 : i32 = u_xlati76;
          let x_3109 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_3102 + 2i) / 4i)][((x_3105 + 2i) % 4i)];
          let x_3110 : vec3<f32> = vs_TEXCOORD7;
          let x_3113 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3109 * vec4<f32>(x_3110.z, x_3110.z, x_3110.z, x_3110.z)) + x_3113);
          let x_3115 : vec4<f32> = u_xlat12;
          let x_3116 : i32 = u_xlati76;
          let x_3119 : i32 = u_xlati76;
          let x_3123 : vec4<f32> = x_2887.x_AdditionalLightsWorldToLights[((x_3116 + 3i) / 4i)][((x_3119 + 3i) % 4i)];
          u_xlat12 = (x_3115 + x_3123);
          let x_3125 : vec4<f32> = u_xlat12;
          let x_3127 : vec4<f32> = u_xlat12;
          let x_3129 : vec3<f32> = (vec3<f32>(x_3125.x, x_3125.y, x_3125.z) / vec3<f32>(x_3127.w, x_3127.w, x_3127.w));
          let x_3130 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3129.x, x_3129.y, x_3129.z, x_3130.w);
          let x_3132 : vec4<f32> = u_xlat12;
          let x_3134 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(vec3<f32>(x_3132.x, x_3132.y, x_3132.z), vec3<f32>(x_3134.x, x_3134.y, x_3134.z));
          let x_3137 : f32 = u_xlat73;
          u_xlat73 = inverseSqrt(x_3137);
          let x_3139 : f32 = u_xlat73;
          let x_3141 : vec4<f32> = u_xlat12;
          let x_3143 : vec3<f32> = (vec3<f32>(x_3139, x_3139, x_3139) * vec3<f32>(x_3141.x, x_3141.y, x_3141.z));
          let x_3144 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3143.x, x_3143.y, x_3143.z, x_3144.w);
          let x_3146 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(abs(vec3<f32>(x_3146.x, x_3146.y, x_3146.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3151 : f32 = u_xlat73;
          u_xlat73 = max(x_3151, 0.000001f);
          let x_3154 : f32 = u_xlat73;
          u_xlat73 = (1.0f / x_3154);
          let x_3156 : f32 = u_xlat73;
          let x_3158 : vec4<f32> = u_xlat12;
          let x_3160 : vec3<f32> = (vec3<f32>(x_3156, x_3156, x_3156) * vec3<f32>(x_3158.z, x_3158.x, x_3158.y));
          let x_3161 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3160.x, x_3160.y, x_3160.z, x_3161.w);
          let x_3164 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3164);
          let x_3168 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3168, 0.0f, 1.0f);
          let x_3172 : vec4<f32> = u_xlat13;
          let x_3175 : vec4<bool> = (vec4<f32>(x_3172.y, x_3172.z, x_3172.y, x_3172.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3175.x, x_3175.y);
          let x_3178 : bool = u_xlatb55.x;
          if (x_3178) {
            let x_3183 : f32 = u_xlat13.x;
            x_3179 = x_3183;
          } else {
            let x_3186 : f32 = u_xlat13.x;
            x_3179 = -(x_3186);
          }
          let x_3188 : f32 = x_3179;
          u_xlat55.x = x_3188;
          let x_3191 : bool = u_xlatb55.y;
          if (x_3191) {
            let x_3196 : f32 = u_xlat13.x;
            x_3192 = x_3196;
          } else {
            let x_3199 : f32 = u_xlat13.x;
            x_3192 = -(x_3199);
          }
          let x_3201 : f32 = x_3192;
          u_xlat55.y = x_3201;
          let x_3203 : vec4<f32> = u_xlat12;
          let x_3205 : f32 = u_xlat73;
          let x_3208 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3203.x, x_3203.y) * vec2<f32>(x_3205, x_3205)) + x_3208);
          let x_3210 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3210 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3213 : vec2<f32> = u_xlat55;
          u_xlat55 = clamp(x_3213, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3217 : u32 = u_xlatu68;
          let x_3220 : vec4<f32> = x_2887.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3217)];
          let x_3222 : vec2<f32> = u_xlat55;
          let x_3224 : u32 = u_xlatu68;
          let x_3227 : vec4<f32> = x_2887.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3224)];
          let x_3229 : vec2<f32> = ((vec2<f32>(x_3220.x, x_3220.y) * x_3222) + vec2<f32>(x_3227.z, x_3227.w));
          let x_3230 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3229.x, x_3229.y, x_3230.z, x_3230.w);
        }
      }
      let x_3237 : vec4<f32> = u_xlat11;
      let x_3240 : f32 = x_128.x_GlobalMipBias.x;
      let x_3241 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3237.x, x_3237.y), x_3240);
      u_xlat11 = x_3241;
      let x_3243 : bool = u_xlatb28.y;
      if (x_3243) {
        let x_3248 : f32 = u_xlat11.w;
        x_3244 = x_3248;
      } else {
        let x_3251 : f32 = u_xlat11.x;
        x_3244 = x_3251;
      }
      let x_3252 : f32 = x_3244;
      u_xlat73 = x_3252;
      let x_3254 : bool = u_xlatb28.x;
      if (x_3254) {
        let x_3258 : vec4<f32> = u_xlat11;
        x_3255 = vec3<f32>(x_3258.x, x_3258.y, x_3258.z);
      } else {
        let x_3261 : f32 = u_xlat73;
        x_3255 = vec3<f32>(x_3261, x_3261, x_3261);
      }
      let x_3263 : vec3<f32> = x_3255;
      let x_3264 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3263.x, x_3263.y, x_3263.z, x_3264.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3270 : vec4<f32> = u_xlat11;
    let x_3272 : u32 = u_xlatu68;
    let x_3275 : vec4<f32> = x_2786.x_AdditionalLightsColor[bitcast<i32>(x_3272)];
    let x_3277 : vec3<f32> = (vec3<f32>(x_3270.x, x_3270.y, x_3270.z) * vec3<f32>(x_3275.x, x_3275.y, x_3275.z));
    let x_3278 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3277.x, x_3277.y, x_3277.z, x_3278.w);
    let x_3280 : vec4<f32> = u_xlat6;
    let x_3282 : vec4<f32> = u_xlat11;
    let x_3284 : vec3<f32> = (vec3<f32>(x_3280.x, x_3280.x, x_3280.x) * vec3<f32>(x_3282.x, x_3282.y, x_3282.z));
    let x_3285 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3284.x, x_3284.y, x_3284.z, x_3285.w);
    let x_3287 : vec4<f32> = u_xlat2;
    let x_3289 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3287.x, x_3287.y, x_3287.z), vec3<f32>(x_3289.x, x_3289.y, x_3289.z));
    let x_3292 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3292, 0.0f, 1.0f);
    let x_3294 : f32 = u_xlat68;
    let x_3295 : f32 = u_xlat71;
    u_xlat68 = (x_3294 * x_3295);
    let x_3297 : f32 = u_xlat68;
    let x_3299 : vec4<f32> = u_xlat11;
    let x_3301 : vec3<f32> = (vec3<f32>(x_3297, x_3297, x_3297) * vec3<f32>(x_3299.x, x_3299.y, x_3299.z));
    let x_3302 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3301.x, x_3301.y, x_3301.z, x_3302.w);
    let x_3304 : vec3<f32> = u_xlat31;
    let x_3305 : f32 = u_xlat72;
    let x_3308 : vec4<f32> = u_xlat1;
    u_xlat31 = ((x_3304 * vec3<f32>(x_3305, x_3305, x_3305)) + vec3<f32>(x_3308.x, x_3308.y, x_3308.z));
    let x_3311 : vec3<f32> = u_xlat31;
    let x_3312 : vec3<f32> = u_xlat31;
    u_xlat68 = dot(x_3311, x_3312);
    let x_3314 : f32 = u_xlat68;
    u_xlat68 = max(x_3314, 1.17549435e-37f);
    let x_3316 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3316);
    let x_3318 : f32 = u_xlat68;
    let x_3320 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_3318, x_3318, x_3318) * x_3320);
    let x_3322 : vec4<f32> = u_xlat2;
    let x_3324 : vec3<f32> = u_xlat31;
    u_xlat68 = dot(vec3<f32>(x_3322.x, x_3322.y, x_3322.z), x_3324);
    let x_3326 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3326, 0.0f, 1.0f);
    let x_3328 : vec4<f32> = u_xlat10;
    let x_3330 : vec3<f32> = u_xlat31;
    u_xlat71 = dot(vec3<f32>(x_3328.x, x_3328.y, x_3328.z), x_3330);
    let x_3332 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3332, 0.0f, 1.0f);
    let x_3334 : f32 = u_xlat68;
    let x_3335 : f32 = u_xlat68;
    u_xlat68 = (x_3334 * x_3335);
    let x_3337 : f32 = u_xlat68;
    let x_3339 : f32 = u_xlat9.x;
    u_xlat68 = ((x_3337 * x_3339) + 1.000010014f);
    let x_3342 : f32 = u_xlat71;
    let x_3343 : f32 = u_xlat71;
    u_xlat71 = (x_3342 * x_3343);
    let x_3345 : f32 = u_xlat68;
    let x_3346 : f32 = u_xlat68;
    u_xlat68 = (x_3345 * x_3346);
    let x_3348 : f32 = u_xlat71;
    u_xlat71 = max(x_3348, 0.100000001f);
    let x_3350 : f32 = u_xlat68;
    let x_3351 : f32 = u_xlat71;
    u_xlat68 = (x_3350 * x_3351);
    let x_3353 : f32 = u_xlat69;
    let x_3354 : f32 = u_xlat68;
    u_xlat68 = (x_3353 * x_3354);
    let x_3356 : f32 = u_xlat70;
    let x_3357 : f32 = u_xlat68;
    u_xlat68 = (x_3356 / x_3357);
    let x_3359 : vec4<f32> = u_xlat5;
    let x_3361 : f32 = u_xlat68;
    let x_3364 : vec4<f32> = u_xlat7;
    u_xlat31 = ((vec3<f32>(x_3359.x, x_3359.y, x_3359.z) * vec3<f32>(x_3361, x_3361, x_3361)) + vec3<f32>(x_3364.x, x_3364.y, x_3364.z));
    let x_3367 : vec3<f32> = u_xlat31;
    let x_3368 : vec4<f32> = u_xlat11;
    let x_3371 : vec4<f32> = u_xlat8;
    let x_3373 : vec3<f32> = ((x_3367 * vec3<f32>(x_3368.x, x_3368.y, x_3368.z)) + vec3<f32>(x_3371.x, x_3371.y, x_3371.z));
    let x_3374 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3373.x, x_3373.y, x_3373.z, x_3374.w);

    continuing {
      let x_3376 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3376 + bitcast<u32>(1i));
    }
  }
  let x_3378 : vec4<f32> = u_xlat4;
  let x_3380 : f32 = u_xlat22;
  let x_3383 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_3378.x, x_3378.y, x_3378.z) * vec3<f32>(x_3380, x_3380, x_3380)) + vec3<f32>(x_3383.x, x_3383.y, x_3383.z));
  let x_3386 : vec4<f32> = u_xlat8;
  let x_3388 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3386.x, x_3386.y, x_3386.z) + x_3388);
  let x_3390 : f32 = u_xlat66;
  let x_3392 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3390, x_3390, x_3390) * x_3392);
  let x_3394 : f32 = u_xlat67;
  let x_3395 : f32 = u_xlat67;
  u_xlat66 = (x_3394 * -(x_3395));
  let x_3398 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3398);
  let x_3402 : vec3<f32> = u_xlat0;
  let x_3403 : f32 = u_xlat66;
  let x_3405 : vec3<f32> = (x_3402 * vec3<f32>(x_3403, x_3403, x_3403));
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

