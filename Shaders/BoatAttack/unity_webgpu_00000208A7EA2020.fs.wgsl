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
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_125 : PGlobals;

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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_962 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2239 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2446 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2727 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2835 : AdditionalLightsCookies;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
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
  var u_xlat43 : f32;
  var u_xlatb3 : vec4<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
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
  var u_xlatb64 : bool;
  var x_2192 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2322 : f32;
  var x_2333 : vec3<f32>;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlatu67 : u32;
  var u_xlati68 : i32;
  var u_xlati67 : i32;
  var u_xlati69 : i32;
  var u_xlatb67 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_3128 : f32;
  var x_3141 : f32;
  var x_3193 : f32;
  var x_3204 : vec3<f32>;
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
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_130 : f32 = x_125.x_GlobalMipBias.x;
  let x_131 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_130);
  u_xlat4 = x_131;
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat60 = dot(x_134, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_125.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat5 = x_148;
  let x_154 : vec4<f32> = vs_TEXCOORD1;
  let x_157 : f32 = x_125.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_154.z, x_154.w), x_157);
  u_xlat6 = x_158;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_125.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_165.x, x_165.y), x_168);
  u_xlat7 = x_169;
  let x_175 : vec4<f32> = vs_TEXCOORD2;
  let x_178 : f32 = x_125.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_175.z, x_175.w), x_178);
  u_xlat8 = x_179;
  let x_182 : f32 = u_xlat5.w;
  u_xlat9.x = x_182;
  let x_185 : f32 = u_xlat6.w;
  u_xlat9.y = x_185;
  let x_189 : f32 = u_xlat7.w;
  u_xlat9.z = x_189;
  let x_193 : f32 = u_xlat8.w;
  u_xlat9.w = x_193;
  let x_196 : vec4<f32> = u_xlat9;
  let x_199 : f32 = x_30.x_Smoothness0;
  let x_202 : f32 = x_30.x_Smoothness1;
  let x_205 : f32 = x_30.x_Smoothness2;
  let x_208 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_196 * vec4<f32>(x_199, x_202, x_205, x_208));
  let x_217 : f32 = x_30.x_NumLayersCount;
  u_xlatb61 = (4.0f >= x_217);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_220) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat9;
  let x_224 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_223 + -(x_224));
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_227 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_236 : vec4<f32> = u_xlat4;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_236 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_240);
  let x_243 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_243 + -(x_244));
  let x_249 : f32 = u_xlat12.x;
  let x_252 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_249 * x_252);
  let x_256 : f32 = u_xlat12.y;
  let x_259 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_256 * x_259);
  let x_263 : f32 = u_xlat12.z;
  let x_266 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.w;
  let x_273 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_270 * x_273);
  let x_276 : vec4<f32> = u_xlat11;
  let x_277 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_276 + x_277);
  let x_279 : bool = u_xlatb61;
  let x_280 : vec4<f32> = u_xlat11;
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_281, x_280, vec4<bool>(x_279, x_279, x_279, x_279));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_286, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_288 : f32 = u_xlat61;
  u_xlat61 = (x_288 + 6.10351562e-05f);
  let x_291 : vec4<f32> = u_xlat4;
  let x_292 : f32 = u_xlat61;
  u_xlat4 = (x_291 / vec4<f32>(x_292, x_292, x_292, x_292));
  let x_295 : vec4<f32> = u_xlat4;
  let x_298 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_300 : vec3<f32> = (vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat4;
  let x_306 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_308 : vec3<f32> = (vec3<f32>(x_303.y, x_303.y, x_303.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec4<f32> = u_xlat12;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat5;
  let x_320 : vec4<f32> = u_xlat11;
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.x, x_320.y, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.z, x_328.z, x_328.z) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat7;
  let x_338 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat5;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat4;
  let x_349 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_351 : vec3<f32> = (vec3<f32>(x_346.w, x_346.w, x_346.w) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat8;
  let x_356 : vec4<f32> = u_xlat6;
  let x_359 : vec4<f32> = u_xlat5;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.z)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_369 : vec4<f32> = vs_TEXCOORD1;
  let x_372 : f32 = x_125.x_GlobalMipBias.x;
  let x_373 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_369.x, x_369.y), x_372);
  let x_374 : vec3<f32> = vec3<f32>(x_373.x, x_373.y, x_373.w);
  let x_375 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat6.x;
  let x_380 : f32 = u_xlat6.z;
  u_xlat6.x = (x_378 * x_380);
  let x_383 : vec4<f32> = u_xlat6;
  let x_388 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_396 : f32 = u_xlat61;
  u_xlat61 = min(x_396, 1.0f);
  let x_398 : f32 = u_xlat61;
  u_xlat61 = (-(x_398) + 1.0f);
  let x_401 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_401);
  let x_403 : f32 = u_xlat61;
  u_xlat7.z = max(x_403, 1.00000002e-16f);
  let x_407 : vec4<f32> = u_xlat6;
  let x_411 : f32 = x_30.x_NormalScale0;
  let x_413 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_411, x_411));
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_420 : vec4<f32> = vs_TEXCOORD1;
  let x_423 : f32 = x_125.x_GlobalMipBias.x;
  let x_424 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_420.z, x_420.w), x_423);
  let x_425 : vec3<f32> = vec3<f32>(x_424.x, x_424.y, x_424.w);
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat6.x;
  let x_431 : f32 = u_xlat6.z;
  u_xlat6.x = (x_429 * x_431);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_442 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
  let x_445 : f32 = u_xlat61;
  u_xlat61 = min(x_445, 1.0f);
  let x_447 : f32 = u_xlat61;
  u_xlat61 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_450);
  let x_452 : f32 = u_xlat61;
  u_xlat8.z = max(x_452, 1.00000002e-16f);
  let x_455 : vec4<f32> = u_xlat6;
  let x_458 : f32 = x_30.x_NormalScale1;
  let x_460 : f32 = x_30.x_NormalScale1;
  let x_461 : vec2<f32> = vec2<f32>(x_458, x_460);
  let x_465 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(x_461.x, x_461.y));
  let x_466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat8;
  let x_472 : vec3<f32> = (vec3<f32>(x_468.y, x_468.y, x_468.y) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * vec3<f32>(x_477.x, x_477.y, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_489 : vec4<f32> = vs_TEXCOORD2;
  let x_492 : f32 = x_125.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_489.x, x_489.y), x_492);
  let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.w);
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = u_xlat7.x;
  let x_500 : f32 = u_xlat7.z;
  u_xlat7.x = (x_498 * x_500);
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec2<f32> = ((vec2<f32>(x_503.x, x_503.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  let x_511 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_509.x, x_509.y), vec2<f32>(x_511.x, x_511.y));
  let x_514 : f32 = u_xlat61;
  u_xlat61 = min(x_514, 1.0f);
  let x_516 : f32 = u_xlat61;
  u_xlat61 = (-(x_516) + 1.0f);
  let x_519 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_519);
  let x_521 : f32 = u_xlat61;
  u_xlat8.z = max(x_521, 1.00000002e-16f);
  let x_524 : vec4<f32> = u_xlat7;
  let x_528 : f32 = x_30.x_NormalScale2;
  let x_530 : f32 = x_30.x_NormalScale2;
  let x_531 : vec2<f32> = vec2<f32>(x_528, x_530);
  let x_535 : vec2<f32> = (vec2<f32>(x_524.x, x_524.y) * vec2<f32>(x_531.x, x_531.y));
  let x_536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat8;
  let x_543 : vec4<f32> = u_xlat6;
  let x_545 : vec3<f32> = ((vec3<f32>(x_538.z, x_538.z, x_538.z) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_552 : vec4<f32> = vs_TEXCOORD2;
  let x_555 : f32 = x_125.x_GlobalMipBias.x;
  let x_556 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_552.z, x_552.w), x_555);
  let x_557 : vec3<f32> = vec3<f32>(x_556.x, x_556.y, x_556.w);
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat7.x;
  let x_563 : f32 = u_xlat7.z;
  u_xlat7.x = (x_561 * x_563);
  let x_566 : vec4<f32> = u_xlat7;
  let x_569 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  let x_574 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_572.x, x_572.y), vec2<f32>(x_574.x, x_574.y));
  let x_577 : f32 = u_xlat61;
  u_xlat61 = min(x_577, 1.0f);
  let x_579 : f32 = u_xlat61;
  u_xlat61 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_582);
  let x_584 : f32 = u_xlat61;
  u_xlat8.z = max(x_584, 1.00000002e-16f);
  let x_587 : vec4<f32> = u_xlat7;
  let x_591 : f32 = x_30.x_NormalScale3;
  let x_593 : f32 = x_30.x_NormalScale3;
  let x_594 : vec2<f32> = vec2<f32>(x_591, x_593);
  let x_598 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_594.x, x_594.y));
  let x_599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec4<f32> = u_xlat8;
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.w, x_601.w, x_601.w) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat6.z;
  u_xlat6.w = (x_612 + 0.00001f);
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_616.x, x_616.y, x_616.w), vec3<f32>(x_618.x, x_618.y, x_618.w));
  let x_621 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_621);
  let x_623 : f32 = u_xlat61;
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.w));
  let x_628 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_631;
  let x_634 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_634;
  let x_637 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_637;
  let x_640 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_640;
  let x_643 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_652;
  let x_654 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_654 + x_655);
  let x_658 : f32 = u_xlat0.z;
  u_xlat8.x = x_658;
  let x_661 : f32 = u_xlat1.z;
  u_xlat8.y = x_661;
  let x_664 : f32 = u_xlat2.z;
  u_xlat8.z = x_664;
  let x_667 : f32 = u_xlat3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat9;
  let x_672 : f32 = x_30.x_Smoothness0;
  let x_674 : f32 = x_30.x_Smoothness1;
  let x_676 : f32 = x_30.x_Smoothness2;
  let x_678 : f32 = x_30.x_Smoothness3;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_669) * vec4<f32>(x_672, x_674, x_676, x_678)) + x_681);
  let x_685 : f32 = x_30.x_LayerHasMask0;
  let x_688 : f32 = x_30.x_LayerHasMask1;
  let x_691 : f32 = x_30.x_LayerHasMask2;
  let x_694 : f32 = x_30.x_LayerHasMask3;
  let x_696 : vec4<f32> = u_xlat8;
  let x_698 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_685, x_688, x_691, x_694) * x_696) + x_698);
  let x_701 : vec4<f32> = u_xlat4;
  let x_702 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_701, x_702);
  let x_705 : f32 = u_xlat0.x;
  u_xlat8.x = x_705;
  let x_708 : f32 = u_xlat1.x;
  u_xlat8.y = x_708;
  let x_711 : f32 = u_xlat2.x;
  u_xlat8.z = x_711;
  let x_714 : f32 = u_xlat3.x;
  u_xlat8.w = x_714;
  let x_716 : vec4<f32> = u_xlat8;
  let x_719 : f32 = x_30.x_Metallic0;
  let x_722 : f32 = x_30.x_Metallic1;
  let x_725 : f32 = x_30.x_Metallic2;
  let x_728 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_716 + -(vec4<f32>(x_719, x_722, x_725, x_728)));
  let x_733 : f32 = x_30.x_LayerHasMask0;
  let x_735 : f32 = x_30.x_LayerHasMask1;
  let x_737 : f32 = x_30.x_LayerHasMask2;
  let x_739 : f32 = x_30.x_LayerHasMask3;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_30.x_Metallic0;
  let x_746 : f32 = x_30.x_Metallic1;
  let x_748 : f32 = x_30.x_Metallic2;
  let x_750 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_733, x_735, x_737, x_739) * x_741) + vec4<f32>(x_744, x_746, x_748, x_750));
  let x_753 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_753, x_754);
  let x_758 : f32 = u_xlat0.y;
  u_xlat3.x = x_758;
  let x_761 : f32 = u_xlat1.y;
  u_xlat3.y = x_761;
  let x_764 : f32 = u_xlat2.y;
  u_xlat3.z = x_764;
  let x_766 : vec4<f32> = u_xlat7;
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_766) + x_768);
  let x_771 : f32 = x_30.x_LayerHasMask0;
  let x_773 : f32 = x_30.x_LayerHasMask1;
  let x_775 : f32 = x_30.x_LayerHasMask2;
  let x_777 : f32 = x_30.x_LayerHasMask3;
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_771, x_773, x_775, x_777) * x_779) + x_781);
  let x_784 : vec4<f32> = u_xlat4;
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_784, x_785);
  let x_787 : vec4<f32> = u_xlat6;
  let x_790 : vec4<f32> = vs_TEXCOORD5;
  let x_792 : vec3<f32> = (vec3<f32>(x_787.y, x_787.y, x_787.y) * vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD4;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * -(vec3<f32>(x_798.x, x_798.y, x_798.z))) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_810 : vec4<f32> = vs_TEXCOORD3;
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec3<f32> = ((vec3<f32>(x_807.z, x_807.z, x_807.z) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_823);
  let x_825 : f32 = u_xlat61;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = (vec3<f32>(x_825, x_825, x_825) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_837 : vec4<f32> = vs_TEXCOORD0;
  let x_840 : f32 = x_125.x_GlobalMipBias.x;
  let x_841 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_837.z, x_837.w), x_840);
  u_xlat2 = vec3<f32>(x_841.x, x_841.y, x_841.z);
  let x_845 : vec4<f32> = x_125.x_ScaledScreenParams;
  let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
  let x_850 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_846.x, x_846.y));
  let x_851 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat3;
  let x_855 : vec4<f32> = hlslcc_FragCoord;
  let x_857 : vec2<f32> = (vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_855.x, x_855.y));
  let x_858 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
  let x_861 : f32 = u_xlat3.y;
  let x_863 : f32 = x_125.x_ScaleBiasRt.x;
  let x_866 : f32 = x_125.x_ScaleBiasRt.y;
  u_xlat61 = ((x_861 * x_863) + x_866);
  let x_868 : f32 = u_xlat61;
  u_xlat3.z = (-(x_868) + 1.0f);
  let x_873 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_873) * 0.959999979f) + 0.959999979f);
  let x_879 : f32 = u_xlat40;
  let x_880 : f32 = u_xlat61;
  u_xlat62 = (x_879 + -(x_880));
  let x_883 : f32 = u_xlat61;
  let x_885 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = (vec3<f32>(x_883, x_883, x_883) * vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat5;
  let x_894 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_895 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec3<f32> = u_xlat0;
  let x_899 : vec4<f32> = u_xlat5;
  let x_904 : vec3<f32> = ((vec3<f32>(x_897.x, x_897.x, x_897.x) * vec3<f32>(x_899.x, x_899.y, x_899.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : f32 = u_xlat40;
  u_xlat0.x = (-(x_907) + 1.0f);
  let x_912 : f32 = u_xlat0.x;
  let x_914 : f32 = u_xlat0.x;
  u_xlat40 = (x_912 * x_914);
  let x_916 : f32 = u_xlat40;
  u_xlat40 = max(x_916, 0.0078125f);
  let x_919 : f32 = u_xlat40;
  let x_920 : f32 = u_xlat40;
  u_xlat61 = (x_919 * x_920);
  let x_922 : f32 = u_xlat62;
  u_xlat62 = (x_922 + 1.0f);
  let x_924 : f32 = u_xlat62;
  u_xlat62 = clamp(x_924, 0.0f, 1.0f);
  let x_927 : f32 = u_xlat40;
  u_xlat23 = ((x_927 * 4.0f) + 2.0f);
  let x_935 : vec4<f32> = u_xlat3;
  let x_938 : f32 = x_125.x_GlobalMipBias.x;
  let x_939 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_935.x, x_935.z), x_938);
  u_xlat3.x = x_939.x;
  let x_944 : f32 = u_xlat3.x;
  u_xlat43 = (x_944 + -1.0f);
  let x_947 : f32 = x_125.x_AmbientOcclusionParam.w;
  let x_948 : f32 = u_xlat43;
  u_xlat43 = ((x_947 * x_948) + 1.0f);
  let x_951 : f32 = u_xlat20;
  let x_953 : f32 = u_xlat3.x;
  u_xlat20 = min(x_951, x_953);
  let x_964 : f32 = x_962.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_964);
  let x_968 : bool = u_xlatb3.x;
  if (x_968) {
    let x_972 : f32 = x_962.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_972 == 1.0f);
    let x_976 : bool = u_xlatb3.x;
    if (x_976) {
      let x_980 : vec4<f32> = vs_TEXCOORD8;
      let x_983 : vec4<f32> = x_962.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y) + x_983);
      let x_986 : vec4<f32> = u_xlat6;
      let x_987 : vec2<f32> = vec2<f32>(x_986.x, x_986.y);
      let x_989 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_987.x, x_987.y, x_989);
      let x_1001 : vec3<f32> = txVec0;
      let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1001.xy, x_1001.z);
      u_xlat7.x = x_1003;
      let x_1006 : vec4<f32> = u_xlat6;
      let x_1007 : vec2<f32> = vec2<f32>(x_1006.z, x_1006.w);
      let x_1009 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1007.x, x_1007.y, x_1009);
      let x_1016 : vec3<f32> = txVec1;
      let x_1018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1016.xy, x_1016.z);
      u_xlat7.y = x_1018;
      let x_1020 : vec4<f32> = vs_TEXCOORD8;
      let x_1023 : vec4<f32> = x_962.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) + x_1023);
      let x_1026 : vec4<f32> = u_xlat6;
      let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
      let x_1029 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
      let x_1036 : vec3<f32> = txVec2;
      let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1036.xy, x_1036.z);
      u_xlat7.z = x_1038;
      let x_1041 : vec4<f32> = u_xlat6;
      let x_1042 : vec2<f32> = vec2<f32>(x_1041.z, x_1041.w);
      let x_1044 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1042.x, x_1042.y, x_1044);
      let x_1051 : vec3<f32> = txVec3;
      let x_1053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1051.xy, x_1051.z);
      u_xlat7.w = x_1053;
      let x_1055 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1055, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1063 : f32 = x_962.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1063 == 2.0f);
      let x_1065 : bool = u_xlatb63;
      if (x_1065) {
        let x_1068 : vec4<f32> = vs_TEXCOORD8;
        let x_1071 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1071.z, x_1071.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1075 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1079 : vec2<f32> = floor(vec2<f32>(x_1077.x, x_1077.y));
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1084 : vec4<f32> = vs_TEXCOORD8;
        let x_1087 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.z, x_1087.w)) + -(vec2<f32>(x_1090.x, x_1090.y)));
        let x_1094 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1094.x, x_1094.x, x_1094.y, x_1094.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1098.x, x_1098.x, x_1098.z, x_1098.z) * vec4<f32>(x_1100.x, x_1100.x, x_1100.z, x_1100.z));
        let x_1103 : vec4<f32> = u_xlat8;
        let x_1107 : vec2<f32> = (vec2<f32>(x_1103.y, x_1103.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1107.x, x_1108.y, x_1107.y, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat8;
        let x_1113 : vec2<f32> = u_xlat46;
        let x_1115 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1113));
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
        let x_1119 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1119) + vec2<f32>(1.0f, 1.0f));
        let x_1122 : vec2<f32> = u_xlat46;
        let x_1124 : vec2<f32> = min(x_1122, vec2<f32>(0.0f, 0.0f));
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat9;
        let x_1130 : vec4<f32> = u_xlat9;
        let x_1133 : vec2<f32> = u_xlat48;
        let x_1134 : vec2<f32> = ((-(vec2<f32>(x_1127.x, x_1127.y)) * vec2<f32>(x_1130.x, x_1130.y)) + x_1133);
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1137 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1137, vec2<f32>(0.0f, 0.0f));
        let x_1139 : vec2<f32> = u_xlat46;
        let x_1141 : vec2<f32> = u_xlat46;
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1139) * x_1141) + vec2<f32>(x_1143.y, x_1143.w));
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1146.x, x_1146.y) + vec2<f32>(1.0f, 1.0f));
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1151 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1151 + vec2<f32>(1.0f, 1.0f));
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1157 : vec2<f32> = (vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : vec2<f32> = u_xlat48;
        let x_1161 : vec2<f32> = (x_1160 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1166 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : vec2<f32> = u_xlat46;
        let x_1170 : vec2<f32> = (x_1169 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1171 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1173 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1173.y, x_1173.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1177 : f32 = u_xlat9.x;
        u_xlat10.z = x_1177;
        let x_1180 : f32 = u_xlat46.x;
        u_xlat10.w = x_1180;
        let x_1183 : f32 = u_xlat11.x;
        u_xlat8.z = x_1183;
        let x_1186 : f32 = u_xlat7.x;
        u_xlat8.w = x_1186;
        let x_1188 : vec4<f32> = u_xlat8;
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1188.z, x_1188.w, x_1188.x, x_1188.z) + vec4<f32>(x_1190.z, x_1190.w, x_1190.x, x_1190.z));
        let x_1194 : f32 = u_xlat10.y;
        u_xlat9.z = x_1194;
        let x_1197 : f32 = u_xlat46.y;
        u_xlat9.w = x_1197;
        let x_1200 : f32 = u_xlat8.y;
        u_xlat11.z = x_1200;
        let x_1203 : f32 = u_xlat7.z;
        u_xlat11.w = x_1203;
        let x_1205 : vec4<f32> = u_xlat9;
        let x_1207 : vec4<f32> = u_xlat11;
        let x_1209 : vec3<f32> = (vec3<f32>(x_1205.z, x_1205.y, x_1205.w) + vec3<f32>(x_1207.z, x_1207.y, x_1207.w));
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1214 : vec4<f32> = u_xlat12;
        let x_1216 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.z, x_1212.w) / vec3<f32>(x_1214.z, x_1214.w, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1225 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1226 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat11;
        let x_1230 : vec4<f32> = u_xlat7;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1228.z, x_1228.y, x_1228.w) / vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat9;
        let x_1237 : vec3<f32> = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1243 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1245 : vec3<f32> = (vec3<f32>(x_1240.y, x_1240.x, x_1240.z) * vec3<f32>(x_1243.x, x_1243.x, x_1243.x));
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat9;
        let x_1251 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1253 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * vec3<f32>(x_1251.y, x_1251.y, x_1251.y));
        let x_1254 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
        let x_1257 : f32 = u_xlat9.x;
        u_xlat8.w = x_1257;
        let x_1259 : vec4<f32> = u_xlat6;
        let x_1262 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.y, x_1265.w, x_1265.x, x_1265.w));
        let x_1268 : vec4<f32> = u_xlat6;
        let x_1271 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1271.x, x_1271.y)) + vec2<f32>(x_1274.z, x_1274.w));
        let x_1278 : f32 = u_xlat8.y;
        u_xlat9.w = x_1278;
        let x_1280 : vec4<f32> = u_xlat9;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.y, x_1280.z);
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1282.x, x_1281.x, x_1282.z, x_1281.y);
        let x_1284 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1290.y));
        let x_1293 : vec4<f32> = u_xlat6;
        let x_1296 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y) * vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y)) + vec4<f32>(x_1299.w, x_1299.y, x_1299.w, x_1299.z));
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1305 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.w, x_1308.z, x_1308.w));
        let x_1311 : vec4<f32> = u_xlat7;
        let x_1313 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1311.x, x_1311.x, x_1311.x, x_1311.y) * vec4<f32>(x_1313.z, x_1313.w, x_1313.y, x_1313.z));
        let x_1317 : vec4<f32> = u_xlat7;
        let x_1319 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1317.y, x_1317.y, x_1317.z, x_1317.z) * x_1319);
        let x_1323 : f32 = u_xlat7.z;
        let x_1325 : f32 = u_xlat12.y;
        u_xlat63 = (x_1323 * x_1325);
        let x_1328 : vec4<f32> = u_xlat10;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.x, x_1328.y);
        let x_1331 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1339 : vec3<f32> = txVec4;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1339.xy, x_1339.z);
        u_xlat64 = x_1341;
        let x_1343 : vec4<f32> = u_xlat10;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.z, x_1343.w);
        let x_1346 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1354 : vec3<f32> = txVec5;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1354.xy, x_1354.z);
        u_xlat65 = x_1356;
        let x_1357 : f32 = u_xlat65;
        let x_1359 : f32 = u_xlat13.y;
        u_xlat65 = (x_1357 * x_1359);
        let x_1362 : f32 = u_xlat13.x;
        let x_1363 : f32 = u_xlat64;
        let x_1365 : f32 = u_xlat65;
        u_xlat64 = ((x_1362 * x_1363) + x_1365);
        let x_1368 : vec2<f32> = u_xlat46;
        let x_1370 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec6;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1377.xy, x_1377.z);
        u_xlat65 = x_1379;
        let x_1381 : f32 = u_xlat13.z;
        let x_1382 : f32 = u_xlat65;
        let x_1384 : f32 = u_xlat64;
        u_xlat64 = ((x_1381 * x_1382) + x_1384);
        let x_1387 : vec4<f32> = u_xlat9;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec7;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat65 = x_1399;
        let x_1401 : f32 = u_xlat13.w;
        let x_1402 : f32 = u_xlat65;
        let x_1404 : f32 = u_xlat64;
        u_xlat64 = ((x_1401 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat11;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec8;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat65 = x_1419;
        let x_1421 : f32 = u_xlat14.x;
        let x_1422 : f32 = u_xlat65;
        let x_1424 : f32 = u_xlat64;
        u_xlat64 = ((x_1421 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat11;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec9;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1437.xy, x_1437.z);
        u_xlat65 = x_1439;
        let x_1441 : f32 = u_xlat14.y;
        let x_1442 : f32 = u_xlat65;
        let x_1444 : f32 = u_xlat64;
        u_xlat64 = ((x_1441 * x_1442) + x_1444);
        let x_1447 : vec4<f32> = u_xlat9;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec10;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat65 = x_1459;
        let x_1461 : f32 = u_xlat14.z;
        let x_1462 : f32 = u_xlat65;
        let x_1464 : f32 = u_xlat64;
        u_xlat64 = ((x_1461 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat8;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec11;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat65 = x_1479;
        let x_1481 : f32 = u_xlat14.w;
        let x_1482 : f32 = u_xlat65;
        let x_1484 : f32 = u_xlat64;
        u_xlat64 = ((x_1481 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat8;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.z, x_1487.w);
        let x_1490 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec12;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1497.xy, x_1497.z);
        u_xlat65 = x_1499;
        let x_1500 : f32 = u_xlat63;
        let x_1501 : f32 = u_xlat65;
        let x_1503 : f32 = u_xlat64;
        u_xlat3.x = ((x_1500 * x_1501) + x_1503);
      } else {
        let x_1507 : vec4<f32> = vs_TEXCOORD8;
        let x_1510 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1513 : vec2<f32> = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.z, x_1510.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1514 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
        let x_1516 : vec4<f32> = u_xlat6;
        let x_1518 : vec2<f32> = floor(vec2<f32>(x_1516.x, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
        let x_1521 : vec4<f32> = vs_TEXCOORD8;
        let x_1524 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1524.z, x_1524.w)) + -(vec2<f32>(x_1527.x, x_1527.y)));
        let x_1531 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1531.x, x_1531.x, x_1531.y, x_1531.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1534 : vec4<f32> = u_xlat7;
        let x_1536 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1534.x, x_1534.x, x_1534.z, x_1534.z) * vec4<f32>(x_1536.x, x_1536.x, x_1536.z, x_1536.z));
        let x_1539 : vec4<f32> = u_xlat8;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1539.y, x_1539.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1544 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1546 : vec4<f32> = u_xlat8;
        let x_1549 : vec2<f32> = u_xlat46;
        let x_1551 : vec2<f32> = ((vec2<f32>(x_1546.x, x_1546.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1549));
        let x_1552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1551.x, x_1552.y, x_1551.y, x_1552.w);
        let x_1554 : vec2<f32> = u_xlat46;
        let x_1556 : vec2<f32> = (-(x_1554) + vec2<f32>(1.0f, 1.0f));
        let x_1557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1556.x, x_1556.y, x_1557.z, x_1557.w);
        let x_1559 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1559, vec2<f32>(0.0f, 0.0f));
        let x_1561 : vec2<f32> = u_xlat48;
        let x_1563 : vec2<f32> = u_xlat48;
        let x_1565 : vec4<f32> = u_xlat8;
        let x_1567 : vec2<f32> = ((-(x_1561) * x_1563) + vec2<f32>(x_1565.x, x_1565.y));
        let x_1568 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1567.x, x_1567.y, x_1568.z, x_1568.w);
        let x_1570 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1570, vec2<f32>(0.0f, 0.0f));
        let x_1573 : vec2<f32> = u_xlat48;
        let x_1575 : vec2<f32> = u_xlat48;
        let x_1577 : vec4<f32> = u_xlat7;
        let x_1579 : vec2<f32> = ((-(x_1573) * x_1575) + vec2<f32>(x_1577.y, x_1577.w));
        let x_1580 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1579.x, x_1580.y, x_1579.y);
        let x_1582 : vec4<f32> = u_xlat8;
        let x_1584 : vec2<f32> = (vec2<f32>(x_1582.x, x_1582.y) + vec2<f32>(2.0f, 2.0f));
        let x_1585 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1584.x, x_1584.y, x_1585.z, x_1585.w);
        let x_1587 : vec3<f32> = u_xlat27;
        let x_1589 : vec2<f32> = (vec2<f32>(x_1587.x, x_1587.z) + vec2<f32>(2.0f, 2.0f));
        let x_1590 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1590.x, x_1589.x, x_1590.z, x_1589.y);
        let x_1593 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1593 * 0.081632003f);
        let x_1597 : vec4<f32> = u_xlat7;
        let x_1600 : vec3<f32> = (vec3<f32>(x_1597.z, x_1597.x, x_1597.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1601 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
        let x_1603 : vec4<f32> = u_xlat8;
        let x_1606 : vec2<f32> = (vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1607 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
        let x_1610 : f32 = u_xlat11.y;
        u_xlat10.x = x_1610;
        let x_1612 : vec2<f32> = u_xlat46;
        let x_1619 : vec2<f32> = ((vec2<f32>(x_1612.x, x_1612.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1620 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1620.x, x_1619.x, x_1620.z, x_1619.y);
        let x_1622 : vec2<f32> = u_xlat46;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1622.x, x_1622.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1627 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1626.x, x_1627.y, x_1626.y, x_1627.w);
        let x_1630 : f32 = u_xlat7.x;
        u_xlat8.y = x_1630;
        let x_1633 : f32 = u_xlat9.y;
        u_xlat8.w = x_1633;
        let x_1635 : vec4<f32> = u_xlat8;
        let x_1636 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1635 + x_1636);
        let x_1638 : vec2<f32> = u_xlat46;
        let x_1641 : vec2<f32> = ((vec2<f32>(x_1638.y, x_1638.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1642 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1642.x, x_1641.x, x_1642.z, x_1641.y);
        let x_1644 : vec2<f32> = u_xlat46;
        let x_1647 : vec2<f32> = ((vec2<f32>(x_1644.y, x_1644.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1648 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1647.x, x_1648.y, x_1647.y, x_1648.w);
        let x_1651 : f32 = u_xlat7.y;
        u_xlat9.y = x_1651;
        let x_1653 : vec4<f32> = u_xlat9;
        let x_1654 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1653 + x_1654);
        let x_1656 : vec4<f32> = u_xlat8;
        let x_1657 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1656 / x_1657);
        let x_1659 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1659 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1665 : vec4<f32> = u_xlat9;
        let x_1666 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1665 / x_1666);
        let x_1668 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1668 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1670 : vec4<f32> = u_xlat8;
        let x_1673 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1670.w, x_1670.x, x_1670.y, x_1670.z) * vec4<f32>(x_1673.x, x_1673.x, x_1673.x, x_1673.x));
        let x_1676 : vec4<f32> = u_xlat9;
        let x_1679 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1676.x, x_1676.w, x_1676.y, x_1676.z) * vec4<f32>(x_1679.y, x_1679.y, x_1679.y, x_1679.y));
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1683 : vec3<f32> = vec3<f32>(x_1682.y, x_1682.z, x_1682.w);
        let x_1684 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1683.x, x_1684.y, x_1683.y, x_1683.z);
        let x_1687 : f32 = u_xlat9.x;
        u_xlat11.y = x_1687;
        let x_1689 : vec4<f32> = u_xlat6;
        let x_1692 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1695 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1689.x, x_1689.y, x_1689.x, x_1689.y) * vec4<f32>(x_1692.x, x_1692.y, x_1692.x, x_1692.y)) + vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1695.y));
        let x_1698 : vec4<f32> = u_xlat6;
        let x_1701 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1704 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(x_1701.x, x_1701.y)) + vec2<f32>(x_1704.w, x_1704.y));
        let x_1708 : f32 = u_xlat11.y;
        u_xlat8.y = x_1708;
        let x_1711 : f32 = u_xlat9.z;
        u_xlat11.y = x_1711;
        let x_1713 : vec4<f32> = u_xlat6;
        let x_1716 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1719 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1713.x, x_1713.y, x_1713.x, x_1713.y) * vec4<f32>(x_1716.x, x_1716.y, x_1716.x, x_1716.y)) + vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1719.y));
        let x_1722 : vec4<f32> = u_xlat6;
        let x_1725 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1728 : vec4<f32> = u_xlat11;
        let x_1730 : vec2<f32> = ((vec2<f32>(x_1722.x, x_1722.y) * vec2<f32>(x_1725.x, x_1725.y)) + vec2<f32>(x_1728.w, x_1728.y));
        let x_1731 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1730.x, x_1730.y, x_1731.z, x_1731.w);
        let x_1734 : f32 = u_xlat11.y;
        u_xlat8.z = x_1734;
        let x_1737 : vec4<f32> = u_xlat6;
        let x_1740 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1743 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1737.x, x_1737.y, x_1737.x, x_1737.y) * vec4<f32>(x_1740.x, x_1740.y, x_1740.x, x_1740.y)) + vec4<f32>(x_1743.x, x_1743.y, x_1743.x, x_1743.z));
        let x_1747 : f32 = u_xlat9.w;
        u_xlat11.y = x_1747;
        let x_1750 : vec4<f32> = u_xlat6;
        let x_1753 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1750.x, x_1750.y, x_1750.x, x_1750.y) * vec4<f32>(x_1753.x, x_1753.y, x_1753.x, x_1753.y)) + vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1756.y));
        let x_1760 : vec4<f32> = u_xlat6;
        let x_1763 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1766 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1760.x, x_1760.y) * vec2<f32>(x_1763.x, x_1763.y)) + vec2<f32>(x_1766.w, x_1766.y));
        let x_1770 : f32 = u_xlat11.y;
        u_xlat8.w = x_1770;
        let x_1773 : vec4<f32> = u_xlat6;
        let x_1776 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1779 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1776.x, x_1776.y)) + vec2<f32>(x_1779.x, x_1779.w));
        let x_1782 : vec4<f32> = u_xlat11;
        let x_1783 : vec3<f32> = vec3<f32>(x_1782.x, x_1782.z, x_1782.w);
        let x_1784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1783.x, x_1784.y, x_1783.y, x_1783.z);
        let x_1786 : vec4<f32> = u_xlat6;
        let x_1789 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1792 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1786.x, x_1786.y, x_1786.x, x_1786.y) * vec4<f32>(x_1789.x, x_1789.y, x_1789.x, x_1789.y)) + vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1792.y));
        let x_1796 : vec4<f32> = u_xlat6;
        let x_1799 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1802 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1796.x, x_1796.y) * vec2<f32>(x_1799.x, x_1799.y)) + vec2<f32>(x_1802.w, x_1802.y));
        let x_1806 : f32 = u_xlat8.x;
        u_xlat9.x = x_1806;
        let x_1808 : vec4<f32> = u_xlat6;
        let x_1811 : vec4<f32> = x_962.x_MainLightShadowmapSize;
        let x_1814 : vec4<f32> = u_xlat9;
        let x_1816 : vec2<f32> = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(x_1811.x, x_1811.y)) + vec2<f32>(x_1814.x, x_1814.y));
        let x_1817 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1816.x, x_1816.y, x_1817.z, x_1817.w);
        let x_1820 : vec4<f32> = u_xlat7;
        let x_1822 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1820.x, x_1820.x, x_1820.x, x_1820.x) * x_1822);
        let x_1825 : vec4<f32> = u_xlat7;
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1825.y, x_1825.y, x_1825.y, x_1825.y) * x_1827);
        let x_1830 : vec4<f32> = u_xlat7;
        let x_1832 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1830.z, x_1830.z, x_1830.z, x_1830.z) * x_1832);
        let x_1834 : vec4<f32> = u_xlat7;
        let x_1836 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1834.w, x_1834.w, x_1834.w, x_1834.w) * x_1836);
        let x_1839 : vec4<f32> = u_xlat12;
        let x_1840 : vec2<f32> = vec2<f32>(x_1839.x, x_1839.y);
        let x_1842 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1840.x, x_1840.y, x_1842);
        let x_1849 : vec3<f32> = txVec13;
        let x_1851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1849.xy, x_1849.z);
        u_xlat63 = x_1851;
        let x_1853 : vec4<f32> = u_xlat12;
        let x_1854 : vec2<f32> = vec2<f32>(x_1853.z, x_1853.w);
        let x_1856 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec14;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1863.xy, x_1863.z);
        u_xlat64 = x_1865;
        let x_1866 : f32 = u_xlat64;
        let x_1868 : f32 = u_xlat17.y;
        u_xlat64 = (x_1866 * x_1868);
        let x_1871 : f32 = u_xlat17.x;
        let x_1872 : f32 = u_xlat63;
        let x_1874 : f32 = u_xlat64;
        u_xlat63 = ((x_1871 * x_1872) + x_1874);
        let x_1877 : vec2<f32> = u_xlat46;
        let x_1879 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec15;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1886.xy, x_1886.z);
        u_xlat64 = x_1888;
        let x_1890 : f32 = u_xlat17.z;
        let x_1891 : f32 = u_xlat64;
        let x_1893 : f32 = u_xlat63;
        u_xlat63 = ((x_1890 * x_1891) + x_1893);
        let x_1896 : vec4<f32> = u_xlat15;
        let x_1897 : vec2<f32> = vec2<f32>(x_1896.x, x_1896.y);
        let x_1899 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec16;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1906.xy, x_1906.z);
        u_xlat64 = x_1908;
        let x_1910 : f32 = u_xlat17.w;
        let x_1911 : f32 = u_xlat64;
        let x_1913 : f32 = u_xlat63;
        u_xlat63 = ((x_1910 * x_1911) + x_1913);
        let x_1916 : vec4<f32> = u_xlat13;
        let x_1917 : vec2<f32> = vec2<f32>(x_1916.x, x_1916.y);
        let x_1919 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1917.x, x_1917.y, x_1919);
        let x_1926 : vec3<f32> = txVec17;
        let x_1928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1926.xy, x_1926.z);
        u_xlat64 = x_1928;
        let x_1930 : f32 = u_xlat18.x;
        let x_1931 : f32 = u_xlat64;
        let x_1933 : f32 = u_xlat63;
        u_xlat63 = ((x_1930 * x_1931) + x_1933);
        let x_1936 : vec4<f32> = u_xlat13;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.z, x_1936.w);
        let x_1939 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec18;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1946.xy, x_1946.z);
        u_xlat64 = x_1948;
        let x_1950 : f32 = u_xlat18.y;
        let x_1951 : f32 = u_xlat64;
        let x_1953 : f32 = u_xlat63;
        u_xlat63 = ((x_1950 * x_1951) + x_1953);
        let x_1956 : vec4<f32> = u_xlat14;
        let x_1957 : vec2<f32> = vec2<f32>(x_1956.x, x_1956.y);
        let x_1959 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec19;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1966.xy, x_1966.z);
        u_xlat64 = x_1968;
        let x_1970 : f32 = u_xlat18.z;
        let x_1971 : f32 = u_xlat64;
        let x_1973 : f32 = u_xlat63;
        u_xlat63 = ((x_1970 * x_1971) + x_1973);
        let x_1976 : vec4<f32> = u_xlat15;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.z, x_1976.w);
        let x_1979 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec20;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1986.xy, x_1986.z);
        u_xlat64 = x_1988;
        let x_1990 : f32 = u_xlat18.w;
        let x_1991 : f32 = u_xlat64;
        let x_1993 : f32 = u_xlat63;
        u_xlat63 = ((x_1990 * x_1991) + x_1993);
        let x_1996 : vec4<f32> = u_xlat16;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.x, x_1996.y);
        let x_1999 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec21;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2006.xy, x_2006.z);
        u_xlat64 = x_2008;
        let x_2010 : f32 = u_xlat19.x;
        let x_2011 : f32 = u_xlat64;
        let x_2013 : f32 = u_xlat63;
        u_xlat63 = ((x_2010 * x_2011) + x_2013);
        let x_2016 : vec4<f32> = u_xlat16;
        let x_2017 : vec2<f32> = vec2<f32>(x_2016.z, x_2016.w);
        let x_2019 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2017.x, x_2017.y, x_2019);
        let x_2026 : vec3<f32> = txVec22;
        let x_2028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2026.xy, x_2026.z);
        u_xlat64 = x_2028;
        let x_2030 : f32 = u_xlat19.y;
        let x_2031 : f32 = u_xlat64;
        let x_2033 : f32 = u_xlat63;
        u_xlat63 = ((x_2030 * x_2031) + x_2033);
        let x_2036 : vec2<f32> = u_xlat28;
        let x_2038 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec23;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2045.xy, x_2045.z);
        u_xlat64 = x_2047;
        let x_2049 : f32 = u_xlat19.z;
        let x_2050 : f32 = u_xlat64;
        let x_2052 : f32 = u_xlat63;
        u_xlat63 = ((x_2049 * x_2050) + x_2052);
        let x_2055 : vec2<f32> = u_xlat54;
        let x_2057 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec24;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2064.xy, x_2064.z);
        u_xlat64 = x_2066;
        let x_2068 : f32 = u_xlat19.w;
        let x_2069 : f32 = u_xlat64;
        let x_2071 : f32 = u_xlat63;
        u_xlat63 = ((x_2068 * x_2069) + x_2071);
        let x_2074 : vec4<f32> = u_xlat11;
        let x_2075 : vec2<f32> = vec2<f32>(x_2074.x, x_2074.y);
        let x_2077 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
        let x_2084 : vec3<f32> = txVec25;
        let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2084.xy, x_2084.z);
        u_xlat64 = x_2086;
        let x_2088 : f32 = u_xlat7.x;
        let x_2089 : f32 = u_xlat64;
        let x_2091 : f32 = u_xlat63;
        u_xlat63 = ((x_2088 * x_2089) + x_2091);
        let x_2094 : vec4<f32> = u_xlat11;
        let x_2095 : vec2<f32> = vec2<f32>(x_2094.z, x_2094.w);
        let x_2097 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2095.x, x_2095.y, x_2097);
        let x_2104 : vec3<f32> = txVec26;
        let x_2106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2104.xy, x_2104.z);
        u_xlat64 = x_2106;
        let x_2108 : f32 = u_xlat7.y;
        let x_2109 : f32 = u_xlat64;
        let x_2111 : f32 = u_xlat63;
        u_xlat63 = ((x_2108 * x_2109) + x_2111);
        let x_2114 : vec2<f32> = u_xlat49;
        let x_2116 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2114.x, x_2114.y, x_2116);
        let x_2123 : vec3<f32> = txVec27;
        let x_2125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2123.xy, x_2123.z);
        u_xlat64 = x_2125;
        let x_2127 : f32 = u_xlat7.z;
        let x_2128 : f32 = u_xlat64;
        let x_2130 : f32 = u_xlat63;
        u_xlat63 = ((x_2127 * x_2128) + x_2130);
        let x_2133 : vec4<f32> = u_xlat6;
        let x_2134 : vec2<f32> = vec2<f32>(x_2133.x, x_2133.y);
        let x_2136 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
        let x_2143 : vec3<f32> = txVec28;
        let x_2145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2143.xy, x_2143.z);
        u_xlat64 = x_2145;
        let x_2147 : f32 = u_xlat7.w;
        let x_2148 : f32 = u_xlat64;
        let x_2150 : f32 = u_xlat63;
        u_xlat3.x = ((x_2147 * x_2148) + x_2150);
      }
    }
  } else {
    let x_2155 : vec4<f32> = vs_TEXCOORD8;
    let x_2156 : vec2<f32> = vec2<f32>(x_2155.x, x_2155.y);
    let x_2158 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
    let x_2165 : vec3<f32> = txVec29;
    let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2165.xy, x_2165.z);
    u_xlat3.x = x_2167;
  }
  let x_2170 : f32 = x_962.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2170) + 1.0f);
  let x_2174 : f32 = u_xlat3.x;
  let x_2176 : f32 = x_962.x_MainLightShadowParams.x;
  let x_2178 : f32 = u_xlat63;
  u_xlat3.x = ((x_2174 * x_2176) + x_2178);
  let x_2182 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2182);
  let x_2186 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2186 >= 1.0f);
  let x_2188 : bool = u_xlatb63;
  let x_2189 : bool = u_xlatb64;
  u_xlatb63 = (x_2188 | x_2189);
  let x_2191 : bool = u_xlatb63;
  if (x_2191) {
    x_2192 = 1.0f;
  } else {
    let x_2197 : f32 = u_xlat3.x;
    x_2192 = x_2197;
  }
  let x_2198 : f32 = x_2192;
  u_xlat3.x = x_2198;
  let x_2202 : vec3<f32> = vs_TEXCOORD7;
  let x_2205 : vec3<f32> = x_125.x_WorldSpaceCameraPos;
  let x_2207 : vec3<f32> = (x_2202 + -(x_2205));
  let x_2208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2210 : vec4<f32> = u_xlat6;
  let x_2212 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2210.x, x_2210.y, x_2210.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2215 : f32 = u_xlat63;
  let x_2217 : f32 = x_962.x_MainLightShadowParams.z;
  let x_2220 : f32 = x_962.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2215 * x_2217) + x_2220);
  let x_2222 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2222, 0.0f, 1.0f);
  let x_2225 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2225) + 1.0f);
  let x_2228 : f32 = u_xlat63;
  let x_2229 : f32 = u_xlat64;
  let x_2232 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2228 * x_2229) + x_2232);
  let x_2241 : f32 = x_2239.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_2241 == -1.0f));
  let x_2243 : bool = u_xlatb63;
  if (x_2243) {
    let x_2246 : vec3<f32> = vs_TEXCOORD7;
    let x_2249 : vec4<f32> = x_2239.x_MainLightWorldToLight[1i];
    let x_2251 : vec2<f32> = (vec2<f32>(x_2246.y, x_2246.y) * vec2<f32>(x_2249.x, x_2249.y));
    let x_2252 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2251.x, x_2251.y, x_2252.z, x_2252.w);
    let x_2255 : vec4<f32> = x_2239.x_MainLightWorldToLight[0i];
    let x_2257 : vec3<f32> = vs_TEXCOORD7;
    let x_2260 : vec4<f32> = u_xlat6;
    let x_2262 : vec2<f32> = ((vec2<f32>(x_2255.x, x_2255.y) * vec2<f32>(x_2257.x, x_2257.x)) + vec2<f32>(x_2260.x, x_2260.y));
    let x_2263 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2262.x, x_2262.y, x_2263.z, x_2263.w);
    let x_2266 : vec4<f32> = x_2239.x_MainLightWorldToLight[2i];
    let x_2268 : vec3<f32> = vs_TEXCOORD7;
    let x_2271 : vec4<f32> = u_xlat6;
    let x_2273 : vec2<f32> = ((vec2<f32>(x_2266.x, x_2266.y) * vec2<f32>(x_2268.z, x_2268.z)) + vec2<f32>(x_2271.x, x_2271.y));
    let x_2274 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2273.x, x_2273.y, x_2274.z, x_2274.w);
    let x_2276 : vec4<f32> = u_xlat6;
    let x_2279 : vec4<f32> = x_2239.x_MainLightWorldToLight[3i];
    let x_2281 : vec2<f32> = (vec2<f32>(x_2276.x, x_2276.y) + vec2<f32>(x_2279.x, x_2279.y));
    let x_2282 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2281.x, x_2281.y, x_2282.z, x_2282.w);
    let x_2284 : vec4<f32> = u_xlat6;
    let x_2287 : vec2<f32> = ((vec2<f32>(x_2284.x, x_2284.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2288 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2287.x, x_2287.y, x_2288.z, x_2288.w);
    let x_2295 : vec4<f32> = u_xlat6;
    let x_2298 : f32 = x_125.x_GlobalMipBias.x;
    let x_2299 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2295.x, x_2295.y), x_2298);
    u_xlat6 = x_2299;
    let x_2304 : f32 = x_2239.x_MainLightCookieTextureFormat;
    let x_2306 : f32 = x_2239.x_MainLightCookieTextureFormat;
    let x_2308 : f32 = x_2239.x_MainLightCookieTextureFormat;
    let x_2310 : f32 = x_2239.x_MainLightCookieTextureFormat;
    let x_2311 : vec4<f32> = vec4<f32>(x_2304, x_2306, x_2308, x_2310);
    let x_2318 : vec4<bool> = (vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2311.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2318.x, x_2318.y);
    let x_2321 : bool = u_xlatb7.y;
    if (x_2321) {
      let x_2326 : f32 = u_xlat6.w;
      x_2322 = x_2326;
    } else {
      let x_2329 : f32 = u_xlat6.x;
      x_2322 = x_2329;
    }
    let x_2330 : f32 = x_2322;
    u_xlat63 = x_2330;
    let x_2332 : bool = u_xlatb7.x;
    if (x_2332) {
      let x_2336 : vec4<f32> = u_xlat6;
      x_2333 = vec3<f32>(x_2336.x, x_2336.y, x_2336.z);
    } else {
      let x_2339 : f32 = u_xlat63;
      x_2333 = vec3<f32>(x_2339, x_2339, x_2339);
    }
    let x_2341 : vec3<f32> = x_2333;
    let x_2342 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2348 : vec4<f32> = u_xlat6;
  let x_2351 : vec4<f32> = x_125.x_MainLightColor;
  let x_2353 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) * vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
  let x_2354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
  let x_2356 : f32 = u_xlat43;
  let x_2358 : vec4<f32> = u_xlat6;
  let x_2360 : vec3<f32> = (vec3<f32>(x_2356, x_2356, x_2356) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
  let x_2364 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2364;
  let x_2367 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2367;
  let x_2370 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2370;
  let x_2372 : vec4<f32> = u_xlat7;
  let x_2375 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2372.x, x_2372.y, x_2372.z)), vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : f32 = u_xlat63;
  let x_2379 : f32 = u_xlat63;
  u_xlat63 = (x_2378 + x_2379);
  let x_2381 : vec4<f32> = u_xlat1;
  let x_2383 : f32 = u_xlat63;
  let x_2387 : vec4<f32> = u_xlat7;
  let x_2390 : vec3<f32> = ((vec3<f32>(x_2381.x, x_2381.y, x_2381.z) * -(vec3<f32>(x_2383, x_2383, x_2383))) + -(vec3<f32>(x_2387.x, x_2387.y, x_2387.z)));
  let x_2391 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
  let x_2393 : vec4<f32> = u_xlat1;
  let x_2395 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2393.x, x_2393.y, x_2393.z), vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2398, 0.0f, 1.0f);
  let x_2400 : f32 = u_xlat63;
  u_xlat63 = (-(x_2400) + 1.0f);
  let x_2403 : f32 = u_xlat63;
  let x_2404 : f32 = u_xlat63;
  u_xlat63 = (x_2403 * x_2404);
  let x_2406 : f32 = u_xlat63;
  let x_2407 : f32 = u_xlat63;
  u_xlat63 = (x_2406 * x_2407);
  let x_2410 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2410) * 0.699999988f) + 1.700000048f);
  let x_2417 : f32 = u_xlat0.x;
  let x_2418 : f32 = u_xlat64;
  u_xlat0.x = (x_2417 * x_2418);
  let x_2422 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2422 * 6.0f);
  let x_2434 : vec4<f32> = u_xlat8;
  let x_2437 : f32 = u_xlat0.x;
  let x_2438 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2434.x, x_2434.y, x_2434.z), x_2437);
  u_xlat8 = x_2438;
  let x_2440 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2440 + -1.0f);
  let x_2448 : f32 = x_2446.unity_SpecCube0_HDR.w;
  let x_2450 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2448 * x_2450) + 1.0f);
  let x_2455 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2455, 0.0f);
  let x_2459 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2459);
  let x_2463 : f32 = u_xlat0.x;
  let x_2465 : f32 = x_2446.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2463 * x_2465);
  let x_2469 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2469);
  let x_2473 : f32 = u_xlat0.x;
  let x_2475 : f32 = x_2446.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2473 * x_2475);
  let x_2478 : vec4<f32> = u_xlat8;
  let x_2480 : vec3<f32> = u_xlat0;
  let x_2482 : vec3<f32> = (vec3<f32>(x_2478.x, x_2478.y, x_2478.z) * vec3<f32>(x_2480.x, x_2480.x, x_2480.x));
  let x_2483 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
  let x_2485 : f32 = u_xlat40;
  let x_2487 : f32 = u_xlat40;
  let x_2491 : vec2<f32> = ((vec2<f32>(x_2485, x_2485) * vec2<f32>(x_2487, x_2487)) + vec2<f32>(-1.0f, 1.0f));
  let x_2492 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2491.x, x_2492.y, x_2491.y);
  let x_2495 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2495);
  let x_2497 : vec4<f32> = u_xlat5;
  let x_2500 : f32 = u_xlat62;
  let x_2502 : vec3<f32> = (-(vec3<f32>(x_2497.x, x_2497.y, x_2497.z)) + vec3<f32>(x_2500, x_2500, x_2500));
  let x_2503 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2502.x, x_2502.y, x_2502.z, x_2503.w);
  let x_2505 : f32 = u_xlat63;
  let x_2507 : vec4<f32> = u_xlat9;
  let x_2510 : vec4<f32> = u_xlat5;
  let x_2512 : vec3<f32> = ((vec3<f32>(x_2505, x_2505, x_2505) * vec3<f32>(x_2507.x, x_2507.y, x_2507.z)) + vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
  let x_2513 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
  let x_2515 : f32 = u_xlat40;
  let x_2517 : vec4<f32> = u_xlat9;
  let x_2519 : vec3<f32> = (vec3<f32>(x_2515, x_2515, x_2515) * vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
  let x_2520 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
  let x_2522 : vec4<f32> = u_xlat8;
  let x_2524 : vec4<f32> = u_xlat9;
  let x_2526 : vec3<f32> = (vec3<f32>(x_2522.x, x_2522.y, x_2522.z) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
  let x_2527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
  let x_2529 : vec3<f32> = u_xlat2;
  let x_2530 : vec4<f32> = u_xlat4;
  let x_2533 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2529 * vec3<f32>(x_2530.x, x_2530.y, x_2530.z)) + vec3<f32>(x_2533.x, x_2533.y, x_2533.z));
  let x_2537 : f32 = u_xlat3.x;
  let x_2539 : f32 = x_2446.unity_LightData.z;
  u_xlat40 = (x_2537 * x_2539);
  let x_2541 : vec4<f32> = u_xlat1;
  let x_2544 : vec4<f32> = x_125.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2541.x, x_2541.y, x_2541.z), vec3<f32>(x_2544.x, x_2544.y, x_2544.z));
  let x_2547 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2547, 0.0f, 1.0f);
  let x_2549 : f32 = u_xlat40;
  let x_2550 : f32 = u_xlat62;
  u_xlat40 = (x_2549 * x_2550);
  let x_2552 : f32 = u_xlat40;
  let x_2554 : vec4<f32> = u_xlat6;
  let x_2556 : vec3<f32> = (vec3<f32>(x_2552, x_2552, x_2552) * vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
  let x_2557 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
  let x_2559 : vec4<f32> = u_xlat7;
  let x_2562 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2564 : vec3<f32> = (vec3<f32>(x_2559.x, x_2559.y, x_2559.z) + vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
  let x_2565 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
  let x_2567 : vec4<f32> = u_xlat8;
  let x_2569 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2567.x, x_2567.y, x_2567.z), vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2572 : f32 = u_xlat40;
  u_xlat40 = max(x_2572, 1.17549435e-37f);
  let x_2575 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2575);
  let x_2577 : f32 = u_xlat40;
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec3<f32> = (vec3<f32>(x_2577, x_2577, x_2577) * vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
  let x_2582 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
  let x_2584 : vec4<f32> = u_xlat1;
  let x_2586 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2584.x, x_2584.y, x_2584.z), vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
  let x_2589 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2589, 0.0f, 1.0f);
  let x_2592 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2592.x, x_2592.y, x_2592.z), vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
  let x_2597 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2597, 0.0f, 1.0f);
  let x_2599 : f32 = u_xlat40;
  let x_2600 : f32 = u_xlat40;
  u_xlat40 = (x_2599 * x_2600);
  let x_2602 : f32 = u_xlat40;
  let x_2604 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2602 * x_2604) + 1.000010014f);
  let x_2608 : f32 = u_xlat62;
  let x_2609 : f32 = u_xlat62;
  u_xlat62 = (x_2608 * x_2609);
  let x_2611 : f32 = u_xlat40;
  let x_2612 : f32 = u_xlat40;
  u_xlat40 = (x_2611 * x_2612);
  let x_2614 : f32 = u_xlat62;
  u_xlat62 = max(x_2614, 0.100000001f);
  let x_2617 : f32 = u_xlat40;
  let x_2618 : f32 = u_xlat62;
  u_xlat40 = (x_2617 * x_2618);
  let x_2620 : f32 = u_xlat23;
  let x_2621 : f32 = u_xlat40;
  u_xlat40 = (x_2620 * x_2621);
  let x_2623 : f32 = u_xlat61;
  let x_2624 : f32 = u_xlat40;
  u_xlat40 = (x_2623 / x_2624);
  let x_2626 : vec4<f32> = u_xlat5;
  let x_2628 : f32 = u_xlat40;
  let x_2631 : vec4<f32> = u_xlat4;
  let x_2633 : vec3<f32> = ((vec3<f32>(x_2626.x, x_2626.y, x_2626.z) * vec3<f32>(x_2628, x_2628, x_2628)) + vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
  let x_2634 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
  let x_2636 : vec4<f32> = u_xlat6;
  let x_2638 : vec4<f32> = u_xlat8;
  let x_2640 : vec3<f32> = (vec3<f32>(x_2636.x, x_2636.y, x_2636.z) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
  let x_2641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
  let x_2644 : f32 = x_125.x_AdditionalLightsCount.x;
  let x_2646 : f32 = x_2446.unity_LightData.y;
  u_xlat40 = min(x_2644, x_2646);
  let x_2650 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2650));
  let x_2654 : f32 = x_2239.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2656 : f32 = x_2239.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2658 : f32 = x_2239.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2660 : f32 = x_2239.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2661 : vec4<f32> = vec4<f32>(x_2654, x_2656, x_2658, x_2660);
  let x_2668 : vec4<bool> = (vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2661.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2669 : vec2<bool> = vec2<bool>(x_2668.x, x_2668.w);
  let x_2670 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2669.x, x_2670.y, x_2670.z, x_2669.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2681 : u32 = u_xlatu_loop_1;
    let x_2682 : u32 = u_xlatu40;
    if ((x_2681 < x_2682)) {
    } else {
      break;
    }
    let x_2685 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2685 >> 2u);
    let x_2689 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2689 & 3u));
    let x_2692 : u32 = u_xlatu64;
    let x_2695 : vec4<f32> = x_2446.unity_LightIndices[bitcast<i32>(x_2692)];
    let x_2705 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2710 : vec4<u32> = indexable[x_2705];
    u_xlat64 = dot(x_2695, bitcast<vec4<f32>>(x_2710));
    let x_2713 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2713));
    let x_2716 : vec3<f32> = vs_TEXCOORD7;
    let x_2728 : u32 = u_xlatu64;
    let x_2731 : vec4<f32> = x_2727.x_AdditionalLightsPosition[bitcast<i32>(x_2728)];
    let x_2734 : u32 = u_xlatu64;
    let x_2737 : vec4<f32> = x_2727.x_AdditionalLightsPosition[bitcast<i32>(x_2734)];
    let x_2739 : vec3<f32> = ((-(x_2716) * vec3<f32>(x_2731.w, x_2731.w, x_2731.w)) + vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
    let x_2740 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
    let x_2742 : vec4<f32> = u_xlat9;
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2742.x, x_2742.y, x_2742.z), vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : f32 = u_xlat65;
    u_xlat65 = max(x_2747, 6.10351562e-05f);
    let x_2750 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2750);
    let x_2752 : f32 = u_xlat66;
    let x_2754 : vec4<f32> = u_xlat9;
    let x_2756 : vec3<f32> = (vec3<f32>(x_2752, x_2752, x_2752) * vec3<f32>(x_2754.x, x_2754.y, x_2754.z));
    let x_2757 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2756.x, x_2756.y, x_2756.z, x_2757.w);
    let x_2760 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_2760);
    let x_2762 : f32 = u_xlat65;
    let x_2763 : u32 = u_xlatu64;
    let x_2766 : f32 = x_2727.x_AdditionalLightsAttenuation[bitcast<i32>(x_2763)].x;
    u_xlat65 = (x_2762 * x_2766);
    let x_2768 : f32 = u_xlat65;
    let x_2770 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2768) * x_2770) + 1.0f);
    let x_2773 : f32 = u_xlat65;
    u_xlat65 = max(x_2773, 0.0f);
    let x_2775 : f32 = u_xlat65;
    let x_2776 : f32 = u_xlat65;
    u_xlat65 = (x_2775 * x_2776);
    let x_2778 : f32 = u_xlat65;
    let x_2779 : f32 = u_xlat67;
    u_xlat65 = (x_2778 * x_2779);
    let x_2781 : u32 = u_xlatu64;
    let x_2784 : vec4<f32> = x_2727.x_AdditionalLightsSpotDir[bitcast<i32>(x_2781)];
    let x_2786 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2784.x, x_2784.y, x_2784.z), vec3<f32>(x_2786.x, x_2786.y, x_2786.z));
    let x_2789 : f32 = u_xlat67;
    let x_2790 : u32 = u_xlatu64;
    let x_2793 : f32 = x_2727.x_AdditionalLightsAttenuation[bitcast<i32>(x_2790)].z;
    let x_2795 : u32 = u_xlatu64;
    let x_2798 : f32 = x_2727.x_AdditionalLightsAttenuation[bitcast<i32>(x_2795)].w;
    u_xlat67 = ((x_2789 * x_2793) + x_2798);
    let x_2800 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2800, 0.0f, 1.0f);
    let x_2802 : f32 = u_xlat67;
    let x_2803 : f32 = u_xlat67;
    u_xlat67 = (x_2802 * x_2803);
    let x_2805 : f32 = u_xlat65;
    let x_2806 : f32 = u_xlat67;
    u_xlat65 = (x_2805 * x_2806);
    let x_2809 : u32 = u_xlatu64;
    u_xlatu67 = (x_2809 >> 5u);
    let x_2812 : u32 = u_xlatu64;
    u_xlati68 = (1i << bitcast<u32>((bitcast<i32>(x_2812) & 31i)));
    let x_2817 : i32 = u_xlati68;
    let x_2819 : u32 = u_xlatu67;
    let x_2822 : f32 = x_2239.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2819)].el;
    u_xlati67 = bitcast<i32>((bitcast<u32>(x_2817) & bitcast<u32>(x_2822)));
    let x_2826 : i32 = u_xlati67;
    if ((x_2826 != 0i)) {
      let x_2836 : u32 = u_xlatu64;
      let x_2839 : f32 = x_2835.x_AdditionalLightsLightTypes[bitcast<i32>(x_2836)].el;
      u_xlati67 = i32(x_2839);
      let x_2841 : i32 = u_xlati67;
      u_xlati68 = select(1i, 0i, (x_2841 != 0i));
      let x_2845 : u32 = u_xlatu64;
      u_xlati69 = (bitcast<i32>(x_2845) << bitcast<u32>(2i));
      let x_2848 : i32 = u_xlati68;
      if ((x_2848 != 0i)) {
        let x_2852 : vec3<f32> = vs_TEXCOORD7;
        let x_2854 : i32 = u_xlati69;
        let x_2857 : i32 = u_xlati69;
        let x_2861 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_2854 + 1i) / 4i)][((x_2857 + 1i) % 4i)];
        let x_2863 : vec3<f32> = (vec3<f32>(x_2852.y, x_2852.y, x_2852.y) * vec3<f32>(x_2861.x, x_2861.y, x_2861.w));
        let x_2864 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
        let x_2866 : i32 = u_xlati69;
        let x_2868 : i32 = u_xlati69;
        let x_2871 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[(x_2866 / 4i)][(x_2868 % 4i)];
        let x_2873 : vec3<f32> = vs_TEXCOORD7;
        let x_2876 : vec4<f32> = u_xlat11;
        let x_2878 : vec3<f32> = ((vec3<f32>(x_2871.x, x_2871.y, x_2871.w) * vec3<f32>(x_2873.x, x_2873.x, x_2873.x)) + vec3<f32>(x_2876.x, x_2876.y, x_2876.z));
        let x_2879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
        let x_2881 : i32 = u_xlati69;
        let x_2884 : i32 = u_xlati69;
        let x_2888 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_2881 + 2i) / 4i)][((x_2884 + 2i) % 4i)];
        let x_2890 : vec3<f32> = vs_TEXCOORD7;
        let x_2893 : vec4<f32> = u_xlat11;
        let x_2895 : vec3<f32> = ((vec3<f32>(x_2888.x, x_2888.y, x_2888.w) * vec3<f32>(x_2890.z, x_2890.z, x_2890.z)) + vec3<f32>(x_2893.x, x_2893.y, x_2893.z));
        let x_2896 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2896.w);
        let x_2898 : vec4<f32> = u_xlat11;
        let x_2900 : i32 = u_xlati69;
        let x_2903 : i32 = u_xlati69;
        let x_2907 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_2900 + 3i) / 4i)][((x_2903 + 3i) % 4i)];
        let x_2909 : vec3<f32> = (vec3<f32>(x_2898.x, x_2898.y, x_2898.z) + vec3<f32>(x_2907.x, x_2907.y, x_2907.w));
        let x_2910 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2909.x, x_2909.y, x_2909.z, x_2910.w);
        let x_2912 : vec4<f32> = u_xlat11;
        let x_2914 : vec4<f32> = u_xlat11;
        let x_2916 : vec2<f32> = (vec2<f32>(x_2912.x, x_2912.y) / vec2<f32>(x_2914.z, x_2914.z));
        let x_2917 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2916.x, x_2916.y, x_2917.z, x_2917.w);
        let x_2919 : vec4<f32> = u_xlat11;
        let x_2922 : vec2<f32> = ((vec2<f32>(x_2919.x, x_2919.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2923 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2922.x, x_2922.y, x_2923.z, x_2923.w);
        let x_2925 : vec4<f32> = u_xlat11;
        let x_2929 : vec2<f32> = clamp(vec2<f32>(x_2925.x, x_2925.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2930 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2929.x, x_2929.y, x_2930.z, x_2930.w);
        let x_2932 : u32 = u_xlatu64;
        let x_2935 : vec4<f32> = x_2835.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2932)];
        let x_2937 : vec4<f32> = u_xlat11;
        let x_2940 : u32 = u_xlatu64;
        let x_2943 : vec4<f32> = x_2835.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2940)];
        let x_2945 : vec2<f32> = ((vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(x_2937.x, x_2937.y)) + vec2<f32>(x_2943.z, x_2943.w));
        let x_2946 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2945.x, x_2945.y, x_2946.z, x_2946.w);
      } else {
        let x_2950 : i32 = u_xlati67;
        u_xlatb67 = (x_2950 == 1i);
        let x_2952 : bool = u_xlatb67;
        u_xlati67 = select(0i, 1i, x_2952);
        let x_2954 : i32 = u_xlati67;
        if ((x_2954 != 0i)) {
          let x_2959 : vec3<f32> = vs_TEXCOORD7;
          let x_2961 : i32 = u_xlati69;
          let x_2964 : i32 = u_xlati69;
          let x_2968 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_2961 + 1i) / 4i)][((x_2964 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2959.y, x_2959.y) * vec2<f32>(x_2968.x, x_2968.y));
          let x_2971 : i32 = u_xlati69;
          let x_2973 : i32 = u_xlati69;
          let x_2976 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[(x_2971 / 4i)][(x_2973 % 4i)];
          let x_2978 : vec3<f32> = vs_TEXCOORD7;
          let x_2981 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(x_2978.x, x_2978.x)) + x_2981);
          let x_2983 : i32 = u_xlati69;
          let x_2986 : i32 = u_xlati69;
          let x_2990 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_2983 + 2i) / 4i)][((x_2986 + 2i) % 4i)];
          let x_2992 : vec3<f32> = vs_TEXCOORD7;
          let x_2995 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2990.x, x_2990.y) * vec2<f32>(x_2992.z, x_2992.z)) + x_2995);
          let x_2997 : vec2<f32> = u_xlat51;
          let x_2998 : i32 = u_xlati69;
          let x_3001 : i32 = u_xlati69;
          let x_3005 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_2998 + 3i) / 4i)][((x_3001 + 3i) % 4i)];
          u_xlat51 = (x_2997 + vec2<f32>(x_3005.x, x_3005.y));
          let x_3008 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3008 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3011 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3011);
          let x_3013 : u32 = u_xlatu64;
          let x_3016 : vec4<f32> = x_2835.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3013)];
          let x_3018 : vec2<f32> = u_xlat51;
          let x_3020 : u32 = u_xlatu64;
          let x_3023 : vec4<f32> = x_2835.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3020)];
          let x_3025 : vec2<f32> = ((vec2<f32>(x_3016.x, x_3016.y) * x_3018) + vec2<f32>(x_3023.z, x_3023.w));
          let x_3026 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
        } else {
          let x_3029 : vec3<f32> = vs_TEXCOORD7;
          let x_3031 : i32 = u_xlati69;
          let x_3034 : i32 = u_xlati69;
          let x_3038 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_3031 + 1i) / 4i)][((x_3034 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3029.y, x_3029.y, x_3029.y, x_3029.y) * x_3038);
          let x_3040 : i32 = u_xlati69;
          let x_3042 : i32 = u_xlati69;
          let x_3045 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[(x_3040 / 4i)][(x_3042 % 4i)];
          let x_3046 : vec3<f32> = vs_TEXCOORD7;
          let x_3049 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3045 * vec4<f32>(x_3046.x, x_3046.x, x_3046.x, x_3046.x)) + x_3049);
          let x_3051 : i32 = u_xlati69;
          let x_3054 : i32 = u_xlati69;
          let x_3058 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_3051 + 2i) / 4i)][((x_3054 + 2i) % 4i)];
          let x_3059 : vec3<f32> = vs_TEXCOORD7;
          let x_3062 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3058 * vec4<f32>(x_3059.z, x_3059.z, x_3059.z, x_3059.z)) + x_3062);
          let x_3064 : vec4<f32> = u_xlat12;
          let x_3065 : i32 = u_xlati69;
          let x_3068 : i32 = u_xlati69;
          let x_3072 : vec4<f32> = x_2835.x_AdditionalLightsWorldToLights[((x_3065 + 3i) / 4i)][((x_3068 + 3i) % 4i)];
          u_xlat12 = (x_3064 + x_3072);
          let x_3074 : vec4<f32> = u_xlat12;
          let x_3076 : vec4<f32> = u_xlat12;
          let x_3078 : vec3<f32> = (vec3<f32>(x_3074.x, x_3074.y, x_3074.z) / vec3<f32>(x_3076.w, x_3076.w, x_3076.w));
          let x_3079 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
          let x_3081 : vec4<f32> = u_xlat12;
          let x_3083 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(vec3<f32>(x_3081.x, x_3081.y, x_3081.z), vec3<f32>(x_3083.x, x_3083.y, x_3083.z));
          let x_3086 : f32 = u_xlat67;
          u_xlat67 = inverseSqrt(x_3086);
          let x_3088 : f32 = u_xlat67;
          let x_3090 : vec4<f32> = u_xlat12;
          let x_3092 : vec3<f32> = (vec3<f32>(x_3088, x_3088, x_3088) * vec3<f32>(x_3090.x, x_3090.y, x_3090.z));
          let x_3093 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3092.x, x_3092.y, x_3092.z, x_3093.w);
          let x_3095 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(abs(vec3<f32>(x_3095.x, x_3095.y, x_3095.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3100 : f32 = u_xlat67;
          u_xlat67 = max(x_3100, 0.000001f);
          let x_3103 : f32 = u_xlat67;
          u_xlat67 = (1.0f / x_3103);
          let x_3105 : f32 = u_xlat67;
          let x_3107 : vec4<f32> = u_xlat12;
          let x_3109 : vec3<f32> = (vec3<f32>(x_3105, x_3105, x_3105) * vec3<f32>(x_3107.z, x_3107.x, x_3107.y));
          let x_3110 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3109.x, x_3109.y, x_3109.z, x_3110.w);
          let x_3113 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3113);
          let x_3117 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3117, 0.0f, 1.0f);
          let x_3121 : vec4<f32> = u_xlat13;
          let x_3124 : vec4<bool> = (vec4<f32>(x_3121.y, x_3121.z, x_3121.y, x_3121.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3124.x, x_3124.y);
          let x_3127 : bool = u_xlatb51.x;
          if (x_3127) {
            let x_3132 : f32 = u_xlat13.x;
            x_3128 = x_3132;
          } else {
            let x_3135 : f32 = u_xlat13.x;
            x_3128 = -(x_3135);
          }
          let x_3137 : f32 = x_3128;
          u_xlat51.x = x_3137;
          let x_3140 : bool = u_xlatb51.y;
          if (x_3140) {
            let x_3145 : f32 = u_xlat13.x;
            x_3141 = x_3145;
          } else {
            let x_3148 : f32 = u_xlat13.x;
            x_3141 = -(x_3148);
          }
          let x_3150 : f32 = x_3141;
          u_xlat51.y = x_3150;
          let x_3152 : vec4<f32> = u_xlat12;
          let x_3154 : f32 = u_xlat67;
          let x_3157 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3152.x, x_3152.y) * vec2<f32>(x_3154, x_3154)) + x_3157);
          let x_3159 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3159 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3162 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3162, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3166 : u32 = u_xlatu64;
          let x_3169 : vec4<f32> = x_2835.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3166)];
          let x_3171 : vec2<f32> = u_xlat51;
          let x_3173 : u32 = u_xlatu64;
          let x_3176 : vec4<f32> = x_2835.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3173)];
          let x_3178 : vec2<f32> = ((vec2<f32>(x_3169.x, x_3169.y) * x_3171) + vec2<f32>(x_3176.z, x_3176.w));
          let x_3179 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3178.x, x_3178.y, x_3179.z, x_3179.w);
        }
      }
      let x_3186 : vec4<f32> = u_xlat11;
      let x_3189 : f32 = x_125.x_GlobalMipBias.x;
      let x_3190 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3186.x, x_3186.y), x_3189);
      u_xlat11 = x_3190;
      let x_3192 : bool = u_xlatb3.w;
      if (x_3192) {
        let x_3197 : f32 = u_xlat11.w;
        x_3193 = x_3197;
      } else {
        let x_3200 : f32 = u_xlat11.x;
        x_3193 = x_3200;
      }
      let x_3201 : f32 = x_3193;
      u_xlat67 = x_3201;
      let x_3203 : bool = u_xlatb3.x;
      if (x_3203) {
        let x_3207 : vec4<f32> = u_xlat11;
        x_3204 = vec3<f32>(x_3207.x, x_3207.y, x_3207.z);
      } else {
        let x_3210 : f32 = u_xlat67;
        x_3204 = vec3<f32>(x_3210, x_3210, x_3210);
      }
      let x_3212 : vec3<f32> = x_3204;
      let x_3213 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3212.x, x_3212.y, x_3212.z, x_3213.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3219 : vec4<f32> = u_xlat11;
    let x_3221 : u32 = u_xlatu64;
    let x_3224 : vec4<f32> = x_2727.x_AdditionalLightsColor[bitcast<i32>(x_3221)];
    let x_3226 : vec3<f32> = (vec3<f32>(x_3219.x, x_3219.y, x_3219.z) * vec3<f32>(x_3224.x, x_3224.y, x_3224.z));
    let x_3227 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3226.x, x_3226.y, x_3226.z, x_3227.w);
    let x_3229 : f32 = u_xlat43;
    let x_3231 : vec4<f32> = u_xlat11;
    let x_3233 : vec3<f32> = (vec3<f32>(x_3229, x_3229, x_3229) * vec3<f32>(x_3231.x, x_3231.y, x_3231.z));
    let x_3234 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3234.w);
    let x_3236 : vec4<f32> = u_xlat1;
    let x_3238 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3236.x, x_3236.y, x_3236.z), vec3<f32>(x_3238.x, x_3238.y, x_3238.z));
    let x_3241 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3241, 0.0f, 1.0f);
    let x_3243 : f32 = u_xlat64;
    let x_3244 : f32 = u_xlat65;
    u_xlat64 = (x_3243 * x_3244);
    let x_3246 : f32 = u_xlat64;
    let x_3248 : vec4<f32> = u_xlat11;
    let x_3250 : vec3<f32> = (vec3<f32>(x_3246, x_3246, x_3246) * vec3<f32>(x_3248.x, x_3248.y, x_3248.z));
    let x_3251 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3250.x, x_3250.y, x_3250.z, x_3251.w);
    let x_3253 : vec4<f32> = u_xlat9;
    let x_3255 : f32 = u_xlat66;
    let x_3258 : vec4<f32> = u_xlat7;
    let x_3260 : vec3<f32> = ((vec3<f32>(x_3253.x, x_3253.y, x_3253.z) * vec3<f32>(x_3255, x_3255, x_3255)) + vec3<f32>(x_3258.x, x_3258.y, x_3258.z));
    let x_3261 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3260.x, x_3260.y, x_3260.z, x_3261.w);
    let x_3263 : vec4<f32> = u_xlat9;
    let x_3265 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3263.x, x_3263.y, x_3263.z), vec3<f32>(x_3265.x, x_3265.y, x_3265.z));
    let x_3268 : f32 = u_xlat64;
    u_xlat64 = max(x_3268, 1.17549435e-37f);
    let x_3270 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3270);
    let x_3272 : f32 = u_xlat64;
    let x_3274 : vec4<f32> = u_xlat9;
    let x_3276 : vec3<f32> = (vec3<f32>(x_3272, x_3272, x_3272) * vec3<f32>(x_3274.x, x_3274.y, x_3274.z));
    let x_3277 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3276.x, x_3276.y, x_3276.z, x_3277.w);
    let x_3279 : vec4<f32> = u_xlat1;
    let x_3281 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3279.x, x_3279.y, x_3279.z), vec3<f32>(x_3281.x, x_3281.y, x_3281.z));
    let x_3284 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3284, 0.0f, 1.0f);
    let x_3286 : vec4<f32> = u_xlat10;
    let x_3288 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3286.x, x_3286.y, x_3286.z), vec3<f32>(x_3288.x, x_3288.y, x_3288.z));
    let x_3291 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3291, 0.0f, 1.0f);
    let x_3293 : f32 = u_xlat64;
    let x_3294 : f32 = u_xlat64;
    u_xlat64 = (x_3293 * x_3294);
    let x_3296 : f32 = u_xlat64;
    let x_3298 : f32 = u_xlat0.x;
    u_xlat64 = ((x_3296 * x_3298) + 1.000010014f);
    let x_3301 : f32 = u_xlat65;
    let x_3302 : f32 = u_xlat65;
    u_xlat65 = (x_3301 * x_3302);
    let x_3304 : f32 = u_xlat64;
    let x_3305 : f32 = u_xlat64;
    u_xlat64 = (x_3304 * x_3305);
    let x_3307 : f32 = u_xlat65;
    u_xlat65 = max(x_3307, 0.100000001f);
    let x_3309 : f32 = u_xlat64;
    let x_3310 : f32 = u_xlat65;
    u_xlat64 = (x_3309 * x_3310);
    let x_3312 : f32 = u_xlat23;
    let x_3313 : f32 = u_xlat64;
    u_xlat64 = (x_3312 * x_3313);
    let x_3315 : f32 = u_xlat61;
    let x_3316 : f32 = u_xlat64;
    u_xlat64 = (x_3315 / x_3316);
    let x_3318 : vec4<f32> = u_xlat5;
    let x_3320 : f32 = u_xlat64;
    let x_3323 : vec4<f32> = u_xlat4;
    let x_3325 : vec3<f32> = ((vec3<f32>(x_3318.x, x_3318.y, x_3318.z) * vec3<f32>(x_3320, x_3320, x_3320)) + vec3<f32>(x_3323.x, x_3323.y, x_3323.z));
    let x_3326 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
    let x_3328 : vec4<f32> = u_xlat9;
    let x_3330 : vec4<f32> = u_xlat11;
    let x_3333 : vec4<f32> = u_xlat8;
    let x_3335 : vec3<f32> = ((vec3<f32>(x_3328.x, x_3328.y, x_3328.z) * vec3<f32>(x_3330.x, x_3330.y, x_3330.z)) + vec3<f32>(x_3333.x, x_3333.y, x_3333.z));
    let x_3336 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3335.x, x_3335.y, x_3335.z, x_3336.w);

    continuing {
      let x_3338 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3338 + bitcast<u32>(1i));
    }
  }
  let x_3340 : vec3<f32> = u_xlat2;
  let x_3341 : f32 = u_xlat20;
  let x_3344 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_3340 * vec3<f32>(x_3341, x_3341, x_3341)) + vec3<f32>(x_3344.x, x_3344.y, x_3344.z));
  let x_3347 : vec4<f32> = u_xlat8;
  let x_3349 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3347.x, x_3347.y, x_3347.z) + x_3349);
  let x_3353 : f32 = u_xlat60;
  let x_3355 : vec3<f32> = u_xlat0;
  let x_3356 : vec3<f32> = (vec3<f32>(x_3353, x_3353, x_3353) * x_3355);
  let x_3357 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3356.x, x_3356.y, x_3356.z, x_3357.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

