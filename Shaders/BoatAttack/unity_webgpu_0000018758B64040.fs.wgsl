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

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_887 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1073 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2365 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2857 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2966 : AdditionalLightsCookies;

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
  var u_xlat22 : vec3<f32>;
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
  var x_2320 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2446 : f32;
  var x_2457 : vec3<f32>;
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
  var x_3259 : f32;
  var x_3272 : f32;
  var x_3324 : f32;
  var x_3335 : vec3<f32>;
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
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat60 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb61 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb61;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat61;
  u_xlat61 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat61;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_370 : vec4<f32> = vs_TEXCOORD1;
  let x_373 : f32 = x_126.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_370.x, x_370.y), x_373);
  let x_375 : vec3<f32> = vec3<f32>(x_374.x, x_374.y, x_374.w);
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = u_xlat6.x;
  let x_381 : f32 = u_xlat6.z;
  u_xlat6.x = (x_379 * x_381);
  let x_384 : vec4<f32> = u_xlat6;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_397 : f32 = u_xlat61;
  u_xlat61 = min(x_397, 1.0f);
  let x_399 : f32 = u_xlat61;
  u_xlat61 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_402);
  let x_404 : f32 = u_xlat61;
  u_xlat7.z = max(x_404, 1.00000002e-16f);
  let x_408 : vec4<f32> = u_xlat6;
  let x_412 : f32 = x_30.x_NormalScale0;
  let x_414 : vec2<f32> = (vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_424 : f32 = x_126.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_421.z, x_421.w), x_424);
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat6.z;
  u_xlat6.x = (x_430 * x_432);
  let x_435 : vec4<f32> = u_xlat6;
  let x_438 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
  let x_446 : f32 = u_xlat61;
  u_xlat61 = min(x_446, 1.0f);
  let x_448 : f32 = u_xlat61;
  u_xlat61 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_451);
  let x_453 : f32 = u_xlat61;
  u_xlat8.z = max(x_453, 1.00000002e-16f);
  let x_456 : vec4<f32> = u_xlat6;
  let x_459 : f32 = x_30.x_NormalScale1;
  let x_461 : f32 = x_30.x_NormalScale1;
  let x_462 : vec2<f32> = vec2<f32>(x_459, x_461);
  let x_466 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.y, x_469.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_490 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : f32 = x_126.x_GlobalMipBias.x;
  let x_494 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_490.x, x_490.y), x_493);
  let x_495 : vec3<f32> = vec3<f32>(x_494.x, x_494.y, x_494.w);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat7.z;
  u_xlat7.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_510.x, x_510.y), vec2<f32>(x_512.x, x_512.y));
  let x_515 : f32 = u_xlat61;
  u_xlat61 = min(x_515, 1.0f);
  let x_517 : f32 = u_xlat61;
  u_xlat61 = (-(x_517) + 1.0f);
  let x_520 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_520);
  let x_522 : f32 = u_xlat61;
  u_xlat8.z = max(x_522, 1.00000002e-16f);
  let x_525 : vec4<f32> = u_xlat7;
  let x_529 : f32 = x_30.x_NormalScale2;
  let x_531 : f32 = x_30.x_NormalScale2;
  let x_532 : vec2<f32> = vec2<f32>(x_529, x_531);
  let x_536 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_532.x, x_532.y));
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.z, x_539.z, x_539.z) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_553 : vec4<f32> = vs_TEXCOORD2;
  let x_556 : f32 = x_126.x_GlobalMipBias.x;
  let x_557 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_553.z, x_553.w), x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.w);
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat7.z;
  u_xlat7.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat7;
  let x_570 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_573.x, x_573.y), vec2<f32>(x_575.x, x_575.y));
  let x_578 : f32 = u_xlat61;
  u_xlat61 = min(x_578, 1.0f);
  let x_580 : f32 = u_xlat61;
  u_xlat61 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_583);
  let x_585 : f32 = u_xlat61;
  u_xlat8.z = max(x_585, 1.00000002e-16f);
  let x_588 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_30.x_NormalScale3;
  let x_594 : f32 = x_30.x_NormalScale3;
  let x_595 : vec2<f32> = vec2<f32>(x_592, x_594);
  let x_599 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.w, x_602.w, x_602.w) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.z;
  u_xlat6.w = (x_613 + 0.00001f);
  let x_617 : vec4<f32> = u_xlat6;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_617.x, x_617.y, x_617.w), vec3<f32>(x_619.x, x_619.y, x_619.w));
  let x_622 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat61;
  let x_626 : vec4<f32> = u_xlat6;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.w));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_632;
  let x_635 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_635;
  let x_638 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_638;
  let x_641 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_641;
  let x_644 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_644;
  let x_647 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_647;
  let x_650 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_650;
  let x_653 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_653;
  let x_655 : vec4<f32> = u_xlat7;
  let x_656 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_655 + x_656);
  let x_659 : f32 = u_xlat0.z;
  u_xlat8.x = x_659;
  let x_662 : f32 = u_xlat1.z;
  u_xlat8.y = x_662;
  let x_665 : f32 = u_xlat2.z;
  u_xlat8.z = x_665;
  let x_668 : f32 = u_xlat3.y;
  u_xlat8.w = x_668;
  let x_670 : vec4<f32> = u_xlat9;
  let x_673 : f32 = x_30.x_Smoothness0;
  let x_675 : f32 = x_30.x_Smoothness1;
  let x_677 : f32 = x_30.x_Smoothness2;
  let x_679 : f32 = x_30.x_Smoothness3;
  let x_682 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_670) * vec4<f32>(x_673, x_675, x_677, x_679)) + x_682);
  let x_686 : f32 = x_30.x_LayerHasMask0;
  let x_689 : f32 = x_30.x_LayerHasMask1;
  let x_692 : f32 = x_30.x_LayerHasMask2;
  let x_695 : f32 = x_30.x_LayerHasMask3;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_686, x_689, x_692, x_695) * x_697) + x_699);
  let x_702 : vec4<f32> = u_xlat4;
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat0.x;
  u_xlat8.x = x_706;
  let x_709 : f32 = u_xlat1.x;
  u_xlat8.y = x_709;
  let x_712 : f32 = u_xlat2.x;
  u_xlat8.z = x_712;
  let x_715 : f32 = u_xlat3.x;
  u_xlat8.w = x_715;
  let x_717 : vec4<f32> = u_xlat8;
  let x_720 : f32 = x_30.x_Metallic0;
  let x_723 : f32 = x_30.x_Metallic1;
  let x_726 : f32 = x_30.x_Metallic2;
  let x_729 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_717 + -(vec4<f32>(x_720, x_723, x_726, x_729)));
  let x_734 : f32 = x_30.x_LayerHasMask0;
  let x_736 : f32 = x_30.x_LayerHasMask1;
  let x_738 : f32 = x_30.x_LayerHasMask2;
  let x_740 : f32 = x_30.x_LayerHasMask3;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_30.x_Metallic0;
  let x_747 : f32 = x_30.x_Metallic1;
  let x_749 : f32 = x_30.x_Metallic2;
  let x_751 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_734, x_736, x_738, x_740) * x_742) + vec4<f32>(x_745, x_747, x_749, x_751));
  let x_754 : vec4<f32> = u_xlat4;
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat0.y;
  u_xlat3.x = x_759;
  let x_762 : f32 = u_xlat1.y;
  u_xlat3.y = x_762;
  let x_765 : f32 = u_xlat2.y;
  u_xlat3.z = x_765;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_767) + x_769);
  let x_772 : f32 = x_30.x_LayerHasMask0;
  let x_774 : f32 = x_30.x_LayerHasMask1;
  let x_776 : f32 = x_30.x_LayerHasMask2;
  let x_778 : f32 = x_30.x_LayerHasMask3;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_772, x_774, x_776, x_778) * x_780) + x_782);
  let x_785 : vec4<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_785, x_786);
  let x_788 : vec4<f32> = u_xlat6;
  let x_791 : vec4<f32> = vs_TEXCOORD5;
  let x_793 : vec3<f32> = (vec3<f32>(x_788.y, x_788.y, x_788.y) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * -(vec3<f32>(x_799.x, x_799.y, x_799.z))) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD3;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_808.z, x_808.z, x_808.z) * vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat61;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_836 : f32 = vs_TEXCOORD7.y;
  let x_838 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.x = (x_836 * x_838);
  let x_842 : f32 = x_126.unity_MatrixV[0i].z;
  let x_844 : f32 = vs_TEXCOORD7.x;
  let x_847 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_842 * x_844) + x_847);
  let x_851 : f32 = x_126.unity_MatrixV[2i].z;
  let x_853 : f32 = vs_TEXCOORD7.z;
  let x_856 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_851 * x_853) + x_856);
  let x_860 : f32 = u_xlat2.x;
  let x_862 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat2.x = (x_860 + x_862);
  let x_866 : f32 = u_xlat2.x;
  let x_869 : f32 = x_126.x_ProjectionParams.y;
  u_xlat2.x = (-(x_866) + -(x_869));
  let x_874 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_874, 0.0f);
  let x_878 : f32 = u_xlat2.x;
  let x_880 : f32 = x_126.unity_FogParams.x;
  u_xlat2.x = (x_878 * x_880);
  u_xlat1.w = 1.0f;
  let x_889 : vec4<f32> = x_887.unity_SHAr;
  let x_890 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_889, x_890);
  let x_894 : vec4<f32> = x_887.unity_SHAg;
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_894, x_895);
  let x_899 : vec4<f32> = x_887.unity_SHAb;
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_899, x_900);
  let x_903 : vec4<f32> = u_xlat1;
  let x_905 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_903.y, x_903.z, x_903.z, x_903.x) * vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.z));
  let x_909 : vec4<f32> = x_887.unity_SHBr;
  let x_910 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_909, x_910);
  let x_914 : vec4<f32> = x_887.unity_SHBg;
  let x_915 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_914, x_915);
  let x_919 : vec4<f32> = x_887.unity_SHBb;
  let x_920 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_919, x_920);
  let x_924 : f32 = u_xlat1.y;
  let x_926 : f32 = u_xlat1.y;
  u_xlat61 = (x_924 * x_926);
  let x_929 : f32 = u_xlat1.x;
  let x_931 : f32 = u_xlat1.x;
  let x_933 : f32 = u_xlat61;
  u_xlat61 = ((x_929 * x_931) + -(x_933));
  let x_939 : vec4<f32> = x_887.unity_SHC;
  let x_941 : f32 = u_xlat61;
  let x_944 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_939.x, x_939.y, x_939.z) * vec3<f32>(x_941, x_941, x_941)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec3<f32> = u_xlat22;
  let x_948 : vec4<f32> = u_xlat3;
  u_xlat22 = (x_947 + vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec3<f32> = u_xlat22;
  u_xlat22 = max(x_951, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
  let x_961 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_957.x, x_957.y));
  let x_962 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat3;
  let x_966 : vec4<f32> = hlslcc_FragCoord;
  let x_968 : vec2<f32> = (vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_966.x, x_966.y));
  let x_969 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
  let x_972 : f32 = u_xlat3.y;
  let x_974 : f32 = x_126.x_ScaleBiasRt.x;
  let x_977 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat61 = ((x_972 * x_974) + x_977);
  let x_979 : f32 = u_xlat61;
  u_xlat3.z = (-(x_979) + 1.0f);
  let x_984 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_984) * 0.959999979f) + 0.959999979f);
  let x_990 : f32 = u_xlat40;
  let x_991 : f32 = u_xlat61;
  u_xlat23 = (x_990 + -(x_991));
  let x_994 : f32 = u_xlat61;
  let x_996 : vec4<f32> = u_xlat5;
  let x_998 : vec3<f32> = (vec3<f32>(x_994, x_994, x_994) * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat5;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1006 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec3<f32> = u_xlat0;
  let x_1010 : vec4<f32> = u_xlat5;
  let x_1015 : vec3<f32> = ((vec3<f32>(x_1008.x, x_1008.x, x_1008.x) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1016 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : f32 = u_xlat40;
  u_xlat0.x = (-(x_1018) + 1.0f);
  let x_1023 : f32 = u_xlat0.x;
  let x_1025 : f32 = u_xlat0.x;
  u_xlat40 = (x_1023 * x_1025);
  let x_1027 : f32 = u_xlat40;
  u_xlat40 = max(x_1027, 0.0078125f);
  let x_1030 : f32 = u_xlat40;
  let x_1031 : f32 = u_xlat40;
  u_xlat61 = (x_1030 * x_1031);
  let x_1033 : f32 = u_xlat23;
  u_xlat23 = (x_1033 + 1.0f);
  let x_1035 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1035, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat40;
  u_xlat63 = ((x_1038 * 4.0f) + 2.0f);
  let x_1046 : vec4<f32> = u_xlat3;
  let x_1049 : f32 = x_126.x_GlobalMipBias.x;
  let x_1050 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1046.x, x_1046.z), x_1049);
  u_xlat3.x = x_1050.x;
  let x_1055 : f32 = u_xlat3.x;
  u_xlat43 = (x_1055 + -1.0f);
  let x_1058 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_1059 : f32 = u_xlat43;
  u_xlat43 = ((x_1058 * x_1059) + 1.0f);
  let x_1062 : f32 = u_xlat20;
  let x_1064 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1062, x_1064);
  let x_1075 : f32 = x_1073.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1075);
  let x_1079 : bool = u_xlatb3.x;
  if (x_1079) {
    let x_1083 : f32 = x_1073.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1083 == 1.0f);
    let x_1087 : bool = u_xlatb3.x;
    if (x_1087) {
      let x_1091 : vec4<f32> = vs_TEXCOORD8;
      let x_1094 : vec4<f32> = x_1073.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y) + x_1094);
      let x_1097 : vec4<f32> = u_xlat6;
      let x_1098 : vec2<f32> = vec2<f32>(x_1097.x, x_1097.y);
      let x_1100 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
      let x_1112 : vec3<f32> = txVec0;
      let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1112.xy, x_1112.z);
      u_xlat7.x = x_1114;
      let x_1117 : vec4<f32> = u_xlat6;
      let x_1118 : vec2<f32> = vec2<f32>(x_1117.z, x_1117.w);
      let x_1120 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1118.x, x_1118.y, x_1120);
      let x_1127 : vec3<f32> = txVec1;
      let x_1129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1127.xy, x_1127.z);
      u_xlat7.y = x_1129;
      let x_1131 : vec4<f32> = vs_TEXCOORD8;
      let x_1134 : vec4<f32> = x_1073.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) + x_1134);
      let x_1137 : vec4<f32> = u_xlat6;
      let x_1138 : vec2<f32> = vec2<f32>(x_1137.x, x_1137.y);
      let x_1140 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1138.x, x_1138.y, x_1140);
      let x_1147 : vec3<f32> = txVec2;
      let x_1149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1147.xy, x_1147.z);
      u_xlat7.z = x_1149;
      let x_1152 : vec4<f32> = u_xlat6;
      let x_1153 : vec2<f32> = vec2<f32>(x_1152.z, x_1152.w);
      let x_1155 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
      let x_1162 : vec3<f32> = txVec3;
      let x_1164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1162.xy, x_1162.z);
      u_xlat7.w = x_1164;
      let x_1166 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1166, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1174 : f32 = x_1073.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1174 == 2.0f);
      let x_1176 : bool = u_xlatb64;
      if (x_1176) {
        let x_1179 : vec4<f32> = vs_TEXCOORD8;
        let x_1182 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1185 : vec2<f32> = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1182.z, x_1182.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1186 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1190 : vec2<f32> = floor(vec2<f32>(x_1188.x, x_1188.y));
        let x_1191 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1195 : vec4<f32> = vs_TEXCOORD8;
        let x_1198 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(x_1198.z, x_1198.w)) + -(vec2<f32>(x_1201.x, x_1201.y)));
        let x_1205 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1205.x, x_1205.x, x_1205.y, x_1205.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1209 : vec4<f32> = u_xlat7;
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1209.x, x_1209.x, x_1209.z, x_1209.z) * vec4<f32>(x_1211.x, x_1211.x, x_1211.z, x_1211.z));
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1218 : vec2<f32> = (vec2<f32>(x_1214.y, x_1214.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1219 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1218.x, x_1219.y, x_1218.y, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat8;
        let x_1224 : vec2<f32> = u_xlat46;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1224));
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1230 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1230) + vec2<f32>(1.0f, 1.0f));
        let x_1233 : vec2<f32> = u_xlat46;
        let x_1235 : vec2<f32> = min(x_1233, vec2<f32>(0.0f, 0.0f));
        let x_1236 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat9;
        let x_1241 : vec4<f32> = u_xlat9;
        let x_1244 : vec2<f32> = u_xlat48;
        let x_1245 : vec2<f32> = ((-(vec2<f32>(x_1238.x, x_1238.y)) * vec2<f32>(x_1241.x, x_1241.y)) + x_1244);
        let x_1246 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1248, vec2<f32>(0.0f, 0.0f));
        let x_1250 : vec2<f32> = u_xlat46;
        let x_1252 : vec2<f32> = u_xlat46;
        let x_1254 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1250) * x_1252) + vec2<f32>(x_1254.y, x_1254.w));
        let x_1257 : vec4<f32> = u_xlat9;
        let x_1259 : vec2<f32> = (vec2<f32>(x_1257.x, x_1257.y) + vec2<f32>(1.0f, 1.0f));
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
        let x_1262 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1262 + vec2<f32>(1.0f, 1.0f));
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1268 : vec2<f32> = (vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
        let x_1271 : vec2<f32> = u_xlat48;
        let x_1272 : vec2<f32> = (x_1271 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1275 : vec4<f32> = u_xlat9;
        let x_1277 : vec2<f32> = (vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1278 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1280 : vec2<f32> = u_xlat46;
        let x_1281 : vec2<f32> = (x_1280 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1281.x, x_1281.y, x_1282.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1284.y, x_1284.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1288 : f32 = u_xlat9.x;
        u_xlat10.z = x_1288;
        let x_1291 : f32 = u_xlat46.x;
        u_xlat10.w = x_1291;
        let x_1294 : f32 = u_xlat11.x;
        u_xlat8.z = x_1294;
        let x_1297 : f32 = u_xlat7.x;
        u_xlat8.w = x_1297;
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1301 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1299.z, x_1299.w, x_1299.x, x_1299.z) + vec4<f32>(x_1301.z, x_1301.w, x_1301.x, x_1301.z));
        let x_1305 : f32 = u_xlat10.y;
        u_xlat9.z = x_1305;
        let x_1308 : f32 = u_xlat46.y;
        u_xlat9.w = x_1308;
        let x_1311 : f32 = u_xlat8.y;
        u_xlat11.z = x_1311;
        let x_1314 : f32 = u_xlat7.z;
        u_xlat11.w = x_1314;
        let x_1316 : vec4<f32> = u_xlat9;
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1320 : vec3<f32> = (vec3<f32>(x_1316.z, x_1316.y, x_1316.w) + vec3<f32>(x_1318.z, x_1318.y, x_1318.w));
        let x_1321 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
        let x_1323 : vec4<f32> = u_xlat8;
        let x_1325 : vec4<f32> = u_xlat12;
        let x_1327 : vec3<f32> = (vec3<f32>(x_1323.x, x_1323.z, x_1323.w) / vec3<f32>(x_1325.z, x_1325.w, x_1325.y));
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
        let x_1330 : vec4<f32> = u_xlat8;
        let x_1336 : vec3<f32> = (vec3<f32>(x_1330.x, x_1330.y, x_1330.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1337 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
        let x_1339 : vec4<f32> = u_xlat11;
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1343 : vec3<f32> = (vec3<f32>(x_1339.z, x_1339.y, x_1339.w) / vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
        let x_1344 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1348 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
        let x_1351 : vec4<f32> = u_xlat8;
        let x_1354 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1356 : vec3<f32> = (vec3<f32>(x_1351.y, x_1351.x, x_1351.z) * vec3<f32>(x_1354.x, x_1354.x, x_1354.x));
        let x_1357 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
        let x_1359 : vec4<f32> = u_xlat9;
        let x_1362 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1364 : vec3<f32> = (vec3<f32>(x_1359.x, x_1359.y, x_1359.z) * vec3<f32>(x_1362.y, x_1362.y, x_1362.y));
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
        let x_1368 : f32 = u_xlat9.x;
        u_xlat8.w = x_1368;
        let x_1370 : vec4<f32> = u_xlat6;
        let x_1373 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1370.x, x_1370.y, x_1370.x, x_1370.y) * vec4<f32>(x_1373.x, x_1373.y, x_1373.x, x_1373.y)) + vec4<f32>(x_1376.y, x_1376.w, x_1376.x, x_1376.w));
        let x_1379 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.z, x_1385.w));
        let x_1389 : f32 = u_xlat8.y;
        u_xlat9.w = x_1389;
        let x_1391 : vec4<f32> = u_xlat9;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.y, x_1391.z);
        let x_1393 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1393.x, x_1392.x, x_1393.z, x_1392.y);
        let x_1395 : vec4<f32> = u_xlat6;
        let x_1398 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.y));
        let x_1404 : vec4<f32> = u_xlat6;
        let x_1407 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1410 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.y) * vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.y)) + vec4<f32>(x_1410.w, x_1410.y, x_1410.w, x_1410.z));
        let x_1413 : vec4<f32> = u_xlat6;
        let x_1416 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1419 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1413.x, x_1413.y, x_1413.x, x_1413.y) * vec4<f32>(x_1416.x, x_1416.y, x_1416.x, x_1416.y)) + vec4<f32>(x_1419.x, x_1419.w, x_1419.z, x_1419.w));
        let x_1422 : vec4<f32> = u_xlat7;
        let x_1424 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1422.x, x_1422.x, x_1422.x, x_1422.y) * vec4<f32>(x_1424.z, x_1424.w, x_1424.y, x_1424.z));
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1430 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1428.y, x_1428.y, x_1428.z, x_1428.z) * x_1430);
        let x_1434 : f32 = u_xlat7.z;
        let x_1436 : f32 = u_xlat12.y;
        u_xlat64 = (x_1434 * x_1436);
        let x_1439 : vec4<f32> = u_xlat10;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
        let x_1442 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1450 : vec3<f32> = txVec4;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1450.xy, x_1450.z);
        u_xlat65 = x_1452;
        let x_1454 : vec4<f32> = u_xlat10;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec5;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat6.x = x_1466;
        let x_1469 : f32 = u_xlat6.x;
        let x_1471 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1469 * x_1471);
        let x_1475 : f32 = u_xlat13.x;
        let x_1476 : f32 = u_xlat65;
        let x_1479 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1475 * x_1476) + x_1479);
        let x_1482 : vec2<f32> = u_xlat46;
        let x_1484 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec6;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
        u_xlat6.x = x_1493;
        let x_1496 : f32 = u_xlat13.z;
        let x_1498 : f32 = u_xlat6.x;
        let x_1500 : f32 = u_xlat65;
        u_xlat65 = ((x_1496 * x_1498) + x_1500);
        let x_1503 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.x, x_1503.y);
        let x_1506 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec7;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1513.xy, x_1513.z);
        u_xlat6.x = x_1515;
        let x_1518 : f32 = u_xlat13.w;
        let x_1520 : f32 = u_xlat6.x;
        let x_1522 : f32 = u_xlat65;
        u_xlat65 = ((x_1518 * x_1520) + x_1522);
        let x_1525 : vec4<f32> = u_xlat11;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec8;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1535.xy, x_1535.z);
        u_xlat6.x = x_1537;
        let x_1540 : f32 = u_xlat14.x;
        let x_1542 : f32 = u_xlat6.x;
        let x_1544 : f32 = u_xlat65;
        u_xlat65 = ((x_1540 * x_1542) + x_1544);
        let x_1547 : vec4<f32> = u_xlat11;
        let x_1548 : vec2<f32> = vec2<f32>(x_1547.z, x_1547.w);
        let x_1550 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec9;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1557.xy, x_1557.z);
        u_xlat6.x = x_1559;
        let x_1562 : f32 = u_xlat14.y;
        let x_1564 : f32 = u_xlat6.x;
        let x_1566 : f32 = u_xlat65;
        u_xlat65 = ((x_1562 * x_1564) + x_1566);
        let x_1569 : vec4<f32> = u_xlat9;
        let x_1570 : vec2<f32> = vec2<f32>(x_1569.z, x_1569.w);
        let x_1572 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec10;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1579.xy, x_1579.z);
        u_xlat6.x = x_1581;
        let x_1584 : f32 = u_xlat14.z;
        let x_1586 : f32 = u_xlat6.x;
        let x_1588 : f32 = u_xlat65;
        u_xlat65 = ((x_1584 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat8;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec11;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1601.xy, x_1601.z);
        u_xlat6.x = x_1603;
        let x_1606 : f32 = u_xlat14.w;
        let x_1608 : f32 = u_xlat6.x;
        let x_1610 : f32 = u_xlat65;
        u_xlat65 = ((x_1606 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat8;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec12;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1623.xy, x_1623.z);
        u_xlat6.x = x_1625;
        let x_1627 : f32 = u_xlat64;
        let x_1629 : f32 = u_xlat6.x;
        let x_1631 : f32 = u_xlat65;
        u_xlat3.x = ((x_1627 * x_1629) + x_1631);
      } else {
        let x_1635 : vec4<f32> = vs_TEXCOORD8;
        let x_1638 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1641 : vec2<f32> = ((vec2<f32>(x_1635.x, x_1635.y) * vec2<f32>(x_1638.z, x_1638.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1642 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1641.x, x_1641.y, x_1642.z, x_1642.w);
        let x_1644 : vec4<f32> = u_xlat6;
        let x_1646 : vec2<f32> = floor(vec2<f32>(x_1644.x, x_1644.y));
        let x_1647 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1646.x, x_1646.y, x_1647.z, x_1647.w);
        let x_1649 : vec4<f32> = vs_TEXCOORD8;
        let x_1652 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1655 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1652.z, x_1652.w)) + -(vec2<f32>(x_1655.x, x_1655.y)));
        let x_1659 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1659.x, x_1659.x, x_1659.y, x_1659.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1662 : vec4<f32> = u_xlat7;
        let x_1664 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1662.x, x_1662.x, x_1662.z, x_1662.z) * vec4<f32>(x_1664.x, x_1664.x, x_1664.z, x_1664.z));
        let x_1667 : vec4<f32> = u_xlat8;
        let x_1671 : vec2<f32> = (vec2<f32>(x_1667.y, x_1667.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1672 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1672.x, x_1671.x, x_1672.z, x_1671.y);
        let x_1674 : vec4<f32> = u_xlat8;
        let x_1677 : vec2<f32> = u_xlat46;
        let x_1679 : vec2<f32> = ((vec2<f32>(x_1674.x, x_1674.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1677));
        let x_1680 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1679.x, x_1680.y, x_1679.y, x_1680.w);
        let x_1682 : vec2<f32> = u_xlat46;
        let x_1684 : vec2<f32> = (-(x_1682) + vec2<f32>(1.0f, 1.0f));
        let x_1685 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1684.x, x_1684.y, x_1685.z, x_1685.w);
        let x_1687 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1687, vec2<f32>(0.0f, 0.0f));
        let x_1689 : vec2<f32> = u_xlat48;
        let x_1691 : vec2<f32> = u_xlat48;
        let x_1693 : vec4<f32> = u_xlat8;
        let x_1695 : vec2<f32> = ((-(x_1689) * x_1691) + vec2<f32>(x_1693.x, x_1693.y));
        let x_1696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1695.x, x_1695.y, x_1696.z, x_1696.w);
        let x_1698 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1698, vec2<f32>(0.0f, 0.0f));
        let x_1701 : vec2<f32> = u_xlat48;
        let x_1703 : vec2<f32> = u_xlat48;
        let x_1705 : vec4<f32> = u_xlat7;
        let x_1707 : vec2<f32> = ((-(x_1701) * x_1703) + vec2<f32>(x_1705.y, x_1705.w));
        let x_1708 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1707.x, x_1708.y, x_1707.y);
        let x_1710 : vec4<f32> = u_xlat8;
        let x_1712 : vec2<f32> = (vec2<f32>(x_1710.x, x_1710.y) + vec2<f32>(2.0f, 2.0f));
        let x_1713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
        let x_1715 : vec3<f32> = u_xlat27;
        let x_1717 : vec2<f32> = (vec2<f32>(x_1715.x, x_1715.z) + vec2<f32>(2.0f, 2.0f));
        let x_1718 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1718.x, x_1717.x, x_1718.z, x_1717.y);
        let x_1721 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1721 * 0.081632003f);
        let x_1725 : vec4<f32> = u_xlat7;
        let x_1728 : vec3<f32> = (vec3<f32>(x_1725.z, x_1725.x, x_1725.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
        let x_1731 : vec4<f32> = u_xlat8;
        let x_1734 : vec2<f32> = (vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1735 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1734.x, x_1734.y, x_1735.z, x_1735.w);
        let x_1738 : f32 = u_xlat11.y;
        u_xlat10.x = x_1738;
        let x_1740 : vec2<f32> = u_xlat46;
        let x_1747 : vec2<f32> = ((vec2<f32>(x_1740.x, x_1740.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1748 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1748.x, x_1747.x, x_1748.z, x_1747.y);
        let x_1750 : vec2<f32> = u_xlat46;
        let x_1754 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1754.x, x_1755.y, x_1754.y, x_1755.w);
        let x_1758 : f32 = u_xlat7.x;
        u_xlat8.y = x_1758;
        let x_1761 : f32 = u_xlat9.y;
        u_xlat8.w = x_1761;
        let x_1763 : vec4<f32> = u_xlat8;
        let x_1764 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1763 + x_1764);
        let x_1766 : vec2<f32> = u_xlat46;
        let x_1769 : vec2<f32> = ((vec2<f32>(x_1766.y, x_1766.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1770 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1770.x, x_1769.x, x_1770.z, x_1769.y);
        let x_1772 : vec2<f32> = u_xlat46;
        let x_1775 : vec2<f32> = ((vec2<f32>(x_1772.y, x_1772.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1776 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1775.x, x_1776.y, x_1775.y, x_1776.w);
        let x_1779 : f32 = u_xlat7.y;
        u_xlat9.y = x_1779;
        let x_1781 : vec4<f32> = u_xlat9;
        let x_1782 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1781 + x_1782);
        let x_1784 : vec4<f32> = u_xlat8;
        let x_1785 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1784 / x_1785);
        let x_1787 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1787 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1793 : vec4<f32> = u_xlat9;
        let x_1794 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1793 / x_1794);
        let x_1796 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1796 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1798 : vec4<f32> = u_xlat8;
        let x_1801 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1798.w, x_1798.x, x_1798.y, x_1798.z) * vec4<f32>(x_1801.x, x_1801.x, x_1801.x, x_1801.x));
        let x_1804 : vec4<f32> = u_xlat9;
        let x_1807 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1804.x, x_1804.w, x_1804.y, x_1804.z) * vec4<f32>(x_1807.y, x_1807.y, x_1807.y, x_1807.y));
        let x_1810 : vec4<f32> = u_xlat8;
        let x_1811 : vec3<f32> = vec3<f32>(x_1810.y, x_1810.z, x_1810.w);
        let x_1812 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1811.x, x_1812.y, x_1811.y, x_1811.z);
        let x_1815 : f32 = u_xlat9.x;
        u_xlat11.y = x_1815;
        let x_1817 : vec4<f32> = u_xlat6;
        let x_1820 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1823 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1817.x, x_1817.y, x_1817.x, x_1817.y) * vec4<f32>(x_1820.x, x_1820.y, x_1820.x, x_1820.y)) + vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1823.y));
        let x_1826 : vec4<f32> = u_xlat6;
        let x_1829 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1832 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1829.x, x_1829.y)) + vec2<f32>(x_1832.w, x_1832.y));
        let x_1836 : f32 = u_xlat11.y;
        u_xlat8.y = x_1836;
        let x_1839 : f32 = u_xlat9.z;
        u_xlat11.y = x_1839;
        let x_1841 : vec4<f32> = u_xlat6;
        let x_1844 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1847 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1841.x, x_1841.y, x_1841.x, x_1841.y) * vec4<f32>(x_1844.x, x_1844.y, x_1844.x, x_1844.y)) + vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1847.y));
        let x_1850 : vec4<f32> = u_xlat6;
        let x_1853 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1856 : vec4<f32> = u_xlat11;
        let x_1858 : vec2<f32> = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(x_1853.x, x_1853.y)) + vec2<f32>(x_1856.w, x_1856.y));
        let x_1859 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1858.x, x_1858.y, x_1859.z, x_1859.w);
        let x_1862 : f32 = u_xlat11.y;
        u_xlat8.z = x_1862;
        let x_1865 : vec4<f32> = u_xlat6;
        let x_1868 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1871 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1865.x, x_1865.y, x_1865.x, x_1865.y) * vec4<f32>(x_1868.x, x_1868.y, x_1868.x, x_1868.y)) + vec4<f32>(x_1871.x, x_1871.y, x_1871.x, x_1871.z));
        let x_1875 : f32 = u_xlat9.w;
        u_xlat11.y = x_1875;
        let x_1878 : vec4<f32> = u_xlat6;
        let x_1881 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1884 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1878.x, x_1878.y, x_1878.x, x_1878.y) * vec4<f32>(x_1881.x, x_1881.y, x_1881.x, x_1881.y)) + vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1884.y));
        let x_1888 : vec4<f32> = u_xlat6;
        let x_1891 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1888.x, x_1888.y) * vec2<f32>(x_1891.x, x_1891.y)) + vec2<f32>(x_1894.w, x_1894.y));
        let x_1898 : f32 = u_xlat11.y;
        u_xlat8.w = x_1898;
        let x_1901 : vec4<f32> = u_xlat6;
        let x_1904 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1907 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1901.x, x_1901.y) * vec2<f32>(x_1904.x, x_1904.y)) + vec2<f32>(x_1907.x, x_1907.w));
        let x_1910 : vec4<f32> = u_xlat11;
        let x_1911 : vec3<f32> = vec3<f32>(x_1910.x, x_1910.z, x_1910.w);
        let x_1912 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1911.x, x_1912.y, x_1911.y, x_1911.z);
        let x_1914 : vec4<f32> = u_xlat6;
        let x_1917 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1920 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1914.x, x_1914.y, x_1914.x, x_1914.y) * vec4<f32>(x_1917.x, x_1917.y, x_1917.x, x_1917.y)) + vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1920.y));
        let x_1924 : vec4<f32> = u_xlat6;
        let x_1927 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1930 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1924.x, x_1924.y) * vec2<f32>(x_1927.x, x_1927.y)) + vec2<f32>(x_1930.w, x_1930.y));
        let x_1934 : f32 = u_xlat8.x;
        u_xlat9.x = x_1934;
        let x_1936 : vec4<f32> = u_xlat6;
        let x_1939 : vec4<f32> = x_1073.x_MainLightShadowmapSize;
        let x_1942 : vec4<f32> = u_xlat9;
        let x_1944 : vec2<f32> = ((vec2<f32>(x_1936.x, x_1936.y) * vec2<f32>(x_1939.x, x_1939.y)) + vec2<f32>(x_1942.x, x_1942.y));
        let x_1945 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
        let x_1948 : vec4<f32> = u_xlat7;
        let x_1950 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1948.x, x_1948.x, x_1948.x, x_1948.x) * x_1950);
        let x_1953 : vec4<f32> = u_xlat7;
        let x_1955 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1953.y, x_1953.y, x_1953.y, x_1953.y) * x_1955);
        let x_1958 : vec4<f32> = u_xlat7;
        let x_1960 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1958.z, x_1958.z, x_1958.z, x_1958.z) * x_1960);
        let x_1962 : vec4<f32> = u_xlat7;
        let x_1964 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1962.w, x_1962.w, x_1962.w, x_1962.w) * x_1964);
        let x_1967 : vec4<f32> = u_xlat12;
        let x_1968 : vec2<f32> = vec2<f32>(x_1967.x, x_1967.y);
        let x_1970 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1968.x, x_1968.y, x_1970);
        let x_1977 : vec3<f32> = txVec13;
        let x_1979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1977.xy, x_1977.z);
        u_xlat64 = x_1979;
        let x_1981 : vec4<f32> = u_xlat12;
        let x_1982 : vec2<f32> = vec2<f32>(x_1981.z, x_1981.w);
        let x_1984 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
        let x_1991 : vec3<f32> = txVec14;
        let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1991.xy, x_1991.z);
        u_xlat65 = x_1993;
        let x_1994 : f32 = u_xlat65;
        let x_1996 : f32 = u_xlat17.y;
        u_xlat65 = (x_1994 * x_1996);
        let x_1999 : f32 = u_xlat17.x;
        let x_2000 : f32 = u_xlat64;
        let x_2002 : f32 = u_xlat65;
        u_xlat64 = ((x_1999 * x_2000) + x_2002);
        let x_2005 : vec2<f32> = u_xlat46;
        let x_2007 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec15;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2014.xy, x_2014.z);
        u_xlat65 = x_2016;
        let x_2018 : f32 = u_xlat17.z;
        let x_2019 : f32 = u_xlat65;
        let x_2021 : f32 = u_xlat64;
        u_xlat64 = ((x_2018 * x_2019) + x_2021);
        let x_2024 : vec4<f32> = u_xlat15;
        let x_2025 : vec2<f32> = vec2<f32>(x_2024.x, x_2024.y);
        let x_2027 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2025.x, x_2025.y, x_2027);
        let x_2034 : vec3<f32> = txVec16;
        let x_2036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2034.xy, x_2034.z);
        u_xlat65 = x_2036;
        let x_2038 : f32 = u_xlat17.w;
        let x_2039 : f32 = u_xlat65;
        let x_2041 : f32 = u_xlat64;
        u_xlat64 = ((x_2038 * x_2039) + x_2041);
        let x_2044 : vec4<f32> = u_xlat13;
        let x_2045 : vec2<f32> = vec2<f32>(x_2044.x, x_2044.y);
        let x_2047 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
        let x_2054 : vec3<f32> = txVec17;
        let x_2056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2054.xy, x_2054.z);
        u_xlat65 = x_2056;
        let x_2058 : f32 = u_xlat18.x;
        let x_2059 : f32 = u_xlat65;
        let x_2061 : f32 = u_xlat64;
        u_xlat64 = ((x_2058 * x_2059) + x_2061);
        let x_2064 : vec4<f32> = u_xlat13;
        let x_2065 : vec2<f32> = vec2<f32>(x_2064.z, x_2064.w);
        let x_2067 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2065.x, x_2065.y, x_2067);
        let x_2074 : vec3<f32> = txVec18;
        let x_2076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2074.xy, x_2074.z);
        u_xlat65 = x_2076;
        let x_2078 : f32 = u_xlat18.y;
        let x_2079 : f32 = u_xlat65;
        let x_2081 : f32 = u_xlat64;
        u_xlat64 = ((x_2078 * x_2079) + x_2081);
        let x_2084 : vec4<f32> = u_xlat14;
        let x_2085 : vec2<f32> = vec2<f32>(x_2084.x, x_2084.y);
        let x_2087 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2085.x, x_2085.y, x_2087);
        let x_2094 : vec3<f32> = txVec19;
        let x_2096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2094.xy, x_2094.z);
        u_xlat65 = x_2096;
        let x_2098 : f32 = u_xlat18.z;
        let x_2099 : f32 = u_xlat65;
        let x_2101 : f32 = u_xlat64;
        u_xlat64 = ((x_2098 * x_2099) + x_2101);
        let x_2104 : vec4<f32> = u_xlat15;
        let x_2105 : vec2<f32> = vec2<f32>(x_2104.z, x_2104.w);
        let x_2107 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec20;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2114.xy, x_2114.z);
        u_xlat65 = x_2116;
        let x_2118 : f32 = u_xlat18.w;
        let x_2119 : f32 = u_xlat65;
        let x_2121 : f32 = u_xlat64;
        u_xlat64 = ((x_2118 * x_2119) + x_2121);
        let x_2124 : vec4<f32> = u_xlat16;
        let x_2125 : vec2<f32> = vec2<f32>(x_2124.x, x_2124.y);
        let x_2127 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2125.x, x_2125.y, x_2127);
        let x_2134 : vec3<f32> = txVec21;
        let x_2136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2134.xy, x_2134.z);
        u_xlat65 = x_2136;
        let x_2138 : f32 = u_xlat19.x;
        let x_2139 : f32 = u_xlat65;
        let x_2141 : f32 = u_xlat64;
        u_xlat64 = ((x_2138 * x_2139) + x_2141);
        let x_2144 : vec4<f32> = u_xlat16;
        let x_2145 : vec2<f32> = vec2<f32>(x_2144.z, x_2144.w);
        let x_2147 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
        let x_2154 : vec3<f32> = txVec22;
        let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2154.xy, x_2154.z);
        u_xlat65 = x_2156;
        let x_2158 : f32 = u_xlat19.y;
        let x_2159 : f32 = u_xlat65;
        let x_2161 : f32 = u_xlat64;
        u_xlat64 = ((x_2158 * x_2159) + x_2161);
        let x_2164 : vec2<f32> = u_xlat28;
        let x_2166 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2164.x, x_2164.y, x_2166);
        let x_2173 : vec3<f32> = txVec23;
        let x_2175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2173.xy, x_2173.z);
        u_xlat65 = x_2175;
        let x_2177 : f32 = u_xlat19.z;
        let x_2178 : f32 = u_xlat65;
        let x_2180 : f32 = u_xlat64;
        u_xlat64 = ((x_2177 * x_2178) + x_2180);
        let x_2183 : vec2<f32> = u_xlat54;
        let x_2185 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2183.x, x_2183.y, x_2185);
        let x_2192 : vec3<f32> = txVec24;
        let x_2194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2192.xy, x_2192.z);
        u_xlat65 = x_2194;
        let x_2196 : f32 = u_xlat19.w;
        let x_2197 : f32 = u_xlat65;
        let x_2199 : f32 = u_xlat64;
        u_xlat64 = ((x_2196 * x_2197) + x_2199);
        let x_2202 : vec4<f32> = u_xlat11;
        let x_2203 : vec2<f32> = vec2<f32>(x_2202.x, x_2202.y);
        let x_2205 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2203.x, x_2203.y, x_2205);
        let x_2212 : vec3<f32> = txVec25;
        let x_2214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2212.xy, x_2212.z);
        u_xlat65 = x_2214;
        let x_2216 : f32 = u_xlat7.x;
        let x_2217 : f32 = u_xlat65;
        let x_2219 : f32 = u_xlat64;
        u_xlat64 = ((x_2216 * x_2217) + x_2219);
        let x_2222 : vec4<f32> = u_xlat11;
        let x_2223 : vec2<f32> = vec2<f32>(x_2222.z, x_2222.w);
        let x_2225 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
        let x_2232 : vec3<f32> = txVec26;
        let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2232.xy, x_2232.z);
        u_xlat65 = x_2234;
        let x_2236 : f32 = u_xlat7.y;
        let x_2237 : f32 = u_xlat65;
        let x_2239 : f32 = u_xlat64;
        u_xlat64 = ((x_2236 * x_2237) + x_2239);
        let x_2242 : vec2<f32> = u_xlat49;
        let x_2244 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2242.x, x_2242.y, x_2244);
        let x_2251 : vec3<f32> = txVec27;
        let x_2253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2251.xy, x_2251.z);
        u_xlat65 = x_2253;
        let x_2255 : f32 = u_xlat7.z;
        let x_2256 : f32 = u_xlat65;
        let x_2258 : f32 = u_xlat64;
        u_xlat64 = ((x_2255 * x_2256) + x_2258);
        let x_2261 : vec4<f32> = u_xlat6;
        let x_2262 : vec2<f32> = vec2<f32>(x_2261.x, x_2261.y);
        let x_2264 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2262.x, x_2262.y, x_2264);
        let x_2271 : vec3<f32> = txVec28;
        let x_2273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2271.xy, x_2271.z);
        u_xlat65 = x_2273;
        let x_2275 : f32 = u_xlat7.w;
        let x_2276 : f32 = u_xlat65;
        let x_2278 : f32 = u_xlat64;
        u_xlat3.x = ((x_2275 * x_2276) + x_2278);
      }
    }
  } else {
    let x_2283 : vec4<f32> = vs_TEXCOORD8;
    let x_2284 : vec2<f32> = vec2<f32>(x_2283.x, x_2283.y);
    let x_2286 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2284.x, x_2284.y, x_2286);
    let x_2293 : vec3<f32> = txVec29;
    let x_2295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2293.xy, x_2293.z);
    u_xlat3.x = x_2295;
  }
  let x_2298 : f32 = x_1073.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2298) + 1.0f);
  let x_2302 : f32 = u_xlat3.x;
  let x_2304 : f32 = x_1073.x_MainLightShadowParams.x;
  let x_2306 : f32 = u_xlat64;
  u_xlat3.x = ((x_2302 * x_2304) + x_2306);
  let x_2310 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2310);
  let x_2314 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2314 >= 1.0f);
  let x_2316 : bool = u_xlatb64;
  let x_2317 : bool = u_xlatb65;
  u_xlatb64 = (x_2316 | x_2317);
  let x_2319 : bool = u_xlatb64;
  if (x_2319) {
    x_2320 = 1.0f;
  } else {
    let x_2325 : f32 = u_xlat3.x;
    x_2320 = x_2325;
  }
  let x_2326 : f32 = x_2320;
  u_xlat3.x = x_2326;
  let x_2328 : vec3<f32> = vs_TEXCOORD7;
  let x_2331 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2333 : vec3<f32> = (x_2328 + -(x_2331));
  let x_2334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
  let x_2336 : vec4<f32> = u_xlat6;
  let x_2338 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2336.x, x_2336.y, x_2336.z), vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : f32 = u_xlat64;
  let x_2343 : f32 = x_1073.x_MainLightShadowParams.z;
  let x_2346 : f32 = x_1073.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2341 * x_2343) + x_2346);
  let x_2348 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2348, 0.0f, 1.0f);
  let x_2351 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2351) + 1.0f);
  let x_2354 : f32 = u_xlat64;
  let x_2355 : f32 = u_xlat65;
  let x_2358 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2354 * x_2355) + x_2358);
  let x_2367 : f32 = x_2365.x_MainLightCookieTextureFormat;
  u_xlatb64 = !((x_2367 == -1.0f));
  let x_2369 : bool = u_xlatb64;
  if (x_2369) {
    let x_2372 : vec3<f32> = vs_TEXCOORD7;
    let x_2375 : vec4<f32> = x_2365.x_MainLightWorldToLight[1i];
    let x_2377 : vec2<f32> = (vec2<f32>(x_2372.y, x_2372.y) * vec2<f32>(x_2375.x, x_2375.y));
    let x_2378 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2377.x, x_2377.y, x_2378.z, x_2378.w);
    let x_2381 : vec4<f32> = x_2365.x_MainLightWorldToLight[0i];
    let x_2383 : vec3<f32> = vs_TEXCOORD7;
    let x_2386 : vec4<f32> = u_xlat6;
    let x_2388 : vec2<f32> = ((vec2<f32>(x_2381.x, x_2381.y) * vec2<f32>(x_2383.x, x_2383.x)) + vec2<f32>(x_2386.x, x_2386.y));
    let x_2389 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2388.x, x_2388.y, x_2389.z, x_2389.w);
    let x_2392 : vec4<f32> = x_2365.x_MainLightWorldToLight[2i];
    let x_2394 : vec3<f32> = vs_TEXCOORD7;
    let x_2397 : vec4<f32> = u_xlat6;
    let x_2399 : vec2<f32> = ((vec2<f32>(x_2392.x, x_2392.y) * vec2<f32>(x_2394.z, x_2394.z)) + vec2<f32>(x_2397.x, x_2397.y));
    let x_2400 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2399.x, x_2399.y, x_2400.z, x_2400.w);
    let x_2402 : vec4<f32> = u_xlat6;
    let x_2405 : vec4<f32> = x_2365.x_MainLightWorldToLight[3i];
    let x_2407 : vec2<f32> = (vec2<f32>(x_2402.x, x_2402.y) + vec2<f32>(x_2405.x, x_2405.y));
    let x_2408 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2407.x, x_2407.y, x_2408.z, x_2408.w);
    let x_2410 : vec4<f32> = u_xlat6;
    let x_2413 : vec2<f32> = ((vec2<f32>(x_2410.x, x_2410.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2414 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
    let x_2421 : vec4<f32> = u_xlat6;
    let x_2424 : f32 = x_126.x_GlobalMipBias.x;
    let x_2425 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2421.x, x_2421.y), x_2424);
    u_xlat6 = x_2425;
    let x_2428 : f32 = x_2365.x_MainLightCookieTextureFormat;
    let x_2430 : f32 = x_2365.x_MainLightCookieTextureFormat;
    let x_2432 : f32 = x_2365.x_MainLightCookieTextureFormat;
    let x_2434 : f32 = x_2365.x_MainLightCookieTextureFormat;
    let x_2435 : vec4<f32> = vec4<f32>(x_2428, x_2430, x_2432, x_2434);
    let x_2442 : vec4<bool> = (vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2435.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2442.x, x_2442.y);
    let x_2445 : bool = u_xlatb7.y;
    if (x_2445) {
      let x_2450 : f32 = u_xlat6.w;
      x_2446 = x_2450;
    } else {
      let x_2453 : f32 = u_xlat6.x;
      x_2446 = x_2453;
    }
    let x_2454 : f32 = x_2446;
    u_xlat64 = x_2454;
    let x_2456 : bool = u_xlatb7.x;
    if (x_2456) {
      let x_2460 : vec4<f32> = u_xlat6;
      x_2457 = vec3<f32>(x_2460.x, x_2460.y, x_2460.z);
    } else {
      let x_2463 : f32 = u_xlat64;
      x_2457 = vec3<f32>(x_2463, x_2463, x_2463);
    }
    let x_2465 : vec3<f32> = x_2457;
    let x_2466 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2472 : vec4<f32> = u_xlat6;
  let x_2475 : vec4<f32> = x_126.x_MainLightColor;
  let x_2477 : vec3<f32> = (vec3<f32>(x_2472.x, x_2472.y, x_2472.z) * vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2478 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
  let x_2480 : f32 = u_xlat43;
  let x_2482 : vec4<f32> = u_xlat6;
  let x_2484 : vec3<f32> = (vec3<f32>(x_2480, x_2480, x_2480) * vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
  let x_2485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
  let x_2488 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2488;
  let x_2491 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2491;
  let x_2494 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2494;
  let x_2496 : vec4<f32> = u_xlat7;
  let x_2499 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2496.x, x_2496.y, x_2496.z)), vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
  let x_2502 : f32 = u_xlat64;
  let x_2503 : f32 = u_xlat64;
  u_xlat64 = (x_2502 + x_2503);
  let x_2505 : vec4<f32> = u_xlat1;
  let x_2507 : f32 = u_xlat64;
  let x_2511 : vec4<f32> = u_xlat7;
  let x_2514 : vec3<f32> = ((vec3<f32>(x_2505.x, x_2505.y, x_2505.z) * -(vec3<f32>(x_2507, x_2507, x_2507))) + -(vec3<f32>(x_2511.x, x_2511.y, x_2511.z)));
  let x_2515 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
  let x_2517 : vec4<f32> = u_xlat1;
  let x_2519 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2517.x, x_2517.y, x_2517.z), vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
  let x_2522 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2522, 0.0f, 1.0f);
  let x_2524 : f32 = u_xlat64;
  u_xlat64 = (-(x_2524) + 1.0f);
  let x_2527 : f32 = u_xlat64;
  let x_2528 : f32 = u_xlat64;
  u_xlat64 = (x_2527 * x_2528);
  let x_2530 : f32 = u_xlat64;
  let x_2531 : f32 = u_xlat64;
  u_xlat64 = (x_2530 * x_2531);
  let x_2534 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2534) * 0.699999988f) + 1.700000048f);
  let x_2541 : f32 = u_xlat0.x;
  let x_2542 : f32 = u_xlat65;
  u_xlat0.x = (x_2541 * x_2542);
  let x_2546 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2546 * 6.0f);
  let x_2558 : vec4<f32> = u_xlat8;
  let x_2561 : f32 = u_xlat0.x;
  let x_2562 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2558.x, x_2558.y, x_2558.z), x_2561);
  u_xlat8 = x_2562;
  let x_2564 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2564 + -1.0f);
  let x_2568 : f32 = x_887.unity_SpecCube0_HDR.w;
  let x_2570 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2568 * x_2570) + 1.0f);
  let x_2575 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2575, 0.0f);
  let x_2579 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2579);
  let x_2583 : f32 = u_xlat0.x;
  let x_2585 : f32 = x_887.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2583 * x_2585);
  let x_2589 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2589);
  let x_2593 : f32 = u_xlat0.x;
  let x_2595 : f32 = x_887.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2593 * x_2595);
  let x_2598 : vec4<f32> = u_xlat8;
  let x_2600 : vec3<f32> = u_xlat0;
  let x_2602 : vec3<f32> = (vec3<f32>(x_2598.x, x_2598.y, x_2598.z) * vec3<f32>(x_2600.x, x_2600.x, x_2600.x));
  let x_2603 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
  let x_2605 : f32 = u_xlat40;
  let x_2607 : f32 = u_xlat40;
  let x_2611 : vec2<f32> = ((vec2<f32>(x_2605, x_2605) * vec2<f32>(x_2607, x_2607)) + vec2<f32>(-1.0f, 1.0f));
  let x_2612 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2611.x, x_2612.y, x_2611.y);
  let x_2615 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2615);
  let x_2617 : vec4<f32> = u_xlat5;
  let x_2620 : f32 = u_xlat23;
  let x_2622 : vec3<f32> = (-(vec3<f32>(x_2617.x, x_2617.y, x_2617.z)) + vec3<f32>(x_2620, x_2620, x_2620));
  let x_2623 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
  let x_2625 : f32 = u_xlat64;
  let x_2627 : vec4<f32> = u_xlat9;
  let x_2630 : vec4<f32> = u_xlat5;
  let x_2632 : vec3<f32> = ((vec3<f32>(x_2625, x_2625, x_2625) * vec3<f32>(x_2627.x, x_2627.y, x_2627.z)) + vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
  let x_2633 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
  let x_2635 : f32 = u_xlat40;
  let x_2637 : vec4<f32> = u_xlat9;
  let x_2639 : vec3<f32> = (vec3<f32>(x_2635, x_2635, x_2635) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
  let x_2640 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
  let x_2642 : vec4<f32> = u_xlat8;
  let x_2644 : vec4<f32> = u_xlat9;
  let x_2646 : vec3<f32> = (vec3<f32>(x_2642.x, x_2642.y, x_2642.z) * vec3<f32>(x_2644.x, x_2644.y, x_2644.z));
  let x_2647 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2646.x, x_2646.y, x_2646.z, x_2647.w);
  let x_2649 : vec3<f32> = u_xlat22;
  let x_2650 : vec4<f32> = u_xlat4;
  let x_2653 : vec4<f32> = u_xlat8;
  u_xlat22 = ((x_2649 * vec3<f32>(x_2650.x, x_2650.y, x_2650.z)) + vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2657 : f32 = u_xlat3.x;
  let x_2659 : f32 = x_887.unity_LightData.z;
  u_xlat40 = (x_2657 * x_2659);
  let x_2661 : vec4<f32> = u_xlat1;
  let x_2664 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2661.x, x_2661.y, x_2661.z), vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
  let x_2669 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2669, 0.0f, 1.0f);
  let x_2672 : f32 = u_xlat40;
  let x_2674 : f32 = u_xlat3.x;
  u_xlat40 = (x_2672 * x_2674);
  let x_2676 : f32 = u_xlat40;
  let x_2678 : vec4<f32> = u_xlat6;
  let x_2680 : vec3<f32> = (vec3<f32>(x_2676, x_2676, x_2676) * vec3<f32>(x_2678.x, x_2678.y, x_2678.z));
  let x_2681 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
  let x_2683 : vec4<f32> = u_xlat7;
  let x_2686 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2688 : vec3<f32> = (vec3<f32>(x_2683.x, x_2683.y, x_2683.z) + vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
  let x_2689 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
  let x_2691 : vec4<f32> = u_xlat8;
  let x_2693 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2691.x, x_2691.y, x_2691.z), vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
  let x_2696 : f32 = u_xlat40;
  u_xlat40 = max(x_2696, 1.17549435e-37f);
  let x_2699 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2699);
  let x_2701 : f32 = u_xlat40;
  let x_2703 : vec4<f32> = u_xlat8;
  let x_2705 : vec3<f32> = (vec3<f32>(x_2701, x_2701, x_2701) * vec3<f32>(x_2703.x, x_2703.y, x_2703.z));
  let x_2706 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2706.w);
  let x_2708 : vec4<f32> = u_xlat1;
  let x_2710 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2708.x, x_2708.y, x_2708.z), vec3<f32>(x_2710.x, x_2710.y, x_2710.z));
  let x_2713 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2713, 0.0f, 1.0f);
  let x_2716 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2718 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2716.x, x_2716.y, x_2716.z), vec3<f32>(x_2718.x, x_2718.y, x_2718.z));
  let x_2723 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2723, 0.0f, 1.0f);
  let x_2726 : f32 = u_xlat40;
  let x_2727 : f32 = u_xlat40;
  u_xlat40 = (x_2726 * x_2727);
  let x_2729 : f32 = u_xlat40;
  let x_2731 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2729 * x_2731) + 1.000010014f);
  let x_2736 : f32 = u_xlat3.x;
  let x_2738 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2736 * x_2738);
  let x_2741 : f32 = u_xlat40;
  let x_2742 : f32 = u_xlat40;
  u_xlat40 = (x_2741 * x_2742);
  let x_2745 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2745, 0.100000001f);
  let x_2749 : f32 = u_xlat40;
  let x_2751 : f32 = u_xlat3.x;
  u_xlat40 = (x_2749 * x_2751);
  let x_2753 : f32 = u_xlat63;
  let x_2754 : f32 = u_xlat40;
  u_xlat40 = (x_2753 * x_2754);
  let x_2756 : f32 = u_xlat61;
  let x_2757 : f32 = u_xlat40;
  u_xlat40 = (x_2756 / x_2757);
  let x_2759 : vec4<f32> = u_xlat5;
  let x_2761 : f32 = u_xlat40;
  let x_2764 : vec4<f32> = u_xlat4;
  let x_2766 : vec3<f32> = ((vec3<f32>(x_2759.x, x_2759.y, x_2759.z) * vec3<f32>(x_2761, x_2761, x_2761)) + vec3<f32>(x_2764.x, x_2764.y, x_2764.z));
  let x_2767 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2767.w);
  let x_2769 : vec4<f32> = u_xlat6;
  let x_2771 : vec4<f32> = u_xlat8;
  let x_2773 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.y, x_2769.z) * vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
  let x_2774 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
  let x_2777 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2779 : f32 = x_887.unity_LightData.y;
  u_xlat40 = min(x_2777, x_2779);
  let x_2783 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2783));
  let x_2787 : f32 = x_2365.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2789 : f32 = x_2365.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2791 : f32 = x_2365.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2793 : f32 = x_2365.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2794 : vec4<f32> = vec4<f32>(x_2787, x_2789, x_2791, x_2793);
  let x_2800 : vec4<bool> = (vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2794.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_2800.x, x_2800.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2811 : u32 = u_xlatu_loop_1;
    let x_2812 : u32 = u_xlatu40;
    if ((x_2811 < x_2812)) {
    } else {
      break;
    }
    let x_2815 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2815 >> 2u);
    let x_2819 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2819 & 3u));
    let x_2822 : u32 = u_xlatu65;
    let x_2825 : vec4<f32> = x_887.unity_LightIndices[bitcast<i32>(x_2822)];
    let x_2835 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2840 : vec4<u32> = indexable[x_2835];
    u_xlat65 = dot(x_2825, bitcast<vec4<f32>>(x_2840));
    let x_2843 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2843));
    let x_2846 : vec3<f32> = vs_TEXCOORD7;
    let x_2858 : u32 = u_xlatu65;
    let x_2861 : vec4<f32> = x_2857.x_AdditionalLightsPosition[bitcast<i32>(x_2858)];
    let x_2864 : u32 = u_xlatu65;
    let x_2867 : vec4<f32> = x_2857.x_AdditionalLightsPosition[bitcast<i32>(x_2864)];
    let x_2869 : vec3<f32> = ((-(x_2846) * vec3<f32>(x_2861.w, x_2861.w, x_2861.w)) + vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
    let x_2873 : vec4<f32> = u_xlat9;
    let x_2875 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2873.x, x_2873.y, x_2873.z), vec3<f32>(x_2875.x, x_2875.y, x_2875.z));
    let x_2878 : f32 = u_xlat66;
    u_xlat66 = max(x_2878, 6.10351562e-05f);
    let x_2881 : f32 = u_xlat66;
    u_xlat67 = inverseSqrt(x_2881);
    let x_2883 : f32 = u_xlat67;
    let x_2885 : vec4<f32> = u_xlat9;
    let x_2887 : vec3<f32> = (vec3<f32>(x_2883, x_2883, x_2883) * vec3<f32>(x_2885.x, x_2885.y, x_2885.z));
    let x_2888 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2888.w);
    let x_2891 : f32 = u_xlat66;
    u_xlat68 = (1.0f / x_2891);
    let x_2893 : f32 = u_xlat66;
    let x_2894 : u32 = u_xlatu65;
    let x_2897 : f32 = x_2857.x_AdditionalLightsAttenuation[bitcast<i32>(x_2894)].x;
    u_xlat66 = (x_2893 * x_2897);
    let x_2899 : f32 = u_xlat66;
    let x_2901 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2899) * x_2901) + 1.0f);
    let x_2904 : f32 = u_xlat66;
    u_xlat66 = max(x_2904, 0.0f);
    let x_2906 : f32 = u_xlat66;
    let x_2907 : f32 = u_xlat66;
    u_xlat66 = (x_2906 * x_2907);
    let x_2909 : f32 = u_xlat66;
    let x_2910 : f32 = u_xlat68;
    u_xlat66 = (x_2909 * x_2910);
    let x_2912 : u32 = u_xlatu65;
    let x_2915 : vec4<f32> = x_2857.x_AdditionalLightsSpotDir[bitcast<i32>(x_2912)];
    let x_2917 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_2915.x, x_2915.y, x_2915.z), vec3<f32>(x_2917.x, x_2917.y, x_2917.z));
    let x_2920 : f32 = u_xlat68;
    let x_2921 : u32 = u_xlatu65;
    let x_2924 : f32 = x_2857.x_AdditionalLightsAttenuation[bitcast<i32>(x_2921)].z;
    let x_2926 : u32 = u_xlatu65;
    let x_2929 : f32 = x_2857.x_AdditionalLightsAttenuation[bitcast<i32>(x_2926)].w;
    u_xlat68 = ((x_2920 * x_2924) + x_2929);
    let x_2931 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2931, 0.0f, 1.0f);
    let x_2933 : f32 = u_xlat68;
    let x_2934 : f32 = u_xlat68;
    u_xlat68 = (x_2933 * x_2934);
    let x_2936 : f32 = u_xlat66;
    let x_2937 : f32 = u_xlat68;
    u_xlat66 = (x_2936 * x_2937);
    let x_2940 : u32 = u_xlatu65;
    u_xlatu68 = (x_2940 >> 5u);
    let x_2943 : u32 = u_xlatu65;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2943) & 31i)));
    let x_2948 : i32 = u_xlati69;
    let x_2950 : u32 = u_xlatu68;
    let x_2953 : f32 = x_2365.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2950)].el;
    u_xlati68 = bitcast<i32>((bitcast<u32>(x_2948) & bitcast<u32>(x_2953)));
    let x_2957 : i32 = u_xlati68;
    if ((x_2957 != 0i)) {
      let x_2967 : u32 = u_xlatu65;
      let x_2970 : f32 = x_2966.x_AdditionalLightsLightTypes[bitcast<i32>(x_2967)].el;
      u_xlati68 = i32(x_2970);
      let x_2972 : i32 = u_xlati68;
      u_xlati69 = select(1i, 0i, (x_2972 != 0i));
      let x_2976 : u32 = u_xlatu65;
      u_xlati70 = (bitcast<i32>(x_2976) << bitcast<u32>(2i));
      let x_2979 : i32 = u_xlati69;
      if ((x_2979 != 0i)) {
        let x_2983 : vec3<f32> = vs_TEXCOORD7;
        let x_2985 : i32 = u_xlati70;
        let x_2988 : i32 = u_xlati70;
        let x_2992 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_2985 + 1i) / 4i)][((x_2988 + 1i) % 4i)];
        let x_2994 : vec3<f32> = (vec3<f32>(x_2983.y, x_2983.y, x_2983.y) * vec3<f32>(x_2992.x, x_2992.y, x_2992.w));
        let x_2995 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2994.x, x_2994.y, x_2994.z, x_2995.w);
        let x_2997 : i32 = u_xlati70;
        let x_2999 : i32 = u_xlati70;
        let x_3002 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[(x_2997 / 4i)][(x_2999 % 4i)];
        let x_3004 : vec3<f32> = vs_TEXCOORD7;
        let x_3007 : vec4<f32> = u_xlat11;
        let x_3009 : vec3<f32> = ((vec3<f32>(x_3002.x, x_3002.y, x_3002.w) * vec3<f32>(x_3004.x, x_3004.x, x_3004.x)) + vec3<f32>(x_3007.x, x_3007.y, x_3007.z));
        let x_3010 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3009.x, x_3009.y, x_3009.z, x_3010.w);
        let x_3012 : i32 = u_xlati70;
        let x_3015 : i32 = u_xlati70;
        let x_3019 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3012 + 2i) / 4i)][((x_3015 + 2i) % 4i)];
        let x_3021 : vec3<f32> = vs_TEXCOORD7;
        let x_3024 : vec4<f32> = u_xlat11;
        let x_3026 : vec3<f32> = ((vec3<f32>(x_3019.x, x_3019.y, x_3019.w) * vec3<f32>(x_3021.z, x_3021.z, x_3021.z)) + vec3<f32>(x_3024.x, x_3024.y, x_3024.z));
        let x_3027 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3027.w);
        let x_3029 : vec4<f32> = u_xlat11;
        let x_3031 : i32 = u_xlati70;
        let x_3034 : i32 = u_xlati70;
        let x_3038 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3031 + 3i) / 4i)][((x_3034 + 3i) % 4i)];
        let x_3040 : vec3<f32> = (vec3<f32>(x_3029.x, x_3029.y, x_3029.z) + vec3<f32>(x_3038.x, x_3038.y, x_3038.w));
        let x_3041 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3040.x, x_3040.y, x_3040.z, x_3041.w);
        let x_3043 : vec4<f32> = u_xlat11;
        let x_3045 : vec4<f32> = u_xlat11;
        let x_3047 : vec2<f32> = (vec2<f32>(x_3043.x, x_3043.y) / vec2<f32>(x_3045.z, x_3045.z));
        let x_3048 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3047.x, x_3047.y, x_3048.z, x_3048.w);
        let x_3050 : vec4<f32> = u_xlat11;
        let x_3053 : vec2<f32> = ((vec2<f32>(x_3050.x, x_3050.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3054 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3053.x, x_3053.y, x_3054.z, x_3054.w);
        let x_3056 : vec4<f32> = u_xlat11;
        let x_3060 : vec2<f32> = clamp(vec2<f32>(x_3056.x, x_3056.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
        let x_3063 : u32 = u_xlatu65;
        let x_3066 : vec4<f32> = x_2966.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3063)];
        let x_3068 : vec4<f32> = u_xlat11;
        let x_3071 : u32 = u_xlatu65;
        let x_3074 : vec4<f32> = x_2966.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3071)];
        let x_3076 : vec2<f32> = ((vec2<f32>(x_3066.x, x_3066.y) * vec2<f32>(x_3068.x, x_3068.y)) + vec2<f32>(x_3074.z, x_3074.w));
        let x_3077 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3076.x, x_3076.y, x_3077.z, x_3077.w);
      } else {
        let x_3081 : i32 = u_xlati68;
        u_xlatb68 = (x_3081 == 1i);
        let x_3083 : bool = u_xlatb68;
        u_xlati68 = select(0i, 1i, x_3083);
        let x_3085 : i32 = u_xlati68;
        if ((x_3085 != 0i)) {
          let x_3090 : vec3<f32> = vs_TEXCOORD7;
          let x_3092 : i32 = u_xlati70;
          let x_3095 : i32 = u_xlati70;
          let x_3099 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3092 + 1i) / 4i)][((x_3095 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3090.y, x_3090.y) * vec2<f32>(x_3099.x, x_3099.y));
          let x_3102 : i32 = u_xlati70;
          let x_3104 : i32 = u_xlati70;
          let x_3107 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[(x_3102 / 4i)][(x_3104 % 4i)];
          let x_3109 : vec3<f32> = vs_TEXCOORD7;
          let x_3112 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3107.x, x_3107.y) * vec2<f32>(x_3109.x, x_3109.x)) + x_3112);
          let x_3114 : i32 = u_xlati70;
          let x_3117 : i32 = u_xlati70;
          let x_3121 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3114 + 2i) / 4i)][((x_3117 + 2i) % 4i)];
          let x_3123 : vec3<f32> = vs_TEXCOORD7;
          let x_3126 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3121.x, x_3121.y) * vec2<f32>(x_3123.z, x_3123.z)) + x_3126);
          let x_3128 : vec2<f32> = u_xlat51;
          let x_3129 : i32 = u_xlati70;
          let x_3132 : i32 = u_xlati70;
          let x_3136 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3129 + 3i) / 4i)][((x_3132 + 3i) % 4i)];
          u_xlat51 = (x_3128 + vec2<f32>(x_3136.x, x_3136.y));
          let x_3139 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3139 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3142 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3142);
          let x_3144 : u32 = u_xlatu65;
          let x_3147 : vec4<f32> = x_2966.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3144)];
          let x_3149 : vec2<f32> = u_xlat51;
          let x_3151 : u32 = u_xlatu65;
          let x_3154 : vec4<f32> = x_2966.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3151)];
          let x_3156 : vec2<f32> = ((vec2<f32>(x_3147.x, x_3147.y) * x_3149) + vec2<f32>(x_3154.z, x_3154.w));
          let x_3157 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3156.x, x_3156.y, x_3157.z, x_3157.w);
        } else {
          let x_3160 : vec3<f32> = vs_TEXCOORD7;
          let x_3162 : i32 = u_xlati70;
          let x_3165 : i32 = u_xlati70;
          let x_3169 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3162 + 1i) / 4i)][((x_3165 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3160.y, x_3160.y, x_3160.y, x_3160.y) * x_3169);
          let x_3171 : i32 = u_xlati70;
          let x_3173 : i32 = u_xlati70;
          let x_3176 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[(x_3171 / 4i)][(x_3173 % 4i)];
          let x_3177 : vec3<f32> = vs_TEXCOORD7;
          let x_3180 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3176 * vec4<f32>(x_3177.x, x_3177.x, x_3177.x, x_3177.x)) + x_3180);
          let x_3182 : i32 = u_xlati70;
          let x_3185 : i32 = u_xlati70;
          let x_3189 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3182 + 2i) / 4i)][((x_3185 + 2i) % 4i)];
          let x_3190 : vec3<f32> = vs_TEXCOORD7;
          let x_3193 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3189 * vec4<f32>(x_3190.z, x_3190.z, x_3190.z, x_3190.z)) + x_3193);
          let x_3195 : vec4<f32> = u_xlat12;
          let x_3196 : i32 = u_xlati70;
          let x_3199 : i32 = u_xlati70;
          let x_3203 : vec4<f32> = x_2966.x_AdditionalLightsWorldToLights[((x_3196 + 3i) / 4i)][((x_3199 + 3i) % 4i)];
          u_xlat12 = (x_3195 + x_3203);
          let x_3205 : vec4<f32> = u_xlat12;
          let x_3207 : vec4<f32> = u_xlat12;
          let x_3209 : vec3<f32> = (vec3<f32>(x_3205.x, x_3205.y, x_3205.z) / vec3<f32>(x_3207.w, x_3207.w, x_3207.w));
          let x_3210 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3209.x, x_3209.y, x_3209.z, x_3210.w);
          let x_3212 : vec4<f32> = u_xlat12;
          let x_3214 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(vec3<f32>(x_3212.x, x_3212.y, x_3212.z), vec3<f32>(x_3214.x, x_3214.y, x_3214.z));
          let x_3217 : f32 = u_xlat68;
          u_xlat68 = inverseSqrt(x_3217);
          let x_3219 : f32 = u_xlat68;
          let x_3221 : vec4<f32> = u_xlat12;
          let x_3223 : vec3<f32> = (vec3<f32>(x_3219, x_3219, x_3219) * vec3<f32>(x_3221.x, x_3221.y, x_3221.z));
          let x_3224 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3223.x, x_3223.y, x_3223.z, x_3224.w);
          let x_3226 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(abs(vec3<f32>(x_3226.x, x_3226.y, x_3226.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3231 : f32 = u_xlat68;
          u_xlat68 = max(x_3231, 0.000001f);
          let x_3234 : f32 = u_xlat68;
          u_xlat68 = (1.0f / x_3234);
          let x_3236 : f32 = u_xlat68;
          let x_3238 : vec4<f32> = u_xlat12;
          let x_3240 : vec3<f32> = (vec3<f32>(x_3236, x_3236, x_3236) * vec3<f32>(x_3238.z, x_3238.x, x_3238.y));
          let x_3241 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
          let x_3244 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3244);
          let x_3248 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3248, 0.0f, 1.0f);
          let x_3252 : vec4<f32> = u_xlat13;
          let x_3255 : vec4<bool> = (vec4<f32>(x_3252.y, x_3252.z, x_3252.y, x_3252.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3255.x, x_3255.y);
          let x_3258 : bool = u_xlatb51.x;
          if (x_3258) {
            let x_3263 : f32 = u_xlat13.x;
            x_3259 = x_3263;
          } else {
            let x_3266 : f32 = u_xlat13.x;
            x_3259 = -(x_3266);
          }
          let x_3268 : f32 = x_3259;
          u_xlat51.x = x_3268;
          let x_3271 : bool = u_xlatb51.y;
          if (x_3271) {
            let x_3276 : f32 = u_xlat13.x;
            x_3272 = x_3276;
          } else {
            let x_3279 : f32 = u_xlat13.x;
            x_3272 = -(x_3279);
          }
          let x_3281 : f32 = x_3272;
          u_xlat51.y = x_3281;
          let x_3283 : vec4<f32> = u_xlat12;
          let x_3285 : f32 = u_xlat68;
          let x_3288 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3283.x, x_3283.y) * vec2<f32>(x_3285, x_3285)) + x_3288);
          let x_3290 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3290 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3293 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3293, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3297 : u32 = u_xlatu65;
          let x_3300 : vec4<f32> = x_2966.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3297)];
          let x_3302 : vec2<f32> = u_xlat51;
          let x_3304 : u32 = u_xlatu65;
          let x_3307 : vec4<f32> = x_2966.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3304)];
          let x_3309 : vec2<f32> = ((vec2<f32>(x_3300.x, x_3300.y) * x_3302) + vec2<f32>(x_3307.z, x_3307.w));
          let x_3310 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3309.x, x_3309.y, x_3310.z, x_3310.w);
        }
      }
      let x_3317 : vec4<f32> = u_xlat11;
      let x_3320 : f32 = x_126.x_GlobalMipBias.x;
      let x_3321 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3317.x, x_3317.y), x_3320);
      u_xlat11 = x_3321;
      let x_3323 : bool = u_xlatb3.y;
      if (x_3323) {
        let x_3328 : f32 = u_xlat11.w;
        x_3324 = x_3328;
      } else {
        let x_3331 : f32 = u_xlat11.x;
        x_3324 = x_3331;
      }
      let x_3332 : f32 = x_3324;
      u_xlat68 = x_3332;
      let x_3334 : bool = u_xlatb3.x;
      if (x_3334) {
        let x_3338 : vec4<f32> = u_xlat11;
        x_3335 = vec3<f32>(x_3338.x, x_3338.y, x_3338.z);
      } else {
        let x_3341 : f32 = u_xlat68;
        x_3335 = vec3<f32>(x_3341, x_3341, x_3341);
      }
      let x_3343 : vec3<f32> = x_3335;
      let x_3344 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3343.x, x_3343.y, x_3343.z, x_3344.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3350 : vec4<f32> = u_xlat11;
    let x_3352 : u32 = u_xlatu65;
    let x_3355 : vec4<f32> = x_2857.x_AdditionalLightsColor[bitcast<i32>(x_3352)];
    let x_3357 : vec3<f32> = (vec3<f32>(x_3350.x, x_3350.y, x_3350.z) * vec3<f32>(x_3355.x, x_3355.y, x_3355.z));
    let x_3358 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3357.x, x_3357.y, x_3357.z, x_3358.w);
    let x_3360 : f32 = u_xlat43;
    let x_3362 : vec4<f32> = u_xlat11;
    let x_3364 : vec3<f32> = (vec3<f32>(x_3360, x_3360, x_3360) * vec3<f32>(x_3362.x, x_3362.y, x_3362.z));
    let x_3365 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3364.x, x_3364.y, x_3364.z, x_3365.w);
    let x_3367 : vec4<f32> = u_xlat1;
    let x_3369 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_3367.x, x_3367.y, x_3367.z), vec3<f32>(x_3369.x, x_3369.y, x_3369.z));
    let x_3372 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3372, 0.0f, 1.0f);
    let x_3374 : f32 = u_xlat65;
    let x_3375 : f32 = u_xlat66;
    u_xlat65 = (x_3374 * x_3375);
    let x_3377 : f32 = u_xlat65;
    let x_3379 : vec4<f32> = u_xlat11;
    let x_3381 : vec3<f32> = (vec3<f32>(x_3377, x_3377, x_3377) * vec3<f32>(x_3379.x, x_3379.y, x_3379.z));
    let x_3382 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3382.w);
    let x_3384 : vec4<f32> = u_xlat9;
    let x_3386 : f32 = u_xlat67;
    let x_3389 : vec4<f32> = u_xlat7;
    let x_3391 : vec3<f32> = ((vec3<f32>(x_3384.x, x_3384.y, x_3384.z) * vec3<f32>(x_3386, x_3386, x_3386)) + vec3<f32>(x_3389.x, x_3389.y, x_3389.z));
    let x_3392 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3391.x, x_3391.y, x_3391.z, x_3392.w);
    let x_3394 : vec4<f32> = u_xlat9;
    let x_3396 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3394.x, x_3394.y, x_3394.z), vec3<f32>(x_3396.x, x_3396.y, x_3396.z));
    let x_3399 : f32 = u_xlat65;
    u_xlat65 = max(x_3399, 1.17549435e-37f);
    let x_3401 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_3401);
    let x_3403 : f32 = u_xlat65;
    let x_3405 : vec4<f32> = u_xlat9;
    let x_3407 : vec3<f32> = (vec3<f32>(x_3403, x_3403, x_3403) * vec3<f32>(x_3405.x, x_3405.y, x_3405.z));
    let x_3408 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3407.x, x_3407.y, x_3407.z, x_3408.w);
    let x_3410 : vec4<f32> = u_xlat1;
    let x_3412 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3410.x, x_3410.y, x_3410.z), vec3<f32>(x_3412.x, x_3412.y, x_3412.z));
    let x_3415 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3415, 0.0f, 1.0f);
    let x_3417 : vec4<f32> = u_xlat10;
    let x_3419 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3417.x, x_3417.y, x_3417.z), vec3<f32>(x_3419.x, x_3419.y, x_3419.z));
    let x_3422 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3422, 0.0f, 1.0f);
    let x_3424 : f32 = u_xlat65;
    let x_3425 : f32 = u_xlat65;
    u_xlat65 = (x_3424 * x_3425);
    let x_3427 : f32 = u_xlat65;
    let x_3429 : f32 = u_xlat0.x;
    u_xlat65 = ((x_3427 * x_3429) + 1.000010014f);
    let x_3432 : f32 = u_xlat66;
    let x_3433 : f32 = u_xlat66;
    u_xlat66 = (x_3432 * x_3433);
    let x_3435 : f32 = u_xlat65;
    let x_3436 : f32 = u_xlat65;
    u_xlat65 = (x_3435 * x_3436);
    let x_3438 : f32 = u_xlat66;
    u_xlat66 = max(x_3438, 0.100000001f);
    let x_3440 : f32 = u_xlat65;
    let x_3441 : f32 = u_xlat66;
    u_xlat65 = (x_3440 * x_3441);
    let x_3443 : f32 = u_xlat63;
    let x_3444 : f32 = u_xlat65;
    u_xlat65 = (x_3443 * x_3444);
    let x_3446 : f32 = u_xlat61;
    let x_3447 : f32 = u_xlat65;
    u_xlat65 = (x_3446 / x_3447);
    let x_3449 : vec4<f32> = u_xlat5;
    let x_3451 : f32 = u_xlat65;
    let x_3454 : vec4<f32> = u_xlat4;
    let x_3456 : vec3<f32> = ((vec3<f32>(x_3449.x, x_3449.y, x_3449.z) * vec3<f32>(x_3451, x_3451, x_3451)) + vec3<f32>(x_3454.x, x_3454.y, x_3454.z));
    let x_3457 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3457.w);
    let x_3459 : vec4<f32> = u_xlat9;
    let x_3461 : vec4<f32> = u_xlat11;
    let x_3464 : vec4<f32> = u_xlat8;
    let x_3466 : vec3<f32> = ((vec3<f32>(x_3459.x, x_3459.y, x_3459.z) * vec3<f32>(x_3461.x, x_3461.y, x_3461.z)) + vec3<f32>(x_3464.x, x_3464.y, x_3464.z));
    let x_3467 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3466.x, x_3466.y, x_3466.z, x_3467.w);

    continuing {
      let x_3469 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3469 + bitcast<u32>(1i));
    }
  }
  let x_3471 : vec3<f32> = u_xlat22;
  let x_3472 : f32 = u_xlat20;
  let x_3475 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_3471 * vec3<f32>(x_3472, x_3472, x_3472)) + vec3<f32>(x_3475.x, x_3475.y, x_3475.z));
  let x_3478 : vec4<f32> = u_xlat8;
  let x_3480 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3478.x, x_3478.y, x_3478.z) + x_3480);
  let x_3483 : f32 = u_xlat2.x;
  let x_3485 : f32 = u_xlat2.x;
  u_xlat1.x = (x_3483 * -(x_3485));
  let x_3490 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3490);
  let x_3493 : vec3<f32> = u_xlat0;
  let x_3494 : f32 = u_xlat60;
  let x_3498 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_3493 * vec3<f32>(x_3494, x_3494, x_3494)) + -(vec3<f32>(x_3498.x, x_3498.y, x_3498.z)));
  let x_3504 : vec4<f32> = u_xlat1;
  let x_3506 : vec3<f32> = u_xlat0;
  let x_3509 : vec4<f32> = x_126.unity_FogColor;
  let x_3511 : vec3<f32> = ((vec3<f32>(x_3504.x, x_3504.x, x_3504.x) * x_3506) + vec3<f32>(x_3509.x, x_3509.y, x_3509.z));
  let x_3512 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3511.x, x_3511.y, x_3511.z, x_3512.w);
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

