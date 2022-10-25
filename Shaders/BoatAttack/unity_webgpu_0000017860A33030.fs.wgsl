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

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_125 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_837 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1023 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2300 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2784 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2892 : AdditionalLightsCookies;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_2253 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2383 : f32;
  var x_2394 : vec3<f32>;
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
  var x_3185 : f32;
  var x_3198 : f32;
  var x_3250 : f32;
  var x_3261 : vec3<f32>;
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
  u_xlat1.w = 1.0f;
  let x_839 : vec4<f32> = x_837.unity_SHAr;
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_839, x_840);
  let x_844 : vec4<f32> = x_837.unity_SHAg;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_844, x_845);
  let x_849 : vec4<f32> = x_837.unity_SHAb;
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_849, x_850);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_853.y, x_853.z, x_853.z, x_853.x) * vec4<f32>(x_855.x, x_855.y, x_855.z, x_855.z));
  let x_859 : vec4<f32> = x_837.unity_SHBr;
  let x_860 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_859, x_860);
  let x_864 : vec4<f32> = x_837.unity_SHBg;
  let x_865 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_864, x_865);
  let x_869 : vec4<f32> = x_837.unity_SHBb;
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_869, x_870);
  let x_874 : f32 = u_xlat1.y;
  let x_876 : f32 = u_xlat1.y;
  u_xlat61 = (x_874 * x_876);
  let x_879 : f32 = u_xlat1.x;
  let x_881 : f32 = u_xlat1.x;
  let x_883 : f32 = u_xlat61;
  u_xlat61 = ((x_879 * x_881) + -(x_883));
  let x_888 : vec4<f32> = x_837.unity_SHC;
  let x_890 : f32 = u_xlat61;
  let x_893 : vec4<f32> = u_xlat4;
  let x_895 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890, x_890, x_890)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat2;
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_898 + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_902, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_907 : vec4<f32> = x_125.x_ScaledScreenParams;
  let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
  let x_912 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_908.x, x_908.y));
  let x_913 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
  let x_915 : vec4<f32> = u_xlat3;
  let x_917 : vec4<f32> = hlslcc_FragCoord;
  let x_919 : vec2<f32> = (vec2<f32>(x_915.x, x_915.y) * vec2<f32>(x_917.x, x_917.y));
  let x_920 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
  let x_923 : f32 = u_xlat3.y;
  let x_925 : f32 = x_125.x_ScaleBiasRt.x;
  let x_928 : f32 = x_125.x_ScaleBiasRt.y;
  u_xlat61 = ((x_923 * x_925) + x_928);
  let x_930 : f32 = u_xlat61;
  u_xlat3.z = (-(x_930) + 1.0f);
  let x_935 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_935) * 0.959999979f) + 0.959999979f);
  let x_941 : f32 = u_xlat40;
  let x_942 : f32 = u_xlat61;
  u_xlat62 = (x_941 + -(x_942));
  let x_945 : f32 = u_xlat61;
  let x_947 : vec4<f32> = u_xlat5;
  let x_949 : vec3<f32> = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat5;
  let x_956 : vec3<f32> = (vec3<f32>(x_952.x, x_952.y, x_952.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_957 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec3<f32> = u_xlat0;
  let x_961 : vec4<f32> = u_xlat5;
  let x_966 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.x, x_959.x) * vec3<f32>(x_961.x, x_961.y, x_961.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_967 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : f32 = u_xlat40;
  u_xlat0.x = (-(x_969) + 1.0f);
  let x_974 : f32 = u_xlat0.x;
  let x_976 : f32 = u_xlat0.x;
  u_xlat40 = (x_974 * x_976);
  let x_978 : f32 = u_xlat40;
  u_xlat40 = max(x_978, 0.0078125f);
  let x_981 : f32 = u_xlat40;
  let x_982 : f32 = u_xlat40;
  u_xlat61 = (x_981 * x_982);
  let x_984 : f32 = u_xlat62;
  u_xlat62 = (x_984 + 1.0f);
  let x_986 : f32 = u_xlat62;
  u_xlat62 = clamp(x_986, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat40;
  u_xlat23 = ((x_989 * 4.0f) + 2.0f);
  let x_997 : vec4<f32> = u_xlat3;
  let x_1000 : f32 = x_125.x_GlobalMipBias.x;
  let x_1001 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_997.x, x_997.z), x_1000);
  u_xlat3.x = x_1001.x;
  let x_1006 : f32 = u_xlat3.x;
  u_xlat43 = (x_1006 + -1.0f);
  let x_1009 : f32 = x_125.x_AmbientOcclusionParam.w;
  let x_1010 : f32 = u_xlat43;
  u_xlat43 = ((x_1009 * x_1010) + 1.0f);
  let x_1013 : f32 = u_xlat20;
  let x_1015 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1013, x_1015);
  let x_1025 : f32 = x_1023.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1025);
  let x_1029 : bool = u_xlatb3.x;
  if (x_1029) {
    let x_1033 : f32 = x_1023.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1033 == 1.0f);
    let x_1037 : bool = u_xlatb3.x;
    if (x_1037) {
      let x_1041 : vec4<f32> = vs_TEXCOORD8;
      let x_1044 : vec4<f32> = x_1023.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) + x_1044);
      let x_1047 : vec4<f32> = u_xlat6;
      let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
      let x_1050 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
      let x_1062 : vec3<f32> = txVec0;
      let x_1064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1062.xy, x_1062.z);
      u_xlat7.x = x_1064;
      let x_1067 : vec4<f32> = u_xlat6;
      let x_1068 : vec2<f32> = vec2<f32>(x_1067.z, x_1067.w);
      let x_1070 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
      let x_1077 : vec3<f32> = txVec1;
      let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1077.xy, x_1077.z);
      u_xlat7.y = x_1079;
      let x_1081 : vec4<f32> = vs_TEXCOORD8;
      let x_1084 : vec4<f32> = x_1023.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) + x_1084);
      let x_1087 : vec4<f32> = u_xlat6;
      let x_1088 : vec2<f32> = vec2<f32>(x_1087.x, x_1087.y);
      let x_1090 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
      let x_1097 : vec3<f32> = txVec2;
      let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1097.xy, x_1097.z);
      u_xlat7.z = x_1099;
      let x_1102 : vec4<f32> = u_xlat6;
      let x_1103 : vec2<f32> = vec2<f32>(x_1102.z, x_1102.w);
      let x_1105 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1103.x, x_1103.y, x_1105);
      let x_1112 : vec3<f32> = txVec3;
      let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1112.xy, x_1112.z);
      u_xlat7.w = x_1114;
      let x_1116 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1116, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1124 : f32 = x_1023.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1124 == 2.0f);
      let x_1126 : bool = u_xlatb63;
      if (x_1126) {
        let x_1129 : vec4<f32> = vs_TEXCOORD8;
        let x_1132 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.z, x_1132.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1136 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1140 : vec2<f32> = floor(vec2<f32>(x_1138.x, x_1138.y));
        let x_1141 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1145 : vec4<f32> = vs_TEXCOORD8;
        let x_1148 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.z, x_1148.w)) + -(vec2<f32>(x_1151.x, x_1151.y)));
        let x_1155 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.y, x_1155.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1159.x, x_1159.x, x_1159.z, x_1159.z) * vec4<f32>(x_1161.x, x_1161.x, x_1161.z, x_1161.z));
        let x_1164 : vec4<f32> = u_xlat8;
        let x_1168 : vec2<f32> = (vec2<f32>(x_1164.y, x_1164.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1169 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat8;
        let x_1174 : vec2<f32> = u_xlat46;
        let x_1176 : vec2<f32> = ((vec2<f32>(x_1171.x, x_1171.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1174));
        let x_1177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1180 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1180) + vec2<f32>(1.0f, 1.0f));
        let x_1183 : vec2<f32> = u_xlat46;
        let x_1185 : vec2<f32> = min(x_1183, vec2<f32>(0.0f, 0.0f));
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1194 : vec2<f32> = u_xlat48;
        let x_1195 : vec2<f32> = ((-(vec2<f32>(x_1188.x, x_1188.y)) * vec2<f32>(x_1191.x, x_1191.y)) + x_1194);
        let x_1196 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1198, vec2<f32>(0.0f, 0.0f));
        let x_1200 : vec2<f32> = u_xlat46;
        let x_1202 : vec2<f32> = u_xlat46;
        let x_1204 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1200) * x_1202) + vec2<f32>(x_1204.y, x_1204.w));
        let x_1207 : vec4<f32> = u_xlat9;
        let x_1209 : vec2<f32> = (vec2<f32>(x_1207.x, x_1207.y) + vec2<f32>(1.0f, 1.0f));
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1209.x, x_1209.y, x_1210.z, x_1210.w);
        let x_1212 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1212 + vec2<f32>(1.0f, 1.0f));
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1218 : vec2<f32> = (vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1221 : vec2<f32> = u_xlat48;
        let x_1222 : vec2<f32> = (x_1221 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1223 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1227 : vec2<f32> = (vec2<f32>(x_1225.x, x_1225.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1230 : vec2<f32> = u_xlat46;
        let x_1231 : vec2<f32> = (x_1230 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1232 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1234 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1234.y, x_1234.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1238 : f32 = u_xlat9.x;
        u_xlat10.z = x_1238;
        let x_1241 : f32 = u_xlat46.x;
        u_xlat10.w = x_1241;
        let x_1244 : f32 = u_xlat11.x;
        u_xlat8.z = x_1244;
        let x_1247 : f32 = u_xlat7.x;
        u_xlat8.w = x_1247;
        let x_1249 : vec4<f32> = u_xlat8;
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1249.z, x_1249.w, x_1249.x, x_1249.z) + vec4<f32>(x_1251.z, x_1251.w, x_1251.x, x_1251.z));
        let x_1255 : f32 = u_xlat10.y;
        u_xlat9.z = x_1255;
        let x_1258 : f32 = u_xlat46.y;
        u_xlat9.w = x_1258;
        let x_1261 : f32 = u_xlat8.y;
        u_xlat11.z = x_1261;
        let x_1264 : f32 = u_xlat7.z;
        u_xlat11.w = x_1264;
        let x_1266 : vec4<f32> = u_xlat9;
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1270 : vec3<f32> = (vec3<f32>(x_1266.z, x_1266.y, x_1266.w) + vec3<f32>(x_1268.z, x_1268.y, x_1268.w));
        let x_1271 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat8;
        let x_1275 : vec4<f32> = u_xlat12;
        let x_1277 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.z, x_1273.w) / vec3<f32>(x_1275.z, x_1275.w, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1286 : vec3<f32> = (vec3<f32>(x_1280.x, x_1280.y, x_1280.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1291 : vec4<f32> = u_xlat7;
        let x_1293 : vec3<f32> = (vec3<f32>(x_1289.z, x_1289.y, x_1289.w) / vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1298 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1304 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1306 : vec3<f32> = (vec3<f32>(x_1301.y, x_1301.x, x_1301.z) * vec3<f32>(x_1304.x, x_1304.x, x_1304.x));
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1312 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1314 : vec3<f32> = (vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(x_1312.y, x_1312.y, x_1312.y));
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
        let x_1318 : f32 = u_xlat9.x;
        u_xlat8.w = x_1318;
        let x_1320 : vec4<f32> = u_xlat6;
        let x_1323 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.y, x_1326.w, x_1326.x, x_1326.w));
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1332 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.z, x_1335.w));
        let x_1339 : f32 = u_xlat8.y;
        u_xlat9.w = x_1339;
        let x_1341 : vec4<f32> = u_xlat9;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.y, x_1341.z);
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1343.x, x_1342.x, x_1343.z, x_1342.y);
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1348 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y) * vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y)) + vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1351.y));
        let x_1354 : vec4<f32> = u_xlat6;
        let x_1357 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1354.x, x_1354.y, x_1354.x, x_1354.y) * vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.y)) + vec4<f32>(x_1360.w, x_1360.y, x_1360.w, x_1360.z));
        let x_1363 : vec4<f32> = u_xlat6;
        let x_1366 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y) * vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y)) + vec4<f32>(x_1369.x, x_1369.w, x_1369.z, x_1369.w));
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1372.x, x_1372.x, x_1372.x, x_1372.y) * vec4<f32>(x_1374.z, x_1374.w, x_1374.y, x_1374.z));
        let x_1378 : vec4<f32> = u_xlat7;
        let x_1380 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1378.y, x_1378.y, x_1378.z, x_1378.z) * x_1380);
        let x_1384 : f32 = u_xlat7.z;
        let x_1386 : f32 = u_xlat12.y;
        u_xlat63 = (x_1384 * x_1386);
        let x_1389 : vec4<f32> = u_xlat10;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1400 : vec3<f32> = txVec4;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat64 = x_1402;
        let x_1404 : vec4<f32> = u_xlat10;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1415 : vec3<f32> = txVec5;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat65 = x_1417;
        let x_1418 : f32 = u_xlat65;
        let x_1420 : f32 = u_xlat13.y;
        u_xlat65 = (x_1418 * x_1420);
        let x_1423 : f32 = u_xlat13.x;
        let x_1424 : f32 = u_xlat64;
        let x_1426 : f32 = u_xlat65;
        u_xlat64 = ((x_1423 * x_1424) + x_1426);
        let x_1429 : vec2<f32> = u_xlat46;
        let x_1431 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec6;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat65 = x_1440;
        let x_1442 : f32 = u_xlat13.z;
        let x_1443 : f32 = u_xlat65;
        let x_1445 : f32 = u_xlat64;
        u_xlat64 = ((x_1442 * x_1443) + x_1445);
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.x, x_1448.y);
        let x_1451 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec7;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat65 = x_1460;
        let x_1462 : f32 = u_xlat13.w;
        let x_1463 : f32 = u_xlat65;
        let x_1465 : f32 = u_xlat64;
        u_xlat64 = ((x_1462 * x_1463) + x_1465);
        let x_1468 : vec4<f32> = u_xlat11;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.x, x_1468.y);
        let x_1471 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec8;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1478.xy, x_1478.z);
        u_xlat65 = x_1480;
        let x_1482 : f32 = u_xlat14.x;
        let x_1483 : f32 = u_xlat65;
        let x_1485 : f32 = u_xlat64;
        u_xlat64 = ((x_1482 * x_1483) + x_1485);
        let x_1488 : vec4<f32> = u_xlat11;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.z, x_1488.w);
        let x_1491 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec9;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat65 = x_1500;
        let x_1502 : f32 = u_xlat14.y;
        let x_1503 : f32 = u_xlat65;
        let x_1505 : f32 = u_xlat64;
        u_xlat64 = ((x_1502 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.z, x_1508.w);
        let x_1511 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec10;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat65 = x_1520;
        let x_1522 : f32 = u_xlat14.z;
        let x_1523 : f32 = u_xlat65;
        let x_1525 : f32 = u_xlat64;
        u_xlat64 = ((x_1522 * x_1523) + x_1525);
        let x_1528 : vec4<f32> = u_xlat8;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec11;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat65 = x_1540;
        let x_1542 : f32 = u_xlat14.w;
        let x_1543 : f32 = u_xlat65;
        let x_1545 : f32 = u_xlat64;
        u_xlat64 = ((x_1542 * x_1543) + x_1545);
        let x_1548 : vec4<f32> = u_xlat8;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec12;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat65 = x_1560;
        let x_1561 : f32 = u_xlat63;
        let x_1562 : f32 = u_xlat65;
        let x_1564 : f32 = u_xlat64;
        u_xlat3.x = ((x_1561 * x_1562) + x_1564);
      } else {
        let x_1568 : vec4<f32> = vs_TEXCOORD8;
        let x_1571 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1574 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.z, x_1571.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
        let x_1577 : vec4<f32> = u_xlat6;
        let x_1579 : vec2<f32> = floor(vec2<f32>(x_1577.x, x_1577.y));
        let x_1580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1579.x, x_1579.y, x_1580.z, x_1580.w);
        let x_1582 : vec4<f32> = vs_TEXCOORD8;
        let x_1585 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1588 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1582.x, x_1582.y) * vec2<f32>(x_1585.z, x_1585.w)) + -(vec2<f32>(x_1588.x, x_1588.y)));
        let x_1592 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1592.x, x_1592.x, x_1592.y, x_1592.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1595 : vec4<f32> = u_xlat7;
        let x_1597 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1595.x, x_1595.x, x_1595.z, x_1595.z) * vec4<f32>(x_1597.x, x_1597.x, x_1597.z, x_1597.z));
        let x_1600 : vec4<f32> = u_xlat8;
        let x_1604 : vec2<f32> = (vec2<f32>(x_1600.y, x_1600.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1605.x, x_1604.x, x_1605.z, x_1604.y);
        let x_1607 : vec4<f32> = u_xlat8;
        let x_1610 : vec2<f32> = u_xlat46;
        let x_1612 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1610));
        let x_1613 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1612.x, x_1613.y, x_1612.y, x_1613.w);
        let x_1615 : vec2<f32> = u_xlat46;
        let x_1617 : vec2<f32> = (-(x_1615) + vec2<f32>(1.0f, 1.0f));
        let x_1618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1617.x, x_1617.y, x_1618.z, x_1618.w);
        let x_1620 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1620, vec2<f32>(0.0f, 0.0f));
        let x_1622 : vec2<f32> = u_xlat48;
        let x_1624 : vec2<f32> = u_xlat48;
        let x_1626 : vec4<f32> = u_xlat8;
        let x_1628 : vec2<f32> = ((-(x_1622) * x_1624) + vec2<f32>(x_1626.x, x_1626.y));
        let x_1629 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        let x_1631 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1631, vec2<f32>(0.0f, 0.0f));
        let x_1634 : vec2<f32> = u_xlat48;
        let x_1636 : vec2<f32> = u_xlat48;
        let x_1638 : vec4<f32> = u_xlat7;
        let x_1640 : vec2<f32> = ((-(x_1634) * x_1636) + vec2<f32>(x_1638.y, x_1638.w));
        let x_1641 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1640.x, x_1641.y, x_1640.y);
        let x_1643 : vec4<f32> = u_xlat8;
        let x_1645 : vec2<f32> = (vec2<f32>(x_1643.x, x_1643.y) + vec2<f32>(2.0f, 2.0f));
        let x_1646 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
        let x_1648 : vec3<f32> = u_xlat27;
        let x_1650 : vec2<f32> = (vec2<f32>(x_1648.x, x_1648.z) + vec2<f32>(2.0f, 2.0f));
        let x_1651 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1651.x, x_1650.x, x_1651.z, x_1650.y);
        let x_1654 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1654 * 0.081632003f);
        let x_1658 : vec4<f32> = u_xlat7;
        let x_1661 : vec3<f32> = (vec3<f32>(x_1658.z, x_1658.x, x_1658.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1662 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
        let x_1664 : vec4<f32> = u_xlat8;
        let x_1667 : vec2<f32> = (vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1668 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
        let x_1671 : f32 = u_xlat11.y;
        u_xlat10.x = x_1671;
        let x_1673 : vec2<f32> = u_xlat46;
        let x_1680 : vec2<f32> = ((vec2<f32>(x_1673.x, x_1673.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1681 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1681.x, x_1680.x, x_1681.z, x_1680.y);
        let x_1683 : vec2<f32> = u_xlat46;
        let x_1687 : vec2<f32> = ((vec2<f32>(x_1683.x, x_1683.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1687.x, x_1688.y, x_1687.y, x_1688.w);
        let x_1691 : f32 = u_xlat7.x;
        u_xlat8.y = x_1691;
        let x_1694 : f32 = u_xlat9.y;
        u_xlat8.w = x_1694;
        let x_1696 : vec4<f32> = u_xlat8;
        let x_1697 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1696 + x_1697);
        let x_1699 : vec2<f32> = u_xlat46;
        let x_1702 : vec2<f32> = ((vec2<f32>(x_1699.y, x_1699.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1703.x, x_1702.x, x_1703.z, x_1702.y);
        let x_1705 : vec2<f32> = u_xlat46;
        let x_1708 : vec2<f32> = ((vec2<f32>(x_1705.y, x_1705.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1708.x, x_1709.y, x_1708.y, x_1709.w);
        let x_1712 : f32 = u_xlat7.y;
        u_xlat9.y = x_1712;
        let x_1714 : vec4<f32> = u_xlat9;
        let x_1715 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1714 + x_1715);
        let x_1717 : vec4<f32> = u_xlat8;
        let x_1718 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1717 / x_1718);
        let x_1720 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1720 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1726 : vec4<f32> = u_xlat9;
        let x_1727 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1726 / x_1727);
        let x_1729 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1729 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1731 : vec4<f32> = u_xlat8;
        let x_1734 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1731.w, x_1731.x, x_1731.y, x_1731.z) * vec4<f32>(x_1734.x, x_1734.x, x_1734.x, x_1734.x));
        let x_1737 : vec4<f32> = u_xlat9;
        let x_1740 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1737.x, x_1737.w, x_1737.y, x_1737.z) * vec4<f32>(x_1740.y, x_1740.y, x_1740.y, x_1740.y));
        let x_1743 : vec4<f32> = u_xlat8;
        let x_1744 : vec3<f32> = vec3<f32>(x_1743.y, x_1743.z, x_1743.w);
        let x_1745 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1744.x, x_1745.y, x_1744.y, x_1744.z);
        let x_1748 : f32 = u_xlat9.x;
        u_xlat11.y = x_1748;
        let x_1750 : vec4<f32> = u_xlat6;
        let x_1753 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1750.x, x_1750.y, x_1750.x, x_1750.y) * vec4<f32>(x_1753.x, x_1753.y, x_1753.x, x_1753.y)) + vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1756.y));
        let x_1759 : vec4<f32> = u_xlat6;
        let x_1762 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1765 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1759.x, x_1759.y) * vec2<f32>(x_1762.x, x_1762.y)) + vec2<f32>(x_1765.w, x_1765.y));
        let x_1769 : f32 = u_xlat11.y;
        u_xlat8.y = x_1769;
        let x_1772 : f32 = u_xlat9.z;
        u_xlat11.y = x_1772;
        let x_1774 : vec4<f32> = u_xlat6;
        let x_1777 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1780 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1774.x, x_1774.y, x_1774.x, x_1774.y) * vec4<f32>(x_1777.x, x_1777.y, x_1777.x, x_1777.y)) + vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1780.y));
        let x_1783 : vec4<f32> = u_xlat6;
        let x_1786 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1789 : vec4<f32> = u_xlat11;
        let x_1791 : vec2<f32> = ((vec2<f32>(x_1783.x, x_1783.y) * vec2<f32>(x_1786.x, x_1786.y)) + vec2<f32>(x_1789.w, x_1789.y));
        let x_1792 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
        let x_1795 : f32 = u_xlat11.y;
        u_xlat8.z = x_1795;
        let x_1798 : vec4<f32> = u_xlat6;
        let x_1801 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1798.x, x_1798.y, x_1798.x, x_1798.y) * vec4<f32>(x_1801.x, x_1801.y, x_1801.x, x_1801.y)) + vec4<f32>(x_1804.x, x_1804.y, x_1804.x, x_1804.z));
        let x_1808 : f32 = u_xlat9.w;
        u_xlat11.y = x_1808;
        let x_1811 : vec4<f32> = u_xlat6;
        let x_1814 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y) * vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y)) + vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1817.y));
        let x_1821 : vec4<f32> = u_xlat6;
        let x_1824 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.w, x_1827.y));
        let x_1831 : f32 = u_xlat11.y;
        u_xlat8.w = x_1831;
        let x_1834 : vec4<f32> = u_xlat6;
        let x_1837 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1840 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1834.x, x_1834.y) * vec2<f32>(x_1837.x, x_1837.y)) + vec2<f32>(x_1840.x, x_1840.w));
        let x_1843 : vec4<f32> = u_xlat11;
        let x_1844 : vec3<f32> = vec3<f32>(x_1843.x, x_1843.z, x_1843.w);
        let x_1845 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1844.x, x_1845.y, x_1844.y, x_1844.z);
        let x_1847 : vec4<f32> = u_xlat6;
        let x_1850 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1853 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1847.x, x_1847.y, x_1847.x, x_1847.y) * vec4<f32>(x_1850.x, x_1850.y, x_1850.x, x_1850.y)) + vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1853.y));
        let x_1857 : vec4<f32> = u_xlat6;
        let x_1860 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1863 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1857.x, x_1857.y) * vec2<f32>(x_1860.x, x_1860.y)) + vec2<f32>(x_1863.w, x_1863.y));
        let x_1867 : f32 = u_xlat8.x;
        u_xlat9.x = x_1867;
        let x_1869 : vec4<f32> = u_xlat6;
        let x_1872 : vec4<f32> = x_1023.x_MainLightShadowmapSize;
        let x_1875 : vec4<f32> = u_xlat9;
        let x_1877 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.y) * vec2<f32>(x_1872.x, x_1872.y)) + vec2<f32>(x_1875.x, x_1875.y));
        let x_1878 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
        let x_1881 : vec4<f32> = u_xlat7;
        let x_1883 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1881.x, x_1881.x, x_1881.x, x_1881.x) * x_1883);
        let x_1886 : vec4<f32> = u_xlat7;
        let x_1888 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1886.y, x_1886.y, x_1886.y, x_1886.y) * x_1888);
        let x_1891 : vec4<f32> = u_xlat7;
        let x_1893 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1891.z, x_1891.z, x_1891.z, x_1891.z) * x_1893);
        let x_1895 : vec4<f32> = u_xlat7;
        let x_1897 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1895.w, x_1895.w, x_1895.w, x_1895.w) * x_1897);
        let x_1900 : vec4<f32> = u_xlat12;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec13;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1910.xy, x_1910.z);
        u_xlat63 = x_1912;
        let x_1914 : vec4<f32> = u_xlat12;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.z, x_1914.w);
        let x_1917 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec14;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1924.xy, x_1924.z);
        u_xlat64 = x_1926;
        let x_1927 : f32 = u_xlat64;
        let x_1929 : f32 = u_xlat17.y;
        u_xlat64 = (x_1927 * x_1929);
        let x_1932 : f32 = u_xlat17.x;
        let x_1933 : f32 = u_xlat63;
        let x_1935 : f32 = u_xlat64;
        u_xlat63 = ((x_1932 * x_1933) + x_1935);
        let x_1938 : vec2<f32> = u_xlat46;
        let x_1940 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec15;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1947.xy, x_1947.z);
        u_xlat64 = x_1949;
        let x_1951 : f32 = u_xlat17.z;
        let x_1952 : f32 = u_xlat64;
        let x_1954 : f32 = u_xlat63;
        u_xlat63 = ((x_1951 * x_1952) + x_1954);
        let x_1957 : vec4<f32> = u_xlat15;
        let x_1958 : vec2<f32> = vec2<f32>(x_1957.x, x_1957.y);
        let x_1960 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
        let x_1967 : vec3<f32> = txVec16;
        let x_1969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1967.xy, x_1967.z);
        u_xlat64 = x_1969;
        let x_1971 : f32 = u_xlat17.w;
        let x_1972 : f32 = u_xlat64;
        let x_1974 : f32 = u_xlat63;
        u_xlat63 = ((x_1971 * x_1972) + x_1974);
        let x_1977 : vec4<f32> = u_xlat13;
        let x_1978 : vec2<f32> = vec2<f32>(x_1977.x, x_1977.y);
        let x_1980 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec17;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1987.xy, x_1987.z);
        u_xlat64 = x_1989;
        let x_1991 : f32 = u_xlat18.x;
        let x_1992 : f32 = u_xlat64;
        let x_1994 : f32 = u_xlat63;
        u_xlat63 = ((x_1991 * x_1992) + x_1994);
        let x_1997 : vec4<f32> = u_xlat13;
        let x_1998 : vec2<f32> = vec2<f32>(x_1997.z, x_1997.w);
        let x_2000 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec18;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2007.xy, x_2007.z);
        u_xlat64 = x_2009;
        let x_2011 : f32 = u_xlat18.y;
        let x_2012 : f32 = u_xlat64;
        let x_2014 : f32 = u_xlat63;
        u_xlat63 = ((x_2011 * x_2012) + x_2014);
        let x_2017 : vec4<f32> = u_xlat14;
        let x_2018 : vec2<f32> = vec2<f32>(x_2017.x, x_2017.y);
        let x_2020 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2018.x, x_2018.y, x_2020);
        let x_2027 : vec3<f32> = txVec19;
        let x_2029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2027.xy, x_2027.z);
        u_xlat64 = x_2029;
        let x_2031 : f32 = u_xlat18.z;
        let x_2032 : f32 = u_xlat64;
        let x_2034 : f32 = u_xlat63;
        u_xlat63 = ((x_2031 * x_2032) + x_2034);
        let x_2037 : vec4<f32> = u_xlat15;
        let x_2038 : vec2<f32> = vec2<f32>(x_2037.z, x_2037.w);
        let x_2040 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2038.x, x_2038.y, x_2040);
        let x_2047 : vec3<f32> = txVec20;
        let x_2049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2047.xy, x_2047.z);
        u_xlat64 = x_2049;
        let x_2051 : f32 = u_xlat18.w;
        let x_2052 : f32 = u_xlat64;
        let x_2054 : f32 = u_xlat63;
        u_xlat63 = ((x_2051 * x_2052) + x_2054);
        let x_2057 : vec4<f32> = u_xlat16;
        let x_2058 : vec2<f32> = vec2<f32>(x_2057.x, x_2057.y);
        let x_2060 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2058.x, x_2058.y, x_2060);
        let x_2067 : vec3<f32> = txVec21;
        let x_2069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2067.xy, x_2067.z);
        u_xlat64 = x_2069;
        let x_2071 : f32 = u_xlat19.x;
        let x_2072 : f32 = u_xlat64;
        let x_2074 : f32 = u_xlat63;
        u_xlat63 = ((x_2071 * x_2072) + x_2074);
        let x_2077 : vec4<f32> = u_xlat16;
        let x_2078 : vec2<f32> = vec2<f32>(x_2077.z, x_2077.w);
        let x_2080 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec22;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2087.xy, x_2087.z);
        u_xlat64 = x_2089;
        let x_2091 : f32 = u_xlat19.y;
        let x_2092 : f32 = u_xlat64;
        let x_2094 : f32 = u_xlat63;
        u_xlat63 = ((x_2091 * x_2092) + x_2094);
        let x_2097 : vec2<f32> = u_xlat28;
        let x_2099 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
        let x_2106 : vec3<f32> = txVec23;
        let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2106.xy, x_2106.z);
        u_xlat64 = x_2108;
        let x_2110 : f32 = u_xlat19.z;
        let x_2111 : f32 = u_xlat64;
        let x_2113 : f32 = u_xlat63;
        u_xlat63 = ((x_2110 * x_2111) + x_2113);
        let x_2116 : vec2<f32> = u_xlat54;
        let x_2118 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2116.x, x_2116.y, x_2118);
        let x_2125 : vec3<f32> = txVec24;
        let x_2127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2125.xy, x_2125.z);
        u_xlat64 = x_2127;
        let x_2129 : f32 = u_xlat19.w;
        let x_2130 : f32 = u_xlat64;
        let x_2132 : f32 = u_xlat63;
        u_xlat63 = ((x_2129 * x_2130) + x_2132);
        let x_2135 : vec4<f32> = u_xlat11;
        let x_2136 : vec2<f32> = vec2<f32>(x_2135.x, x_2135.y);
        let x_2138 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2136.x, x_2136.y, x_2138);
        let x_2145 : vec3<f32> = txVec25;
        let x_2147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2145.xy, x_2145.z);
        u_xlat64 = x_2147;
        let x_2149 : f32 = u_xlat7.x;
        let x_2150 : f32 = u_xlat64;
        let x_2152 : f32 = u_xlat63;
        u_xlat63 = ((x_2149 * x_2150) + x_2152);
        let x_2155 : vec4<f32> = u_xlat11;
        let x_2156 : vec2<f32> = vec2<f32>(x_2155.z, x_2155.w);
        let x_2158 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
        let x_2165 : vec3<f32> = txVec26;
        let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2165.xy, x_2165.z);
        u_xlat64 = x_2167;
        let x_2169 : f32 = u_xlat7.y;
        let x_2170 : f32 = u_xlat64;
        let x_2172 : f32 = u_xlat63;
        u_xlat63 = ((x_2169 * x_2170) + x_2172);
        let x_2175 : vec2<f32> = u_xlat49;
        let x_2177 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2175.x, x_2175.y, x_2177);
        let x_2184 : vec3<f32> = txVec27;
        let x_2186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2184.xy, x_2184.z);
        u_xlat64 = x_2186;
        let x_2188 : f32 = u_xlat7.z;
        let x_2189 : f32 = u_xlat64;
        let x_2191 : f32 = u_xlat63;
        u_xlat63 = ((x_2188 * x_2189) + x_2191);
        let x_2194 : vec4<f32> = u_xlat6;
        let x_2195 : vec2<f32> = vec2<f32>(x_2194.x, x_2194.y);
        let x_2197 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2195.x, x_2195.y, x_2197);
        let x_2204 : vec3<f32> = txVec28;
        let x_2206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2204.xy, x_2204.z);
        u_xlat64 = x_2206;
        let x_2208 : f32 = u_xlat7.w;
        let x_2209 : f32 = u_xlat64;
        let x_2211 : f32 = u_xlat63;
        u_xlat3.x = ((x_2208 * x_2209) + x_2211);
      }
    }
  } else {
    let x_2216 : vec4<f32> = vs_TEXCOORD8;
    let x_2217 : vec2<f32> = vec2<f32>(x_2216.x, x_2216.y);
    let x_2219 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2217.x, x_2217.y, x_2219);
    let x_2226 : vec3<f32> = txVec29;
    let x_2228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2226.xy, x_2226.z);
    u_xlat3.x = x_2228;
  }
  let x_2231 : f32 = x_1023.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2231) + 1.0f);
  let x_2235 : f32 = u_xlat3.x;
  let x_2237 : f32 = x_1023.x_MainLightShadowParams.x;
  let x_2239 : f32 = u_xlat63;
  u_xlat3.x = ((x_2235 * x_2237) + x_2239);
  let x_2243 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2243);
  let x_2247 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2247 >= 1.0f);
  let x_2249 : bool = u_xlatb63;
  let x_2250 : bool = u_xlatb64;
  u_xlatb63 = (x_2249 | x_2250);
  let x_2252 : bool = u_xlatb63;
  if (x_2252) {
    x_2253 = 1.0f;
  } else {
    let x_2258 : f32 = u_xlat3.x;
    x_2253 = x_2258;
  }
  let x_2259 : f32 = x_2253;
  u_xlat3.x = x_2259;
  let x_2263 : vec3<f32> = vs_TEXCOORD7;
  let x_2266 : vec3<f32> = x_125.x_WorldSpaceCameraPos;
  let x_2268 : vec3<f32> = (x_2263 + -(x_2266));
  let x_2269 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
  let x_2271 : vec4<f32> = u_xlat6;
  let x_2273 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2271.x, x_2271.y, x_2271.z), vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
  let x_2276 : f32 = u_xlat63;
  let x_2278 : f32 = x_1023.x_MainLightShadowParams.z;
  let x_2281 : f32 = x_1023.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2276 * x_2278) + x_2281);
  let x_2283 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2283, 0.0f, 1.0f);
  let x_2286 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2286) + 1.0f);
  let x_2289 : f32 = u_xlat63;
  let x_2290 : f32 = u_xlat64;
  let x_2293 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2289 * x_2290) + x_2293);
  let x_2302 : f32 = x_2300.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_2302 == -1.0f));
  let x_2304 : bool = u_xlatb63;
  if (x_2304) {
    let x_2307 : vec3<f32> = vs_TEXCOORD7;
    let x_2310 : vec4<f32> = x_2300.x_MainLightWorldToLight[1i];
    let x_2312 : vec2<f32> = (vec2<f32>(x_2307.y, x_2307.y) * vec2<f32>(x_2310.x, x_2310.y));
    let x_2313 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2312.x, x_2312.y, x_2313.z, x_2313.w);
    let x_2316 : vec4<f32> = x_2300.x_MainLightWorldToLight[0i];
    let x_2318 : vec3<f32> = vs_TEXCOORD7;
    let x_2321 : vec4<f32> = u_xlat6;
    let x_2323 : vec2<f32> = ((vec2<f32>(x_2316.x, x_2316.y) * vec2<f32>(x_2318.x, x_2318.x)) + vec2<f32>(x_2321.x, x_2321.y));
    let x_2324 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2323.x, x_2323.y, x_2324.z, x_2324.w);
    let x_2327 : vec4<f32> = x_2300.x_MainLightWorldToLight[2i];
    let x_2329 : vec3<f32> = vs_TEXCOORD7;
    let x_2332 : vec4<f32> = u_xlat6;
    let x_2334 : vec2<f32> = ((vec2<f32>(x_2327.x, x_2327.y) * vec2<f32>(x_2329.z, x_2329.z)) + vec2<f32>(x_2332.x, x_2332.y));
    let x_2335 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
    let x_2337 : vec4<f32> = u_xlat6;
    let x_2340 : vec4<f32> = x_2300.x_MainLightWorldToLight[3i];
    let x_2342 : vec2<f32> = (vec2<f32>(x_2337.x, x_2337.y) + vec2<f32>(x_2340.x, x_2340.y));
    let x_2343 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
    let x_2345 : vec4<f32> = u_xlat6;
    let x_2348 : vec2<f32> = ((vec2<f32>(x_2345.x, x_2345.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2349 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2348.x, x_2348.y, x_2349.z, x_2349.w);
    let x_2356 : vec4<f32> = u_xlat6;
    let x_2359 : f32 = x_125.x_GlobalMipBias.x;
    let x_2360 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2356.x, x_2356.y), x_2359);
    u_xlat6 = x_2360;
    let x_2365 : f32 = x_2300.x_MainLightCookieTextureFormat;
    let x_2367 : f32 = x_2300.x_MainLightCookieTextureFormat;
    let x_2369 : f32 = x_2300.x_MainLightCookieTextureFormat;
    let x_2371 : f32 = x_2300.x_MainLightCookieTextureFormat;
    let x_2372 : vec4<f32> = vec4<f32>(x_2365, x_2367, x_2369, x_2371);
    let x_2379 : vec4<bool> = (vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2372.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2379.x, x_2379.y);
    let x_2382 : bool = u_xlatb7.y;
    if (x_2382) {
      let x_2387 : f32 = u_xlat6.w;
      x_2383 = x_2387;
    } else {
      let x_2390 : f32 = u_xlat6.x;
      x_2383 = x_2390;
    }
    let x_2391 : f32 = x_2383;
    u_xlat63 = x_2391;
    let x_2393 : bool = u_xlatb7.x;
    if (x_2393) {
      let x_2397 : vec4<f32> = u_xlat6;
      x_2394 = vec3<f32>(x_2397.x, x_2397.y, x_2397.z);
    } else {
      let x_2400 : f32 = u_xlat63;
      x_2394 = vec3<f32>(x_2400, x_2400, x_2400);
    }
    let x_2402 : vec3<f32> = x_2394;
    let x_2403 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2409 : vec4<f32> = u_xlat6;
  let x_2412 : vec4<f32> = x_125.x_MainLightColor;
  let x_2414 : vec3<f32> = (vec3<f32>(x_2409.x, x_2409.y, x_2409.z) * vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
  let x_2415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2415.w);
  let x_2417 : f32 = u_xlat43;
  let x_2419 : vec4<f32> = u_xlat6;
  let x_2421 : vec3<f32> = (vec3<f32>(x_2417, x_2417, x_2417) * vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2422 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2421.x, x_2421.y, x_2421.z, x_2422.w);
  let x_2425 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2425;
  let x_2428 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2428;
  let x_2431 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2431;
  let x_2433 : vec4<f32> = u_xlat7;
  let x_2436 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2433.x, x_2433.y, x_2433.z)), vec3<f32>(x_2436.x, x_2436.y, x_2436.z));
  let x_2439 : f32 = u_xlat63;
  let x_2440 : f32 = u_xlat63;
  u_xlat63 = (x_2439 + x_2440);
  let x_2442 : vec4<f32> = u_xlat1;
  let x_2444 : f32 = u_xlat63;
  let x_2448 : vec4<f32> = u_xlat7;
  let x_2451 : vec3<f32> = ((vec3<f32>(x_2442.x, x_2442.y, x_2442.z) * -(vec3<f32>(x_2444, x_2444, x_2444))) + -(vec3<f32>(x_2448.x, x_2448.y, x_2448.z)));
  let x_2452 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
  let x_2454 : vec4<f32> = u_xlat1;
  let x_2456 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2454.x, x_2454.y, x_2454.z), vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2459, 0.0f, 1.0f);
  let x_2461 : f32 = u_xlat63;
  u_xlat63 = (-(x_2461) + 1.0f);
  let x_2464 : f32 = u_xlat63;
  let x_2465 : f32 = u_xlat63;
  u_xlat63 = (x_2464 * x_2465);
  let x_2467 : f32 = u_xlat63;
  let x_2468 : f32 = u_xlat63;
  u_xlat63 = (x_2467 * x_2468);
  let x_2471 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2471) * 0.699999988f) + 1.700000048f);
  let x_2478 : f32 = u_xlat0.x;
  let x_2479 : f32 = u_xlat64;
  u_xlat0.x = (x_2478 * x_2479);
  let x_2483 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2483 * 6.0f);
  let x_2495 : vec4<f32> = u_xlat8;
  let x_2498 : f32 = u_xlat0.x;
  let x_2499 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2495.x, x_2495.y, x_2495.z), x_2498);
  u_xlat8 = x_2499;
  let x_2501 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2501 + -1.0f);
  let x_2505 : f32 = x_837.unity_SpecCube0_HDR.w;
  let x_2507 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2505 * x_2507) + 1.0f);
  let x_2512 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2512, 0.0f);
  let x_2516 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2516);
  let x_2520 : f32 = u_xlat0.x;
  let x_2522 : f32 = x_837.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2520 * x_2522);
  let x_2526 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2526);
  let x_2530 : f32 = u_xlat0.x;
  let x_2532 : f32 = x_837.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2530 * x_2532);
  let x_2535 : vec4<f32> = u_xlat8;
  let x_2537 : vec3<f32> = u_xlat0;
  let x_2539 : vec3<f32> = (vec3<f32>(x_2535.x, x_2535.y, x_2535.z) * vec3<f32>(x_2537.x, x_2537.x, x_2537.x));
  let x_2540 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
  let x_2542 : f32 = u_xlat40;
  let x_2544 : f32 = u_xlat40;
  let x_2548 : vec2<f32> = ((vec2<f32>(x_2542, x_2542) * vec2<f32>(x_2544, x_2544)) + vec2<f32>(-1.0f, 1.0f));
  let x_2549 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2548.x, x_2549.y, x_2548.y);
  let x_2552 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2552);
  let x_2554 : vec4<f32> = u_xlat5;
  let x_2557 : f32 = u_xlat62;
  let x_2559 : vec3<f32> = (-(vec3<f32>(x_2554.x, x_2554.y, x_2554.z)) + vec3<f32>(x_2557, x_2557, x_2557));
  let x_2560 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
  let x_2562 : f32 = u_xlat63;
  let x_2564 : vec4<f32> = u_xlat9;
  let x_2567 : vec4<f32> = u_xlat5;
  let x_2569 : vec3<f32> = ((vec3<f32>(x_2562, x_2562, x_2562) * vec3<f32>(x_2564.x, x_2564.y, x_2564.z)) + vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2572 : f32 = u_xlat40;
  let x_2574 : vec4<f32> = u_xlat9;
  let x_2576 : vec3<f32> = (vec3<f32>(x_2572, x_2572, x_2572) * vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2577 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec4<f32> = u_xlat9;
  let x_2583 : vec3<f32> = (vec3<f32>(x_2579.x, x_2579.y, x_2579.z) * vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
  let x_2586 : vec3<f32> = u_xlat2;
  let x_2587 : vec4<f32> = u_xlat4;
  let x_2590 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2586 * vec3<f32>(x_2587.x, x_2587.y, x_2587.z)) + vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
  let x_2594 : f32 = u_xlat3.x;
  let x_2596 : f32 = x_837.unity_LightData.z;
  u_xlat40 = (x_2594 * x_2596);
  let x_2598 : vec4<f32> = u_xlat1;
  let x_2601 : vec4<f32> = x_125.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2598.x, x_2598.y, x_2598.z), vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
  let x_2604 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2604, 0.0f, 1.0f);
  let x_2606 : f32 = u_xlat40;
  let x_2607 : f32 = u_xlat62;
  u_xlat40 = (x_2606 * x_2607);
  let x_2609 : f32 = u_xlat40;
  let x_2611 : vec4<f32> = u_xlat6;
  let x_2613 : vec3<f32> = (vec3<f32>(x_2609, x_2609, x_2609) * vec3<f32>(x_2611.x, x_2611.y, x_2611.z));
  let x_2614 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
  let x_2616 : vec4<f32> = u_xlat7;
  let x_2619 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2621 : vec3<f32> = (vec3<f32>(x_2616.x, x_2616.y, x_2616.z) + vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
  let x_2622 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2622.w);
  let x_2624 : vec4<f32> = u_xlat8;
  let x_2626 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2624.x, x_2624.y, x_2624.z), vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
  let x_2629 : f32 = u_xlat40;
  u_xlat40 = max(x_2629, 1.17549435e-37f);
  let x_2632 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2632);
  let x_2634 : f32 = u_xlat40;
  let x_2636 : vec4<f32> = u_xlat8;
  let x_2638 : vec3<f32> = (vec3<f32>(x_2634, x_2634, x_2634) * vec3<f32>(x_2636.x, x_2636.y, x_2636.z));
  let x_2639 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
  let x_2641 : vec4<f32> = u_xlat1;
  let x_2643 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2641.x, x_2641.y, x_2641.z), vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
  let x_2646 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2646, 0.0f, 1.0f);
  let x_2649 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2651 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2649.x, x_2649.y, x_2649.z), vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
  let x_2654 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2654, 0.0f, 1.0f);
  let x_2656 : f32 = u_xlat40;
  let x_2657 : f32 = u_xlat40;
  u_xlat40 = (x_2656 * x_2657);
  let x_2659 : f32 = u_xlat40;
  let x_2661 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2659 * x_2661) + 1.000010014f);
  let x_2665 : f32 = u_xlat62;
  let x_2666 : f32 = u_xlat62;
  u_xlat62 = (x_2665 * x_2666);
  let x_2668 : f32 = u_xlat40;
  let x_2669 : f32 = u_xlat40;
  u_xlat40 = (x_2668 * x_2669);
  let x_2671 : f32 = u_xlat62;
  u_xlat62 = max(x_2671, 0.100000001f);
  let x_2674 : f32 = u_xlat40;
  let x_2675 : f32 = u_xlat62;
  u_xlat40 = (x_2674 * x_2675);
  let x_2677 : f32 = u_xlat23;
  let x_2678 : f32 = u_xlat40;
  u_xlat40 = (x_2677 * x_2678);
  let x_2680 : f32 = u_xlat61;
  let x_2681 : f32 = u_xlat40;
  u_xlat40 = (x_2680 / x_2681);
  let x_2683 : vec4<f32> = u_xlat5;
  let x_2685 : f32 = u_xlat40;
  let x_2688 : vec4<f32> = u_xlat4;
  let x_2690 : vec3<f32> = ((vec3<f32>(x_2683.x, x_2683.y, x_2683.z) * vec3<f32>(x_2685, x_2685, x_2685)) + vec3<f32>(x_2688.x, x_2688.y, x_2688.z));
  let x_2691 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2690.x, x_2690.y, x_2690.z, x_2691.w);
  let x_2693 : vec4<f32> = u_xlat6;
  let x_2695 : vec4<f32> = u_xlat8;
  let x_2697 : vec3<f32> = (vec3<f32>(x_2693.x, x_2693.y, x_2693.z) * vec3<f32>(x_2695.x, x_2695.y, x_2695.z));
  let x_2698 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2697.x, x_2697.y, x_2697.z, x_2698.w);
  let x_2701 : f32 = x_125.x_AdditionalLightsCount.x;
  let x_2703 : f32 = x_837.unity_LightData.y;
  u_xlat40 = min(x_2701, x_2703);
  let x_2707 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2707));
  let x_2711 : f32 = x_2300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2713 : f32 = x_2300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2715 : f32 = x_2300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2717 : f32 = x_2300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2718 : vec4<f32> = vec4<f32>(x_2711, x_2713, x_2715, x_2717);
  let x_2725 : vec4<bool> = (vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2718.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2726 : vec2<bool> = vec2<bool>(x_2725.x, x_2725.w);
  let x_2727 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2726.x, x_2727.y, x_2727.z, x_2726.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2738 : u32 = u_xlatu_loop_1;
    let x_2739 : u32 = u_xlatu40;
    if ((x_2738 < x_2739)) {
    } else {
      break;
    }
    let x_2742 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2742 >> 2u);
    let x_2746 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2746 & 3u));
    let x_2749 : u32 = u_xlatu64;
    let x_2752 : vec4<f32> = x_837.unity_LightIndices[bitcast<i32>(x_2749)];
    let x_2762 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2767 : vec4<u32> = indexable[x_2762];
    u_xlat64 = dot(x_2752, bitcast<vec4<f32>>(x_2767));
    let x_2770 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2770));
    let x_2773 : vec3<f32> = vs_TEXCOORD7;
    let x_2785 : u32 = u_xlatu64;
    let x_2788 : vec4<f32> = x_2784.x_AdditionalLightsPosition[bitcast<i32>(x_2785)];
    let x_2791 : u32 = u_xlatu64;
    let x_2794 : vec4<f32> = x_2784.x_AdditionalLightsPosition[bitcast<i32>(x_2791)];
    let x_2796 : vec3<f32> = ((-(x_2773) * vec3<f32>(x_2788.w, x_2788.w, x_2788.w)) + vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
    let x_2797 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
    let x_2799 : vec4<f32> = u_xlat9;
    let x_2801 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2799.x, x_2799.y, x_2799.z), vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
    let x_2804 : f32 = u_xlat65;
    u_xlat65 = max(x_2804, 6.10351562e-05f);
    let x_2807 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2807);
    let x_2809 : f32 = u_xlat66;
    let x_2811 : vec4<f32> = u_xlat9;
    let x_2813 : vec3<f32> = (vec3<f32>(x_2809, x_2809, x_2809) * vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
    let x_2814 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
    let x_2817 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_2817);
    let x_2819 : f32 = u_xlat65;
    let x_2820 : u32 = u_xlatu64;
    let x_2823 : f32 = x_2784.x_AdditionalLightsAttenuation[bitcast<i32>(x_2820)].x;
    u_xlat65 = (x_2819 * x_2823);
    let x_2825 : f32 = u_xlat65;
    let x_2827 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2825) * x_2827) + 1.0f);
    let x_2830 : f32 = u_xlat65;
    u_xlat65 = max(x_2830, 0.0f);
    let x_2832 : f32 = u_xlat65;
    let x_2833 : f32 = u_xlat65;
    u_xlat65 = (x_2832 * x_2833);
    let x_2835 : f32 = u_xlat65;
    let x_2836 : f32 = u_xlat67;
    u_xlat65 = (x_2835 * x_2836);
    let x_2838 : u32 = u_xlatu64;
    let x_2841 : vec4<f32> = x_2784.x_AdditionalLightsSpotDir[bitcast<i32>(x_2838)];
    let x_2843 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2841.x, x_2841.y, x_2841.z), vec3<f32>(x_2843.x, x_2843.y, x_2843.z));
    let x_2846 : f32 = u_xlat67;
    let x_2847 : u32 = u_xlatu64;
    let x_2850 : f32 = x_2784.x_AdditionalLightsAttenuation[bitcast<i32>(x_2847)].z;
    let x_2852 : u32 = u_xlatu64;
    let x_2855 : f32 = x_2784.x_AdditionalLightsAttenuation[bitcast<i32>(x_2852)].w;
    u_xlat67 = ((x_2846 * x_2850) + x_2855);
    let x_2857 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2857, 0.0f, 1.0f);
    let x_2859 : f32 = u_xlat67;
    let x_2860 : f32 = u_xlat67;
    u_xlat67 = (x_2859 * x_2860);
    let x_2862 : f32 = u_xlat65;
    let x_2863 : f32 = u_xlat67;
    u_xlat65 = (x_2862 * x_2863);
    let x_2866 : u32 = u_xlatu64;
    u_xlatu67 = (x_2866 >> 5u);
    let x_2869 : u32 = u_xlatu64;
    u_xlati68 = (1i << bitcast<u32>((bitcast<i32>(x_2869) & 31i)));
    let x_2874 : i32 = u_xlati68;
    let x_2876 : u32 = u_xlatu67;
    let x_2879 : f32 = x_2300.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2876)].el;
    u_xlati67 = bitcast<i32>((bitcast<u32>(x_2874) & bitcast<u32>(x_2879)));
    let x_2883 : i32 = u_xlati67;
    if ((x_2883 != 0i)) {
      let x_2893 : u32 = u_xlatu64;
      let x_2896 : f32 = x_2892.x_AdditionalLightsLightTypes[bitcast<i32>(x_2893)].el;
      u_xlati67 = i32(x_2896);
      let x_2898 : i32 = u_xlati67;
      u_xlati68 = select(1i, 0i, (x_2898 != 0i));
      let x_2902 : u32 = u_xlatu64;
      u_xlati69 = (bitcast<i32>(x_2902) << bitcast<u32>(2i));
      let x_2905 : i32 = u_xlati68;
      if ((x_2905 != 0i)) {
        let x_2909 : vec3<f32> = vs_TEXCOORD7;
        let x_2911 : i32 = u_xlati69;
        let x_2914 : i32 = u_xlati69;
        let x_2918 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_2911 + 1i) / 4i)][((x_2914 + 1i) % 4i)];
        let x_2920 : vec3<f32> = (vec3<f32>(x_2909.y, x_2909.y, x_2909.y) * vec3<f32>(x_2918.x, x_2918.y, x_2918.w));
        let x_2921 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2921.w);
        let x_2923 : i32 = u_xlati69;
        let x_2925 : i32 = u_xlati69;
        let x_2928 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[(x_2923 / 4i)][(x_2925 % 4i)];
        let x_2930 : vec3<f32> = vs_TEXCOORD7;
        let x_2933 : vec4<f32> = u_xlat11;
        let x_2935 : vec3<f32> = ((vec3<f32>(x_2928.x, x_2928.y, x_2928.w) * vec3<f32>(x_2930.x, x_2930.x, x_2930.x)) + vec3<f32>(x_2933.x, x_2933.y, x_2933.z));
        let x_2936 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2935.x, x_2935.y, x_2935.z, x_2936.w);
        let x_2938 : i32 = u_xlati69;
        let x_2941 : i32 = u_xlati69;
        let x_2945 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_2938 + 2i) / 4i)][((x_2941 + 2i) % 4i)];
        let x_2947 : vec3<f32> = vs_TEXCOORD7;
        let x_2950 : vec4<f32> = u_xlat11;
        let x_2952 : vec3<f32> = ((vec3<f32>(x_2945.x, x_2945.y, x_2945.w) * vec3<f32>(x_2947.z, x_2947.z, x_2947.z)) + vec3<f32>(x_2950.x, x_2950.y, x_2950.z));
        let x_2953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
        let x_2955 : vec4<f32> = u_xlat11;
        let x_2957 : i32 = u_xlati69;
        let x_2960 : i32 = u_xlati69;
        let x_2964 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_2957 + 3i) / 4i)][((x_2960 + 3i) % 4i)];
        let x_2966 : vec3<f32> = (vec3<f32>(x_2955.x, x_2955.y, x_2955.z) + vec3<f32>(x_2964.x, x_2964.y, x_2964.w));
        let x_2967 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2966.x, x_2966.y, x_2966.z, x_2967.w);
        let x_2969 : vec4<f32> = u_xlat11;
        let x_2971 : vec4<f32> = u_xlat11;
        let x_2973 : vec2<f32> = (vec2<f32>(x_2969.x, x_2969.y) / vec2<f32>(x_2971.z, x_2971.z));
        let x_2974 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2973.x, x_2973.y, x_2974.z, x_2974.w);
        let x_2976 : vec4<f32> = u_xlat11;
        let x_2979 : vec2<f32> = ((vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
        let x_2982 : vec4<f32> = u_xlat11;
        let x_2986 : vec2<f32> = clamp(vec2<f32>(x_2982.x, x_2982.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2987 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2986.x, x_2986.y, x_2987.z, x_2987.w);
        let x_2989 : u32 = u_xlatu64;
        let x_2992 : vec4<f32> = x_2892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2989)];
        let x_2994 : vec4<f32> = u_xlat11;
        let x_2997 : u32 = u_xlatu64;
        let x_3000 : vec4<f32> = x_2892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2997)];
        let x_3002 : vec2<f32> = ((vec2<f32>(x_2992.x, x_2992.y) * vec2<f32>(x_2994.x, x_2994.y)) + vec2<f32>(x_3000.z, x_3000.w));
        let x_3003 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3002.x, x_3002.y, x_3003.z, x_3003.w);
      } else {
        let x_3007 : i32 = u_xlati67;
        u_xlatb67 = (x_3007 == 1i);
        let x_3009 : bool = u_xlatb67;
        u_xlati67 = select(0i, 1i, x_3009);
        let x_3011 : i32 = u_xlati67;
        if ((x_3011 != 0i)) {
          let x_3016 : vec3<f32> = vs_TEXCOORD7;
          let x_3018 : i32 = u_xlati69;
          let x_3021 : i32 = u_xlati69;
          let x_3025 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_3018 + 1i) / 4i)][((x_3021 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3016.y, x_3016.y) * vec2<f32>(x_3025.x, x_3025.y));
          let x_3028 : i32 = u_xlati69;
          let x_3030 : i32 = u_xlati69;
          let x_3033 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[(x_3028 / 4i)][(x_3030 % 4i)];
          let x_3035 : vec3<f32> = vs_TEXCOORD7;
          let x_3038 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3033.x, x_3033.y) * vec2<f32>(x_3035.x, x_3035.x)) + x_3038);
          let x_3040 : i32 = u_xlati69;
          let x_3043 : i32 = u_xlati69;
          let x_3047 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_3040 + 2i) / 4i)][((x_3043 + 2i) % 4i)];
          let x_3049 : vec3<f32> = vs_TEXCOORD7;
          let x_3052 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3047.x, x_3047.y) * vec2<f32>(x_3049.z, x_3049.z)) + x_3052);
          let x_3054 : vec2<f32> = u_xlat51;
          let x_3055 : i32 = u_xlati69;
          let x_3058 : i32 = u_xlati69;
          let x_3062 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_3055 + 3i) / 4i)][((x_3058 + 3i) % 4i)];
          u_xlat51 = (x_3054 + vec2<f32>(x_3062.x, x_3062.y));
          let x_3065 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3065 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3068 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3068);
          let x_3070 : u32 = u_xlatu64;
          let x_3073 : vec4<f32> = x_2892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3070)];
          let x_3075 : vec2<f32> = u_xlat51;
          let x_3077 : u32 = u_xlatu64;
          let x_3080 : vec4<f32> = x_2892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3077)];
          let x_3082 : vec2<f32> = ((vec2<f32>(x_3073.x, x_3073.y) * x_3075) + vec2<f32>(x_3080.z, x_3080.w));
          let x_3083 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3082.x, x_3082.y, x_3083.z, x_3083.w);
        } else {
          let x_3086 : vec3<f32> = vs_TEXCOORD7;
          let x_3088 : i32 = u_xlati69;
          let x_3091 : i32 = u_xlati69;
          let x_3095 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_3088 + 1i) / 4i)][((x_3091 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3086.y, x_3086.y, x_3086.y, x_3086.y) * x_3095);
          let x_3097 : i32 = u_xlati69;
          let x_3099 : i32 = u_xlati69;
          let x_3102 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[(x_3097 / 4i)][(x_3099 % 4i)];
          let x_3103 : vec3<f32> = vs_TEXCOORD7;
          let x_3106 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3102 * vec4<f32>(x_3103.x, x_3103.x, x_3103.x, x_3103.x)) + x_3106);
          let x_3108 : i32 = u_xlati69;
          let x_3111 : i32 = u_xlati69;
          let x_3115 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_3108 + 2i) / 4i)][((x_3111 + 2i) % 4i)];
          let x_3116 : vec3<f32> = vs_TEXCOORD7;
          let x_3119 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3115 * vec4<f32>(x_3116.z, x_3116.z, x_3116.z, x_3116.z)) + x_3119);
          let x_3121 : vec4<f32> = u_xlat12;
          let x_3122 : i32 = u_xlati69;
          let x_3125 : i32 = u_xlati69;
          let x_3129 : vec4<f32> = x_2892.x_AdditionalLightsWorldToLights[((x_3122 + 3i) / 4i)][((x_3125 + 3i) % 4i)];
          u_xlat12 = (x_3121 + x_3129);
          let x_3131 : vec4<f32> = u_xlat12;
          let x_3133 : vec4<f32> = u_xlat12;
          let x_3135 : vec3<f32> = (vec3<f32>(x_3131.x, x_3131.y, x_3131.z) / vec3<f32>(x_3133.w, x_3133.w, x_3133.w));
          let x_3136 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3135.x, x_3135.y, x_3135.z, x_3136.w);
          let x_3138 : vec4<f32> = u_xlat12;
          let x_3140 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(vec3<f32>(x_3138.x, x_3138.y, x_3138.z), vec3<f32>(x_3140.x, x_3140.y, x_3140.z));
          let x_3143 : f32 = u_xlat67;
          u_xlat67 = inverseSqrt(x_3143);
          let x_3145 : f32 = u_xlat67;
          let x_3147 : vec4<f32> = u_xlat12;
          let x_3149 : vec3<f32> = (vec3<f32>(x_3145, x_3145, x_3145) * vec3<f32>(x_3147.x, x_3147.y, x_3147.z));
          let x_3150 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3149.x, x_3149.y, x_3149.z, x_3150.w);
          let x_3152 : vec4<f32> = u_xlat12;
          u_xlat67 = dot(abs(vec3<f32>(x_3152.x, x_3152.y, x_3152.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3157 : f32 = u_xlat67;
          u_xlat67 = max(x_3157, 0.000001f);
          let x_3160 : f32 = u_xlat67;
          u_xlat67 = (1.0f / x_3160);
          let x_3162 : f32 = u_xlat67;
          let x_3164 : vec4<f32> = u_xlat12;
          let x_3166 : vec3<f32> = (vec3<f32>(x_3162, x_3162, x_3162) * vec3<f32>(x_3164.z, x_3164.x, x_3164.y));
          let x_3167 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3167.w);
          let x_3170 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3170);
          let x_3174 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3174, 0.0f, 1.0f);
          let x_3178 : vec4<f32> = u_xlat13;
          let x_3181 : vec4<bool> = (vec4<f32>(x_3178.y, x_3178.z, x_3178.y, x_3178.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3181.x, x_3181.y);
          let x_3184 : bool = u_xlatb51.x;
          if (x_3184) {
            let x_3189 : f32 = u_xlat13.x;
            x_3185 = x_3189;
          } else {
            let x_3192 : f32 = u_xlat13.x;
            x_3185 = -(x_3192);
          }
          let x_3194 : f32 = x_3185;
          u_xlat51.x = x_3194;
          let x_3197 : bool = u_xlatb51.y;
          if (x_3197) {
            let x_3202 : f32 = u_xlat13.x;
            x_3198 = x_3202;
          } else {
            let x_3205 : f32 = u_xlat13.x;
            x_3198 = -(x_3205);
          }
          let x_3207 : f32 = x_3198;
          u_xlat51.y = x_3207;
          let x_3209 : vec4<f32> = u_xlat12;
          let x_3211 : f32 = u_xlat67;
          let x_3214 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3209.x, x_3209.y) * vec2<f32>(x_3211, x_3211)) + x_3214);
          let x_3216 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3216 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3219 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3219, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3223 : u32 = u_xlatu64;
          let x_3226 : vec4<f32> = x_2892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3223)];
          let x_3228 : vec2<f32> = u_xlat51;
          let x_3230 : u32 = u_xlatu64;
          let x_3233 : vec4<f32> = x_2892.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3230)];
          let x_3235 : vec2<f32> = ((vec2<f32>(x_3226.x, x_3226.y) * x_3228) + vec2<f32>(x_3233.z, x_3233.w));
          let x_3236 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3235.x, x_3235.y, x_3236.z, x_3236.w);
        }
      }
      let x_3243 : vec4<f32> = u_xlat11;
      let x_3246 : f32 = x_125.x_GlobalMipBias.x;
      let x_3247 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3243.x, x_3243.y), x_3246);
      u_xlat11 = x_3247;
      let x_3249 : bool = u_xlatb3.w;
      if (x_3249) {
        let x_3254 : f32 = u_xlat11.w;
        x_3250 = x_3254;
      } else {
        let x_3257 : f32 = u_xlat11.x;
        x_3250 = x_3257;
      }
      let x_3258 : f32 = x_3250;
      u_xlat67 = x_3258;
      let x_3260 : bool = u_xlatb3.x;
      if (x_3260) {
        let x_3264 : vec4<f32> = u_xlat11;
        x_3261 = vec3<f32>(x_3264.x, x_3264.y, x_3264.z);
      } else {
        let x_3267 : f32 = u_xlat67;
        x_3261 = vec3<f32>(x_3267, x_3267, x_3267);
      }
      let x_3269 : vec3<f32> = x_3261;
      let x_3270 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3269.x, x_3269.y, x_3269.z, x_3270.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3276 : vec4<f32> = u_xlat11;
    let x_3278 : u32 = u_xlatu64;
    let x_3281 : vec4<f32> = x_2784.x_AdditionalLightsColor[bitcast<i32>(x_3278)];
    let x_3283 : vec3<f32> = (vec3<f32>(x_3276.x, x_3276.y, x_3276.z) * vec3<f32>(x_3281.x, x_3281.y, x_3281.z));
    let x_3284 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3283.x, x_3283.y, x_3283.z, x_3284.w);
    let x_3286 : f32 = u_xlat43;
    let x_3288 : vec4<f32> = u_xlat11;
    let x_3290 : vec3<f32> = (vec3<f32>(x_3286, x_3286, x_3286) * vec3<f32>(x_3288.x, x_3288.y, x_3288.z));
    let x_3291 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3290.x, x_3290.y, x_3290.z, x_3291.w);
    let x_3293 : vec4<f32> = u_xlat1;
    let x_3295 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3293.x, x_3293.y, x_3293.z), vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
    let x_3298 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3298, 0.0f, 1.0f);
    let x_3300 : f32 = u_xlat64;
    let x_3301 : f32 = u_xlat65;
    u_xlat64 = (x_3300 * x_3301);
    let x_3303 : f32 = u_xlat64;
    let x_3305 : vec4<f32> = u_xlat11;
    let x_3307 : vec3<f32> = (vec3<f32>(x_3303, x_3303, x_3303) * vec3<f32>(x_3305.x, x_3305.y, x_3305.z));
    let x_3308 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3307.x, x_3307.y, x_3307.z, x_3308.w);
    let x_3310 : vec4<f32> = u_xlat9;
    let x_3312 : f32 = u_xlat66;
    let x_3315 : vec4<f32> = u_xlat7;
    let x_3317 : vec3<f32> = ((vec3<f32>(x_3310.x, x_3310.y, x_3310.z) * vec3<f32>(x_3312, x_3312, x_3312)) + vec3<f32>(x_3315.x, x_3315.y, x_3315.z));
    let x_3318 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3317.x, x_3317.y, x_3317.z, x_3318.w);
    let x_3320 : vec4<f32> = u_xlat9;
    let x_3322 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3320.x, x_3320.y, x_3320.z), vec3<f32>(x_3322.x, x_3322.y, x_3322.z));
    let x_3325 : f32 = u_xlat64;
    u_xlat64 = max(x_3325, 1.17549435e-37f);
    let x_3327 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3327);
    let x_3329 : f32 = u_xlat64;
    let x_3331 : vec4<f32> = u_xlat9;
    let x_3333 : vec3<f32> = (vec3<f32>(x_3329, x_3329, x_3329) * vec3<f32>(x_3331.x, x_3331.y, x_3331.z));
    let x_3334 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3334.w);
    let x_3336 : vec4<f32> = u_xlat1;
    let x_3338 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_3336.x, x_3336.y, x_3336.z), vec3<f32>(x_3338.x, x_3338.y, x_3338.z));
    let x_3341 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3341, 0.0f, 1.0f);
    let x_3343 : vec4<f32> = u_xlat10;
    let x_3345 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3343.x, x_3343.y, x_3343.z), vec3<f32>(x_3345.x, x_3345.y, x_3345.z));
    let x_3348 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3348, 0.0f, 1.0f);
    let x_3350 : f32 = u_xlat64;
    let x_3351 : f32 = u_xlat64;
    u_xlat64 = (x_3350 * x_3351);
    let x_3353 : f32 = u_xlat64;
    let x_3355 : f32 = u_xlat0.x;
    u_xlat64 = ((x_3353 * x_3355) + 1.000010014f);
    let x_3358 : f32 = u_xlat65;
    let x_3359 : f32 = u_xlat65;
    u_xlat65 = (x_3358 * x_3359);
    let x_3361 : f32 = u_xlat64;
    let x_3362 : f32 = u_xlat64;
    u_xlat64 = (x_3361 * x_3362);
    let x_3364 : f32 = u_xlat65;
    u_xlat65 = max(x_3364, 0.100000001f);
    let x_3366 : f32 = u_xlat64;
    let x_3367 : f32 = u_xlat65;
    u_xlat64 = (x_3366 * x_3367);
    let x_3369 : f32 = u_xlat23;
    let x_3370 : f32 = u_xlat64;
    u_xlat64 = (x_3369 * x_3370);
    let x_3372 : f32 = u_xlat61;
    let x_3373 : f32 = u_xlat64;
    u_xlat64 = (x_3372 / x_3373);
    let x_3375 : vec4<f32> = u_xlat5;
    let x_3377 : f32 = u_xlat64;
    let x_3380 : vec4<f32> = u_xlat4;
    let x_3382 : vec3<f32> = ((vec3<f32>(x_3375.x, x_3375.y, x_3375.z) * vec3<f32>(x_3377, x_3377, x_3377)) + vec3<f32>(x_3380.x, x_3380.y, x_3380.z));
    let x_3383 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3382.x, x_3382.y, x_3382.z, x_3383.w);
    let x_3385 : vec4<f32> = u_xlat9;
    let x_3387 : vec4<f32> = u_xlat11;
    let x_3390 : vec4<f32> = u_xlat8;
    let x_3392 : vec3<f32> = ((vec3<f32>(x_3385.x, x_3385.y, x_3385.z) * vec3<f32>(x_3387.x, x_3387.y, x_3387.z)) + vec3<f32>(x_3390.x, x_3390.y, x_3390.z));
    let x_3393 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3392.x, x_3392.y, x_3392.z, x_3393.w);

    continuing {
      let x_3395 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3395 + bitcast<u32>(1i));
    }
  }
  let x_3397 : vec3<f32> = u_xlat2;
  let x_3398 : f32 = u_xlat20;
  let x_3401 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_3397 * vec3<f32>(x_3398, x_3398, x_3398)) + vec3<f32>(x_3401.x, x_3401.y, x_3401.z));
  let x_3404 : vec4<f32> = u_xlat8;
  let x_3406 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3404.x, x_3404.y, x_3404.z) + x_3406);
  let x_3410 : f32 = u_xlat60;
  let x_3412 : vec3<f32> = u_xlat0;
  let x_3413 : vec3<f32> = (vec3<f32>(x_3410, x_3410, x_3410) * x_3412);
  let x_3414 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3414.w);
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

