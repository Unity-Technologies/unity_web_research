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

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1001 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2293 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2498 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2789 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2898 : AdditionalLightsCookies;

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
  var x_2248 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2374 : f32;
  var x_2385 : vec3<f32>;
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
  var x_3191 : f32;
  var x_3204 : f32;
  var x_3256 : f32;
  var x_3267 : vec3<f32>;
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
  u_xlat61 = (x_836 * x_838);
  let x_841 : f32 = x_126.unity_MatrixV[0i].z;
  let x_843 : f32 = vs_TEXCOORD7.x;
  let x_845 : f32 = u_xlat61;
  u_xlat61 = ((x_841 * x_843) + x_845);
  let x_848 : f32 = x_126.unity_MatrixV[2i].z;
  let x_850 : f32 = vs_TEXCOORD7.z;
  let x_852 : f32 = u_xlat61;
  u_xlat61 = ((x_848 * x_850) + x_852);
  let x_854 : f32 = u_xlat61;
  let x_856 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat61 = (x_854 + x_856);
  let x_858 : f32 = u_xlat61;
  let x_861 : f32 = x_126.x_ProjectionParams.y;
  u_xlat61 = (-(x_858) + -(x_861));
  let x_864 : f32 = u_xlat61;
  u_xlat61 = max(x_864, 0.0f);
  let x_866 : f32 = u_xlat61;
  let x_868 : f32 = x_126.unity_FogParams.x;
  u_xlat61 = (x_866 * x_868);
  let x_875 : vec4<f32> = vs_TEXCOORD0;
  let x_878 : f32 = x_126.x_GlobalMipBias.x;
  let x_879 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_875.z, x_875.w), x_878);
  u_xlat2 = vec3<f32>(x_879.x, x_879.y, x_879.z);
  let x_883 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_884 : vec2<f32> = vec2<f32>(x_883.x, x_883.y);
  let x_888 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_884.x, x_884.y));
  let x_889 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat3;
  let x_893 : vec4<f32> = hlslcc_FragCoord;
  let x_895 : vec2<f32> = (vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_893.x, x_893.y));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_900 : f32 = u_xlat3.y;
  let x_902 : f32 = x_126.x_ScaleBiasRt.x;
  let x_905 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat62 = ((x_900 * x_902) + x_905);
  let x_907 : f32 = u_xlat62;
  u_xlat3.z = (-(x_907) + 1.0f);
  let x_912 : f32 = u_xlat0.x;
  u_xlat62 = ((-(x_912) * 0.959999979f) + 0.959999979f);
  let x_918 : f32 = u_xlat40;
  let x_919 : f32 = u_xlat62;
  u_xlat23 = (x_918 + -(x_919));
  let x_922 : f32 = u_xlat62;
  let x_924 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_934 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec3<f32> = u_xlat0;
  let x_938 : vec4<f32> = u_xlat5;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.x, x_936.x) * vec3<f32>(x_938.x, x_938.y, x_938.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_944 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat40;
  u_xlat0.x = (-(x_946) + 1.0f);
  let x_951 : f32 = u_xlat0.x;
  let x_953 : f32 = u_xlat0.x;
  u_xlat40 = (x_951 * x_953);
  let x_955 : f32 = u_xlat40;
  u_xlat40 = max(x_955, 0.0078125f);
  let x_958 : f32 = u_xlat40;
  let x_959 : f32 = u_xlat40;
  u_xlat62 = (x_958 * x_959);
  let x_961 : f32 = u_xlat23;
  u_xlat23 = (x_961 + 1.0f);
  let x_963 : f32 = u_xlat23;
  u_xlat23 = clamp(x_963, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat40;
  u_xlat63 = ((x_966 * 4.0f) + 2.0f);
  let x_974 : vec4<f32> = u_xlat3;
  let x_977 : f32 = x_126.x_GlobalMipBias.x;
  let x_978 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_974.x, x_974.z), x_977);
  u_xlat3.x = x_978.x;
  let x_983 : f32 = u_xlat3.x;
  u_xlat43 = (x_983 + -1.0f);
  let x_986 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_987 : f32 = u_xlat43;
  u_xlat43 = ((x_986 * x_987) + 1.0f);
  let x_990 : f32 = u_xlat20;
  let x_992 : f32 = u_xlat3.x;
  u_xlat20 = min(x_990, x_992);
  let x_1003 : f32 = x_1001.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1003);
  let x_1007 : bool = u_xlatb3.x;
  if (x_1007) {
    let x_1011 : f32 = x_1001.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1011 == 1.0f);
    let x_1015 : bool = u_xlatb3.x;
    if (x_1015) {
      let x_1019 : vec4<f32> = vs_TEXCOORD8;
      let x_1022 : vec4<f32> = x_1001.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y) + x_1022);
      let x_1025 : vec4<f32> = u_xlat6;
      let x_1026 : vec2<f32> = vec2<f32>(x_1025.x, x_1025.y);
      let x_1028 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
      let x_1040 : vec3<f32> = txVec0;
      let x_1042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1040.xy, x_1040.z);
      u_xlat7.x = x_1042;
      let x_1045 : vec4<f32> = u_xlat6;
      let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
      let x_1048 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
      let x_1055 : vec3<f32> = txVec1;
      let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1055.xy, x_1055.z);
      u_xlat7.y = x_1057;
      let x_1059 : vec4<f32> = vs_TEXCOORD8;
      let x_1062 : vec4<f32> = x_1001.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) + x_1062);
      let x_1065 : vec4<f32> = u_xlat6;
      let x_1066 : vec2<f32> = vec2<f32>(x_1065.x, x_1065.y);
      let x_1068 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1066.x, x_1066.y, x_1068);
      let x_1075 : vec3<f32> = txVec2;
      let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1075.xy, x_1075.z);
      u_xlat7.z = x_1077;
      let x_1080 : vec4<f32> = u_xlat6;
      let x_1081 : vec2<f32> = vec2<f32>(x_1080.z, x_1080.w);
      let x_1083 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1081.x, x_1081.y, x_1083);
      let x_1090 : vec3<f32> = txVec3;
      let x_1092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1090.xy, x_1090.z);
      u_xlat7.w = x_1092;
      let x_1094 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1094, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1102 : f32 = x_1001.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1102 == 2.0f);
      let x_1104 : bool = u_xlatb64;
      if (x_1104) {
        let x_1107 : vec4<f32> = vs_TEXCOORD8;
        let x_1110 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1110.z, x_1110.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1114 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1118 : vec2<f32> = floor(vec2<f32>(x_1116.x, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1123 : vec4<f32> = vs_TEXCOORD8;
        let x_1126 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.z, x_1126.w)) + -(vec2<f32>(x_1129.x, x_1129.y)));
        let x_1133 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1133.x, x_1133.x, x_1133.y, x_1133.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1137.x, x_1137.x, x_1137.z, x_1137.z) * vec4<f32>(x_1139.x, x_1139.x, x_1139.z, x_1139.z));
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1146 : vec2<f32> = (vec2<f32>(x_1142.y, x_1142.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1146.x, x_1147.y, x_1146.y, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1152 : vec2<f32> = u_xlat46;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1149.x, x_1149.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1152));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1158 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1158) + vec2<f32>(1.0f, 1.0f));
        let x_1161 : vec2<f32> = u_xlat46;
        let x_1163 : vec2<f32> = min(x_1161, vec2<f32>(0.0f, 0.0f));
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1163.x, x_1163.y, x_1164.z, x_1164.w);
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1169 : vec4<f32> = u_xlat9;
        let x_1172 : vec2<f32> = u_xlat48;
        let x_1173 : vec2<f32> = ((-(vec2<f32>(x_1166.x, x_1166.y)) * vec2<f32>(x_1169.x, x_1169.y)) + x_1172);
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1176, vec2<f32>(0.0f, 0.0f));
        let x_1178 : vec2<f32> = u_xlat46;
        let x_1180 : vec2<f32> = u_xlat46;
        let x_1182 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1178) * x_1180) + vec2<f32>(x_1182.y, x_1182.w));
        let x_1185 : vec4<f32> = u_xlat9;
        let x_1187 : vec2<f32> = (vec2<f32>(x_1185.x, x_1185.y) + vec2<f32>(1.0f, 1.0f));
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1190 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1190 + vec2<f32>(1.0f, 1.0f));
        let x_1192 : vec4<f32> = u_xlat8;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec2<f32> = u_xlat48;
        let x_1200 : vec2<f32> = (x_1199 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat9;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec2<f32> = u_xlat46;
        let x_1209 : vec2<f32> = (x_1208 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1209.x, x_1209.y, x_1210.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1212.y, x_1212.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1216 : f32 = u_xlat9.x;
        u_xlat10.z = x_1216;
        let x_1219 : f32 = u_xlat46.x;
        u_xlat10.w = x_1219;
        let x_1222 : f32 = u_xlat11.x;
        u_xlat8.z = x_1222;
        let x_1225 : f32 = u_xlat7.x;
        u_xlat8.w = x_1225;
        let x_1227 : vec4<f32> = u_xlat8;
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1227.z, x_1227.w, x_1227.x, x_1227.z) + vec4<f32>(x_1229.z, x_1229.w, x_1229.x, x_1229.z));
        let x_1233 : f32 = u_xlat10.y;
        u_xlat9.z = x_1233;
        let x_1236 : f32 = u_xlat46.y;
        u_xlat9.w = x_1236;
        let x_1239 : f32 = u_xlat8.y;
        u_xlat11.z = x_1239;
        let x_1242 : f32 = u_xlat7.z;
        u_xlat11.w = x_1242;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1246 : vec4<f32> = u_xlat11;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1244.z, x_1244.y, x_1244.w) + vec3<f32>(x_1246.z, x_1246.y, x_1246.w));
        let x_1249 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat8;
        let x_1253 : vec4<f32> = u_xlat12;
        let x_1255 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.z, x_1251.w) / vec3<f32>(x_1253.z, x_1253.w, x_1253.y));
        let x_1256 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1264 : vec3<f32> = (vec3<f32>(x_1258.x, x_1258.y, x_1258.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat11;
        let x_1269 : vec4<f32> = u_xlat7;
        let x_1271 : vec3<f32> = (vec3<f32>(x_1267.z, x_1267.y, x_1267.w) / vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat9;
        let x_1276 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.y, x_1274.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat8;
        let x_1282 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1284 : vec3<f32> = (vec3<f32>(x_1279.y, x_1279.x, x_1279.z) * vec3<f32>(x_1282.x, x_1282.x, x_1282.x));
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
        let x_1287 : vec4<f32> = u_xlat9;
        let x_1290 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1292 : vec3<f32> = (vec3<f32>(x_1287.x, x_1287.y, x_1287.z) * vec3<f32>(x_1290.y, x_1290.y, x_1290.y));
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
        let x_1296 : f32 = u_xlat9.x;
        u_xlat8.w = x_1296;
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.y, x_1304.w, x_1304.x, x_1304.w));
        let x_1307 : vec4<f32> = u_xlat6;
        let x_1310 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.z, x_1313.w));
        let x_1317 : f32 = u_xlat8.y;
        u_xlat9.w = x_1317;
        let x_1319 : vec4<f32> = u_xlat9;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.y, x_1319.z);
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1323 : vec4<f32> = u_xlat6;
        let x_1326 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y) * vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y)) + vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1329.y));
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1335 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.w, x_1338.y, x_1338.w, x_1338.z));
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y) * vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y)) + vec4<f32>(x_1347.x, x_1347.w, x_1347.z, x_1347.w));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.x, x_1350.y) * vec4<f32>(x_1352.z, x_1352.w, x_1352.y, x_1352.z));
        let x_1356 : vec4<f32> = u_xlat7;
        let x_1358 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1356.y, x_1356.y, x_1356.z, x_1356.z) * x_1358);
        let x_1362 : f32 = u_xlat7.z;
        let x_1364 : f32 = u_xlat12.y;
        u_xlat64 = (x_1362 * x_1364);
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1378 : vec3<f32> = txVec4;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat65 = x_1380;
        let x_1382 : vec4<f32> = u_xlat10;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec5;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1392.xy, x_1392.z);
        u_xlat6.x = x_1394;
        let x_1397 : f32 = u_xlat6.x;
        let x_1399 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1397 * x_1399);
        let x_1403 : f32 = u_xlat13.x;
        let x_1404 : f32 = u_xlat65;
        let x_1407 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1403 * x_1404) + x_1407);
        let x_1410 : vec2<f32> = u_xlat46;
        let x_1412 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec6;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat6.x = x_1421;
        let x_1424 : f32 = u_xlat13.z;
        let x_1426 : f32 = u_xlat6.x;
        let x_1428 : f32 = u_xlat65;
        u_xlat65 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec7;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1441.xy, x_1441.z);
        u_xlat6.x = x_1443;
        let x_1446 : f32 = u_xlat13.w;
        let x_1448 : f32 = u_xlat6.x;
        let x_1450 : f32 = u_xlat65;
        u_xlat65 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat11;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec8;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1463.xy, x_1463.z);
        u_xlat6.x = x_1465;
        let x_1468 : f32 = u_xlat14.x;
        let x_1470 : f32 = u_xlat6.x;
        let x_1472 : f32 = u_xlat65;
        u_xlat65 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec4<f32> = u_xlat11;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.z, x_1475.w);
        let x_1478 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec9;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1485.xy, x_1485.z);
        u_xlat6.x = x_1487;
        let x_1490 : f32 = u_xlat14.y;
        let x_1492 : f32 = u_xlat6.x;
        let x_1494 : f32 = u_xlat65;
        u_xlat65 = ((x_1490 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec10;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat6.x = x_1509;
        let x_1512 : f32 = u_xlat14.z;
        let x_1514 : f32 = u_xlat6.x;
        let x_1516 : f32 = u_xlat65;
        u_xlat65 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec4<f32> = u_xlat8;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec11;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1529.xy, x_1529.z);
        u_xlat6.x = x_1531;
        let x_1534 : f32 = u_xlat14.w;
        let x_1536 : f32 = u_xlat6.x;
        let x_1538 : f32 = u_xlat65;
        u_xlat65 = ((x_1534 * x_1536) + x_1538);
        let x_1541 : vec4<f32> = u_xlat8;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec12;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1551.xy, x_1551.z);
        u_xlat6.x = x_1553;
        let x_1555 : f32 = u_xlat64;
        let x_1557 : f32 = u_xlat6.x;
        let x_1559 : f32 = u_xlat65;
        u_xlat3.x = ((x_1555 * x_1557) + x_1559);
      } else {
        let x_1563 : vec4<f32> = vs_TEXCOORD8;
        let x_1566 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(x_1566.z, x_1566.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1570 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1572 : vec4<f32> = u_xlat6;
        let x_1574 : vec2<f32> = floor(vec2<f32>(x_1572.x, x_1572.y));
        let x_1575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
        let x_1577 : vec4<f32> = vs_TEXCOORD8;
        let x_1580 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1583 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1577.x, x_1577.y) * vec2<f32>(x_1580.z, x_1580.w)) + -(vec2<f32>(x_1583.x, x_1583.y)));
        let x_1587 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1587.x, x_1587.x, x_1587.y, x_1587.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1592 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1590.x, x_1590.x, x_1590.z, x_1590.z) * vec4<f32>(x_1592.x, x_1592.x, x_1592.z, x_1592.z));
        let x_1595 : vec4<f32> = u_xlat8;
        let x_1599 : vec2<f32> = (vec2<f32>(x_1595.y, x_1595.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1600.x, x_1599.x, x_1600.z, x_1599.y);
        let x_1602 : vec4<f32> = u_xlat8;
        let x_1605 : vec2<f32> = u_xlat46;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1602.x, x_1602.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1605));
        let x_1608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1607.x, x_1608.y, x_1607.y, x_1608.w);
        let x_1610 : vec2<f32> = u_xlat46;
        let x_1612 : vec2<f32> = (-(x_1610) + vec2<f32>(1.0f, 1.0f));
        let x_1613 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1612.x, x_1612.y, x_1613.z, x_1613.w);
        let x_1615 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1615, vec2<f32>(0.0f, 0.0f));
        let x_1617 : vec2<f32> = u_xlat48;
        let x_1619 : vec2<f32> = u_xlat48;
        let x_1621 : vec4<f32> = u_xlat8;
        let x_1623 : vec2<f32> = ((-(x_1617) * x_1619) + vec2<f32>(x_1621.x, x_1621.y));
        let x_1624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
        let x_1626 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1626, vec2<f32>(0.0f, 0.0f));
        let x_1629 : vec2<f32> = u_xlat48;
        let x_1631 : vec2<f32> = u_xlat48;
        let x_1633 : vec4<f32> = u_xlat7;
        let x_1635 : vec2<f32> = ((-(x_1629) * x_1631) + vec2<f32>(x_1633.y, x_1633.w));
        let x_1636 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1635.x, x_1636.y, x_1635.y);
        let x_1638 : vec4<f32> = u_xlat8;
        let x_1640 : vec2<f32> = (vec2<f32>(x_1638.x, x_1638.y) + vec2<f32>(2.0f, 2.0f));
        let x_1641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
        let x_1643 : vec3<f32> = u_xlat27;
        let x_1645 : vec2<f32> = (vec2<f32>(x_1643.x, x_1643.z) + vec2<f32>(2.0f, 2.0f));
        let x_1646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1646.x, x_1645.x, x_1646.z, x_1645.y);
        let x_1649 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1649 * 0.081632003f);
        let x_1653 : vec4<f32> = u_xlat7;
        let x_1656 : vec3<f32> = (vec3<f32>(x_1653.z, x_1653.x, x_1653.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
        let x_1659 : vec4<f32> = u_xlat8;
        let x_1662 : vec2<f32> = (vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1663 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
        let x_1666 : f32 = u_xlat11.y;
        u_xlat10.x = x_1666;
        let x_1668 : vec2<f32> = u_xlat46;
        let x_1675 : vec2<f32> = ((vec2<f32>(x_1668.x, x_1668.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1676 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1676.x, x_1675.x, x_1676.z, x_1675.y);
        let x_1678 : vec2<f32> = u_xlat46;
        let x_1682 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1682.x, x_1683.y, x_1682.y, x_1683.w);
        let x_1686 : f32 = u_xlat7.x;
        u_xlat8.y = x_1686;
        let x_1689 : f32 = u_xlat9.y;
        u_xlat8.w = x_1689;
        let x_1691 : vec4<f32> = u_xlat8;
        let x_1692 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1691 + x_1692);
        let x_1694 : vec2<f32> = u_xlat46;
        let x_1697 : vec2<f32> = ((vec2<f32>(x_1694.y, x_1694.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1698.x, x_1697.x, x_1698.z, x_1697.y);
        let x_1700 : vec2<f32> = u_xlat46;
        let x_1703 : vec2<f32> = ((vec2<f32>(x_1700.y, x_1700.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1704 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1703.x, x_1704.y, x_1703.y, x_1704.w);
        let x_1707 : f32 = u_xlat7.y;
        u_xlat9.y = x_1707;
        let x_1709 : vec4<f32> = u_xlat9;
        let x_1710 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1709 + x_1710);
        let x_1712 : vec4<f32> = u_xlat8;
        let x_1713 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1712 / x_1713);
        let x_1715 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1715 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1721 : vec4<f32> = u_xlat9;
        let x_1722 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1721 / x_1722);
        let x_1724 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1724 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1726 : vec4<f32> = u_xlat8;
        let x_1729 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1726.w, x_1726.x, x_1726.y, x_1726.z) * vec4<f32>(x_1729.x, x_1729.x, x_1729.x, x_1729.x));
        let x_1732 : vec4<f32> = u_xlat9;
        let x_1735 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1732.x, x_1732.w, x_1732.y, x_1732.z) * vec4<f32>(x_1735.y, x_1735.y, x_1735.y, x_1735.y));
        let x_1738 : vec4<f32> = u_xlat8;
        let x_1739 : vec3<f32> = vec3<f32>(x_1738.y, x_1738.z, x_1738.w);
        let x_1740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1739.x, x_1740.y, x_1739.y, x_1739.z);
        let x_1743 : f32 = u_xlat9.x;
        u_xlat11.y = x_1743;
        let x_1745 : vec4<f32> = u_xlat6;
        let x_1748 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y) * vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y)) + vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.y));
        let x_1754 : vec4<f32> = u_xlat6;
        let x_1757 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1760 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(x_1757.x, x_1757.y)) + vec2<f32>(x_1760.w, x_1760.y));
        let x_1764 : f32 = u_xlat11.y;
        u_xlat8.y = x_1764;
        let x_1767 : f32 = u_xlat9.z;
        u_xlat11.y = x_1767;
        let x_1769 : vec4<f32> = u_xlat6;
        let x_1772 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1769.x, x_1769.y, x_1769.x, x_1769.y) * vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y)) + vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1775.y));
        let x_1778 : vec4<f32> = u_xlat6;
        let x_1781 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1784 : vec4<f32> = u_xlat11;
        let x_1786 : vec2<f32> = ((vec2<f32>(x_1778.x, x_1778.y) * vec2<f32>(x_1781.x, x_1781.y)) + vec2<f32>(x_1784.w, x_1784.y));
        let x_1787 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
        let x_1790 : f32 = u_xlat11.y;
        u_xlat8.z = x_1790;
        let x_1793 : vec4<f32> = u_xlat6;
        let x_1796 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1799 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1793.x, x_1793.y, x_1793.x, x_1793.y) * vec4<f32>(x_1796.x, x_1796.y, x_1796.x, x_1796.y)) + vec4<f32>(x_1799.x, x_1799.y, x_1799.x, x_1799.z));
        let x_1803 : f32 = u_xlat9.w;
        u_xlat11.y = x_1803;
        let x_1806 : vec4<f32> = u_xlat6;
        let x_1809 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1812 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1806.x, x_1806.y, x_1806.x, x_1806.y) * vec4<f32>(x_1809.x, x_1809.y, x_1809.x, x_1809.y)) + vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1812.y));
        let x_1816 : vec4<f32> = u_xlat6;
        let x_1819 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1816.x, x_1816.y) * vec2<f32>(x_1819.x, x_1819.y)) + vec2<f32>(x_1822.w, x_1822.y));
        let x_1826 : f32 = u_xlat11.y;
        u_xlat8.w = x_1826;
        let x_1829 : vec4<f32> = u_xlat6;
        let x_1832 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1835 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(x_1832.x, x_1832.y)) + vec2<f32>(x_1835.x, x_1835.w));
        let x_1838 : vec4<f32> = u_xlat11;
        let x_1839 : vec3<f32> = vec3<f32>(x_1838.x, x_1838.z, x_1838.w);
        let x_1840 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1839.x, x_1840.y, x_1839.y, x_1839.z);
        let x_1842 : vec4<f32> = u_xlat6;
        let x_1845 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1848 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.y) * vec4<f32>(x_1845.x, x_1845.y, x_1845.x, x_1845.y)) + vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1848.y));
        let x_1852 : vec4<f32> = u_xlat6;
        let x_1855 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1858 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1852.x, x_1852.y) * vec2<f32>(x_1855.x, x_1855.y)) + vec2<f32>(x_1858.w, x_1858.y));
        let x_1862 : f32 = u_xlat8.x;
        u_xlat9.x = x_1862;
        let x_1864 : vec4<f32> = u_xlat6;
        let x_1867 : vec4<f32> = x_1001.x_MainLightShadowmapSize;
        let x_1870 : vec4<f32> = u_xlat9;
        let x_1872 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1867.x, x_1867.y)) + vec2<f32>(x_1870.x, x_1870.y));
        let x_1873 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1872.x, x_1872.y, x_1873.z, x_1873.w);
        let x_1876 : vec4<f32> = u_xlat7;
        let x_1878 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1876.x, x_1876.x, x_1876.x, x_1876.x) * x_1878);
        let x_1881 : vec4<f32> = u_xlat7;
        let x_1883 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1881.y, x_1881.y, x_1881.y, x_1881.y) * x_1883);
        let x_1886 : vec4<f32> = u_xlat7;
        let x_1888 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1886.z, x_1886.z, x_1886.z, x_1886.z) * x_1888);
        let x_1890 : vec4<f32> = u_xlat7;
        let x_1892 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1890.w, x_1890.w, x_1890.w, x_1890.w) * x_1892);
        let x_1895 : vec4<f32> = u_xlat12;
        let x_1896 : vec2<f32> = vec2<f32>(x_1895.x, x_1895.y);
        let x_1898 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec13;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1905.xy, x_1905.z);
        u_xlat64 = x_1907;
        let x_1909 : vec4<f32> = u_xlat12;
        let x_1910 : vec2<f32> = vec2<f32>(x_1909.z, x_1909.w);
        let x_1912 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
        let x_1919 : vec3<f32> = txVec14;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1919.xy, x_1919.z);
        u_xlat65 = x_1921;
        let x_1922 : f32 = u_xlat65;
        let x_1924 : f32 = u_xlat17.y;
        u_xlat65 = (x_1922 * x_1924);
        let x_1927 : f32 = u_xlat17.x;
        let x_1928 : f32 = u_xlat64;
        let x_1930 : f32 = u_xlat65;
        u_xlat64 = ((x_1927 * x_1928) + x_1930);
        let x_1933 : vec2<f32> = u_xlat46;
        let x_1935 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec15;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat65 = x_1944;
        let x_1946 : f32 = u_xlat17.z;
        let x_1947 : f32 = u_xlat65;
        let x_1949 : f32 = u_xlat64;
        u_xlat64 = ((x_1946 * x_1947) + x_1949);
        let x_1952 : vec4<f32> = u_xlat15;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec16;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1962.xy, x_1962.z);
        u_xlat65 = x_1964;
        let x_1966 : f32 = u_xlat17.w;
        let x_1967 : f32 = u_xlat65;
        let x_1969 : f32 = u_xlat64;
        u_xlat64 = ((x_1966 * x_1967) + x_1969);
        let x_1972 : vec4<f32> = u_xlat13;
        let x_1973 : vec2<f32> = vec2<f32>(x_1972.x, x_1972.y);
        let x_1975 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec17;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1982.xy, x_1982.z);
        u_xlat65 = x_1984;
        let x_1986 : f32 = u_xlat18.x;
        let x_1987 : f32 = u_xlat65;
        let x_1989 : f32 = u_xlat64;
        u_xlat64 = ((x_1986 * x_1987) + x_1989);
        let x_1992 : vec4<f32> = u_xlat13;
        let x_1993 : vec2<f32> = vec2<f32>(x_1992.z, x_1992.w);
        let x_1995 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec18;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2002.xy, x_2002.z);
        u_xlat65 = x_2004;
        let x_2006 : f32 = u_xlat18.y;
        let x_2007 : f32 = u_xlat65;
        let x_2009 : f32 = u_xlat64;
        u_xlat64 = ((x_2006 * x_2007) + x_2009);
        let x_2012 : vec4<f32> = u_xlat14;
        let x_2013 : vec2<f32> = vec2<f32>(x_2012.x, x_2012.y);
        let x_2015 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec19;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2022.xy, x_2022.z);
        u_xlat65 = x_2024;
        let x_2026 : f32 = u_xlat18.z;
        let x_2027 : f32 = u_xlat65;
        let x_2029 : f32 = u_xlat64;
        u_xlat64 = ((x_2026 * x_2027) + x_2029);
        let x_2032 : vec4<f32> = u_xlat15;
        let x_2033 : vec2<f32> = vec2<f32>(x_2032.z, x_2032.w);
        let x_2035 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec20;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2042.xy, x_2042.z);
        u_xlat65 = x_2044;
        let x_2046 : f32 = u_xlat18.w;
        let x_2047 : f32 = u_xlat65;
        let x_2049 : f32 = u_xlat64;
        u_xlat64 = ((x_2046 * x_2047) + x_2049);
        let x_2052 : vec4<f32> = u_xlat16;
        let x_2053 : vec2<f32> = vec2<f32>(x_2052.x, x_2052.y);
        let x_2055 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
        let x_2062 : vec3<f32> = txVec21;
        let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2062.xy, x_2062.z);
        u_xlat65 = x_2064;
        let x_2066 : f32 = u_xlat19.x;
        let x_2067 : f32 = u_xlat65;
        let x_2069 : f32 = u_xlat64;
        u_xlat64 = ((x_2066 * x_2067) + x_2069);
        let x_2072 : vec4<f32> = u_xlat16;
        let x_2073 : vec2<f32> = vec2<f32>(x_2072.z, x_2072.w);
        let x_2075 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2073.x, x_2073.y, x_2075);
        let x_2082 : vec3<f32> = txVec22;
        let x_2084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2082.xy, x_2082.z);
        u_xlat65 = x_2084;
        let x_2086 : f32 = u_xlat19.y;
        let x_2087 : f32 = u_xlat65;
        let x_2089 : f32 = u_xlat64;
        u_xlat64 = ((x_2086 * x_2087) + x_2089);
        let x_2092 : vec2<f32> = u_xlat28;
        let x_2094 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2101 : vec3<f32> = txVec23;
        let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2101.xy, x_2101.z);
        u_xlat65 = x_2103;
        let x_2105 : f32 = u_xlat19.z;
        let x_2106 : f32 = u_xlat65;
        let x_2108 : f32 = u_xlat64;
        u_xlat64 = ((x_2105 * x_2106) + x_2108);
        let x_2111 : vec2<f32> = u_xlat54;
        let x_2113 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec24;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2120.xy, x_2120.z);
        u_xlat65 = x_2122;
        let x_2124 : f32 = u_xlat19.w;
        let x_2125 : f32 = u_xlat65;
        let x_2127 : f32 = u_xlat64;
        u_xlat64 = ((x_2124 * x_2125) + x_2127);
        let x_2130 : vec4<f32> = u_xlat11;
        let x_2131 : vec2<f32> = vec2<f32>(x_2130.x, x_2130.y);
        let x_2133 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2131.x, x_2131.y, x_2133);
        let x_2140 : vec3<f32> = txVec25;
        let x_2142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2140.xy, x_2140.z);
        u_xlat65 = x_2142;
        let x_2144 : f32 = u_xlat7.x;
        let x_2145 : f32 = u_xlat65;
        let x_2147 : f32 = u_xlat64;
        u_xlat64 = ((x_2144 * x_2145) + x_2147);
        let x_2150 : vec4<f32> = u_xlat11;
        let x_2151 : vec2<f32> = vec2<f32>(x_2150.z, x_2150.w);
        let x_2153 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
        let x_2160 : vec3<f32> = txVec26;
        let x_2162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2160.xy, x_2160.z);
        u_xlat65 = x_2162;
        let x_2164 : f32 = u_xlat7.y;
        let x_2165 : f32 = u_xlat65;
        let x_2167 : f32 = u_xlat64;
        u_xlat64 = ((x_2164 * x_2165) + x_2167);
        let x_2170 : vec2<f32> = u_xlat49;
        let x_2172 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec27;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2179.xy, x_2179.z);
        u_xlat65 = x_2181;
        let x_2183 : f32 = u_xlat7.z;
        let x_2184 : f32 = u_xlat65;
        let x_2186 : f32 = u_xlat64;
        u_xlat64 = ((x_2183 * x_2184) + x_2186);
        let x_2189 : vec4<f32> = u_xlat6;
        let x_2190 : vec2<f32> = vec2<f32>(x_2189.x, x_2189.y);
        let x_2192 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2190.x, x_2190.y, x_2192);
        let x_2199 : vec3<f32> = txVec28;
        let x_2201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2199.xy, x_2199.z);
        u_xlat65 = x_2201;
        let x_2203 : f32 = u_xlat7.w;
        let x_2204 : f32 = u_xlat65;
        let x_2206 : f32 = u_xlat64;
        u_xlat3.x = ((x_2203 * x_2204) + x_2206);
      }
    }
  } else {
    let x_2211 : vec4<f32> = vs_TEXCOORD8;
    let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
    let x_2214 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
    let x_2221 : vec3<f32> = txVec29;
    let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2221.xy, x_2221.z);
    u_xlat3.x = x_2223;
  }
  let x_2226 : f32 = x_1001.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2226) + 1.0f);
  let x_2230 : f32 = u_xlat3.x;
  let x_2232 : f32 = x_1001.x_MainLightShadowParams.x;
  let x_2234 : f32 = u_xlat64;
  u_xlat3.x = ((x_2230 * x_2232) + x_2234);
  let x_2238 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2238);
  let x_2242 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2242 >= 1.0f);
  let x_2244 : bool = u_xlatb64;
  let x_2245 : bool = u_xlatb65;
  u_xlatb64 = (x_2244 | x_2245);
  let x_2247 : bool = u_xlatb64;
  if (x_2247) {
    x_2248 = 1.0f;
  } else {
    let x_2253 : f32 = u_xlat3.x;
    x_2248 = x_2253;
  }
  let x_2254 : f32 = x_2248;
  u_xlat3.x = x_2254;
  let x_2256 : vec3<f32> = vs_TEXCOORD7;
  let x_2259 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2261 : vec3<f32> = (x_2256 + -(x_2259));
  let x_2262 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
  let x_2264 : vec4<f32> = u_xlat6;
  let x_2266 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2264.x, x_2264.y, x_2264.z), vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
  let x_2269 : f32 = u_xlat64;
  let x_2271 : f32 = x_1001.x_MainLightShadowParams.z;
  let x_2274 : f32 = x_1001.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2269 * x_2271) + x_2274);
  let x_2276 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2276, 0.0f, 1.0f);
  let x_2279 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2279) + 1.0f);
  let x_2282 : f32 = u_xlat64;
  let x_2283 : f32 = u_xlat65;
  let x_2286 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2282 * x_2283) + x_2286);
  let x_2295 : f32 = x_2293.x_MainLightCookieTextureFormat;
  u_xlatb64 = !((x_2295 == -1.0f));
  let x_2297 : bool = u_xlatb64;
  if (x_2297) {
    let x_2300 : vec3<f32> = vs_TEXCOORD7;
    let x_2303 : vec4<f32> = x_2293.x_MainLightWorldToLight[1i];
    let x_2305 : vec2<f32> = (vec2<f32>(x_2300.y, x_2300.y) * vec2<f32>(x_2303.x, x_2303.y));
    let x_2306 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2305.x, x_2305.y, x_2306.z, x_2306.w);
    let x_2309 : vec4<f32> = x_2293.x_MainLightWorldToLight[0i];
    let x_2311 : vec3<f32> = vs_TEXCOORD7;
    let x_2314 : vec4<f32> = u_xlat6;
    let x_2316 : vec2<f32> = ((vec2<f32>(x_2309.x, x_2309.y) * vec2<f32>(x_2311.x, x_2311.x)) + vec2<f32>(x_2314.x, x_2314.y));
    let x_2317 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
    let x_2320 : vec4<f32> = x_2293.x_MainLightWorldToLight[2i];
    let x_2322 : vec3<f32> = vs_TEXCOORD7;
    let x_2325 : vec4<f32> = u_xlat6;
    let x_2327 : vec2<f32> = ((vec2<f32>(x_2320.x, x_2320.y) * vec2<f32>(x_2322.z, x_2322.z)) + vec2<f32>(x_2325.x, x_2325.y));
    let x_2328 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2327.x, x_2327.y, x_2328.z, x_2328.w);
    let x_2330 : vec4<f32> = u_xlat6;
    let x_2333 : vec4<f32> = x_2293.x_MainLightWorldToLight[3i];
    let x_2335 : vec2<f32> = (vec2<f32>(x_2330.x, x_2330.y) + vec2<f32>(x_2333.x, x_2333.y));
    let x_2336 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
    let x_2338 : vec4<f32> = u_xlat6;
    let x_2341 : vec2<f32> = ((vec2<f32>(x_2338.x, x_2338.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2342 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
    let x_2349 : vec4<f32> = u_xlat6;
    let x_2352 : f32 = x_126.x_GlobalMipBias.x;
    let x_2353 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2349.x, x_2349.y), x_2352);
    u_xlat6 = x_2353;
    let x_2356 : f32 = x_2293.x_MainLightCookieTextureFormat;
    let x_2358 : f32 = x_2293.x_MainLightCookieTextureFormat;
    let x_2360 : f32 = x_2293.x_MainLightCookieTextureFormat;
    let x_2362 : f32 = x_2293.x_MainLightCookieTextureFormat;
    let x_2363 : vec4<f32> = vec4<f32>(x_2356, x_2358, x_2360, x_2362);
    let x_2370 : vec4<bool> = (vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2363.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2370.x, x_2370.y);
    let x_2373 : bool = u_xlatb7.y;
    if (x_2373) {
      let x_2378 : f32 = u_xlat6.w;
      x_2374 = x_2378;
    } else {
      let x_2381 : f32 = u_xlat6.x;
      x_2374 = x_2381;
    }
    let x_2382 : f32 = x_2374;
    u_xlat64 = x_2382;
    let x_2384 : bool = u_xlatb7.x;
    if (x_2384) {
      let x_2388 : vec4<f32> = u_xlat6;
      x_2385 = vec3<f32>(x_2388.x, x_2388.y, x_2388.z);
    } else {
      let x_2391 : f32 = u_xlat64;
      x_2385 = vec3<f32>(x_2391, x_2391, x_2391);
    }
    let x_2393 : vec3<f32> = x_2385;
    let x_2394 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2400 : vec4<f32> = u_xlat6;
  let x_2403 : vec4<f32> = x_126.x_MainLightColor;
  let x_2405 : vec3<f32> = (vec3<f32>(x_2400.x, x_2400.y, x_2400.z) * vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
  let x_2406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2408 : f32 = u_xlat43;
  let x_2410 : vec4<f32> = u_xlat6;
  let x_2412 : vec3<f32> = (vec3<f32>(x_2408, x_2408, x_2408) * vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
  let x_2416 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2416;
  let x_2419 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2419;
  let x_2422 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2422;
  let x_2424 : vec4<f32> = u_xlat7;
  let x_2427 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2424.x, x_2424.y, x_2424.z)), vec3<f32>(x_2427.x, x_2427.y, x_2427.z));
  let x_2430 : f32 = u_xlat64;
  let x_2431 : f32 = u_xlat64;
  u_xlat64 = (x_2430 + x_2431);
  let x_2433 : vec4<f32> = u_xlat1;
  let x_2435 : f32 = u_xlat64;
  let x_2439 : vec4<f32> = u_xlat7;
  let x_2442 : vec3<f32> = ((vec3<f32>(x_2433.x, x_2433.y, x_2433.z) * -(vec3<f32>(x_2435, x_2435, x_2435))) + -(vec3<f32>(x_2439.x, x_2439.y, x_2439.z)));
  let x_2443 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
  let x_2445 : vec4<f32> = u_xlat1;
  let x_2447 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2445.x, x_2445.y, x_2445.z), vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
  let x_2450 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2450, 0.0f, 1.0f);
  let x_2452 : f32 = u_xlat64;
  u_xlat64 = (-(x_2452) + 1.0f);
  let x_2455 : f32 = u_xlat64;
  let x_2456 : f32 = u_xlat64;
  u_xlat64 = (x_2455 * x_2456);
  let x_2458 : f32 = u_xlat64;
  let x_2459 : f32 = u_xlat64;
  u_xlat64 = (x_2458 * x_2459);
  let x_2462 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2462) * 0.699999988f) + 1.700000048f);
  let x_2469 : f32 = u_xlat0.x;
  let x_2470 : f32 = u_xlat65;
  u_xlat0.x = (x_2469 * x_2470);
  let x_2474 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2474 * 6.0f);
  let x_2486 : vec4<f32> = u_xlat8;
  let x_2489 : f32 = u_xlat0.x;
  let x_2490 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2486.x, x_2486.y, x_2486.z), x_2489);
  u_xlat8 = x_2490;
  let x_2492 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2492 + -1.0f);
  let x_2500 : f32 = x_2498.unity_SpecCube0_HDR.w;
  let x_2502 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2500 * x_2502) + 1.0f);
  let x_2507 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2507, 0.0f);
  let x_2511 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2511);
  let x_2515 : f32 = u_xlat0.x;
  let x_2517 : f32 = x_2498.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2515 * x_2517);
  let x_2521 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2521);
  let x_2525 : f32 = u_xlat0.x;
  let x_2527 : f32 = x_2498.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2525 * x_2527);
  let x_2530 : vec4<f32> = u_xlat8;
  let x_2532 : vec3<f32> = u_xlat0;
  let x_2534 : vec3<f32> = (vec3<f32>(x_2530.x, x_2530.y, x_2530.z) * vec3<f32>(x_2532.x, x_2532.x, x_2532.x));
  let x_2535 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
  let x_2537 : f32 = u_xlat40;
  let x_2539 : f32 = u_xlat40;
  let x_2543 : vec2<f32> = ((vec2<f32>(x_2537, x_2537) * vec2<f32>(x_2539, x_2539)) + vec2<f32>(-1.0f, 1.0f));
  let x_2544 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2543.x, x_2544.y, x_2543.y);
  let x_2547 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2547);
  let x_2549 : vec4<f32> = u_xlat5;
  let x_2552 : f32 = u_xlat23;
  let x_2554 : vec3<f32> = (-(vec3<f32>(x_2549.x, x_2549.y, x_2549.z)) + vec3<f32>(x_2552, x_2552, x_2552));
  let x_2555 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
  let x_2557 : f32 = u_xlat64;
  let x_2559 : vec4<f32> = u_xlat9;
  let x_2562 : vec4<f32> = u_xlat5;
  let x_2564 : vec3<f32> = ((vec3<f32>(x_2557, x_2557, x_2557) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z)) + vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
  let x_2565 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
  let x_2567 : f32 = u_xlat40;
  let x_2569 : vec4<f32> = u_xlat9;
  let x_2571 : vec3<f32> = (vec3<f32>(x_2567, x_2567, x_2567) * vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2572 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
  let x_2574 : vec4<f32> = u_xlat8;
  let x_2576 : vec4<f32> = u_xlat9;
  let x_2578 : vec3<f32> = (vec3<f32>(x_2574.x, x_2574.y, x_2574.z) * vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
  let x_2579 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
  let x_2581 : vec3<f32> = u_xlat2;
  let x_2582 : vec4<f32> = u_xlat4;
  let x_2585 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2581 * vec3<f32>(x_2582.x, x_2582.y, x_2582.z)) + vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
  let x_2589 : f32 = u_xlat3.x;
  let x_2591 : f32 = x_2498.unity_LightData.z;
  u_xlat40 = (x_2589 * x_2591);
  let x_2593 : vec4<f32> = u_xlat1;
  let x_2596 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2593.x, x_2593.y, x_2593.z), vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
  let x_2601 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2601, 0.0f, 1.0f);
  let x_2604 : f32 = u_xlat40;
  let x_2606 : f32 = u_xlat3.x;
  u_xlat40 = (x_2604 * x_2606);
  let x_2608 : f32 = u_xlat40;
  let x_2610 : vec4<f32> = u_xlat6;
  let x_2612 : vec3<f32> = (vec3<f32>(x_2608, x_2608, x_2608) * vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
  let x_2615 : vec4<f32> = u_xlat7;
  let x_2618 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2620 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.y, x_2615.z) + vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
  let x_2621 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
  let x_2623 : vec4<f32> = u_xlat8;
  let x_2625 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2623.x, x_2623.y, x_2623.z), vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
  let x_2628 : f32 = u_xlat40;
  u_xlat40 = max(x_2628, 1.17549435e-37f);
  let x_2631 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2631);
  let x_2633 : f32 = u_xlat40;
  let x_2635 : vec4<f32> = u_xlat8;
  let x_2637 : vec3<f32> = (vec3<f32>(x_2633, x_2633, x_2633) * vec3<f32>(x_2635.x, x_2635.y, x_2635.z));
  let x_2638 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2637.x, x_2637.y, x_2637.z, x_2638.w);
  let x_2640 : vec4<f32> = u_xlat1;
  let x_2642 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2640.x, x_2640.y, x_2640.z), vec3<f32>(x_2642.x, x_2642.y, x_2642.z));
  let x_2645 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2645, 0.0f, 1.0f);
  let x_2648 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2650 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2648.x, x_2648.y, x_2648.z), vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
  let x_2655 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2655, 0.0f, 1.0f);
  let x_2658 : f32 = u_xlat40;
  let x_2659 : f32 = u_xlat40;
  u_xlat40 = (x_2658 * x_2659);
  let x_2661 : f32 = u_xlat40;
  let x_2663 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2661 * x_2663) + 1.000010014f);
  let x_2668 : f32 = u_xlat3.x;
  let x_2670 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2668 * x_2670);
  let x_2673 : f32 = u_xlat40;
  let x_2674 : f32 = u_xlat40;
  u_xlat40 = (x_2673 * x_2674);
  let x_2677 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2677, 0.100000001f);
  let x_2681 : f32 = u_xlat40;
  let x_2683 : f32 = u_xlat3.x;
  u_xlat40 = (x_2681 * x_2683);
  let x_2685 : f32 = u_xlat63;
  let x_2686 : f32 = u_xlat40;
  u_xlat40 = (x_2685 * x_2686);
  let x_2688 : f32 = u_xlat62;
  let x_2689 : f32 = u_xlat40;
  u_xlat40 = (x_2688 / x_2689);
  let x_2691 : vec4<f32> = u_xlat5;
  let x_2693 : f32 = u_xlat40;
  let x_2696 : vec4<f32> = u_xlat4;
  let x_2698 : vec3<f32> = ((vec3<f32>(x_2691.x, x_2691.y, x_2691.z) * vec3<f32>(x_2693, x_2693, x_2693)) + vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
  let x_2699 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
  let x_2701 : vec4<f32> = u_xlat6;
  let x_2703 : vec4<f32> = u_xlat8;
  let x_2705 : vec3<f32> = (vec3<f32>(x_2701.x, x_2701.y, x_2701.z) * vec3<f32>(x_2703.x, x_2703.y, x_2703.z));
  let x_2706 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2706.w);
  let x_2709 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2711 : f32 = x_2498.unity_LightData.y;
  u_xlat40 = min(x_2709, x_2711);
  let x_2715 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2715));
  let x_2719 : f32 = x_2293.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2721 : f32 = x_2293.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2723 : f32 = x_2293.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2725 : f32 = x_2293.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2726 : vec4<f32> = vec4<f32>(x_2719, x_2721, x_2723, x_2725);
  let x_2732 : vec4<bool> = (vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2726.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_2732.x, x_2732.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2743 : u32 = u_xlatu_loop_1;
    let x_2744 : u32 = u_xlatu40;
    if ((x_2743 < x_2744)) {
    } else {
      break;
    }
    let x_2747 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2747 >> 2u);
    let x_2751 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2751 & 3u));
    let x_2754 : u32 = u_xlatu65;
    let x_2757 : vec4<f32> = x_2498.unity_LightIndices[bitcast<i32>(x_2754)];
    let x_2767 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2772 : vec4<u32> = indexable[x_2767];
    u_xlat65 = dot(x_2757, bitcast<vec4<f32>>(x_2772));
    let x_2775 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2775));
    let x_2778 : vec3<f32> = vs_TEXCOORD7;
    let x_2790 : u32 = u_xlatu65;
    let x_2793 : vec4<f32> = x_2789.x_AdditionalLightsPosition[bitcast<i32>(x_2790)];
    let x_2796 : u32 = u_xlatu65;
    let x_2799 : vec4<f32> = x_2789.x_AdditionalLightsPosition[bitcast<i32>(x_2796)];
    let x_2801 : vec3<f32> = ((-(x_2778) * vec3<f32>(x_2793.w, x_2793.w, x_2793.w)) + vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
    let x_2802 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
    let x_2805 : vec4<f32> = u_xlat9;
    let x_2807 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2805.x, x_2805.y, x_2805.z), vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
    let x_2810 : f32 = u_xlat66;
    u_xlat66 = max(x_2810, 6.10351562e-05f);
    let x_2813 : f32 = u_xlat66;
    u_xlat67 = inverseSqrt(x_2813);
    let x_2815 : f32 = u_xlat67;
    let x_2817 : vec4<f32> = u_xlat9;
    let x_2819 : vec3<f32> = (vec3<f32>(x_2815, x_2815, x_2815) * vec3<f32>(x_2817.x, x_2817.y, x_2817.z));
    let x_2820 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2819.x, x_2819.y, x_2819.z, x_2820.w);
    let x_2823 : f32 = u_xlat66;
    u_xlat68 = (1.0f / x_2823);
    let x_2825 : f32 = u_xlat66;
    let x_2826 : u32 = u_xlatu65;
    let x_2829 : f32 = x_2789.x_AdditionalLightsAttenuation[bitcast<i32>(x_2826)].x;
    u_xlat66 = (x_2825 * x_2829);
    let x_2831 : f32 = u_xlat66;
    let x_2833 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2831) * x_2833) + 1.0f);
    let x_2836 : f32 = u_xlat66;
    u_xlat66 = max(x_2836, 0.0f);
    let x_2838 : f32 = u_xlat66;
    let x_2839 : f32 = u_xlat66;
    u_xlat66 = (x_2838 * x_2839);
    let x_2841 : f32 = u_xlat66;
    let x_2842 : f32 = u_xlat68;
    u_xlat66 = (x_2841 * x_2842);
    let x_2844 : u32 = u_xlatu65;
    let x_2847 : vec4<f32> = x_2789.x_AdditionalLightsSpotDir[bitcast<i32>(x_2844)];
    let x_2849 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_2847.x, x_2847.y, x_2847.z), vec3<f32>(x_2849.x, x_2849.y, x_2849.z));
    let x_2852 : f32 = u_xlat68;
    let x_2853 : u32 = u_xlatu65;
    let x_2856 : f32 = x_2789.x_AdditionalLightsAttenuation[bitcast<i32>(x_2853)].z;
    let x_2858 : u32 = u_xlatu65;
    let x_2861 : f32 = x_2789.x_AdditionalLightsAttenuation[bitcast<i32>(x_2858)].w;
    u_xlat68 = ((x_2852 * x_2856) + x_2861);
    let x_2863 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2863, 0.0f, 1.0f);
    let x_2865 : f32 = u_xlat68;
    let x_2866 : f32 = u_xlat68;
    u_xlat68 = (x_2865 * x_2866);
    let x_2868 : f32 = u_xlat66;
    let x_2869 : f32 = u_xlat68;
    u_xlat66 = (x_2868 * x_2869);
    let x_2872 : u32 = u_xlatu65;
    u_xlatu68 = (x_2872 >> 5u);
    let x_2875 : u32 = u_xlatu65;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2875) & 31i)));
    let x_2880 : i32 = u_xlati69;
    let x_2882 : u32 = u_xlatu68;
    let x_2885 : f32 = x_2293.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2882)].el;
    u_xlati68 = bitcast<i32>((bitcast<u32>(x_2880) & bitcast<u32>(x_2885)));
    let x_2889 : i32 = u_xlati68;
    if ((x_2889 != 0i)) {
      let x_2899 : u32 = u_xlatu65;
      let x_2902 : f32 = x_2898.x_AdditionalLightsLightTypes[bitcast<i32>(x_2899)].el;
      u_xlati68 = i32(x_2902);
      let x_2904 : i32 = u_xlati68;
      u_xlati69 = select(1i, 0i, (x_2904 != 0i));
      let x_2908 : u32 = u_xlatu65;
      u_xlati70 = (bitcast<i32>(x_2908) << bitcast<u32>(2i));
      let x_2911 : i32 = u_xlati69;
      if ((x_2911 != 0i)) {
        let x_2915 : vec3<f32> = vs_TEXCOORD7;
        let x_2917 : i32 = u_xlati70;
        let x_2920 : i32 = u_xlati70;
        let x_2924 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_2917 + 1i) / 4i)][((x_2920 + 1i) % 4i)];
        let x_2926 : vec3<f32> = (vec3<f32>(x_2915.y, x_2915.y, x_2915.y) * vec3<f32>(x_2924.x, x_2924.y, x_2924.w));
        let x_2927 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2927.w);
        let x_2929 : i32 = u_xlati70;
        let x_2931 : i32 = u_xlati70;
        let x_2934 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[(x_2929 / 4i)][(x_2931 % 4i)];
        let x_2936 : vec3<f32> = vs_TEXCOORD7;
        let x_2939 : vec4<f32> = u_xlat11;
        let x_2941 : vec3<f32> = ((vec3<f32>(x_2934.x, x_2934.y, x_2934.w) * vec3<f32>(x_2936.x, x_2936.x, x_2936.x)) + vec3<f32>(x_2939.x, x_2939.y, x_2939.z));
        let x_2942 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2941.x, x_2941.y, x_2941.z, x_2942.w);
        let x_2944 : i32 = u_xlati70;
        let x_2947 : i32 = u_xlati70;
        let x_2951 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_2944 + 2i) / 4i)][((x_2947 + 2i) % 4i)];
        let x_2953 : vec3<f32> = vs_TEXCOORD7;
        let x_2956 : vec4<f32> = u_xlat11;
        let x_2958 : vec3<f32> = ((vec3<f32>(x_2951.x, x_2951.y, x_2951.w) * vec3<f32>(x_2953.z, x_2953.z, x_2953.z)) + vec3<f32>(x_2956.x, x_2956.y, x_2956.z));
        let x_2959 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2958.x, x_2958.y, x_2958.z, x_2959.w);
        let x_2961 : vec4<f32> = u_xlat11;
        let x_2963 : i32 = u_xlati70;
        let x_2966 : i32 = u_xlati70;
        let x_2970 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_2963 + 3i) / 4i)][((x_2966 + 3i) % 4i)];
        let x_2972 : vec3<f32> = (vec3<f32>(x_2961.x, x_2961.y, x_2961.z) + vec3<f32>(x_2970.x, x_2970.y, x_2970.w));
        let x_2973 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2972.x, x_2972.y, x_2972.z, x_2973.w);
        let x_2975 : vec4<f32> = u_xlat11;
        let x_2977 : vec4<f32> = u_xlat11;
        let x_2979 : vec2<f32> = (vec2<f32>(x_2975.x, x_2975.y) / vec2<f32>(x_2977.z, x_2977.z));
        let x_2980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
        let x_2982 : vec4<f32> = u_xlat11;
        let x_2985 : vec2<f32> = ((vec2<f32>(x_2982.x, x_2982.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
        let x_2988 : vec4<f32> = u_xlat11;
        let x_2992 : vec2<f32> = clamp(vec2<f32>(x_2988.x, x_2988.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2993 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2992.x, x_2992.y, x_2993.z, x_2993.w);
        let x_2995 : u32 = u_xlatu65;
        let x_2998 : vec4<f32> = x_2898.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2995)];
        let x_3000 : vec4<f32> = u_xlat11;
        let x_3003 : u32 = u_xlatu65;
        let x_3006 : vec4<f32> = x_2898.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3003)];
        let x_3008 : vec2<f32> = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3000.x, x_3000.y)) + vec2<f32>(x_3006.z, x_3006.w));
        let x_3009 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3008.x, x_3008.y, x_3009.z, x_3009.w);
      } else {
        let x_3013 : i32 = u_xlati68;
        u_xlatb68 = (x_3013 == 1i);
        let x_3015 : bool = u_xlatb68;
        u_xlati68 = select(0i, 1i, x_3015);
        let x_3017 : i32 = u_xlati68;
        if ((x_3017 != 0i)) {
          let x_3022 : vec3<f32> = vs_TEXCOORD7;
          let x_3024 : i32 = u_xlati70;
          let x_3027 : i32 = u_xlati70;
          let x_3031 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_3024 + 1i) / 4i)][((x_3027 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3022.y, x_3022.y) * vec2<f32>(x_3031.x, x_3031.y));
          let x_3034 : i32 = u_xlati70;
          let x_3036 : i32 = u_xlati70;
          let x_3039 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[(x_3034 / 4i)][(x_3036 % 4i)];
          let x_3041 : vec3<f32> = vs_TEXCOORD7;
          let x_3044 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(x_3041.x, x_3041.x)) + x_3044);
          let x_3046 : i32 = u_xlati70;
          let x_3049 : i32 = u_xlati70;
          let x_3053 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_3046 + 2i) / 4i)][((x_3049 + 2i) % 4i)];
          let x_3055 : vec3<f32> = vs_TEXCOORD7;
          let x_3058 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3053.x, x_3053.y) * vec2<f32>(x_3055.z, x_3055.z)) + x_3058);
          let x_3060 : vec2<f32> = u_xlat51;
          let x_3061 : i32 = u_xlati70;
          let x_3064 : i32 = u_xlati70;
          let x_3068 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_3061 + 3i) / 4i)][((x_3064 + 3i) % 4i)];
          u_xlat51 = (x_3060 + vec2<f32>(x_3068.x, x_3068.y));
          let x_3071 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3071 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3074 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3074);
          let x_3076 : u32 = u_xlatu65;
          let x_3079 : vec4<f32> = x_2898.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3076)];
          let x_3081 : vec2<f32> = u_xlat51;
          let x_3083 : u32 = u_xlatu65;
          let x_3086 : vec4<f32> = x_2898.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3083)];
          let x_3088 : vec2<f32> = ((vec2<f32>(x_3079.x, x_3079.y) * x_3081) + vec2<f32>(x_3086.z, x_3086.w));
          let x_3089 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3088.x, x_3088.y, x_3089.z, x_3089.w);
        } else {
          let x_3092 : vec3<f32> = vs_TEXCOORD7;
          let x_3094 : i32 = u_xlati70;
          let x_3097 : i32 = u_xlati70;
          let x_3101 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_3094 + 1i) / 4i)][((x_3097 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3092.y, x_3092.y, x_3092.y, x_3092.y) * x_3101);
          let x_3103 : i32 = u_xlati70;
          let x_3105 : i32 = u_xlati70;
          let x_3108 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[(x_3103 / 4i)][(x_3105 % 4i)];
          let x_3109 : vec3<f32> = vs_TEXCOORD7;
          let x_3112 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3108 * vec4<f32>(x_3109.x, x_3109.x, x_3109.x, x_3109.x)) + x_3112);
          let x_3114 : i32 = u_xlati70;
          let x_3117 : i32 = u_xlati70;
          let x_3121 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_3114 + 2i) / 4i)][((x_3117 + 2i) % 4i)];
          let x_3122 : vec3<f32> = vs_TEXCOORD7;
          let x_3125 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3121 * vec4<f32>(x_3122.z, x_3122.z, x_3122.z, x_3122.z)) + x_3125);
          let x_3127 : vec4<f32> = u_xlat12;
          let x_3128 : i32 = u_xlati70;
          let x_3131 : i32 = u_xlati70;
          let x_3135 : vec4<f32> = x_2898.x_AdditionalLightsWorldToLights[((x_3128 + 3i) / 4i)][((x_3131 + 3i) % 4i)];
          u_xlat12 = (x_3127 + x_3135);
          let x_3137 : vec4<f32> = u_xlat12;
          let x_3139 : vec4<f32> = u_xlat12;
          let x_3141 : vec3<f32> = (vec3<f32>(x_3137.x, x_3137.y, x_3137.z) / vec3<f32>(x_3139.w, x_3139.w, x_3139.w));
          let x_3142 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3142.w);
          let x_3144 : vec4<f32> = u_xlat12;
          let x_3146 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(vec3<f32>(x_3144.x, x_3144.y, x_3144.z), vec3<f32>(x_3146.x, x_3146.y, x_3146.z));
          let x_3149 : f32 = u_xlat68;
          u_xlat68 = inverseSqrt(x_3149);
          let x_3151 : f32 = u_xlat68;
          let x_3153 : vec4<f32> = u_xlat12;
          let x_3155 : vec3<f32> = (vec3<f32>(x_3151, x_3151, x_3151) * vec3<f32>(x_3153.x, x_3153.y, x_3153.z));
          let x_3156 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3156.w);
          let x_3158 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(abs(vec3<f32>(x_3158.x, x_3158.y, x_3158.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3163 : f32 = u_xlat68;
          u_xlat68 = max(x_3163, 0.000001f);
          let x_3166 : f32 = u_xlat68;
          u_xlat68 = (1.0f / x_3166);
          let x_3168 : f32 = u_xlat68;
          let x_3170 : vec4<f32> = u_xlat12;
          let x_3172 : vec3<f32> = (vec3<f32>(x_3168, x_3168, x_3168) * vec3<f32>(x_3170.z, x_3170.x, x_3170.y));
          let x_3173 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
          let x_3176 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3176);
          let x_3180 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3180, 0.0f, 1.0f);
          let x_3184 : vec4<f32> = u_xlat13;
          let x_3187 : vec4<bool> = (vec4<f32>(x_3184.y, x_3184.z, x_3184.y, x_3184.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3187.x, x_3187.y);
          let x_3190 : bool = u_xlatb51.x;
          if (x_3190) {
            let x_3195 : f32 = u_xlat13.x;
            x_3191 = x_3195;
          } else {
            let x_3198 : f32 = u_xlat13.x;
            x_3191 = -(x_3198);
          }
          let x_3200 : f32 = x_3191;
          u_xlat51.x = x_3200;
          let x_3203 : bool = u_xlatb51.y;
          if (x_3203) {
            let x_3208 : f32 = u_xlat13.x;
            x_3204 = x_3208;
          } else {
            let x_3211 : f32 = u_xlat13.x;
            x_3204 = -(x_3211);
          }
          let x_3213 : f32 = x_3204;
          u_xlat51.y = x_3213;
          let x_3215 : vec4<f32> = u_xlat12;
          let x_3217 : f32 = u_xlat68;
          let x_3220 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3215.x, x_3215.y) * vec2<f32>(x_3217, x_3217)) + x_3220);
          let x_3222 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3222 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3225 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3225, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3229 : u32 = u_xlatu65;
          let x_3232 : vec4<f32> = x_2898.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3229)];
          let x_3234 : vec2<f32> = u_xlat51;
          let x_3236 : u32 = u_xlatu65;
          let x_3239 : vec4<f32> = x_2898.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3236)];
          let x_3241 : vec2<f32> = ((vec2<f32>(x_3232.x, x_3232.y) * x_3234) + vec2<f32>(x_3239.z, x_3239.w));
          let x_3242 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3241.x, x_3241.y, x_3242.z, x_3242.w);
        }
      }
      let x_3249 : vec4<f32> = u_xlat11;
      let x_3252 : f32 = x_126.x_GlobalMipBias.x;
      let x_3253 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3249.x, x_3249.y), x_3252);
      u_xlat11 = x_3253;
      let x_3255 : bool = u_xlatb3.y;
      if (x_3255) {
        let x_3260 : f32 = u_xlat11.w;
        x_3256 = x_3260;
      } else {
        let x_3263 : f32 = u_xlat11.x;
        x_3256 = x_3263;
      }
      let x_3264 : f32 = x_3256;
      u_xlat68 = x_3264;
      let x_3266 : bool = u_xlatb3.x;
      if (x_3266) {
        let x_3270 : vec4<f32> = u_xlat11;
        x_3267 = vec3<f32>(x_3270.x, x_3270.y, x_3270.z);
      } else {
        let x_3273 : f32 = u_xlat68;
        x_3267 = vec3<f32>(x_3273, x_3273, x_3273);
      }
      let x_3275 : vec3<f32> = x_3267;
      let x_3276 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3275.x, x_3275.y, x_3275.z, x_3276.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3282 : vec4<f32> = u_xlat11;
    let x_3284 : u32 = u_xlatu65;
    let x_3287 : vec4<f32> = x_2789.x_AdditionalLightsColor[bitcast<i32>(x_3284)];
    let x_3289 : vec3<f32> = (vec3<f32>(x_3282.x, x_3282.y, x_3282.z) * vec3<f32>(x_3287.x, x_3287.y, x_3287.z));
    let x_3290 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);
    let x_3292 : f32 = u_xlat43;
    let x_3294 : vec4<f32> = u_xlat11;
    let x_3296 : vec3<f32> = (vec3<f32>(x_3292, x_3292, x_3292) * vec3<f32>(x_3294.x, x_3294.y, x_3294.z));
    let x_3297 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3297.w);
    let x_3299 : vec4<f32> = u_xlat1;
    let x_3301 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_3299.x, x_3299.y, x_3299.z), vec3<f32>(x_3301.x, x_3301.y, x_3301.z));
    let x_3304 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3304, 0.0f, 1.0f);
    let x_3306 : f32 = u_xlat65;
    let x_3307 : f32 = u_xlat66;
    u_xlat65 = (x_3306 * x_3307);
    let x_3309 : f32 = u_xlat65;
    let x_3311 : vec4<f32> = u_xlat11;
    let x_3313 : vec3<f32> = (vec3<f32>(x_3309, x_3309, x_3309) * vec3<f32>(x_3311.x, x_3311.y, x_3311.z));
    let x_3314 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3314.w);
    let x_3316 : vec4<f32> = u_xlat9;
    let x_3318 : f32 = u_xlat67;
    let x_3321 : vec4<f32> = u_xlat7;
    let x_3323 : vec3<f32> = ((vec3<f32>(x_3316.x, x_3316.y, x_3316.z) * vec3<f32>(x_3318, x_3318, x_3318)) + vec3<f32>(x_3321.x, x_3321.y, x_3321.z));
    let x_3324 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
    let x_3326 : vec4<f32> = u_xlat9;
    let x_3328 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3326.x, x_3326.y, x_3326.z), vec3<f32>(x_3328.x, x_3328.y, x_3328.z));
    let x_3331 : f32 = u_xlat65;
    u_xlat65 = max(x_3331, 1.17549435e-37f);
    let x_3333 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_3333);
    let x_3335 : f32 = u_xlat65;
    let x_3337 : vec4<f32> = u_xlat9;
    let x_3339 : vec3<f32> = (vec3<f32>(x_3335, x_3335, x_3335) * vec3<f32>(x_3337.x, x_3337.y, x_3337.z));
    let x_3340 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3339.x, x_3339.y, x_3339.z, x_3340.w);
    let x_3342 : vec4<f32> = u_xlat1;
    let x_3344 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3342.x, x_3342.y, x_3342.z), vec3<f32>(x_3344.x, x_3344.y, x_3344.z));
    let x_3347 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3347, 0.0f, 1.0f);
    let x_3349 : vec4<f32> = u_xlat10;
    let x_3351 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3349.x, x_3349.y, x_3349.z), vec3<f32>(x_3351.x, x_3351.y, x_3351.z));
    let x_3354 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3354, 0.0f, 1.0f);
    let x_3356 : f32 = u_xlat65;
    let x_3357 : f32 = u_xlat65;
    u_xlat65 = (x_3356 * x_3357);
    let x_3359 : f32 = u_xlat65;
    let x_3361 : f32 = u_xlat0.x;
    u_xlat65 = ((x_3359 * x_3361) + 1.000010014f);
    let x_3364 : f32 = u_xlat66;
    let x_3365 : f32 = u_xlat66;
    u_xlat66 = (x_3364 * x_3365);
    let x_3367 : f32 = u_xlat65;
    let x_3368 : f32 = u_xlat65;
    u_xlat65 = (x_3367 * x_3368);
    let x_3370 : f32 = u_xlat66;
    u_xlat66 = max(x_3370, 0.100000001f);
    let x_3372 : f32 = u_xlat65;
    let x_3373 : f32 = u_xlat66;
    u_xlat65 = (x_3372 * x_3373);
    let x_3375 : f32 = u_xlat63;
    let x_3376 : f32 = u_xlat65;
    u_xlat65 = (x_3375 * x_3376);
    let x_3378 : f32 = u_xlat62;
    let x_3379 : f32 = u_xlat65;
    u_xlat65 = (x_3378 / x_3379);
    let x_3381 : vec4<f32> = u_xlat5;
    let x_3383 : f32 = u_xlat65;
    let x_3386 : vec4<f32> = u_xlat4;
    let x_3388 : vec3<f32> = ((vec3<f32>(x_3381.x, x_3381.y, x_3381.z) * vec3<f32>(x_3383, x_3383, x_3383)) + vec3<f32>(x_3386.x, x_3386.y, x_3386.z));
    let x_3389 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3388.x, x_3388.y, x_3388.z, x_3389.w);
    let x_3391 : vec4<f32> = u_xlat9;
    let x_3393 : vec4<f32> = u_xlat11;
    let x_3396 : vec4<f32> = u_xlat8;
    let x_3398 : vec3<f32> = ((vec3<f32>(x_3391.x, x_3391.y, x_3391.z) * vec3<f32>(x_3393.x, x_3393.y, x_3393.z)) + vec3<f32>(x_3396.x, x_3396.y, x_3396.z));
    let x_3399 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3398.x, x_3398.y, x_3398.z, x_3399.w);

    continuing {
      let x_3401 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3401 + bitcast<u32>(1i));
    }
  }
  let x_3403 : vec3<f32> = u_xlat2;
  let x_3404 : f32 = u_xlat20;
  let x_3407 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_3403 * vec3<f32>(x_3404, x_3404, x_3404)) + vec3<f32>(x_3407.x, x_3407.y, x_3407.z));
  let x_3410 : vec4<f32> = u_xlat8;
  let x_3412 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3410.x, x_3410.y, x_3410.z) + x_3412);
  let x_3414 : f32 = u_xlat61;
  let x_3415 : f32 = u_xlat61;
  u_xlat1.x = (x_3414 * -(x_3415));
  let x_3420 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3420);
  let x_3423 : vec3<f32> = u_xlat0;
  let x_3424 : f32 = u_xlat60;
  let x_3428 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_3423 * vec3<f32>(x_3424, x_3424, x_3424)) + -(vec3<f32>(x_3428.x, x_3428.y, x_3428.z)));
  let x_3434 : vec4<f32> = u_xlat1;
  let x_3436 : vec3<f32> = u_xlat0;
  let x_3439 : vec4<f32> = x_126.unity_FogColor;
  let x_3441 : vec3<f32> = ((vec3<f32>(x_3434.x, x_3434.x, x_3434.x) * x_3436) + vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
  let x_3442 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
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

