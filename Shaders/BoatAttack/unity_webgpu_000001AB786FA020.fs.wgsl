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

@group(1) @binding(4) var<uniform> x_974 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2251 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2458 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2739 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2847 : AdditionalLightsCookies;

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
  var u_xlatb62 : bool;
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
  var x_2204 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2334 : f32;
  var x_2345 : vec3<f32>;
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
  var x_3140 : f32;
  var x_3153 : f32;
  var x_3205 : f32;
  var x_3216 : vec3<f32>;
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
  let x_290 : f32 = u_xlat61;
  u_xlatb62 = (0.005f >= x_290);
  let x_292 : bool = u_xlatb62;
  if (((select(0i, 1i, x_292) * -1i) != 0i)) {
    discard;
  }
  let x_301 : f32 = u_xlat61;
  u_xlat61 = (x_301 + 6.10351562e-05f);
  let x_304 : vec4<f32> = u_xlat4;
  let x_305 : f32 = u_xlat61;
  u_xlat4 = (x_304 / vec4<f32>(x_305, x_305, x_305, x_305));
  let x_308 : vec4<f32> = u_xlat4;
  let x_311 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_313 : vec3<f32> = (vec3<f32>(x_308.x, x_308.x, x_308.x) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.y, x_316.y, x_316.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec4<f32> = u_xlat12;
  let x_328 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = u_xlat11;
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat4;
  let x_344 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_346 : vec3<f32> = (vec3<f32>(x_341.z, x_341.z, x_341.z) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat7;
  let x_351 : vec4<f32> = u_xlat6;
  let x_354 : vec4<f32> = u_xlat5;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.x, x_351.y, x_351.z)) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat4;
  let x_362 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_364 : vec3<f32> = (vec3<f32>(x_359.w, x_359.w, x_359.w) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat8;
  let x_369 : vec4<f32> = u_xlat6;
  let x_372 : vec4<f32> = u_xlat5;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.x, x_369.y, x_369.z)) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_382 : vec4<f32> = vs_TEXCOORD1;
  let x_385 : f32 = x_125.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_382.x, x_382.y), x_385);
  let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.w);
  let x_388 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : f32 = u_xlat6.x;
  let x_393 : f32 = u_xlat6.z;
  u_xlat6.x = (x_391 * x_393);
  let x_396 : vec4<f32> = u_xlat6;
  let x_401 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat6;
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_404.x, x_404.y), vec2<f32>(x_406.x, x_406.y));
  let x_409 : f32 = u_xlat61;
  u_xlat61 = min(x_409, 1.0f);
  let x_411 : f32 = u_xlat61;
  u_xlat61 = (-(x_411) + 1.0f);
  let x_414 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_414);
  let x_416 : f32 = u_xlat61;
  u_xlat7.z = max(x_416, 1.00000002e-16f);
  let x_420 : vec4<f32> = u_xlat6;
  let x_423 : f32 = x_30.x_NormalScale0;
  let x_425 : vec2<f32> = (vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_423, x_423));
  let x_426 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_432 : vec4<f32> = vs_TEXCOORD1;
  let x_435 : f32 = x_125.x_GlobalMipBias.x;
  let x_436 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_432.z, x_432.w), x_435);
  let x_437 : vec3<f32> = vec3<f32>(x_436.x, x_436.y, x_436.w);
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_441 : f32 = u_xlat6.x;
  let x_443 : f32 = u_xlat6.z;
  u_xlat6.x = (x_441 * x_443);
  let x_446 : vec4<f32> = u_xlat6;
  let x_449 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_452.x, x_452.y), vec2<f32>(x_454.x, x_454.y));
  let x_457 : f32 = u_xlat61;
  u_xlat61 = min(x_457, 1.0f);
  let x_459 : f32 = u_xlat61;
  u_xlat61 = (-(x_459) + 1.0f);
  let x_462 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_462);
  let x_464 : f32 = u_xlat61;
  u_xlat8.z = max(x_464, 1.00000002e-16f);
  let x_467 : vec4<f32> = u_xlat6;
  let x_470 : f32 = x_30.x_NormalScale1;
  let x_472 : f32 = x_30.x_NormalScale1;
  let x_473 : vec2<f32> = vec2<f32>(x_470, x_472);
  let x_477 : vec2<f32> = (vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_473.x, x_473.y));
  let x_478 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat4;
  let x_482 : vec4<f32> = u_xlat8;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.y, x_480.y, x_480.y) * vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : vec4<f32> = u_xlat6;
  let x_494 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.x, x_487.x) * vec3<f32>(x_489.x, x_489.y, x_489.z)) + vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_501 : vec4<f32> = vs_TEXCOORD2;
  let x_504 : f32 = x_125.x_GlobalMipBias.x;
  let x_505 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_501.x, x_501.y), x_504);
  let x_506 : vec3<f32> = vec3<f32>(x_505.x, x_505.y, x_505.w);
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : f32 = u_xlat7.x;
  let x_512 : f32 = u_xlat7.z;
  u_xlat7.x = (x_510 * x_512);
  let x_515 : vec4<f32> = u_xlat7;
  let x_518 : vec2<f32> = ((vec2<f32>(x_515.x, x_515.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat7;
  let x_523 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_521.x, x_521.y), vec2<f32>(x_523.x, x_523.y));
  let x_526 : f32 = u_xlat61;
  u_xlat61 = min(x_526, 1.0f);
  let x_528 : f32 = u_xlat61;
  u_xlat61 = (-(x_528) + 1.0f);
  let x_531 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_531);
  let x_533 : f32 = u_xlat61;
  u_xlat8.z = max(x_533, 1.00000002e-16f);
  let x_536 : vec4<f32> = u_xlat7;
  let x_540 : f32 = x_30.x_NormalScale2;
  let x_542 : f32 = x_30.x_NormalScale2;
  let x_543 : vec2<f32> = vec2<f32>(x_540, x_542);
  let x_547 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(x_543.x, x_543.y));
  let x_548 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec4<f32> = u_xlat8;
  let x_555 : vec4<f32> = u_xlat6;
  let x_557 : vec3<f32> = ((vec3<f32>(x_550.z, x_550.z, x_550.z) * vec3<f32>(x_552.x, x_552.y, x_552.z)) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_564 : vec4<f32> = vs_TEXCOORD2;
  let x_567 : f32 = x_125.x_GlobalMipBias.x;
  let x_568 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_564.z, x_564.w), x_567);
  let x_569 : vec3<f32> = vec3<f32>(x_568.x, x_568.y, x_568.w);
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : f32 = u_xlat7.x;
  let x_575 : f32 = u_xlat7.z;
  u_xlat7.x = (x_573 * x_575);
  let x_578 : vec4<f32> = u_xlat7;
  let x_581 : vec2<f32> = ((vec2<f32>(x_578.x, x_578.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_582 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat7;
  let x_586 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_584.x, x_584.y), vec2<f32>(x_586.x, x_586.y));
  let x_589 : f32 = u_xlat61;
  u_xlat61 = min(x_589, 1.0f);
  let x_591 : f32 = u_xlat61;
  u_xlat61 = (-(x_591) + 1.0f);
  let x_594 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_594);
  let x_596 : f32 = u_xlat61;
  u_xlat8.z = max(x_596, 1.00000002e-16f);
  let x_599 : vec4<f32> = u_xlat7;
  let x_603 : f32 = x_30.x_NormalScale3;
  let x_605 : f32 = x_30.x_NormalScale3;
  let x_606 : vec2<f32> = vec2<f32>(x_603, x_605);
  let x_610 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_606.x, x_606.y));
  let x_611 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat4;
  let x_615 : vec4<f32> = u_xlat8;
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec3<f32> = ((vec3<f32>(x_613.w, x_613.w, x_613.w) * vec3<f32>(x_615.x, x_615.y, x_615.z)) + vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_624 : f32 = u_xlat6.z;
  u_xlat6.w = (x_624 + 0.00001f);
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_628.x, x_628.y, x_628.w), vec3<f32>(x_630.x, x_630.y, x_630.w));
  let x_633 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_633);
  let x_635 : f32 = u_xlat61;
  let x_637 : vec4<f32> = u_xlat6;
  let x_639 : vec3<f32> = (vec3<f32>(x_635, x_635, x_635) * vec3<f32>(x_637.x, x_637.y, x_637.w));
  let x_640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_643 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_655;
  let x_658 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_658;
  let x_661 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_661;
  let x_664 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_664;
  let x_666 : vec4<f32> = u_xlat7;
  let x_667 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_666 + x_667);
  let x_670 : f32 = u_xlat0.z;
  u_xlat8.x = x_670;
  let x_673 : f32 = u_xlat1.z;
  u_xlat8.y = x_673;
  let x_676 : f32 = u_xlat2.z;
  u_xlat8.z = x_676;
  let x_679 : f32 = u_xlat3.y;
  u_xlat8.w = x_679;
  let x_681 : vec4<f32> = u_xlat9;
  let x_684 : f32 = x_30.x_Smoothness0;
  let x_686 : f32 = x_30.x_Smoothness1;
  let x_688 : f32 = x_30.x_Smoothness2;
  let x_690 : f32 = x_30.x_Smoothness3;
  let x_693 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_681) * vec4<f32>(x_684, x_686, x_688, x_690)) + x_693);
  let x_697 : f32 = x_30.x_LayerHasMask0;
  let x_700 : f32 = x_30.x_LayerHasMask1;
  let x_703 : f32 = x_30.x_LayerHasMask2;
  let x_706 : f32 = x_30.x_LayerHasMask3;
  let x_708 : vec4<f32> = u_xlat8;
  let x_710 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_697, x_700, x_703, x_706) * x_708) + x_710);
  let x_713 : vec4<f32> = u_xlat4;
  let x_714 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_713, x_714);
  let x_717 : f32 = u_xlat0.x;
  u_xlat8.x = x_717;
  let x_720 : f32 = u_xlat1.x;
  u_xlat8.y = x_720;
  let x_723 : f32 = u_xlat2.x;
  u_xlat8.z = x_723;
  let x_726 : f32 = u_xlat3.x;
  u_xlat8.w = x_726;
  let x_728 : vec4<f32> = u_xlat8;
  let x_731 : f32 = x_30.x_Metallic0;
  let x_734 : f32 = x_30.x_Metallic1;
  let x_737 : f32 = x_30.x_Metallic2;
  let x_740 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_728 + -(vec4<f32>(x_731, x_734, x_737, x_740)));
  let x_745 : f32 = x_30.x_LayerHasMask0;
  let x_747 : f32 = x_30.x_LayerHasMask1;
  let x_749 : f32 = x_30.x_LayerHasMask2;
  let x_751 : f32 = x_30.x_LayerHasMask3;
  let x_753 : vec4<f32> = u_xlat8;
  let x_756 : f32 = x_30.x_Metallic0;
  let x_758 : f32 = x_30.x_Metallic1;
  let x_760 : f32 = x_30.x_Metallic2;
  let x_762 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_745, x_747, x_749, x_751) * x_753) + vec4<f32>(x_756, x_758, x_760, x_762));
  let x_765 : vec4<f32> = u_xlat4;
  let x_766 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_765, x_766);
  let x_770 : f32 = u_xlat0.y;
  u_xlat3.x = x_770;
  let x_773 : f32 = u_xlat1.y;
  u_xlat3.y = x_773;
  let x_776 : f32 = u_xlat2.y;
  u_xlat3.z = x_776;
  let x_778 : vec4<f32> = u_xlat7;
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_778) + x_780);
  let x_783 : f32 = x_30.x_LayerHasMask0;
  let x_785 : f32 = x_30.x_LayerHasMask1;
  let x_787 : f32 = x_30.x_LayerHasMask2;
  let x_789 : f32 = x_30.x_LayerHasMask3;
  let x_791 : vec4<f32> = u_xlat1;
  let x_793 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_783, x_785, x_787, x_789) * x_791) + x_793);
  let x_796 : vec4<f32> = u_xlat4;
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_796, x_797);
  let x_799 : vec4<f32> = u_xlat6;
  let x_802 : vec4<f32> = vs_TEXCOORD5;
  let x_804 : vec3<f32> = (vec3<f32>(x_799.y, x_799.y, x_799.y) * vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_810 : vec4<f32> = vs_TEXCOORD4;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_807.x, x_807.x, x_807.x) * -(vec3<f32>(x_810.x, x_810.y, x_810.z))) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat6;
  let x_822 : vec4<f32> = vs_TEXCOORD3;
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec3<f32> = ((vec3<f32>(x_819.z, x_819.z, x_819.z) * vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_835);
  let x_837 : f32 = u_xlat61;
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_849 : vec4<f32> = vs_TEXCOORD0;
  let x_852 : f32 = x_125.x_GlobalMipBias.x;
  let x_853 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_849.z, x_849.w), x_852);
  u_xlat2 = vec3<f32>(x_853.x, x_853.y, x_853.z);
  let x_857 : vec4<f32> = x_125.x_ScaledScreenParams;
  let x_858 : vec2<f32> = vec2<f32>(x_857.x, x_857.y);
  let x_862 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_858.x, x_858.y));
  let x_863 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat3;
  let x_867 : vec4<f32> = hlslcc_FragCoord;
  let x_869 : vec2<f32> = (vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_867.x, x_867.y));
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
  let x_873 : f32 = u_xlat3.y;
  let x_875 : f32 = x_125.x_ScaleBiasRt.x;
  let x_878 : f32 = x_125.x_ScaleBiasRt.y;
  u_xlat61 = ((x_873 * x_875) + x_878);
  let x_880 : f32 = u_xlat61;
  u_xlat3.z = (-(x_880) + 1.0f);
  let x_885 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_885) * 0.959999979f) + 0.959999979f);
  let x_891 : f32 = u_xlat40;
  let x_892 : f32 = u_xlat61;
  u_xlat62 = (x_891 + -(x_892));
  let x_895 : f32 = u_xlat61;
  let x_897 : vec4<f32> = u_xlat5;
  let x_899 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat5;
  let x_906 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_907 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec3<f32> = u_xlat0;
  let x_911 : vec4<f32> = u_xlat5;
  let x_916 : vec3<f32> = ((vec3<f32>(x_909.x, x_909.x, x_909.x) * vec3<f32>(x_911.x, x_911.y, x_911.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_917 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : f32 = u_xlat40;
  u_xlat0.x = (-(x_919) + 1.0f);
  let x_924 : f32 = u_xlat0.x;
  let x_926 : f32 = u_xlat0.x;
  u_xlat40 = (x_924 * x_926);
  let x_928 : f32 = u_xlat40;
  u_xlat40 = max(x_928, 0.0078125f);
  let x_931 : f32 = u_xlat40;
  let x_932 : f32 = u_xlat40;
  u_xlat61 = (x_931 * x_932);
  let x_934 : f32 = u_xlat62;
  u_xlat62 = (x_934 + 1.0f);
  let x_936 : f32 = u_xlat62;
  u_xlat62 = clamp(x_936, 0.0f, 1.0f);
  let x_939 : f32 = u_xlat40;
  u_xlat23 = ((x_939 * 4.0f) + 2.0f);
  let x_947 : vec4<f32> = u_xlat3;
  let x_950 : f32 = x_125.x_GlobalMipBias.x;
  let x_951 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_947.x, x_947.z), x_950);
  u_xlat3.x = x_951.x;
  let x_956 : f32 = u_xlat3.x;
  u_xlat43 = (x_956 + -1.0f);
  let x_959 : f32 = x_125.x_AmbientOcclusionParam.w;
  let x_960 : f32 = u_xlat43;
  u_xlat43 = ((x_959 * x_960) + 1.0f);
  let x_963 : f32 = u_xlat20;
  let x_965 : f32 = u_xlat3.x;
  u_xlat20 = min(x_963, x_965);
  let x_976 : f32 = x_974.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_976);
  let x_980 : bool = u_xlatb3.x;
  if (x_980) {
    let x_984 : f32 = x_974.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_984 == 1.0f);
    let x_988 : bool = u_xlatb3.x;
    if (x_988) {
      let x_992 : vec4<f32> = vs_TEXCOORD8;
      let x_995 : vec4<f32> = x_974.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y) + x_995);
      let x_998 : vec4<f32> = u_xlat6;
      let x_999 : vec2<f32> = vec2<f32>(x_998.x, x_998.y);
      let x_1001 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_999.x, x_999.y, x_1001);
      let x_1013 : vec3<f32> = txVec0;
      let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1013.xy, x_1013.z);
      u_xlat7.x = x_1015;
      let x_1018 : vec4<f32> = u_xlat6;
      let x_1019 : vec2<f32> = vec2<f32>(x_1018.z, x_1018.w);
      let x_1021 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1019.x, x_1019.y, x_1021);
      let x_1028 : vec3<f32> = txVec1;
      let x_1030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1028.xy, x_1028.z);
      u_xlat7.y = x_1030;
      let x_1032 : vec4<f32> = vs_TEXCOORD8;
      let x_1035 : vec4<f32> = x_974.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y) + x_1035);
      let x_1038 : vec4<f32> = u_xlat6;
      let x_1039 : vec2<f32> = vec2<f32>(x_1038.x, x_1038.y);
      let x_1041 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
      let x_1048 : vec3<f32> = txVec2;
      let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1048.xy, x_1048.z);
      u_xlat7.z = x_1050;
      let x_1053 : vec4<f32> = u_xlat6;
      let x_1054 : vec2<f32> = vec2<f32>(x_1053.z, x_1053.w);
      let x_1056 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1054.x, x_1054.y, x_1056);
      let x_1063 : vec3<f32> = txVec3;
      let x_1065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1063.xy, x_1063.z);
      u_xlat7.w = x_1065;
      let x_1067 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1067, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1075 : f32 = x_974.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1075 == 2.0f);
      let x_1077 : bool = u_xlatb63;
      if (x_1077) {
        let x_1080 : vec4<f32> = vs_TEXCOORD8;
        let x_1083 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1086 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.z, x_1083.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1087 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1091 : vec2<f32> = floor(vec2<f32>(x_1089.x, x_1089.y));
        let x_1092 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1096 : vec4<f32> = vs_TEXCOORD8;
        let x_1099 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1099.z, x_1099.w)) + -(vec2<f32>(x_1102.x, x_1102.y)));
        let x_1106 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1106.x, x_1106.x, x_1106.y, x_1106.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1110 : vec4<f32> = u_xlat7;
        let x_1112 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1110.x, x_1110.x, x_1110.z, x_1110.z) * vec4<f32>(x_1112.x, x_1112.x, x_1112.z, x_1112.z));
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = (vec2<f32>(x_1115.y, x_1115.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = u_xlat46;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1125));
        let x_1128 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1131 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1131) + vec2<f32>(1.0f, 1.0f));
        let x_1134 : vec2<f32> = u_xlat46;
        let x_1136 : vec2<f32> = min(x_1134, vec2<f32>(0.0f, 0.0f));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat9;
        let x_1142 : vec4<f32> = u_xlat9;
        let x_1145 : vec2<f32> = u_xlat48;
        let x_1146 : vec2<f32> = ((-(vec2<f32>(x_1139.x, x_1139.y)) * vec2<f32>(x_1142.x, x_1142.y)) + x_1145);
        let x_1147 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1149, vec2<f32>(0.0f, 0.0f));
        let x_1151 : vec2<f32> = u_xlat46;
        let x_1153 : vec2<f32> = u_xlat46;
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1151) * x_1153) + vec2<f32>(x_1155.y, x_1155.w));
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) + vec2<f32>(1.0f, 1.0f));
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1163 + vec2<f32>(1.0f, 1.0f));
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1169 : vec2<f32> = (vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1170 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        let x_1172 : vec2<f32> = u_xlat48;
        let x_1173 : vec2<f32> = (x_1172 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1174 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1178 : vec2<f32> = (vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1181 : vec2<f32> = u_xlat46;
        let x_1182 : vec2<f32> = (x_1181 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1183 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1185.y, x_1185.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1189 : f32 = u_xlat9.x;
        u_xlat10.z = x_1189;
        let x_1192 : f32 = u_xlat46.x;
        u_xlat10.w = x_1192;
        let x_1195 : f32 = u_xlat11.x;
        u_xlat8.z = x_1195;
        let x_1198 : f32 = u_xlat7.x;
        u_xlat8.w = x_1198;
        let x_1200 : vec4<f32> = u_xlat8;
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1200.z, x_1200.w, x_1200.x, x_1200.z) + vec4<f32>(x_1202.z, x_1202.w, x_1202.x, x_1202.z));
        let x_1206 : f32 = u_xlat10.y;
        u_xlat9.z = x_1206;
        let x_1209 : f32 = u_xlat46.y;
        u_xlat9.w = x_1209;
        let x_1212 : f32 = u_xlat8.y;
        u_xlat11.z = x_1212;
        let x_1215 : f32 = u_xlat7.z;
        u_xlat11.w = x_1215;
        let x_1217 : vec4<f32> = u_xlat9;
        let x_1219 : vec4<f32> = u_xlat11;
        let x_1221 : vec3<f32> = (vec3<f32>(x_1217.z, x_1217.y, x_1217.w) + vec3<f32>(x_1219.z, x_1219.y, x_1219.w));
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1226 : vec4<f32> = u_xlat12;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1224.x, x_1224.z, x_1224.w) / vec3<f32>(x_1226.z, x_1226.w, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat8;
        let x_1237 : vec3<f32> = (vec3<f32>(x_1231.x, x_1231.y, x_1231.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1238 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat11;
        let x_1242 : vec4<f32> = u_xlat7;
        let x_1244 : vec3<f32> = (vec3<f32>(x_1240.z, x_1240.y, x_1240.w) / vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat9;
        let x_1249 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.y, x_1247.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1250 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1255 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1257 : vec3<f32> = (vec3<f32>(x_1252.y, x_1252.x, x_1252.z) * vec3<f32>(x_1255.x, x_1255.x, x_1255.x));
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1263 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1265 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * vec3<f32>(x_1263.y, x_1263.y, x_1263.y));
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
        let x_1269 : f32 = u_xlat9.x;
        u_xlat8.w = x_1269;
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1274 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y) * vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y)) + vec4<f32>(x_1277.y, x_1277.w, x_1277.x, x_1277.w));
        let x_1280 : vec4<f32> = u_xlat6;
        let x_1283 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.z, x_1286.w));
        let x_1290 : f32 = u_xlat8.y;
        u_xlat9.w = x_1290;
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.y, x_1292.z);
        let x_1294 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1294.x, x_1293.x, x_1294.z, x_1293.y);
        let x_1296 : vec4<f32> = u_xlat6;
        let x_1299 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.y));
        let x_1305 : vec4<f32> = u_xlat6;
        let x_1308 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y) * vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y)) + vec4<f32>(x_1311.w, x_1311.y, x_1311.w, x_1311.z));
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.w, x_1320.z, x_1320.w));
        let x_1323 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1323.x, x_1323.x, x_1323.x, x_1323.y) * vec4<f32>(x_1325.z, x_1325.w, x_1325.y, x_1325.z));
        let x_1329 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1329.y, x_1329.y, x_1329.z, x_1329.z) * x_1331);
        let x_1335 : f32 = u_xlat7.z;
        let x_1337 : f32 = u_xlat12.y;
        u_xlat63 = (x_1335 * x_1337);
        let x_1340 : vec4<f32> = u_xlat10;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1351 : vec3<f32> = txVec4;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat64 = x_1353;
        let x_1355 : vec4<f32> = u_xlat10;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.z, x_1355.w);
        let x_1358 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1366 : vec3<f32> = txVec5;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1366.xy, x_1366.z);
        u_xlat65 = x_1368;
        let x_1369 : f32 = u_xlat65;
        let x_1371 : f32 = u_xlat13.y;
        u_xlat65 = (x_1369 * x_1371);
        let x_1374 : f32 = u_xlat13.x;
        let x_1375 : f32 = u_xlat64;
        let x_1377 : f32 = u_xlat65;
        u_xlat64 = ((x_1374 * x_1375) + x_1377);
        let x_1380 : vec2<f32> = u_xlat46;
        let x_1382 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec6;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat65 = x_1391;
        let x_1393 : f32 = u_xlat13.z;
        let x_1394 : f32 = u_xlat65;
        let x_1396 : f32 = u_xlat64;
        u_xlat64 = ((x_1393 * x_1394) + x_1396);
        let x_1399 : vec4<f32> = u_xlat9;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.x, x_1399.y);
        let x_1402 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1409 : vec3<f32> = txVec7;
        let x_1411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1409.xy, x_1409.z);
        u_xlat65 = x_1411;
        let x_1413 : f32 = u_xlat13.w;
        let x_1414 : f32 = u_xlat65;
        let x_1416 : f32 = u_xlat64;
        u_xlat64 = ((x_1413 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat11;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec8;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1429.xy, x_1429.z);
        u_xlat65 = x_1431;
        let x_1433 : f32 = u_xlat14.x;
        let x_1434 : f32 = u_xlat65;
        let x_1436 : f32 = u_xlat64;
        u_xlat64 = ((x_1433 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat11;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec9;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
        u_xlat65 = x_1451;
        let x_1453 : f32 = u_xlat14.y;
        let x_1454 : f32 = u_xlat65;
        let x_1456 : f32 = u_xlat64;
        u_xlat64 = ((x_1453 * x_1454) + x_1456);
        let x_1459 : vec4<f32> = u_xlat9;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec10;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1469.xy, x_1469.z);
        u_xlat65 = x_1471;
        let x_1473 : f32 = u_xlat14.z;
        let x_1474 : f32 = u_xlat65;
        let x_1476 : f32 = u_xlat64;
        u_xlat64 = ((x_1473 * x_1474) + x_1476);
        let x_1479 : vec4<f32> = u_xlat8;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec11;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1489.xy, x_1489.z);
        u_xlat65 = x_1491;
        let x_1493 : f32 = u_xlat14.w;
        let x_1494 : f32 = u_xlat65;
        let x_1496 : f32 = u_xlat64;
        u_xlat64 = ((x_1493 * x_1494) + x_1496);
        let x_1499 : vec4<f32> = u_xlat8;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.z, x_1499.w);
        let x_1502 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec12;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1509.xy, x_1509.z);
        u_xlat65 = x_1511;
        let x_1512 : f32 = u_xlat63;
        let x_1513 : f32 = u_xlat65;
        let x_1515 : f32 = u_xlat64;
        u_xlat3.x = ((x_1512 * x_1513) + x_1515);
      } else {
        let x_1519 : vec4<f32> = vs_TEXCOORD8;
        let x_1522 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1519.x, x_1519.y) * vec2<f32>(x_1522.z, x_1522.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1526 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1528 : vec4<f32> = u_xlat6;
        let x_1530 : vec2<f32> = floor(vec2<f32>(x_1528.x, x_1528.y));
        let x_1531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1530.x, x_1530.y, x_1531.z, x_1531.w);
        let x_1533 : vec4<f32> = vs_TEXCOORD8;
        let x_1536 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1533.x, x_1533.y) * vec2<f32>(x_1536.z, x_1536.w)) + -(vec2<f32>(x_1539.x, x_1539.y)));
        let x_1543 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1543.x, x_1543.x, x_1543.y, x_1543.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1546 : vec4<f32> = u_xlat7;
        let x_1548 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1546.x, x_1546.x, x_1546.z, x_1546.z) * vec4<f32>(x_1548.x, x_1548.x, x_1548.z, x_1548.z));
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1555 : vec2<f32> = (vec2<f32>(x_1551.y, x_1551.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1556 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1556.x, x_1555.x, x_1556.z, x_1555.y);
        let x_1558 : vec4<f32> = u_xlat8;
        let x_1561 : vec2<f32> = u_xlat46;
        let x_1563 : vec2<f32> = ((vec2<f32>(x_1558.x, x_1558.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1561));
        let x_1564 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1563.x, x_1564.y, x_1563.y, x_1564.w);
        let x_1566 : vec2<f32> = u_xlat46;
        let x_1568 : vec2<f32> = (-(x_1566) + vec2<f32>(1.0f, 1.0f));
        let x_1569 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1568.x, x_1568.y, x_1569.z, x_1569.w);
        let x_1571 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1571, vec2<f32>(0.0f, 0.0f));
        let x_1573 : vec2<f32> = u_xlat48;
        let x_1575 : vec2<f32> = u_xlat48;
        let x_1577 : vec4<f32> = u_xlat8;
        let x_1579 : vec2<f32> = ((-(x_1573) * x_1575) + vec2<f32>(x_1577.x, x_1577.y));
        let x_1580 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1579.x, x_1579.y, x_1580.z, x_1580.w);
        let x_1582 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1582, vec2<f32>(0.0f, 0.0f));
        let x_1585 : vec2<f32> = u_xlat48;
        let x_1587 : vec2<f32> = u_xlat48;
        let x_1589 : vec4<f32> = u_xlat7;
        let x_1591 : vec2<f32> = ((-(x_1585) * x_1587) + vec2<f32>(x_1589.y, x_1589.w));
        let x_1592 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1591.x, x_1592.y, x_1591.y);
        let x_1594 : vec4<f32> = u_xlat8;
        let x_1596 : vec2<f32> = (vec2<f32>(x_1594.x, x_1594.y) + vec2<f32>(2.0f, 2.0f));
        let x_1597 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1596.x, x_1596.y, x_1597.z, x_1597.w);
        let x_1599 : vec3<f32> = u_xlat27;
        let x_1601 : vec2<f32> = (vec2<f32>(x_1599.x, x_1599.z) + vec2<f32>(2.0f, 2.0f));
        let x_1602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1602.x, x_1601.x, x_1602.z, x_1601.y);
        let x_1605 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1605 * 0.081632003f);
        let x_1609 : vec4<f32> = u_xlat7;
        let x_1612 : vec3<f32> = (vec3<f32>(x_1609.z, x_1609.x, x_1609.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1613 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
        let x_1615 : vec4<f32> = u_xlat8;
        let x_1618 : vec2<f32> = (vec2<f32>(x_1615.x, x_1615.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1619 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1618.x, x_1618.y, x_1619.z, x_1619.w);
        let x_1622 : f32 = u_xlat11.y;
        u_xlat10.x = x_1622;
        let x_1624 : vec2<f32> = u_xlat46;
        let x_1631 : vec2<f32> = ((vec2<f32>(x_1624.x, x_1624.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1632 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1632.x, x_1631.x, x_1632.z, x_1631.y);
        let x_1634 : vec2<f32> = u_xlat46;
        let x_1638 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1638.x, x_1639.y, x_1638.y, x_1639.w);
        let x_1642 : f32 = u_xlat7.x;
        u_xlat8.y = x_1642;
        let x_1645 : f32 = u_xlat9.y;
        u_xlat8.w = x_1645;
        let x_1647 : vec4<f32> = u_xlat8;
        let x_1648 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1647 + x_1648);
        let x_1650 : vec2<f32> = u_xlat46;
        let x_1653 : vec2<f32> = ((vec2<f32>(x_1650.y, x_1650.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1654 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1654.x, x_1653.x, x_1654.z, x_1653.y);
        let x_1656 : vec2<f32> = u_xlat46;
        let x_1659 : vec2<f32> = ((vec2<f32>(x_1656.y, x_1656.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1660 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1659.x, x_1660.y, x_1659.y, x_1660.w);
        let x_1663 : f32 = u_xlat7.y;
        u_xlat9.y = x_1663;
        let x_1665 : vec4<f32> = u_xlat9;
        let x_1666 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1665 + x_1666);
        let x_1668 : vec4<f32> = u_xlat8;
        let x_1669 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1668 / x_1669);
        let x_1671 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1671 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1677 : vec4<f32> = u_xlat9;
        let x_1678 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1677 / x_1678);
        let x_1680 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1680 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1685 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1682.w, x_1682.x, x_1682.y, x_1682.z) * vec4<f32>(x_1685.x, x_1685.x, x_1685.x, x_1685.x));
        let x_1688 : vec4<f32> = u_xlat9;
        let x_1691 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1688.x, x_1688.w, x_1688.y, x_1688.z) * vec4<f32>(x_1691.y, x_1691.y, x_1691.y, x_1691.y));
        let x_1694 : vec4<f32> = u_xlat8;
        let x_1695 : vec3<f32> = vec3<f32>(x_1694.y, x_1694.z, x_1694.w);
        let x_1696 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1695.x, x_1696.y, x_1695.y, x_1695.z);
        let x_1699 : f32 = u_xlat9.x;
        u_xlat11.y = x_1699;
        let x_1701 : vec4<f32> = u_xlat6;
        let x_1704 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1707 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1701.x, x_1701.y, x_1701.x, x_1701.y) * vec4<f32>(x_1704.x, x_1704.y, x_1704.x, x_1704.y)) + vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1707.y));
        let x_1710 : vec4<f32> = u_xlat6;
        let x_1713 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(x_1713.x, x_1713.y)) + vec2<f32>(x_1716.w, x_1716.y));
        let x_1720 : f32 = u_xlat11.y;
        u_xlat8.y = x_1720;
        let x_1723 : f32 = u_xlat9.z;
        u_xlat11.y = x_1723;
        let x_1725 : vec4<f32> = u_xlat6;
        let x_1728 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1731 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1725.x, x_1725.y, x_1725.x, x_1725.y) * vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y)) + vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1731.y));
        let x_1734 : vec4<f32> = u_xlat6;
        let x_1737 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1740 : vec4<f32> = u_xlat11;
        let x_1742 : vec2<f32> = ((vec2<f32>(x_1734.x, x_1734.y) * vec2<f32>(x_1737.x, x_1737.y)) + vec2<f32>(x_1740.w, x_1740.y));
        let x_1743 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1742.x, x_1742.y, x_1743.z, x_1743.w);
        let x_1746 : f32 = u_xlat11.y;
        u_xlat8.z = x_1746;
        let x_1749 : vec4<f32> = u_xlat6;
        let x_1752 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1755 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.y) * vec4<f32>(x_1752.x, x_1752.y, x_1752.x, x_1752.y)) + vec4<f32>(x_1755.x, x_1755.y, x_1755.x, x_1755.z));
        let x_1759 : f32 = u_xlat9.w;
        u_xlat11.y = x_1759;
        let x_1762 : vec4<f32> = u_xlat6;
        let x_1765 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.y) * vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y)) + vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1768.y));
        let x_1772 : vec4<f32> = u_xlat6;
        let x_1775 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1778 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1772.x, x_1772.y) * vec2<f32>(x_1775.x, x_1775.y)) + vec2<f32>(x_1778.w, x_1778.y));
        let x_1782 : f32 = u_xlat11.y;
        u_xlat8.w = x_1782;
        let x_1785 : vec4<f32> = u_xlat6;
        let x_1788 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1785.x, x_1785.y) * vec2<f32>(x_1788.x, x_1788.y)) + vec2<f32>(x_1791.x, x_1791.w));
        let x_1794 : vec4<f32> = u_xlat11;
        let x_1795 : vec3<f32> = vec3<f32>(x_1794.x, x_1794.z, x_1794.w);
        let x_1796 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1795.x, x_1796.y, x_1795.y, x_1795.z);
        let x_1798 : vec4<f32> = u_xlat6;
        let x_1801 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1798.x, x_1798.y, x_1798.x, x_1798.y) * vec4<f32>(x_1801.x, x_1801.y, x_1801.x, x_1801.y)) + vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1804.y));
        let x_1808 : vec4<f32> = u_xlat6;
        let x_1811 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1814 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(x_1811.x, x_1811.y)) + vec2<f32>(x_1814.w, x_1814.y));
        let x_1818 : f32 = u_xlat8.x;
        u_xlat9.x = x_1818;
        let x_1820 : vec4<f32> = u_xlat6;
        let x_1823 : vec4<f32> = x_974.x_MainLightShadowmapSize;
        let x_1826 : vec4<f32> = u_xlat9;
        let x_1828 : vec2<f32> = ((vec2<f32>(x_1820.x, x_1820.y) * vec2<f32>(x_1823.x, x_1823.y)) + vec2<f32>(x_1826.x, x_1826.y));
        let x_1829 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1828.x, x_1828.y, x_1829.z, x_1829.w);
        let x_1832 : vec4<f32> = u_xlat7;
        let x_1834 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1832.x, x_1832.x, x_1832.x, x_1832.x) * x_1834);
        let x_1837 : vec4<f32> = u_xlat7;
        let x_1839 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1837.y, x_1837.y, x_1837.y, x_1837.y) * x_1839);
        let x_1842 : vec4<f32> = u_xlat7;
        let x_1844 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1842.z, x_1842.z, x_1842.z, x_1842.z) * x_1844);
        let x_1846 : vec4<f32> = u_xlat7;
        let x_1848 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1846.w, x_1846.w, x_1846.w, x_1846.w) * x_1848);
        let x_1851 : vec4<f32> = u_xlat12;
        let x_1852 : vec2<f32> = vec2<f32>(x_1851.x, x_1851.y);
        let x_1854 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1852.x, x_1852.y, x_1854);
        let x_1861 : vec3<f32> = txVec13;
        let x_1863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1861.xy, x_1861.z);
        u_xlat63 = x_1863;
        let x_1865 : vec4<f32> = u_xlat12;
        let x_1866 : vec2<f32> = vec2<f32>(x_1865.z, x_1865.w);
        let x_1868 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1866.x, x_1866.y, x_1868);
        let x_1875 : vec3<f32> = txVec14;
        let x_1877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1875.xy, x_1875.z);
        u_xlat64 = x_1877;
        let x_1878 : f32 = u_xlat64;
        let x_1880 : f32 = u_xlat17.y;
        u_xlat64 = (x_1878 * x_1880);
        let x_1883 : f32 = u_xlat17.x;
        let x_1884 : f32 = u_xlat63;
        let x_1886 : f32 = u_xlat64;
        u_xlat63 = ((x_1883 * x_1884) + x_1886);
        let x_1889 : vec2<f32> = u_xlat46;
        let x_1891 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec15;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1898.xy, x_1898.z);
        u_xlat64 = x_1900;
        let x_1902 : f32 = u_xlat17.z;
        let x_1903 : f32 = u_xlat64;
        let x_1905 : f32 = u_xlat63;
        u_xlat63 = ((x_1902 * x_1903) + x_1905);
        let x_1908 : vec4<f32> = u_xlat15;
        let x_1909 : vec2<f32> = vec2<f32>(x_1908.x, x_1908.y);
        let x_1911 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
        let x_1918 : vec3<f32> = txVec16;
        let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1918.xy, x_1918.z);
        u_xlat64 = x_1920;
        let x_1922 : f32 = u_xlat17.w;
        let x_1923 : f32 = u_xlat64;
        let x_1925 : f32 = u_xlat63;
        u_xlat63 = ((x_1922 * x_1923) + x_1925);
        let x_1928 : vec4<f32> = u_xlat13;
        let x_1929 : vec2<f32> = vec2<f32>(x_1928.x, x_1928.y);
        let x_1931 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1929.x, x_1929.y, x_1931);
        let x_1938 : vec3<f32> = txVec17;
        let x_1940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1938.xy, x_1938.z);
        u_xlat64 = x_1940;
        let x_1942 : f32 = u_xlat18.x;
        let x_1943 : f32 = u_xlat64;
        let x_1945 : f32 = u_xlat63;
        u_xlat63 = ((x_1942 * x_1943) + x_1945);
        let x_1948 : vec4<f32> = u_xlat13;
        let x_1949 : vec2<f32> = vec2<f32>(x_1948.z, x_1948.w);
        let x_1951 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec18;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1958.xy, x_1958.z);
        u_xlat64 = x_1960;
        let x_1962 : f32 = u_xlat18.y;
        let x_1963 : f32 = u_xlat64;
        let x_1965 : f32 = u_xlat63;
        u_xlat63 = ((x_1962 * x_1963) + x_1965);
        let x_1968 : vec4<f32> = u_xlat14;
        let x_1969 : vec2<f32> = vec2<f32>(x_1968.x, x_1968.y);
        let x_1971 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
        let x_1978 : vec3<f32> = txVec19;
        let x_1980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1978.xy, x_1978.z);
        u_xlat64 = x_1980;
        let x_1982 : f32 = u_xlat18.z;
        let x_1983 : f32 = u_xlat64;
        let x_1985 : f32 = u_xlat63;
        u_xlat63 = ((x_1982 * x_1983) + x_1985);
        let x_1988 : vec4<f32> = u_xlat15;
        let x_1989 : vec2<f32> = vec2<f32>(x_1988.z, x_1988.w);
        let x_1991 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1989.x, x_1989.y, x_1991);
        let x_1998 : vec3<f32> = txVec20;
        let x_2000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1998.xy, x_1998.z);
        u_xlat64 = x_2000;
        let x_2002 : f32 = u_xlat18.w;
        let x_2003 : f32 = u_xlat64;
        let x_2005 : f32 = u_xlat63;
        u_xlat63 = ((x_2002 * x_2003) + x_2005);
        let x_2008 : vec4<f32> = u_xlat16;
        let x_2009 : vec2<f32> = vec2<f32>(x_2008.x, x_2008.y);
        let x_2011 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2009.x, x_2009.y, x_2011);
        let x_2018 : vec3<f32> = txVec21;
        let x_2020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2018.xy, x_2018.z);
        u_xlat64 = x_2020;
        let x_2022 : f32 = u_xlat19.x;
        let x_2023 : f32 = u_xlat64;
        let x_2025 : f32 = u_xlat63;
        u_xlat63 = ((x_2022 * x_2023) + x_2025);
        let x_2028 : vec4<f32> = u_xlat16;
        let x_2029 : vec2<f32> = vec2<f32>(x_2028.z, x_2028.w);
        let x_2031 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
        let x_2038 : vec3<f32> = txVec22;
        let x_2040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2038.xy, x_2038.z);
        u_xlat64 = x_2040;
        let x_2042 : f32 = u_xlat19.y;
        let x_2043 : f32 = u_xlat64;
        let x_2045 : f32 = u_xlat63;
        u_xlat63 = ((x_2042 * x_2043) + x_2045);
        let x_2048 : vec2<f32> = u_xlat28;
        let x_2050 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
        let x_2057 : vec3<f32> = txVec23;
        let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2057.xy, x_2057.z);
        u_xlat64 = x_2059;
        let x_2061 : f32 = u_xlat19.z;
        let x_2062 : f32 = u_xlat64;
        let x_2064 : f32 = u_xlat63;
        u_xlat63 = ((x_2061 * x_2062) + x_2064);
        let x_2067 : vec2<f32> = u_xlat54;
        let x_2069 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec24;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2076.xy, x_2076.z);
        u_xlat64 = x_2078;
        let x_2080 : f32 = u_xlat19.w;
        let x_2081 : f32 = u_xlat64;
        let x_2083 : f32 = u_xlat63;
        u_xlat63 = ((x_2080 * x_2081) + x_2083);
        let x_2086 : vec4<f32> = u_xlat11;
        let x_2087 : vec2<f32> = vec2<f32>(x_2086.x, x_2086.y);
        let x_2089 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2087.x, x_2087.y, x_2089);
        let x_2096 : vec3<f32> = txVec25;
        let x_2098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2096.xy, x_2096.z);
        u_xlat64 = x_2098;
        let x_2100 : f32 = u_xlat7.x;
        let x_2101 : f32 = u_xlat64;
        let x_2103 : f32 = u_xlat63;
        u_xlat63 = ((x_2100 * x_2101) + x_2103);
        let x_2106 : vec4<f32> = u_xlat11;
        let x_2107 : vec2<f32> = vec2<f32>(x_2106.z, x_2106.w);
        let x_2109 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2107.x, x_2107.y, x_2109);
        let x_2116 : vec3<f32> = txVec26;
        let x_2118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2116.xy, x_2116.z);
        u_xlat64 = x_2118;
        let x_2120 : f32 = u_xlat7.y;
        let x_2121 : f32 = u_xlat64;
        let x_2123 : f32 = u_xlat63;
        u_xlat63 = ((x_2120 * x_2121) + x_2123);
        let x_2126 : vec2<f32> = u_xlat49;
        let x_2128 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2126.x, x_2126.y, x_2128);
        let x_2135 : vec3<f32> = txVec27;
        let x_2137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2135.xy, x_2135.z);
        u_xlat64 = x_2137;
        let x_2139 : f32 = u_xlat7.z;
        let x_2140 : f32 = u_xlat64;
        let x_2142 : f32 = u_xlat63;
        u_xlat63 = ((x_2139 * x_2140) + x_2142);
        let x_2145 : vec4<f32> = u_xlat6;
        let x_2146 : vec2<f32> = vec2<f32>(x_2145.x, x_2145.y);
        let x_2148 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2146.x, x_2146.y, x_2148);
        let x_2155 : vec3<f32> = txVec28;
        let x_2157 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2155.xy, x_2155.z);
        u_xlat64 = x_2157;
        let x_2159 : f32 = u_xlat7.w;
        let x_2160 : f32 = u_xlat64;
        let x_2162 : f32 = u_xlat63;
        u_xlat3.x = ((x_2159 * x_2160) + x_2162);
      }
    }
  } else {
    let x_2167 : vec4<f32> = vs_TEXCOORD8;
    let x_2168 : vec2<f32> = vec2<f32>(x_2167.x, x_2167.y);
    let x_2170 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2168.x, x_2168.y, x_2170);
    let x_2177 : vec3<f32> = txVec29;
    let x_2179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2177.xy, x_2177.z);
    u_xlat3.x = x_2179;
  }
  let x_2182 : f32 = x_974.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2182) + 1.0f);
  let x_2186 : f32 = u_xlat3.x;
  let x_2188 : f32 = x_974.x_MainLightShadowParams.x;
  let x_2190 : f32 = u_xlat63;
  u_xlat3.x = ((x_2186 * x_2188) + x_2190);
  let x_2194 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2194);
  let x_2198 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2198 >= 1.0f);
  let x_2200 : bool = u_xlatb63;
  let x_2201 : bool = u_xlatb64;
  u_xlatb63 = (x_2200 | x_2201);
  let x_2203 : bool = u_xlatb63;
  if (x_2203) {
    x_2204 = 1.0f;
  } else {
    let x_2209 : f32 = u_xlat3.x;
    x_2204 = x_2209;
  }
  let x_2210 : f32 = x_2204;
  u_xlat3.x = x_2210;
  let x_2214 : vec3<f32> = vs_TEXCOORD7;
  let x_2217 : vec3<f32> = x_125.x_WorldSpaceCameraPos;
  let x_2219 : vec3<f32> = (x_2214 + -(x_2217));
  let x_2220 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
  let x_2222 : vec4<f32> = u_xlat6;
  let x_2224 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2222.x, x_2222.y, x_2222.z), vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
  let x_2227 : f32 = u_xlat63;
  let x_2229 : f32 = x_974.x_MainLightShadowParams.z;
  let x_2232 : f32 = x_974.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2227 * x_2229) + x_2232);
  let x_2234 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2234, 0.0f, 1.0f);
  let x_2237 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2237) + 1.0f);
  let x_2240 : f32 = u_xlat63;
  let x_2241 : f32 = u_xlat64;
  let x_2244 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2240 * x_2241) + x_2244);
  let x_2253 : f32 = x_2251.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_2253 == -1.0f));
  let x_2255 : bool = u_xlatb63;
  if (x_2255) {
    let x_2258 : vec3<f32> = vs_TEXCOORD7;
    let x_2261 : vec4<f32> = x_2251.x_MainLightWorldToLight[1i];
    let x_2263 : vec2<f32> = (vec2<f32>(x_2258.y, x_2258.y) * vec2<f32>(x_2261.x, x_2261.y));
    let x_2264 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
    let x_2267 : vec4<f32> = x_2251.x_MainLightWorldToLight[0i];
    let x_2269 : vec3<f32> = vs_TEXCOORD7;
    let x_2272 : vec4<f32> = u_xlat6;
    let x_2274 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(x_2269.x, x_2269.x)) + vec2<f32>(x_2272.x, x_2272.y));
    let x_2275 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2274.x, x_2274.y, x_2275.z, x_2275.w);
    let x_2278 : vec4<f32> = x_2251.x_MainLightWorldToLight[2i];
    let x_2280 : vec3<f32> = vs_TEXCOORD7;
    let x_2283 : vec4<f32> = u_xlat6;
    let x_2285 : vec2<f32> = ((vec2<f32>(x_2278.x, x_2278.y) * vec2<f32>(x_2280.z, x_2280.z)) + vec2<f32>(x_2283.x, x_2283.y));
    let x_2286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2285.x, x_2285.y, x_2286.z, x_2286.w);
    let x_2288 : vec4<f32> = u_xlat6;
    let x_2291 : vec4<f32> = x_2251.x_MainLightWorldToLight[3i];
    let x_2293 : vec2<f32> = (vec2<f32>(x_2288.x, x_2288.y) + vec2<f32>(x_2291.x, x_2291.y));
    let x_2294 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2293.x, x_2293.y, x_2294.z, x_2294.w);
    let x_2296 : vec4<f32> = u_xlat6;
    let x_2299 : vec2<f32> = ((vec2<f32>(x_2296.x, x_2296.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2300 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2299.x, x_2299.y, x_2300.z, x_2300.w);
    let x_2307 : vec4<f32> = u_xlat6;
    let x_2310 : f32 = x_125.x_GlobalMipBias.x;
    let x_2311 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2307.x, x_2307.y), x_2310);
    u_xlat6 = x_2311;
    let x_2316 : f32 = x_2251.x_MainLightCookieTextureFormat;
    let x_2318 : f32 = x_2251.x_MainLightCookieTextureFormat;
    let x_2320 : f32 = x_2251.x_MainLightCookieTextureFormat;
    let x_2322 : f32 = x_2251.x_MainLightCookieTextureFormat;
    let x_2323 : vec4<f32> = vec4<f32>(x_2316, x_2318, x_2320, x_2322);
    let x_2330 : vec4<bool> = (vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2323.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2330.x, x_2330.y);
    let x_2333 : bool = u_xlatb7.y;
    if (x_2333) {
      let x_2338 : f32 = u_xlat6.w;
      x_2334 = x_2338;
    } else {
      let x_2341 : f32 = u_xlat6.x;
      x_2334 = x_2341;
    }
    let x_2342 : f32 = x_2334;
    u_xlat63 = x_2342;
    let x_2344 : bool = u_xlatb7.x;
    if (x_2344) {
      let x_2348 : vec4<f32> = u_xlat6;
      x_2345 = vec3<f32>(x_2348.x, x_2348.y, x_2348.z);
    } else {
      let x_2351 : f32 = u_xlat63;
      x_2345 = vec3<f32>(x_2351, x_2351, x_2351);
    }
    let x_2353 : vec3<f32> = x_2345;
    let x_2354 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2360 : vec4<f32> = u_xlat6;
  let x_2363 : vec4<f32> = x_125.x_MainLightColor;
  let x_2365 : vec3<f32> = (vec3<f32>(x_2360.x, x_2360.y, x_2360.z) * vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
  let x_2366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
  let x_2368 : f32 = u_xlat43;
  let x_2370 : vec4<f32> = u_xlat6;
  let x_2372 : vec3<f32> = (vec3<f32>(x_2368, x_2368, x_2368) * vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
  let x_2373 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2373.w);
  let x_2376 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2376;
  let x_2379 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2379;
  let x_2382 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2382;
  let x_2384 : vec4<f32> = u_xlat7;
  let x_2387 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2384.x, x_2384.y, x_2384.z)), vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : f32 = u_xlat63;
  let x_2391 : f32 = u_xlat63;
  u_xlat63 = (x_2390 + x_2391);
  let x_2393 : vec4<f32> = u_xlat1;
  let x_2395 : f32 = u_xlat63;
  let x_2399 : vec4<f32> = u_xlat7;
  let x_2402 : vec3<f32> = ((vec3<f32>(x_2393.x, x_2393.y, x_2393.z) * -(vec3<f32>(x_2395, x_2395, x_2395))) + -(vec3<f32>(x_2399.x, x_2399.y, x_2399.z)));
  let x_2403 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
  let x_2405 : vec4<f32> = u_xlat1;
  let x_2407 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2405.x, x_2405.y, x_2405.z), vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2410, 0.0f, 1.0f);
  let x_2412 : f32 = u_xlat63;
  u_xlat63 = (-(x_2412) + 1.0f);
  let x_2415 : f32 = u_xlat63;
  let x_2416 : f32 = u_xlat63;
  u_xlat63 = (x_2415 * x_2416);
  let x_2418 : f32 = u_xlat63;
  let x_2419 : f32 = u_xlat63;
  u_xlat63 = (x_2418 * x_2419);
  let x_2422 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2422) * 0.699999988f) + 1.700000048f);
  let x_2429 : f32 = u_xlat0.x;
  let x_2430 : f32 = u_xlat64;
  u_xlat0.x = (x_2429 * x_2430);
  let x_2434 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2434 * 6.0f);
  let x_2446 : vec4<f32> = u_xlat8;
  let x_2449 : f32 = u_xlat0.x;
  let x_2450 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2446.x, x_2446.y, x_2446.z), x_2449);
  u_xlat8 = x_2450;
  let x_2452 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2452 + -1.0f);
  let x_2460 : f32 = x_2458.unity_SpecCube0_HDR.w;
  let x_2462 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2460 * x_2462) + 1.0f);
  let x_2467 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2467, 0.0f);
  let x_2471 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2471);
  let x_2475 : f32 = u_xlat0.x;
  let x_2477 : f32 = x_2458.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2475 * x_2477);
  let x_2481 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2481);
  let x_2485 : f32 = u_xlat0.x;
  let x_2487 : f32 = x_2458.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2485 * x_2487);
  let x_2490 : vec4<f32> = u_xlat8;
  let x_2492 : vec3<f32> = u_xlat0;
  let x_2494 : vec3<f32> = (vec3<f32>(x_2490.x, x_2490.y, x_2490.z) * vec3<f32>(x_2492.x, x_2492.x, x_2492.x));
  let x_2495 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
  let x_2497 : f32 = u_xlat40;
  let x_2499 : f32 = u_xlat40;
  let x_2503 : vec2<f32> = ((vec2<f32>(x_2497, x_2497) * vec2<f32>(x_2499, x_2499)) + vec2<f32>(-1.0f, 1.0f));
  let x_2504 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2503.x, x_2504.y, x_2503.y);
  let x_2507 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2507);
  let x_2509 : vec4<f32> = u_xlat5;
  let x_2512 : f32 = u_xlat62;
  let x_2514 : vec3<f32> = (-(vec3<f32>(x_2509.x, x_2509.y, x_2509.z)) + vec3<f32>(x_2512, x_2512, x_2512));
  let x_2515 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
  let x_2517 : f32 = u_xlat63;
  let x_2519 : vec4<f32> = u_xlat9;
  let x_2522 : vec4<f32> = u_xlat5;
  let x_2524 : vec3<f32> = ((vec3<f32>(x_2517, x_2517, x_2517) * vec3<f32>(x_2519.x, x_2519.y, x_2519.z)) + vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
  let x_2525 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
  let x_2527 : f32 = u_xlat40;
  let x_2529 : vec4<f32> = u_xlat9;
  let x_2531 : vec3<f32> = (vec3<f32>(x_2527, x_2527, x_2527) * vec3<f32>(x_2529.x, x_2529.y, x_2529.z));
  let x_2532 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
  let x_2534 : vec4<f32> = u_xlat8;
  let x_2536 : vec4<f32> = u_xlat9;
  let x_2538 : vec3<f32> = (vec3<f32>(x_2534.x, x_2534.y, x_2534.z) * vec3<f32>(x_2536.x, x_2536.y, x_2536.z));
  let x_2539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
  let x_2541 : vec3<f32> = u_xlat2;
  let x_2542 : vec4<f32> = u_xlat4;
  let x_2545 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2541 * vec3<f32>(x_2542.x, x_2542.y, x_2542.z)) + vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
  let x_2549 : f32 = u_xlat3.x;
  let x_2551 : f32 = x_2458.unity_LightData.z;
  u_xlat40 = (x_2549 * x_2551);
  let x_2553 : vec4<f32> = u_xlat1;
  let x_2556 : vec4<f32> = x_125.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2553.x, x_2553.y, x_2553.z), vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
  let x_2559 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2559, 0.0f, 1.0f);
  let x_2561 : f32 = u_xlat40;
  let x_2562 : f32 = u_xlat62;
  u_xlat40 = (x_2561 * x_2562);
  let x_2564 : f32 = u_xlat40;
  let x_2566 : vec4<f32> = u_xlat6;
  let x_2568 : vec3<f32> = (vec3<f32>(x_2564, x_2564, x_2564) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2569 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
  let x_2571 : vec4<f32> = u_xlat7;
  let x_2574 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2576 : vec3<f32> = (vec3<f32>(x_2571.x, x_2571.y, x_2571.z) + vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2577 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2579.x, x_2579.y, x_2579.z), vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : f32 = u_xlat40;
  u_xlat40 = max(x_2584, 1.17549435e-37f);
  let x_2587 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2587);
  let x_2589 : f32 = u_xlat40;
  let x_2591 : vec4<f32> = u_xlat8;
  let x_2593 : vec3<f32> = (vec3<f32>(x_2589, x_2589, x_2589) * vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
  let x_2596 : vec4<f32> = u_xlat1;
  let x_2598 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2596.x, x_2596.y, x_2596.z), vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
  let x_2601 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2601, 0.0f, 1.0f);
  let x_2604 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2606 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2604.x, x_2604.y, x_2604.z), vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
  let x_2609 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2609, 0.0f, 1.0f);
  let x_2611 : f32 = u_xlat40;
  let x_2612 : f32 = u_xlat40;
  u_xlat40 = (x_2611 * x_2612);
  let x_2614 : f32 = u_xlat40;
  let x_2616 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2614 * x_2616) + 1.000010014f);
  let x_2620 : f32 = u_xlat62;
  let x_2621 : f32 = u_xlat62;
  u_xlat62 = (x_2620 * x_2621);
  let x_2623 : f32 = u_xlat40;
  let x_2624 : f32 = u_xlat40;
  u_xlat40 = (x_2623 * x_2624);
  let x_2626 : f32 = u_xlat62;
  u_xlat62 = max(x_2626, 0.100000001f);
  let x_2629 : f32 = u_xlat40;
  let x_2630 : f32 = u_xlat62;
  u_xlat40 = (x_2629 * x_2630);
  let x_2632 : f32 = u_xlat23;
  let x_2633 : f32 = u_xlat40;
  u_xlat40 = (x_2632 * x_2633);
  let x_2635 : f32 = u_xlat61;
  let x_2636 : f32 = u_xlat40;
  u_xlat40 = (x_2635 / x_2636);
  let x_2638 : vec4<f32> = u_xlat5;
  let x_2640 : f32 = u_xlat40;
  let x_2643 : vec4<f32> = u_xlat4;
  let x_2645 : vec3<f32> = ((vec3<f32>(x_2638.x, x_2638.y, x_2638.z) * vec3<f32>(x_2640, x_2640, x_2640)) + vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
  let x_2646 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
  let x_2648 : vec4<f32> = u_xlat6;
  let x_2650 : vec4<f32> = u_xlat8;
  let x_2652 : vec3<f32> = (vec3<f32>(x_2648.x, x_2648.y, x_2648.z) * vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
  let x_2653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
  let x_2656 : f32 = x_125.x_AdditionalLightsCount.x;
  let x_2658 : f32 = x_2458.unity_LightData.y;
  u_xlat40 = min(x_2656, x_2658);
  let x_2662 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2662));
  let x_2666 : f32 = x_2251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2668 : f32 = x_2251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2670 : f32 = x_2251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2672 : f32 = x_2251.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2673 : vec4<f32> = vec4<f32>(x_2666, x_2668, x_2670, x_2672);
  let x_2680 : vec4<bool> = (vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2673.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2681 : vec2<bool> = vec2<bool>(x_2680.x, x_2680.w);
  let x_2682 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2681.x, x_2682.y, x_2682.z, x_2681.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2693 : u32 = u_xlatu_loop_1;
    let x_2694 : u32 = u_xlatu40;
    if ((x_2693 < x_2694)) {
    } else {
      break;
    }
    let x_2697 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2697 >> 2u);
    let x_2701 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2701 & 3u));
    let x_2704 : u32 = u_xlatu64;
    let x_2707 : vec4<f32> = x_2458.unity_LightIndices[bitcast<i32>(x_2704)];
    let x_2717 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2722 : vec4<u32> = indexable[x_2717];
    u_xlat64 = dot(x_2707, bitcast<vec4<f32>>(x_2722));
    let x_2725 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2725));
    let x_2728 : vec3<f32> = vs_TEXCOORD7;
    let x_2740 : u32 = u_xlatu64;
    let x_2743 : vec4<f32> = x_2739.x_AdditionalLightsPosition[bitcast<i32>(x_2740)];
    let x_2746 : u32 = u_xlatu64;
    let x_2749 : vec4<f32> = x_2739.x_AdditionalLightsPosition[bitcast<i32>(x_2746)];
    let x_2751 : vec3<f32> = ((-(x_2728) * vec3<f32>(x_2743.w, x_2743.w, x_2743.w)) + vec3<f32>(x_2749.x, x_2749.y, x_2749.z));
    let x_2752 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
    let x_2754 : vec4<f32> = u_xlat9;
    let x_2756 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2754.x, x_2754.y, x_2754.z), vec3<f32>(x_2756.x, x_2756.y, x_2756.z));
    let x_2759 : f32 = u_xlat65;
    u_xlat65 = max(x_2759, 6.10351562e-05f);
    let x_2762 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2762);
    let x_2764 : f32 = u_xlat66;
    let x_2766 : vec4<f32> = u_xlat9;
    let x_2768 : vec3<f32> = (vec3<f32>(x_2764, x_2764, x_2764) * vec3<f32>(x_2766.x, x_2766.y, x_2766.z));
    let x_2769 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2769.w);
    let x_2772 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_2772);
    let x_2774 : f32 = u_xlat65;
    let x_2775 : u32 = u_xlatu64;
    let x_2778 : f32 = x_2739.x_AdditionalLightsAttenuation[bitcast<i32>(x_2775)].x;
    u_xlat65 = (x_2774 * x_2778);
    let x_2780 : f32 = u_xlat65;
    let x_2782 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2780) * x_2782) + 1.0f);
    let x_2785 : f32 = u_xlat65;
    u_xlat65 = max(x_2785, 0.0f);
    let x_2787 : f32 = u_xlat65;
    let x_2788 : f32 = u_xlat65;
    u_xlat65 = (x_2787 * x_2788);
    let x_2790 : f32 = u_xlat65;
    let x_2791 : f32 = u_xlat67;
    u_xlat65 = (x_2790 * x_2791);
    let x_2793 : u32 = u_xlatu64;
    let x_2796 : vec4<f32> = x_2739.x_AdditionalLightsSpotDir[bitcast<i32>(x_2793)];
    let x_2798 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2796.x, x_2796.y, x_2796.z), vec3<f32>(x_2798.x, x_2798.y, x_2798.z));
    let x_2801 : f32 = u_xlat67;
    let x_2802 : u32 = u_xlatu64;
    let x_2805 : f32 = x_2739.x_AdditionalLightsAttenuation[bitcast<i32>(x_2802)].z;
    let x_2807 : u32 = u_xlatu64;
    let x_2810 : f32 = x_2739.x_AdditionalLightsAttenuation[bitcast<i32>(x_2807)].w;
    u_xlat67 = ((x_2801 * x_2805) + x_2810);
    let x_2812 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2812, 0.0f, 1.0f);
    let x_2814 : f32 = u_xlat67;
    let x_2815 : f32 = u_xlat67;
    u_xlat67 = (x_2814 * x_2815);
    let x_2817 : f32 = u_xlat65;
    let x_2818 : f32 = u_xlat67;
    u_xlat65 = (x_2817 * x_2818);
    let x_2821 : u32 = u_xlatu64;
    u_xlatu67 = (x_2821 >> 5u);
    let x_2824 : u32 = u_xlatu64;
    u_xlati68 = (1i << bitcast<u32>((bitcast<i32>(x_2824) & 31i)));
    let x_2829 : i32 = u_xlati68;
    let x_2831 : u32 = u_xlatu67;
    let x_2834 : f32 = x_2251.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2831)].el;
    u_xlati67 = bitcast<i32>((bitcast<u32>(x_2829) & bitcast<u32>(x_2834)));
    let x_2838 : i32 = u_xlati67;
    if ((x_2838 != 0i)) {
      let x_2848 : u32 = u_xlatu64;
      let x_2851 : f32 = x_2847.x_AdditionalLightsLightTypes[bitcast<i32>(x_2848)].el;
      u_xlati67 = i32(x_2851);
      let x_2853 : i32 = u_xlati67;
      u_xlati68 = select(1i, 0i, (x_2853 != 0i));
      let x_2857 : u32 = u_xlatu64;
      u_xlati69 = (bitcast<i32>(x_2857) << bitcast<u32>(2i));
      let x_2860 : i32 = u_xlati68;
      if ((x_2860 != 0i)) {
        let x_2864 : vec3<f32> = vs_TEXCOORD7;
        let x_2866 : i32 = u_xlati69;
        let x_2869 : i32 = u_xlati69;
        let x_2873 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_2866 + 1i) / 4i)][((x_2869 + 1i) % 4i)];
        let x_2875 : vec3<f32> = (vec3<f32>(x_2864.y, x_2864.y, x_2864.y) * vec3<f32>(x_2873.x, x_2873.y, x_2873.w));
        let x_2876 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2875.x, x_2875.y, x_2875.z, x_2876.w);
        let x_2878 : i32 = u_xlati69;
        let x_2880 : i32 = u_xlati69;
        let x_2883 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[(x_2878 / 4i)][(x_2880 % 4i)];
        let x_2885 : vec3<f32> = vs_TEXCOORD7;
        let x_2888 : vec4<f32> = u_xlat11;
        let x_2890 : vec3<f32> = ((vec3<f32>(x_2883.x, x_2883.y, x_2883.w) * vec3<f32>(x_2885.x, x_2885.x, x_2885.x)) + vec3<f32>(x_2888.x, x_2888.y, x_2888.z));
        let x_2891 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
        let x_2893 : i32 = u_xlati69;
        let x_2896 : i32 = u_xlati69;
        let x_2900 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_2893 + 2i) / 4i)][((x_2896 + 2i) % 4i)];
        let x_2902 : vec3<f32> = vs_TEXCOORD7;
        let x_2905 : vec4<f32> = u_xlat11;
        let x_2907 : vec3<f32> = ((vec3<f32>(x_2900.x, x_2900.y, x_2900.w) * vec3<f32>(x_2902.z, x_2902.z, x_2902.z)) + vec3<f32>(x_2905.x, x_2905.y, x_2905.z));
        let x_2908 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2907.x, x_2907.y, x_2907.z, x_2908.w);
        let x_2910 : vec4<f32> = u_xlat11;
        let x_2912 : i32 = u_xlati69;
        let x_2915 : i32 = u_xlati69;
        let x_2919 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_2912 + 3i) / 4i)][((x_2915 + 3i) % 4i)];
        let x_2921 : vec3<f32> = (vec3<f32>(x_2910.x, x_2910.y, x_2910.z) + vec3<f32>(x_2919.x, x_2919.y, x_2919.w));
        let x_2922 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2921.x, x_2921.y, x_2921.z, x_2922.w);
        let x_2924 : vec4<f32> = u_xlat11;
        let x_2926 : vec4<f32> = u_xlat11;
        let x_2928 : vec2<f32> = (vec2<f32>(x_2924.x, x_2924.y) / vec2<f32>(x_2926.z, x_2926.z));
        let x_2929 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2928.x, x_2928.y, x_2929.z, x_2929.w);
        let x_2931 : vec4<f32> = u_xlat11;
        let x_2934 : vec2<f32> = ((vec2<f32>(x_2931.x, x_2931.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2935 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
        let x_2937 : vec4<f32> = u_xlat11;
        let x_2941 : vec2<f32> = clamp(vec2<f32>(x_2937.x, x_2937.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2942 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2941.x, x_2941.y, x_2942.z, x_2942.w);
        let x_2944 : u32 = u_xlatu64;
        let x_2947 : vec4<f32> = x_2847.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2944)];
        let x_2949 : vec4<f32> = u_xlat11;
        let x_2952 : u32 = u_xlatu64;
        let x_2955 : vec4<f32> = x_2847.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2952)];
        let x_2957 : vec2<f32> = ((vec2<f32>(x_2947.x, x_2947.y) * vec2<f32>(x_2949.x, x_2949.y)) + vec2<f32>(x_2955.z, x_2955.w));
        let x_2958 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2957.x, x_2957.y, x_2958.z, x_2958.w);
      } else {
        let x_2962 : i32 = u_xlati67;
        u_xlatb67 = (x_2962 == 1i);
        let x_2964 : bool = u_xlatb67;
        u_xlati67 = select(0i, 1i, x_2964);
        let x_2966 : i32 = u_xlati67;
        if ((x_2966 != 0i)) {
          let x_2971 : vec3<f32> = vs_TEXCOORD7;
          let x_2973 : i32 = u_xlati69;
          let x_2976 : i32 = u_xlati69;
          let x_2980 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_2973 + 1i) / 4i)][((x_2976 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2971.y, x_2971.y) * vec2<f32>(x_2980.x, x_2980.y));
          let x_2983 : i32 = u_xlati69;
          let x_2985 : i32 = u_xlati69;
          let x_2988 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[(x_2983 / 4i)][(x_2985 % 4i)];
          let x_2990 : vec3<f32> = vs_TEXCOORD7;
          let x_2993 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2988.x, x_2988.y) * vec2<f32>(x_2990.x, x_2990.x)) + x_2993);
          let x_2995 : i32 = u_xlati69;
          let x_2998 : i32 = u_xlati69;
          let x_3002 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_2995 + 2i) / 4i)][((x_2998 + 2i) % 4i)];
          let x_3004 : vec3<f32> = vs_TEXCOORD7;
          let x_3007 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3002.x, x_3002.y) * vec2<f32>(x_3004.z, x_3004.z)) + x_3007);
          let x_3009 : vec2<f32> = u_xlat51;
          let x_3010 : i32 = u_xlati69;
          let x_3013 : i32 = u_xlati69;
          let x_3017 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_3010 + 3i) / 4i)][((x_3013 + 3i) % 4i)];
          u_xlat51 = (x_3009 + vec2<f32>(x_3017.x, x_3017.y));
          let x_3020 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3020 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3023 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3023);
          let x_3025 : u32 = u_xlatu64;
          let x_3028 : vec4<f32> = x_2847.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3025)];
          let x_3030 : vec2<f32> = u_xlat51;
          let x_3032 : u32 = u_xlatu64;
          let x_3035 : vec4<f32> = x_2847.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3032)];
          let x_3037 : vec2<f32> = ((vec2<f32>(x_3028.x, x_3028.y) * x_3030) + vec2<f32>(x_3035.z, x_3035.w));
          let x_3038 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3037.x, x_3037.y, x_3038.z, x_3038.w);
        } else {
          let x_3041 : vec3<f32> = vs_TEXCOORD7;
          let x_3043 : i32 = u_xlati69;
          let x_3046 : i32 = u_xlati69;
          let x_3050 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_3043 + 1i) / 4i)][((x_3046 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3041.y, x_3041.y, x_3041.y, x_3041.y) * x_3050);
          let x_3052 : i32 = u_xlati69;
          let x_3054 : i32 = u_xlati69;
          let x_3057 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[(x_3052 / 4i)][(x_3054 % 4i)];
          let x_3058 : vec3<f32> = vs_TEXCOORD7;
          let x_3061 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3057 * vec4<f32>(x_3058.x, x_3058.x, x_3058.x, x_3058.x)) + x_3061);
          let x_3063 : i32 = u_xlati69;
          let x_3066 : i32 = u_xlati69;
          let x_3070 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_3063 + 2i) / 4i)][((x_3066 + 2i) % 4i)];
          let x_3071 : vec3<f32> = vs_TEXCOORD7;
          let x_3074 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3070 * vec4<f32>(x_3071.z, x_3071.z, x_3071.z, x_3071.z)) + x_3074);
          let x_3076 : vec4<f32> = u_xlat12;
          let x_3077 : i32 = u_xlati69;
          let x_3080 : i32 = u_xlati69;
          let x_3084 : vec4<f32> = x_2847.x_AdditionalLightsWorldToLights[((x_3077 + 3i) / 4i)][((x_3080 + 3i) % 4i)];
          u_xlat12 = (x_3076 + x_3084);
          let x_3086 : vec4<f32> = u_xlat12;
          let x_3088 : vec4<f32> = u_xlat12;
          let x_3090 : vec3<f32> = (vec3<f32>(x_3086.x, x_3086.y, x_3086.z) / vec3<f32>(x_3088.w, x_3088.w, x_3088.w));
          let x_3091 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3090.x, x_3090.y, x_3090.z, x_3091.w);
          let x_3093 : vec4<f32> = u_xlat12;
          let x_3095 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(vec3<f32>(x_3093.x, x_3093.y, x_3093.z), vec3<f32>(x_3095.x, x_3095.y, x_3095.z));
          let x_3098 : f32 = u_xlat67;
          u_xlat67 = inverseSqrt(x_3098);
          let x_3100 : f32 = u_xlat67;
          let x_3102 : vec4<f32> = u_xlat12;
          let x_3104 : vec3<f32> = (vec3<f32>(x_3100, x_3100, x_3100) * vec3<f32>(x_3102.x, x_3102.y, x_3102.z));
          let x_3105 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
          let x_3107 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(abs(vec3<f32>(x_3107.x, x_3107.y, x_3107.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3112 : f32 = u_xlat67;
          u_xlat67 = max(x_3112, 0.000001f);
          let x_3115 : f32 = u_xlat67;
          u_xlat67 = (1.0f / x_3115);
          let x_3117 : f32 = u_xlat67;
          let x_3119 : vec4<f32> = u_xlat12;
          let x_3121 : vec3<f32> = (vec3<f32>(x_3117, x_3117, x_3117) * vec3<f32>(x_3119.z, x_3119.x, x_3119.y));
          let x_3122 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3121.x, x_3121.y, x_3121.z, x_3122.w);
          let x_3125 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3125);
          let x_3129 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3129, 0.0f, 1.0f);
          let x_3133 : vec4<f32> = u_xlat13;
          let x_3136 : vec4<bool> = (vec4<f32>(x_3133.y, x_3133.z, x_3133.y, x_3133.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3136.x, x_3136.y);
          let x_3139 : bool = u_xlatb51.x;
          if (x_3139) {
            let x_3144 : f32 = u_xlat13.x;
            x_3140 = x_3144;
          } else {
            let x_3147 : f32 = u_xlat13.x;
            x_3140 = -(x_3147);
          }
          let x_3149 : f32 = x_3140;
          u_xlat51.x = x_3149;
          let x_3152 : bool = u_xlatb51.y;
          if (x_3152) {
            let x_3157 : f32 = u_xlat13.x;
            x_3153 = x_3157;
          } else {
            let x_3160 : f32 = u_xlat13.x;
            x_3153 = -(x_3160);
          }
          let x_3162 : f32 = x_3153;
          u_xlat51.y = x_3162;
          let x_3164 : vec4<f32> = u_xlat12;
          let x_3166 : f32 = u_xlat67;
          let x_3169 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3164.x, x_3164.y) * vec2<f32>(x_3166, x_3166)) + x_3169);
          let x_3171 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3171 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3174 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3174, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3178 : u32 = u_xlatu64;
          let x_3181 : vec4<f32> = x_2847.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3178)];
          let x_3183 : vec2<f32> = u_xlat51;
          let x_3185 : u32 = u_xlatu64;
          let x_3188 : vec4<f32> = x_2847.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3185)];
          let x_3190 : vec2<f32> = ((vec2<f32>(x_3181.x, x_3181.y) * x_3183) + vec2<f32>(x_3188.z, x_3188.w));
          let x_3191 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3190.x, x_3190.y, x_3191.z, x_3191.w);
        }
      }
      let x_3198 : vec4<f32> = u_xlat11;
      let x_3201 : f32 = x_125.x_GlobalMipBias.x;
      let x_3202 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3198.x, x_3198.y), x_3201);
      u_xlat11 = x_3202;
      let x_3204 : bool = u_xlatb3.w;
      if (x_3204) {
        let x_3209 : f32 = u_xlat11.w;
        x_3205 = x_3209;
      } else {
        let x_3212 : f32 = u_xlat11.x;
        x_3205 = x_3212;
      }
      let x_3213 : f32 = x_3205;
      u_xlat67 = x_3213;
      let x_3215 : bool = u_xlatb3.x;
      if (x_3215) {
        let x_3219 : vec4<f32> = u_xlat11;
        x_3216 = vec3<f32>(x_3219.x, x_3219.y, x_3219.z);
      } else {
        let x_3222 : f32 = u_xlat67;
        x_3216 = vec3<f32>(x_3222, x_3222, x_3222);
      }
      let x_3224 : vec3<f32> = x_3216;
      let x_3225 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3224.x, x_3224.y, x_3224.z, x_3225.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3231 : vec4<f32> = u_xlat11;
    let x_3233 : u32 = u_xlatu64;
    let x_3236 : vec4<f32> = x_2739.x_AdditionalLightsColor[bitcast<i32>(x_3233)];
    let x_3238 : vec3<f32> = (vec3<f32>(x_3231.x, x_3231.y, x_3231.z) * vec3<f32>(x_3236.x, x_3236.y, x_3236.z));
    let x_3239 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3238.x, x_3238.y, x_3238.z, x_3239.w);
    let x_3241 : f32 = u_xlat43;
    let x_3243 : vec4<f32> = u_xlat11;
    let x_3245 : vec3<f32> = (vec3<f32>(x_3241, x_3241, x_3241) * vec3<f32>(x_3243.x, x_3243.y, x_3243.z));
    let x_3246 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
    let x_3248 : vec4<f32> = u_xlat1;
    let x_3250 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3248.x, x_3248.y, x_3248.z), vec3<f32>(x_3250.x, x_3250.y, x_3250.z));
    let x_3253 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3253, 0.0f, 1.0f);
    let x_3255 : f32 = u_xlat64;
    let x_3256 : f32 = u_xlat65;
    u_xlat64 = (x_3255 * x_3256);
    let x_3258 : f32 = u_xlat64;
    let x_3260 : vec4<f32> = u_xlat11;
    let x_3262 : vec3<f32> = (vec3<f32>(x_3258, x_3258, x_3258) * vec3<f32>(x_3260.x, x_3260.y, x_3260.z));
    let x_3263 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3263.w);
    let x_3265 : vec4<f32> = u_xlat9;
    let x_3267 : f32 = u_xlat66;
    let x_3270 : vec4<f32> = u_xlat7;
    let x_3272 : vec3<f32> = ((vec3<f32>(x_3265.x, x_3265.y, x_3265.z) * vec3<f32>(x_3267, x_3267, x_3267)) + vec3<f32>(x_3270.x, x_3270.y, x_3270.z));
    let x_3273 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3272.x, x_3272.y, x_3272.z, x_3273.w);
    let x_3275 : vec4<f32> = u_xlat9;
    let x_3277 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3275.x, x_3275.y, x_3275.z), vec3<f32>(x_3277.x, x_3277.y, x_3277.z));
    let x_3280 : f32 = u_xlat64;
    u_xlat64 = max(x_3280, 1.17549435e-37f);
    let x_3282 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3282);
    let x_3284 : f32 = u_xlat64;
    let x_3286 : vec4<f32> = u_xlat9;
    let x_3288 : vec3<f32> = (vec3<f32>(x_3284, x_3284, x_3284) * vec3<f32>(x_3286.x, x_3286.y, x_3286.z));
    let x_3289 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3288.x, x_3288.y, x_3288.z, x_3289.w);
    let x_3291 : vec4<f32> = u_xlat1;
    let x_3293 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3291.x, x_3291.y, x_3291.z), vec3<f32>(x_3293.x, x_3293.y, x_3293.z));
    let x_3296 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3296, 0.0f, 1.0f);
    let x_3298 : vec4<f32> = u_xlat10;
    let x_3300 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3298.x, x_3298.y, x_3298.z), vec3<f32>(x_3300.x, x_3300.y, x_3300.z));
    let x_3303 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3303, 0.0f, 1.0f);
    let x_3305 : f32 = u_xlat64;
    let x_3306 : f32 = u_xlat64;
    u_xlat64 = (x_3305 * x_3306);
    let x_3308 : f32 = u_xlat64;
    let x_3310 : f32 = u_xlat0.x;
    u_xlat64 = ((x_3308 * x_3310) + 1.000010014f);
    let x_3313 : f32 = u_xlat65;
    let x_3314 : f32 = u_xlat65;
    u_xlat65 = (x_3313 * x_3314);
    let x_3316 : f32 = u_xlat64;
    let x_3317 : f32 = u_xlat64;
    u_xlat64 = (x_3316 * x_3317);
    let x_3319 : f32 = u_xlat65;
    u_xlat65 = max(x_3319, 0.100000001f);
    let x_3321 : f32 = u_xlat64;
    let x_3322 : f32 = u_xlat65;
    u_xlat64 = (x_3321 * x_3322);
    let x_3324 : f32 = u_xlat23;
    let x_3325 : f32 = u_xlat64;
    u_xlat64 = (x_3324 * x_3325);
    let x_3327 : f32 = u_xlat61;
    let x_3328 : f32 = u_xlat64;
    u_xlat64 = (x_3327 / x_3328);
    let x_3330 : vec4<f32> = u_xlat5;
    let x_3332 : f32 = u_xlat64;
    let x_3335 : vec4<f32> = u_xlat4;
    let x_3337 : vec3<f32> = ((vec3<f32>(x_3330.x, x_3330.y, x_3330.z) * vec3<f32>(x_3332, x_3332, x_3332)) + vec3<f32>(x_3335.x, x_3335.y, x_3335.z));
    let x_3338 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
    let x_3340 : vec4<f32> = u_xlat9;
    let x_3342 : vec4<f32> = u_xlat11;
    let x_3345 : vec4<f32> = u_xlat8;
    let x_3347 : vec3<f32> = ((vec3<f32>(x_3340.x, x_3340.y, x_3340.z) * vec3<f32>(x_3342.x, x_3342.y, x_3342.z)) + vec3<f32>(x_3345.x, x_3345.y, x_3345.z));
    let x_3348 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3347.x, x_3347.y, x_3347.z, x_3348.w);

    continuing {
      let x_3350 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3350 + bitcast<u32>(1i));
    }
  }
  let x_3352 : vec3<f32> = u_xlat2;
  let x_3353 : f32 = u_xlat20;
  let x_3356 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_3352 * vec3<f32>(x_3353, x_3353, x_3353)) + vec3<f32>(x_3356.x, x_3356.y, x_3356.z));
  let x_3359 : vec4<f32> = u_xlat8;
  let x_3361 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3359.x, x_3359.y, x_3359.z) + x_3361);
  let x_3365 : f32 = u_xlat60;
  let x_3367 : vec3<f32> = u_xlat0;
  let x_3368 : vec3<f32> = (vec3<f32>(x_3365, x_3365, x_3365) * x_3367);
  let x_3369 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3368.x, x_3368.y, x_3368.z, x_3369.w);
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

