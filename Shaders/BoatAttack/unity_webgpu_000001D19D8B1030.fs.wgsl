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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_769 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2056 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2251 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2533 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2641 : AdditionalLightsCookies;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
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
  var x_548 : f32;
  var x_560 : f32;
  var x_571 : f32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb46 : vec2<bool>;
  var u_xlat46 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat67 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb67 : bool;
  var x_2006 : f32;
  var x_2124 : f32;
  var x_2135 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2934 : f32;
  var x_2947 : f32;
  var x_2999 : f32;
  var x_3010 : vec3<f32>;
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
  u_xlat63 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb64;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat64;
  u_xlat64 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat64;
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
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat22;
  let x_536 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat22;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat22.x;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_126.unity_MatrixV[0i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.x = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat22.y;
    x_560 = x_564;
  } else {
    let x_567 : f32 = x_126.unity_MatrixV[1i].z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat2.y = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_575 : f32 = u_xlat22.z;
    x_571 = x_575;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[2i].z;
    x_571 = x_579;
  }
  let x_580 : f32 = x_571;
  u_xlat2.z = x_580;
  let x_583 : vec3<f32> = vs_TEXCOORD3;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_583, x_584);
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_588);
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = (vec3<f32>(x_591.x, x_591.x, x_591.x) * x_593);
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_602 : vec4<f32> = vs_TEXCOORD0;
  let x_605 : f32 = x_126.x_GlobalMipBias.x;
  let x_606 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_602.z, x_602.w), x_605);
  u_xlat3 = x_606;
  let x_611 : vec4<f32> = vs_TEXCOORD0;
  let x_614 : f32 = x_126.x_GlobalMipBias.x;
  let x_615 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_611.z, x_611.w), x_614);
  let x_616 : vec3<f32> = vec3<f32>(x_615.x, x_615.y, x_615.z);
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat3;
  let x_623 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat1;
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat64;
  u_xlat64 = (x_631 + 0.5f);
  let x_633 : f32 = u_xlat64;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : f32 = u_xlat3.w;
  u_xlat64 = max(x_641, 0.0001f);
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : f32 = u_xlat64;
  let x_648 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) / vec3<f32>(x_646, x_646, x_646));
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_653 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_654 : vec2<f32> = vec2<f32>(x_653.x, x_653.y);
  let x_658 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_654.x, x_654.y));
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec4<f32> = hlslcc_FragCoord;
  let x_665 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_663.x, x_663.y));
  let x_666 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
  let x_669 : f32 = u_xlat4.y;
  let x_671 : f32 = x_126.x_ScaleBiasRt.x;
  let x_674 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_669 * x_671) + x_674);
  let x_676 : f32 = u_xlat64;
  u_xlat4.z = (-(x_676) + 1.0f);
  let x_681 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_681) * 0.959999979f) + 0.959999979f);
  let x_687 : f32 = u_xlat42;
  let x_688 : f32 = u_xlat64;
  u_xlat65 = (x_687 + -(x_688));
  let x_691 : f32 = u_xlat64;
  let x_693 : vec4<f32> = u_xlat5;
  let x_695 : vec3<f32> = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat5;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec3<f32> = u_xlat0;
  let x_707 : vec4<f32> = u_xlat5;
  let x_712 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.x, x_705.x) * vec3<f32>(x_707.x, x_707.y, x_707.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_713 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : f32 = u_xlat42;
  u_xlat0.x = (-(x_715) + 1.0f);
  let x_720 : f32 = u_xlat0.x;
  let x_722 : f32 = u_xlat0.x;
  u_xlat42 = (x_720 * x_722);
  let x_724 : f32 = u_xlat42;
  u_xlat42 = max(x_724, 0.0078125f);
  let x_727 : f32 = u_xlat42;
  let x_728 : f32 = u_xlat42;
  u_xlat64 = (x_727 * x_728);
  let x_730 : f32 = u_xlat65;
  u_xlat65 = (x_730 + 1.0f);
  let x_732 : f32 = u_xlat65;
  u_xlat65 = clamp(x_732, 0.0f, 1.0f);
  let x_735 : f32 = u_xlat42;
  u_xlat66 = ((x_735 * 4.0f) + 2.0f);
  let x_744 : vec4<f32> = u_xlat4;
  let x_747 : f32 = x_126.x_GlobalMipBias.x;
  let x_748 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_744.x, x_744.z), x_747);
  u_xlat4.x = x_748.x;
  let x_753 : f32 = u_xlat4.x;
  u_xlat25 = (x_753 + -1.0f);
  let x_756 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_757 : f32 = u_xlat25;
  u_xlat25 = ((x_756 * x_757) + 1.0f);
  let x_760 : f32 = u_xlat21;
  let x_762 : f32 = u_xlat4.x;
  u_xlat21 = min(x_760, x_762);
  let x_771 : f32 = x_769.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_771);
  let x_773 : bool = u_xlatb4;
  if (x_773) {
    let x_777 : f32 = x_769.x_MainLightShadowParams.y;
    u_xlatb4 = (x_777 == 1.0f);
    let x_779 : bool = u_xlatb4;
    if (x_779) {
      let x_783 : vec4<f32> = vs_TEXCOORD8;
      let x_786 : vec4<f32> = x_769.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) + x_786);
      let x_789 : vec4<f32> = u_xlat7;
      let x_790 : vec2<f32> = vec2<f32>(x_789.x, x_789.y);
      let x_792 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_790.x, x_790.y, x_792);
      let x_804 : vec3<f32> = txVec0;
      let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_804.xy, x_804.z);
      u_xlat8.x = x_806;
      let x_809 : vec4<f32> = u_xlat7;
      let x_810 : vec2<f32> = vec2<f32>(x_809.z, x_809.w);
      let x_812 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_810.x, x_810.y, x_812);
      let x_819 : vec3<f32> = txVec1;
      let x_821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_819.xy, x_819.z);
      u_xlat8.y = x_821;
      let x_823 : vec4<f32> = vs_TEXCOORD8;
      let x_826 : vec4<f32> = x_769.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y) + x_826);
      let x_829 : vec4<f32> = u_xlat7;
      let x_830 : vec2<f32> = vec2<f32>(x_829.x, x_829.y);
      let x_832 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_830.x, x_830.y, x_832);
      let x_839 : vec3<f32> = txVec2;
      let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_839.xy, x_839.z);
      u_xlat8.z = x_841;
      let x_844 : vec4<f32> = u_xlat7;
      let x_845 : vec2<f32> = vec2<f32>(x_844.z, x_844.w);
      let x_847 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_845.x, x_845.y, x_847);
      let x_854 : vec3<f32> = txVec3;
      let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_854.xy, x_854.z);
      u_xlat8.w = x_856;
      let x_858 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_858, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_868 : f32 = x_769.x_MainLightShadowParams.y;
      u_xlatb46.x = (x_868 == 2.0f);
      let x_872 : bool = u_xlatb46.x;
      if (x_872) {
        let x_877 : vec4<f32> = vs_TEXCOORD8;
        let x_880 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_877.x, x_877.y) * vec2<f32>(x_880.z, x_880.w)) + vec2<f32>(0.5f, 0.5f));
        let x_884 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_884);
        let x_886 : vec4<f32> = vs_TEXCOORD8;
        let x_889 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_892 : vec2<f32> = u_xlat46;
        let x_894 : vec2<f32> = ((vec2<f32>(x_886.x, x_886.y) * vec2<f32>(x_889.z, x_889.w)) + -(x_892));
        let x_895 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_897.x, x_897.x, x_897.y, x_897.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_901 : vec4<f32> = u_xlat8;
        let x_903 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_901.x, x_901.x, x_901.z, x_901.z) * vec4<f32>(x_903.x, x_903.x, x_903.z, x_903.z));
        let x_907 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_907.y, x_907.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_912 : vec4<f32> = u_xlat9;
        let x_915 : vec4<f32> = u_xlat7;
        let x_918 : vec2<f32> = ((vec2<f32>(x_912.x, x_912.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_915.x, x_915.y)));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_919.y, x_918.y, x_919.w);
        let x_921 : vec4<f32> = u_xlat7;
        let x_924 : vec2<f32> = (-(vec2<f32>(x_921.x, x_921.y)) + vec2<f32>(1.0f, 1.0f));
        let x_925 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
        let x_928 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_928.x, x_928.y), vec2<f32>(0.0f, 0.0f));
        let x_932 : vec2<f32> = u_xlat51;
        let x_934 : vec2<f32> = u_xlat51;
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_932) * x_934) + vec2<f32>(x_936.x, x_936.y));
        let x_939 : vec4<f32> = u_xlat7;
        let x_941 : vec2<f32> = max(vec2<f32>(x_939.x, x_939.y), vec2<f32>(0.0f, 0.0f));
        let x_942 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat7;
        let x_947 : vec4<f32> = u_xlat7;
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec2<f32> = ((-(vec2<f32>(x_944.x, x_944.y)) * vec2<f32>(x_947.x, x_947.y)) + vec2<f32>(x_950.y, x_950.w));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_955 + vec2<f32>(1.0f, 1.0f));
        let x_957 : vec4<f32> = u_xlat7;
        let x_959 : vec2<f32> = (vec2<f32>(x_957.x, x_957.y) + vec2<f32>(1.0f, 1.0f));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat8;
        let x_966 : vec2<f32> = (vec2<f32>(x_962.x, x_962.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_967 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec4<f32> = u_xlat9;
        let x_971 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_972 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat51;
        let x_975 : vec2<f32> = (x_974 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_976 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat7;
        let x_980 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_981 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec4<f32> = u_xlat8;
        let x_985 : vec2<f32> = (vec2<f32>(x_983.y, x_983.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_986 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_989 : f32 = u_xlat9.x;
        u_xlat10.z = x_989;
        let x_992 : f32 = u_xlat7.x;
        u_xlat10.w = x_992;
        let x_995 : f32 = u_xlat12.x;
        u_xlat11.z = x_995;
        let x_998 : f32 = u_xlat49.x;
        u_xlat11.w = x_998;
        let x_1000 : vec4<f32> = u_xlat10;
        let x_1002 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1000.z, x_1000.w, x_1000.x, x_1000.z) + vec4<f32>(x_1002.z, x_1002.w, x_1002.x, x_1002.z));
        let x_1006 : f32 = u_xlat10.y;
        u_xlat9.z = x_1006;
        let x_1009 : f32 = u_xlat7.y;
        u_xlat9.w = x_1009;
        let x_1012 : f32 = u_xlat11.y;
        u_xlat12.z = x_1012;
        let x_1015 : f32 = u_xlat49.y;
        u_xlat12.w = x_1015;
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1019 : vec4<f32> = u_xlat12;
        let x_1021 : vec3<f32> = (vec3<f32>(x_1017.z, x_1017.y, x_1017.w) + vec3<f32>(x_1019.z, x_1019.y, x_1019.w));
        let x_1022 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat11;
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1028 : vec3<f32> = (vec3<f32>(x_1024.x, x_1024.z, x_1024.w) / vec3<f32>(x_1026.z, x_1026.w, x_1026.y));
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1036 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1037 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat12;
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1043 : vec3<f32> = (vec3<f32>(x_1039.z, x_1039.y, x_1039.w) / vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
        let x_1044 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat10;
        let x_1048 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1049 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat9;
        let x_1054 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1051.y, x_1051.x, x_1051.z) * vec3<f32>(x_1054.x, x_1054.x, x_1054.x));
        let x_1057 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat10;
        let x_1062 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(x_1062.y, x_1062.y, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1068 : f32 = u_xlat10.x;
        u_xlat9.w = x_1068;
        let x_1070 : vec2<f32> = u_xlat46;
        let x_1073 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y) * vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y)) + vec4<f32>(x_1076.y, x_1076.w, x_1076.x, x_1076.w));
        let x_1079 : vec2<f32> = u_xlat46;
        let x_1081 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1086 : vec2<f32> = ((x_1079 * vec2<f32>(x_1081.x, x_1081.y)) + vec2<f32>(x_1084.z, x_1084.w));
        let x_1087 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat9.y;
        u_xlat10.w = x_1090;
        let x_1092 : vec4<f32> = u_xlat10;
        let x_1093 : vec2<f32> = vec2<f32>(x_1092.y, x_1092.z);
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1094.x, x_1093.x, x_1094.z, x_1093.y);
        let x_1096 : vec2<f32> = u_xlat46;
        let x_1099 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y) * vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y)) + vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1102.y));
        let x_1105 : vec2<f32> = u_xlat46;
        let x_1108 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y) * vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y)) + vec4<f32>(x_1111.w, x_1111.y, x_1111.w, x_1111.z));
        let x_1114 : vec2<f32> = u_xlat46;
        let x_1117 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y) * vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y)) + vec4<f32>(x_1120.x, x_1120.w, x_1120.z, x_1120.w));
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1124.x, x_1124.x, x_1124.x, x_1124.y) * vec4<f32>(x_1126.z, x_1126.w, x_1126.y, x_1126.z));
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1130.y, x_1130.y, x_1130.z, x_1130.z) * x_1132);
        let x_1135 : f32 = u_xlat7.z;
        let x_1137 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1135 * x_1137);
        let x_1141 : vec4<f32> = u_xlat11;
        let x_1142 : vec2<f32> = vec2<f32>(x_1141.x, x_1141.y);
        let x_1144 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1142.x, x_1142.y, x_1144);
        let x_1152 : vec3<f32> = txVec4;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1152.xy, x_1152.z);
        u_xlat67 = x_1154;
        let x_1156 : vec4<f32> = u_xlat11;
        let x_1157 : vec2<f32> = vec2<f32>(x_1156.z, x_1156.w);
        let x_1159 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1157.x, x_1157.y, x_1159);
        let x_1167 : vec3<f32> = txVec5;
        let x_1169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1167.xy, x_1167.z);
        u_xlat68 = x_1169;
        let x_1170 : f32 = u_xlat68;
        let x_1172 : f32 = u_xlat14.y;
        u_xlat68 = (x_1170 * x_1172);
        let x_1175 : f32 = u_xlat14.x;
        let x_1176 : f32 = u_xlat67;
        let x_1178 : f32 = u_xlat68;
        u_xlat67 = ((x_1175 * x_1176) + x_1178);
        let x_1181 : vec4<f32> = u_xlat12;
        let x_1182 : vec2<f32> = vec2<f32>(x_1181.x, x_1181.y);
        let x_1184 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1182.x, x_1182.y, x_1184);
        let x_1191 : vec3<f32> = txVec6;
        let x_1193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1191.xy, x_1191.z);
        u_xlat68 = x_1193;
        let x_1195 : f32 = u_xlat14.z;
        let x_1196 : f32 = u_xlat68;
        let x_1198 : f32 = u_xlat67;
        u_xlat67 = ((x_1195 * x_1196) + x_1198);
        let x_1201 : vec4<f32> = u_xlat10;
        let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
        let x_1204 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
        let x_1211 : vec3<f32> = txVec7;
        let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1211.xy, x_1211.z);
        u_xlat68 = x_1213;
        let x_1215 : f32 = u_xlat14.w;
        let x_1216 : f32 = u_xlat68;
        let x_1218 : f32 = u_xlat67;
        u_xlat67 = ((x_1215 * x_1216) + x_1218);
        let x_1221 : vec4<f32> = u_xlat13;
        let x_1222 : vec2<f32> = vec2<f32>(x_1221.x, x_1221.y);
        let x_1224 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
        let x_1231 : vec3<f32> = txVec8;
        let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1231.xy, x_1231.z);
        u_xlat68 = x_1233;
        let x_1235 : f32 = u_xlat15.x;
        let x_1236 : f32 = u_xlat68;
        let x_1238 : f32 = u_xlat67;
        u_xlat67 = ((x_1235 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat13;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec9;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1251.xy, x_1251.z);
        u_xlat68 = x_1253;
        let x_1255 : f32 = u_xlat15.y;
        let x_1256 : f32 = u_xlat68;
        let x_1258 : f32 = u_xlat67;
        u_xlat67 = ((x_1255 * x_1256) + x_1258);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.z, x_1261.w);
        let x_1264 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec10;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1271.xy, x_1271.z);
        u_xlat68 = x_1273;
        let x_1275 : f32 = u_xlat15.z;
        let x_1276 : f32 = u_xlat68;
        let x_1278 : f32 = u_xlat67;
        u_xlat67 = ((x_1275 * x_1276) + x_1278);
        let x_1281 : vec4<f32> = u_xlat9;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec11;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat68 = x_1293;
        let x_1295 : f32 = u_xlat15.w;
        let x_1296 : f32 = u_xlat68;
        let x_1298 : f32 = u_xlat67;
        u_xlat67 = ((x_1295 * x_1296) + x_1298);
        let x_1301 : vec4<f32> = u_xlat9;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.z, x_1301.w);
        let x_1304 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec12;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1311.xy, x_1311.z);
        u_xlat68 = x_1313;
        let x_1315 : f32 = u_xlat46.x;
        let x_1316 : f32 = u_xlat68;
        let x_1318 : f32 = u_xlat67;
        u_xlat4.x = ((x_1315 * x_1316) + x_1318);
      } else {
        let x_1322 : vec4<f32> = vs_TEXCOORD8;
        let x_1325 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.z, x_1325.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1329 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1329);
        let x_1331 : vec4<f32> = vs_TEXCOORD8;
        let x_1334 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1337 : vec2<f32> = u_xlat46;
        let x_1339 : vec2<f32> = ((vec2<f32>(x_1331.x, x_1331.y) * vec2<f32>(x_1334.z, x_1334.w)) + -(x_1337));
        let x_1340 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1342 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1342.x, x_1342.x, x_1342.y, x_1342.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1347 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1345.x, x_1345.x, x_1345.z, x_1345.z) * vec4<f32>(x_1347.x, x_1347.x, x_1347.z, x_1347.z));
        let x_1350 : vec4<f32> = u_xlat9;
        let x_1354 : vec2<f32> = (vec2<f32>(x_1350.y, x_1350.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1355.x, x_1354.x, x_1355.z, x_1354.y);
        let x_1357 : vec4<f32> = u_xlat9;
        let x_1360 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1357.x, x_1357.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1360.x, x_1360.y)));
        let x_1364 : vec4<f32> = u_xlat7;
        let x_1367 : vec2<f32> = (-(vec2<f32>(x_1364.x, x_1364.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1368 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1367.x, x_1368.y, x_1367.y, x_1368.w);
        let x_1370 : vec4<f32> = u_xlat7;
        let x_1372 : vec2<f32> = min(vec2<f32>(x_1370.x, x_1370.y), vec2<f32>(0.0f, 0.0f));
        let x_1373 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat9;
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1381 : vec4<f32> = u_xlat8;
        let x_1383 : vec2<f32> = ((-(vec2<f32>(x_1375.x, x_1375.y)) * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1381.x, x_1381.z));
        let x_1384 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1383.x, x_1384.y, x_1383.y, x_1384.w);
        let x_1386 : vec4<f32> = u_xlat7;
        let x_1388 : vec2<f32> = max(vec2<f32>(x_1386.x, x_1386.y), vec2<f32>(0.0f, 0.0f));
        let x_1389 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        let x_1391 : vec4<f32> = u_xlat9;
        let x_1394 : vec4<f32> = u_xlat9;
        let x_1397 : vec4<f32> = u_xlat8;
        let x_1399 : vec2<f32> = ((-(vec2<f32>(x_1391.x, x_1391.y)) * vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1397.y, x_1397.w));
        let x_1400 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1400.x, x_1399.x, x_1400.z, x_1399.y);
        let x_1402 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1402 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1406 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1406 * 0.081632003f);
        let x_1410 : vec2<f32> = u_xlat49;
        let x_1413 : vec2<f32> = (vec2<f32>(x_1410.y, x_1410.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1413.x, x_1413.y, x_1414.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1416.x, x_1416.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1420 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1420 * 0.081632003f);
        let x_1424 : f32 = u_xlat11.y;
        u_xlat9.x = x_1424;
        let x_1426 : vec4<f32> = u_xlat7;
        let x_1433 : vec2<f32> = ((vec2<f32>(x_1426.x, x_1426.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1434 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1434.x, x_1433.x, x_1434.z, x_1433.y);
        let x_1436 : vec4<f32> = u_xlat7;
        let x_1440 : vec2<f32> = ((vec2<f32>(x_1436.x, x_1436.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1441 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1440.x, x_1441.y, x_1440.y, x_1441.w);
        let x_1444 : f32 = u_xlat49.x;
        u_xlat8.y = x_1444;
        let x_1447 : f32 = u_xlat10.y;
        u_xlat8.w = x_1447;
        let x_1449 : vec4<f32> = u_xlat8;
        let x_1450 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1449 + x_1450);
        let x_1452 : vec4<f32> = u_xlat7;
        let x_1455 : vec2<f32> = ((vec2<f32>(x_1452.y, x_1452.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1456 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1456.x, x_1455.x, x_1456.z, x_1455.y);
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1458.y, x_1458.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1462 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1461.x, x_1462.y, x_1461.y, x_1462.w);
        let x_1465 : f32 = u_xlat49.y;
        u_xlat10.y = x_1465;
        let x_1467 : vec4<f32> = u_xlat10;
        let x_1468 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1467 + x_1468);
        let x_1470 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1470 / x_1471);
        let x_1473 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1473 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1479 : vec4<f32> = u_xlat10;
        let x_1480 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1479 / x_1480);
        let x_1482 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1482 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1484 : vec4<f32> = u_xlat8;
        let x_1487 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1484.w, x_1484.x, x_1484.y, x_1484.z) * vec4<f32>(x_1487.x, x_1487.x, x_1487.x, x_1487.x));
        let x_1490 : vec4<f32> = u_xlat10;
        let x_1493 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1490.x, x_1490.w, x_1490.y, x_1490.z) * vec4<f32>(x_1493.y, x_1493.y, x_1493.y, x_1493.y));
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1497 : vec3<f32> = vec3<f32>(x_1496.y, x_1496.z, x_1496.w);
        let x_1498 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1497.x, x_1498.y, x_1497.y, x_1497.z);
        let x_1501 : f32 = u_xlat10.x;
        u_xlat11.y = x_1501;
        let x_1503 : vec2<f32> = u_xlat46;
        let x_1506 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1509 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y) * vec4<f32>(x_1506.x, x_1506.y, x_1506.x, x_1506.y)) + vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1509.y));
        let x_1512 : vec2<f32> = u_xlat46;
        let x_1514 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat11;
        let x_1519 : vec2<f32> = ((x_1512 * vec2<f32>(x_1514.x, x_1514.y)) + vec2<f32>(x_1517.w, x_1517.y));
        let x_1520 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
        let x_1523 : f32 = u_xlat11.y;
        u_xlat8.y = x_1523;
        let x_1526 : f32 = u_xlat10.z;
        u_xlat11.y = x_1526;
        let x_1528 : vec2<f32> = u_xlat46;
        let x_1531 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y) * vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.y)) + vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1534.y));
        let x_1538 : vec2<f32> = u_xlat46;
        let x_1540 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1538 * vec2<f32>(x_1540.x, x_1540.y)) + vec2<f32>(x_1543.w, x_1543.y));
        let x_1547 : f32 = u_xlat11.y;
        u_xlat8.z = x_1547;
        let x_1549 : vec2<f32> = u_xlat46;
        let x_1552 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1555 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y) * vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y)) + vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.z));
        let x_1559 : f32 = u_xlat10.w;
        u_xlat11.y = x_1559;
        let x_1562 : vec2<f32> = u_xlat46;
        let x_1565 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1568 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1562.x, x_1562.y, x_1562.x, x_1562.y) * vec4<f32>(x_1565.x, x_1565.y, x_1565.x, x_1565.y)) + vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1568.y));
        let x_1572 : vec2<f32> = u_xlat46;
        let x_1574 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1577 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1572 * vec2<f32>(x_1574.x, x_1574.y)) + vec2<f32>(x_1577.w, x_1577.y));
        let x_1581 : f32 = u_xlat11.y;
        u_xlat8.w = x_1581;
        let x_1584 : vec2<f32> = u_xlat46;
        let x_1586 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1584 * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1589.x, x_1589.w));
        let x_1592 : vec4<f32> = u_xlat11;
        let x_1593 : vec3<f32> = vec3<f32>(x_1592.x, x_1592.z, x_1592.w);
        let x_1594 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1593.x, x_1594.y, x_1593.y, x_1593.z);
        let x_1596 : vec2<f32> = u_xlat46;
        let x_1599 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1602 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1596.x, x_1596.y, x_1596.x, x_1596.y) * vec4<f32>(x_1599.x, x_1599.y, x_1599.x, x_1599.y)) + vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1602.y));
        let x_1606 : vec2<f32> = u_xlat46;
        let x_1608 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1611 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1606 * vec2<f32>(x_1608.x, x_1608.y)) + vec2<f32>(x_1611.w, x_1611.y));
        let x_1615 : f32 = u_xlat8.x;
        u_xlat10.x = x_1615;
        let x_1617 : vec2<f32> = u_xlat46;
        let x_1619 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1617 * vec2<f32>(x_1619.x, x_1619.y)) + vec2<f32>(x_1622.x, x_1622.y));
        let x_1626 : vec4<f32> = u_xlat7;
        let x_1628 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1626.x, x_1626.x, x_1626.x, x_1626.x) * x_1628);
        let x_1631 : vec4<f32> = u_xlat7;
        let x_1633 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1631.y, x_1631.y, x_1631.y, x_1631.y) * x_1633);
        let x_1636 : vec4<f32> = u_xlat7;
        let x_1638 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1636.z, x_1636.z, x_1636.z, x_1636.z) * x_1638);
        let x_1640 : vec4<f32> = u_xlat7;
        let x_1642 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1640.w, x_1640.w, x_1640.w, x_1640.w) * x_1642);
        let x_1645 : vec4<f32> = u_xlat12;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.x, x_1645.y);
        let x_1648 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1655 : vec3<f32> = txVec13;
        let x_1657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1655.xy, x_1655.z);
        u_xlat68 = x_1657;
        let x_1659 : vec4<f32> = u_xlat12;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.z, x_1659.w);
        let x_1662 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1670 : vec3<f32> = txVec14;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1670.xy, x_1670.z);
        u_xlat69 = x_1672;
        let x_1673 : f32 = u_xlat69;
        let x_1675 : f32 = u_xlat18.y;
        u_xlat69 = (x_1673 * x_1675);
        let x_1678 : f32 = u_xlat18.x;
        let x_1679 : f32 = u_xlat68;
        let x_1681 : f32 = u_xlat69;
        u_xlat68 = ((x_1678 * x_1679) + x_1681);
        let x_1684 : vec4<f32> = u_xlat13;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
        let x_1687 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec15;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
        u_xlat69 = x_1696;
        let x_1698 : f32 = u_xlat18.z;
        let x_1699 : f32 = u_xlat69;
        let x_1701 : f32 = u_xlat68;
        u_xlat68 = ((x_1698 * x_1699) + x_1701);
        let x_1704 : vec4<f32> = u_xlat15;
        let x_1705 : vec2<f32> = vec2<f32>(x_1704.x, x_1704.y);
        let x_1707 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1714 : vec3<f32> = txVec16;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1714.xy, x_1714.z);
        u_xlat69 = x_1716;
        let x_1718 : f32 = u_xlat18.w;
        let x_1719 : f32 = u_xlat69;
        let x_1721 : f32 = u_xlat68;
        u_xlat68 = ((x_1718 * x_1719) + x_1721);
        let x_1724 : vec4<f32> = u_xlat14;
        let x_1725 : vec2<f32> = vec2<f32>(x_1724.x, x_1724.y);
        let x_1727 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1725.x, x_1725.y, x_1727);
        let x_1734 : vec3<f32> = txVec17;
        let x_1736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1734.xy, x_1734.z);
        u_xlat69 = x_1736;
        let x_1738 : f32 = u_xlat19.x;
        let x_1739 : f32 = u_xlat69;
        let x_1741 : f32 = u_xlat68;
        u_xlat68 = ((x_1738 * x_1739) + x_1741);
        let x_1744 : vec4<f32> = u_xlat14;
        let x_1745 : vec2<f32> = vec2<f32>(x_1744.z, x_1744.w);
        let x_1747 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec18;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1754.xy, x_1754.z);
        u_xlat69 = x_1756;
        let x_1758 : f32 = u_xlat19.y;
        let x_1759 : f32 = u_xlat69;
        let x_1761 : f32 = u_xlat68;
        u_xlat68 = ((x_1758 * x_1759) + x_1761);
        let x_1764 : vec2<f32> = u_xlat55;
        let x_1766 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1764.x, x_1764.y, x_1766);
        let x_1773 : vec3<f32> = txVec19;
        let x_1775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1773.xy, x_1773.z);
        u_xlat69 = x_1775;
        let x_1777 : f32 = u_xlat19.z;
        let x_1778 : f32 = u_xlat69;
        let x_1780 : f32 = u_xlat68;
        u_xlat68 = ((x_1777 * x_1778) + x_1780);
        let x_1783 : vec4<f32> = u_xlat15;
        let x_1784 : vec2<f32> = vec2<f32>(x_1783.z, x_1783.w);
        let x_1786 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1784.x, x_1784.y, x_1786);
        let x_1793 : vec3<f32> = txVec20;
        let x_1795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1793.xy, x_1793.z);
        u_xlat69 = x_1795;
        let x_1797 : f32 = u_xlat19.w;
        let x_1798 : f32 = u_xlat69;
        let x_1800 : f32 = u_xlat68;
        u_xlat68 = ((x_1797 * x_1798) + x_1800);
        let x_1803 : vec4<f32> = u_xlat16;
        let x_1804 : vec2<f32> = vec2<f32>(x_1803.x, x_1803.y);
        let x_1806 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1804.x, x_1804.y, x_1806);
        let x_1813 : vec3<f32> = txVec21;
        let x_1815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1813.xy, x_1813.z);
        u_xlat69 = x_1815;
        let x_1817 : f32 = u_xlat20.x;
        let x_1818 : f32 = u_xlat69;
        let x_1820 : f32 = u_xlat68;
        u_xlat68 = ((x_1817 * x_1818) + x_1820);
        let x_1823 : vec4<f32> = u_xlat16;
        let x_1824 : vec2<f32> = vec2<f32>(x_1823.z, x_1823.w);
        let x_1826 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1824.x, x_1824.y, x_1826);
        let x_1833 : vec3<f32> = txVec22;
        let x_1835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1833.xy, x_1833.z);
        u_xlat69 = x_1835;
        let x_1837 : f32 = u_xlat20.y;
        let x_1838 : f32 = u_xlat69;
        let x_1840 : f32 = u_xlat68;
        u_xlat68 = ((x_1837 * x_1838) + x_1840);
        let x_1843 : vec2<f32> = u_xlat29;
        let x_1845 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1843.x, x_1843.y, x_1845);
        let x_1852 : vec3<f32> = txVec23;
        let x_1854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1852.xy, x_1852.z);
        u_xlat69 = x_1854;
        let x_1856 : f32 = u_xlat20.z;
        let x_1857 : f32 = u_xlat69;
        let x_1859 : f32 = u_xlat68;
        u_xlat68 = ((x_1856 * x_1857) + x_1859);
        let x_1862 : vec2<f32> = u_xlat17;
        let x_1864 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec24;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1871.xy, x_1871.z);
        u_xlat69 = x_1873;
        let x_1875 : f32 = u_xlat20.w;
        let x_1876 : f32 = u_xlat69;
        let x_1878 : f32 = u_xlat68;
        u_xlat68 = ((x_1875 * x_1876) + x_1878);
        let x_1881 : vec4<f32> = u_xlat11;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.x, x_1881.y);
        let x_1884 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec25;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1891.xy, x_1891.z);
        u_xlat69 = x_1893;
        let x_1895 : f32 = u_xlat7.x;
        let x_1896 : f32 = u_xlat69;
        let x_1898 : f32 = u_xlat68;
        u_xlat68 = ((x_1895 * x_1896) + x_1898);
        let x_1901 : vec4<f32> = u_xlat11;
        let x_1902 : vec2<f32> = vec2<f32>(x_1901.z, x_1901.w);
        let x_1904 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec26;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1911.xy, x_1911.z);
        u_xlat69 = x_1913;
        let x_1915 : f32 = u_xlat7.y;
        let x_1916 : f32 = u_xlat69;
        let x_1918 : f32 = u_xlat68;
        u_xlat68 = ((x_1915 * x_1916) + x_1918);
        let x_1921 : vec2<f32> = u_xlat52;
        let x_1923 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
        let x_1930 : vec3<f32> = txVec27;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1930.xy, x_1930.z);
        u_xlat69 = x_1932;
        let x_1934 : f32 = u_xlat7.z;
        let x_1935 : f32 = u_xlat69;
        let x_1937 : f32 = u_xlat68;
        u_xlat68 = ((x_1934 * x_1935) + x_1937);
        let x_1940 : vec2<f32> = u_xlat46;
        let x_1942 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec28;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1949.xy, x_1949.z);
        u_xlat46.x = x_1951;
        let x_1954 : f32 = u_xlat7.w;
        let x_1956 : f32 = u_xlat46.x;
        let x_1958 : f32 = u_xlat68;
        u_xlat4.x = ((x_1954 * x_1956) + x_1958);
      }
    }
  } else {
    let x_1963 : vec4<f32> = vs_TEXCOORD8;
    let x_1964 : vec2<f32> = vec2<f32>(x_1963.x, x_1963.y);
    let x_1966 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1964.x, x_1964.y, x_1966);
    let x_1973 : vec3<f32> = txVec29;
    let x_1975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1973.xy, x_1973.z);
    u_xlat4.x = x_1975;
  }
  let x_1978 : f32 = x_769.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1978) + 1.0f);
  let x_1983 : f32 = u_xlat4.x;
  let x_1985 : f32 = x_769.x_MainLightShadowParams.x;
  let x_1988 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_1983 * x_1985) + x_1988);
  let x_1992 : f32 = vs_TEXCOORD8.z;
  u_xlatb46.x = (0.0f >= x_1992);
  let x_1997 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_1997 >= 1.0f);
  let x_1999 : bool = u_xlatb67;
  let x_2001 : bool = u_xlatb46.x;
  u_xlatb46.x = (x_1999 | x_2001);
  let x_2005 : bool = u_xlatb46.x;
  if (x_2005) {
    x_2006 = 1.0f;
  } else {
    let x_2011 : f32 = u_xlat4.x;
    x_2006 = x_2011;
  }
  let x_2012 : f32 = x_2006;
  u_xlat4.x = x_2012;
  let x_2014 : vec3<f32> = vs_TEXCOORD7;
  let x_2016 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2018 : vec3<f32> = (x_2014 + -(x_2016));
  let x_2019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
  let x_2021 : vec4<f32> = u_xlat7;
  let x_2023 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_2021.x, x_2021.y, x_2021.z), vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2028 : f32 = u_xlat46.x;
  let x_2030 : f32 = x_769.x_MainLightShadowParams.z;
  let x_2033 : f32 = x_769.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_2028 * x_2030) + x_2033);
  let x_2037 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2037, 0.0f, 1.0f);
  let x_2041 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2041) + 1.0f);
  let x_2045 : f32 = u_xlat46.x;
  let x_2046 : f32 = u_xlat67;
  let x_2049 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2045 * x_2046) + x_2049);
  let x_2058 : f32 = x_2056.x_MainLightCookieTextureFormat;
  u_xlatb46.x = !((x_2058 == -1.0f));
  let x_2062 : bool = u_xlatb46.x;
  if (x_2062) {
    let x_2065 : vec3<f32> = vs_TEXCOORD7;
    let x_2068 : vec4<f32> = x_2056.x_MainLightWorldToLight[1i];
    u_xlat46 = (vec2<f32>(x_2065.y, x_2065.y) * vec2<f32>(x_2068.x, x_2068.y));
    let x_2072 : vec4<f32> = x_2056.x_MainLightWorldToLight[0i];
    let x_2074 : vec3<f32> = vs_TEXCOORD7;
    let x_2077 : vec2<f32> = u_xlat46;
    u_xlat46 = ((vec2<f32>(x_2072.x, x_2072.y) * vec2<f32>(x_2074.x, x_2074.x)) + x_2077);
    let x_2080 : vec4<f32> = x_2056.x_MainLightWorldToLight[2i];
    let x_2082 : vec3<f32> = vs_TEXCOORD7;
    let x_2085 : vec2<f32> = u_xlat46;
    u_xlat46 = ((vec2<f32>(x_2080.x, x_2080.y) * vec2<f32>(x_2082.z, x_2082.z)) + x_2085);
    let x_2087 : vec2<f32> = u_xlat46;
    let x_2090 : vec4<f32> = x_2056.x_MainLightWorldToLight[3i];
    u_xlat46 = (x_2087 + vec2<f32>(x_2090.x, x_2090.y));
    let x_2093 : vec2<f32> = u_xlat46;
    u_xlat46 = ((x_2093 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2101 : vec2<f32> = u_xlat46;
    let x_2103 : f32 = x_126.x_GlobalMipBias.x;
    let x_2104 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2101, x_2103);
    u_xlat7 = x_2104;
    let x_2106 : f32 = x_2056.x_MainLightCookieTextureFormat;
    let x_2108 : f32 = x_2056.x_MainLightCookieTextureFormat;
    let x_2110 : f32 = x_2056.x_MainLightCookieTextureFormat;
    let x_2112 : f32 = x_2056.x_MainLightCookieTextureFormat;
    let x_2113 : vec4<f32> = vec4<f32>(x_2106, x_2108, x_2110, x_2112);
    let x_2120 : vec4<bool> = (vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2113.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb46 = vec2<bool>(x_2120.x, x_2120.y);
    let x_2123 : bool = u_xlatb46.y;
    if (x_2123) {
      let x_2128 : f32 = u_xlat7.w;
      x_2124 = x_2128;
    } else {
      let x_2131 : f32 = u_xlat7.x;
      x_2124 = x_2131;
    }
    let x_2132 : f32 = x_2124;
    u_xlat67 = x_2132;
    let x_2134 : bool = u_xlatb46.x;
    if (x_2134) {
      let x_2138 : vec4<f32> = u_xlat7;
      x_2135 = vec3<f32>(x_2138.x, x_2138.y, x_2138.z);
    } else {
      let x_2141 : f32 = u_xlat67;
      x_2135 = vec3<f32>(x_2141, x_2141, x_2141);
    }
    let x_2143 : vec3<f32> = x_2135;
    let x_2144 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2150 : vec4<f32> = u_xlat7;
  let x_2153 : vec4<f32> = x_126.x_MainLightColor;
  let x_2155 : vec3<f32> = (vec3<f32>(x_2150.x, x_2150.y, x_2150.z) * vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
  let x_2156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
  let x_2158 : f32 = u_xlat25;
  let x_2160 : vec4<f32> = u_xlat7;
  let x_2162 : vec3<f32> = (vec3<f32>(x_2158, x_2158, x_2158) * vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
  let x_2163 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : vec3<f32> = u_xlat2;
  let x_2167 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2165), vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
  let x_2172 : f32 = u_xlat46.x;
  let x_2174 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2172 + x_2174);
  let x_2177 : vec4<f32> = u_xlat1;
  let x_2179 : vec2<f32> = u_xlat46;
  let x_2183 : vec3<f32> = u_xlat2;
  let x_2185 : vec3<f32> = ((vec3<f32>(x_2177.x, x_2177.y, x_2177.z) * -(vec3<f32>(x_2179.x, x_2179.x, x_2179.x))) + -(x_2183));
  let x_2186 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2188 : vec4<f32> = u_xlat1;
  let x_2190 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2188.x, x_2188.y, x_2188.z), x_2190);
  let x_2194 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2194, 0.0f, 1.0f);
  let x_2198 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2198) + 1.0f);
  let x_2203 : f32 = u_xlat46.x;
  let x_2205 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2203 * x_2205);
  let x_2209 : f32 = u_xlat46.x;
  let x_2211 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2209 * x_2211);
  let x_2215 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2215) * 0.699999988f) + 1.700000048f);
  let x_2222 : f32 = u_xlat0.x;
  let x_2223 : f32 = u_xlat67;
  u_xlat0.x = (x_2222 * x_2223);
  let x_2227 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2227 * 6.0f);
  let x_2239 : vec4<f32> = u_xlat8;
  let x_2242 : f32 = u_xlat0.x;
  let x_2243 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2239.x, x_2239.y, x_2239.z), x_2242);
  u_xlat8 = x_2243;
  let x_2245 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2245 + -1.0f);
  let x_2253 : f32 = x_2251.unity_SpecCube0_HDR.w;
  let x_2255 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2253 * x_2255) + 1.0f);
  let x_2260 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2260, 0.0f);
  let x_2264 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2264);
  let x_2268 : f32 = u_xlat0.x;
  let x_2270 : f32 = x_2251.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2268 * x_2270);
  let x_2274 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2274);
  let x_2278 : f32 = u_xlat0.x;
  let x_2280 : f32 = x_2251.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2278 * x_2280);
  let x_2283 : vec4<f32> = u_xlat8;
  let x_2285 : vec3<f32> = u_xlat0;
  let x_2287 : vec3<f32> = (vec3<f32>(x_2283.x, x_2283.y, x_2283.z) * vec3<f32>(x_2285.x, x_2285.x, x_2285.x));
  let x_2288 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
  let x_2290 : f32 = u_xlat42;
  let x_2292 : f32 = u_xlat42;
  let x_2296 : vec2<f32> = ((vec2<f32>(x_2290, x_2290) * vec2<f32>(x_2292, x_2292)) + vec2<f32>(-1.0f, 1.0f));
  let x_2297 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2296.x, x_2297.y, x_2296.y);
  let x_2300 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2300);
  let x_2302 : vec4<f32> = u_xlat5;
  let x_2305 : f32 = u_xlat65;
  let x_2307 : vec3<f32> = (-(vec3<f32>(x_2302.x, x_2302.y, x_2302.z)) + vec3<f32>(x_2305, x_2305, x_2305));
  let x_2308 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
  let x_2310 : vec2<f32> = u_xlat46;
  let x_2312 : vec4<f32> = u_xlat9;
  let x_2315 : vec4<f32> = u_xlat5;
  let x_2317 : vec3<f32> = ((vec3<f32>(x_2310.x, x_2310.x, x_2310.x) * vec3<f32>(x_2312.x, x_2312.y, x_2312.z)) + vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
  let x_2318 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
  let x_2320 : f32 = u_xlat42;
  let x_2322 : vec4<f32> = u_xlat9;
  let x_2324 : vec3<f32> = (vec3<f32>(x_2320, x_2320, x_2320) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
  let x_2327 : vec4<f32> = u_xlat8;
  let x_2329 : vec4<f32> = u_xlat9;
  let x_2331 : vec3<f32> = (vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329.x, x_2329.y, x_2329.z));
  let x_2332 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
  let x_2334 : vec4<f32> = u_xlat3;
  let x_2336 : vec4<f32> = u_xlat6;
  let x_2339 : vec4<f32> = u_xlat8;
  let x_2341 : vec3<f32> = ((vec3<f32>(x_2334.x, x_2334.y, x_2334.z) * vec3<f32>(x_2336.x, x_2336.y, x_2336.z)) + vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
  let x_2342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  let x_2345 : f32 = u_xlat4.x;
  let x_2347 : f32 = x_2251.unity_LightData.z;
  u_xlat42 = (x_2345 * x_2347);
  let x_2349 : vec4<f32> = u_xlat1;
  let x_2352 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2349.x, x_2349.y, x_2349.z), vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
  let x_2355 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2355, 0.0f, 1.0f);
  let x_2357 : f32 = u_xlat42;
  let x_2358 : f32 = u_xlat65;
  u_xlat42 = (x_2357 * x_2358);
  let x_2360 : f32 = u_xlat42;
  let x_2362 : vec4<f32> = u_xlat7;
  let x_2364 : vec3<f32> = (vec3<f32>(x_2360, x_2360, x_2360) * vec3<f32>(x_2362.x, x_2362.y, x_2362.z));
  let x_2365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2364.x, x_2365.y, x_2364.y, x_2364.z);
  let x_2367 : vec3<f32> = u_xlat2;
  let x_2369 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2371 : vec3<f32> = (x_2367 + vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
  let x_2372 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);
  let x_2374 : vec4<f32> = u_xlat7;
  let x_2376 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2374.x, x_2374.y, x_2374.z), vec3<f32>(x_2376.x, x_2376.y, x_2376.z));
  let x_2379 : f32 = u_xlat42;
  u_xlat42 = max(x_2379, 1.17549435e-37f);
  let x_2382 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2382);
  let x_2384 : f32 = u_xlat42;
  let x_2386 : vec4<f32> = u_xlat7;
  let x_2388 : vec3<f32> = (vec3<f32>(x_2384, x_2384, x_2384) * vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2389 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
  let x_2391 : vec4<f32> = u_xlat1;
  let x_2393 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2391.x, x_2391.y, x_2391.z), vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2396 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2396, 0.0f, 1.0f);
  let x_2399 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2401 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2399.x, x_2399.y, x_2399.z), vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
  let x_2404 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2404, 0.0f, 1.0f);
  let x_2406 : f32 = u_xlat42;
  let x_2407 : f32 = u_xlat42;
  u_xlat42 = (x_2406 * x_2407);
  let x_2409 : f32 = u_xlat42;
  let x_2411 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2409 * x_2411) + 1.000010014f);
  let x_2415 : f32 = u_xlat65;
  let x_2416 : f32 = u_xlat65;
  u_xlat65 = (x_2415 * x_2416);
  let x_2418 : f32 = u_xlat42;
  let x_2419 : f32 = u_xlat42;
  u_xlat42 = (x_2418 * x_2419);
  let x_2421 : f32 = u_xlat65;
  u_xlat65 = max(x_2421, 0.100000001f);
  let x_2424 : f32 = u_xlat42;
  let x_2425 : f32 = u_xlat65;
  u_xlat42 = (x_2424 * x_2425);
  let x_2427 : f32 = u_xlat66;
  let x_2428 : f32 = u_xlat42;
  u_xlat42 = (x_2427 * x_2428);
  let x_2430 : f32 = u_xlat64;
  let x_2431 : f32 = u_xlat42;
  u_xlat42 = (x_2430 / x_2431);
  let x_2433 : vec4<f32> = u_xlat5;
  let x_2435 : f32 = u_xlat42;
  let x_2438 : vec4<f32> = u_xlat6;
  let x_2440 : vec3<f32> = ((vec3<f32>(x_2433.x, x_2433.y, x_2433.z) * vec3<f32>(x_2435, x_2435, x_2435)) + vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2441 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
  let x_2443 : vec4<f32> = u_xlat4;
  let x_2445 : vec4<f32> = u_xlat7;
  let x_2447 : vec3<f32> = (vec3<f32>(x_2443.x, x_2443.z, x_2443.w) * vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2447.x, x_2448.y, x_2447.y, x_2447.z);
  let x_2451 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2453 : f32 = x_2251.unity_LightData.y;
  u_xlat42 = min(x_2451, x_2453);
  let x_2457 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2457));
  let x_2462 : f32 = x_2056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2464 : f32 = x_2056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2466 : f32 = x_2056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2468 : f32 = x_2056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2469 : vec4<f32> = vec4<f32>(x_2462, x_2464, x_2466, x_2468);
  let x_2476 : vec4<bool> = (vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2469.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2476.x, x_2476.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2487 : u32 = u_xlatu_loop_1;
    let x_2488 : u32 = u_xlatu42;
    if ((x_2487 < x_2488)) {
    } else {
      break;
    }
    let x_2491 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2491 >> 2u);
    let x_2495 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2495 & 3u));
    let x_2498 : u32 = u_xlatu68;
    let x_2501 : vec4<f32> = x_2251.unity_LightIndices[bitcast<i32>(x_2498)];
    let x_2511 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2516 : vec4<u32> = indexable[x_2511];
    u_xlat68 = dot(x_2501, bitcast<vec4<f32>>(x_2516));
    let x_2519 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2519));
    let x_2522 : vec3<f32> = vs_TEXCOORD7;
    let x_2534 : u32 = u_xlatu68;
    let x_2537 : vec4<f32> = x_2533.x_AdditionalLightsPosition[bitcast<i32>(x_2534)];
    let x_2540 : u32 = u_xlatu68;
    let x_2543 : vec4<f32> = x_2533.x_AdditionalLightsPosition[bitcast<i32>(x_2540)];
    let x_2545 : vec3<f32> = ((-(x_2522) * vec3<f32>(x_2537.w, x_2537.w, x_2537.w)) + vec3<f32>(x_2543.x, x_2543.y, x_2543.z));
    let x_2546 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2546.w);
    let x_2548 : vec4<f32> = u_xlat9;
    let x_2550 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2548.x, x_2548.y, x_2548.z), vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
    let x_2553 : f32 = u_xlat69;
    u_xlat69 = max(x_2553, 6.10351562e-05f);
    let x_2555 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2555);
    let x_2558 : vec2<f32> = u_xlat49;
    let x_2560 : vec4<f32> = u_xlat9;
    let x_2562 : vec3<f32> = (vec3<f32>(x_2558.x, x_2558.x, x_2558.x) * vec3<f32>(x_2560.x, x_2560.y, x_2560.z));
    let x_2563 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
    let x_2566 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2566);
    let x_2568 : f32 = u_xlat69;
    let x_2569 : u32 = u_xlatu68;
    let x_2572 : f32 = x_2533.x_AdditionalLightsAttenuation[bitcast<i32>(x_2569)].x;
    u_xlat69 = (x_2568 * x_2572);
    let x_2574 : f32 = u_xlat69;
    let x_2576 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2574) * x_2576) + 1.0f);
    let x_2579 : f32 = u_xlat69;
    u_xlat69 = max(x_2579, 0.0f);
    let x_2581 : f32 = u_xlat69;
    let x_2582 : f32 = u_xlat69;
    u_xlat69 = (x_2581 * x_2582);
    let x_2584 : f32 = u_xlat69;
    let x_2585 : f32 = u_xlat70;
    u_xlat69 = (x_2584 * x_2585);
    let x_2587 : u32 = u_xlatu68;
    let x_2590 : vec4<f32> = x_2533.x_AdditionalLightsSpotDir[bitcast<i32>(x_2587)];
    let x_2592 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2590.x, x_2590.y, x_2590.z), vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
    let x_2595 : f32 = u_xlat70;
    let x_2596 : u32 = u_xlatu68;
    let x_2599 : f32 = x_2533.x_AdditionalLightsAttenuation[bitcast<i32>(x_2596)].z;
    let x_2601 : u32 = u_xlatu68;
    let x_2604 : f32 = x_2533.x_AdditionalLightsAttenuation[bitcast<i32>(x_2601)].w;
    u_xlat70 = ((x_2595 * x_2599) + x_2604);
    let x_2606 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2606, 0.0f, 1.0f);
    let x_2608 : f32 = u_xlat70;
    let x_2609 : f32 = u_xlat70;
    u_xlat70 = (x_2608 * x_2609);
    let x_2611 : f32 = u_xlat69;
    let x_2612 : f32 = u_xlat70;
    u_xlat69 = (x_2611 * x_2612);
    let x_2615 : u32 = u_xlatu68;
    u_xlatu70 = (x_2615 >> 5u);
    let x_2618 : u32 = u_xlatu68;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2618) & 31i)));
    let x_2623 : i32 = u_xlati71;
    let x_2625 : u32 = u_xlatu70;
    let x_2628 : f32 = x_2056.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2625)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2623) & bitcast<u32>(x_2628)));
    let x_2632 : i32 = u_xlati70;
    if ((x_2632 != 0i)) {
      let x_2642 : u32 = u_xlatu68;
      let x_2645 : f32 = x_2641.x_AdditionalLightsLightTypes[bitcast<i32>(x_2642)].el;
      u_xlati70 = i32(x_2645);
      let x_2647 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2647 != 0i));
      let x_2651 : u32 = u_xlatu68;
      u_xlati72 = (bitcast<i32>(x_2651) << bitcast<u32>(2i));
      let x_2654 : i32 = u_xlati71;
      if ((x_2654 != 0i)) {
        let x_2658 : vec3<f32> = vs_TEXCOORD7;
        let x_2660 : i32 = u_xlati72;
        let x_2663 : i32 = u_xlati72;
        let x_2667 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2660 + 1i) / 4i)][((x_2663 + 1i) % 4i)];
        let x_2669 : vec3<f32> = (vec3<f32>(x_2658.y, x_2658.y, x_2658.y) * vec3<f32>(x_2667.x, x_2667.y, x_2667.w));
        let x_2670 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
        let x_2672 : i32 = u_xlati72;
        let x_2674 : i32 = u_xlati72;
        let x_2677 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[(x_2672 / 4i)][(x_2674 % 4i)];
        let x_2679 : vec3<f32> = vs_TEXCOORD7;
        let x_2682 : vec4<f32> = u_xlat11;
        let x_2684 : vec3<f32> = ((vec3<f32>(x_2677.x, x_2677.y, x_2677.w) * vec3<f32>(x_2679.x, x_2679.x, x_2679.x)) + vec3<f32>(x_2682.x, x_2682.y, x_2682.z));
        let x_2685 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2684.x, x_2684.y, x_2684.z, x_2685.w);
        let x_2687 : i32 = u_xlati72;
        let x_2690 : i32 = u_xlati72;
        let x_2694 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2687 + 2i) / 4i)][((x_2690 + 2i) % 4i)];
        let x_2696 : vec3<f32> = vs_TEXCOORD7;
        let x_2699 : vec4<f32> = u_xlat11;
        let x_2701 : vec3<f32> = ((vec3<f32>(x_2694.x, x_2694.y, x_2694.w) * vec3<f32>(x_2696.z, x_2696.z, x_2696.z)) + vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
        let x_2702 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
        let x_2704 : vec4<f32> = u_xlat11;
        let x_2706 : i32 = u_xlati72;
        let x_2709 : i32 = u_xlati72;
        let x_2713 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2706 + 3i) / 4i)][((x_2709 + 3i) % 4i)];
        let x_2715 : vec3<f32> = (vec3<f32>(x_2704.x, x_2704.y, x_2704.z) + vec3<f32>(x_2713.x, x_2713.y, x_2713.w));
        let x_2716 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
        let x_2718 : vec4<f32> = u_xlat11;
        let x_2720 : vec4<f32> = u_xlat11;
        let x_2722 : vec2<f32> = (vec2<f32>(x_2718.x, x_2718.y) / vec2<f32>(x_2720.z, x_2720.z));
        let x_2723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2722.x, x_2722.y, x_2723.z, x_2723.w);
        let x_2725 : vec4<f32> = u_xlat11;
        let x_2728 : vec2<f32> = ((vec2<f32>(x_2725.x, x_2725.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2728.x, x_2728.y, x_2729.z, x_2729.w);
        let x_2731 : vec4<f32> = u_xlat11;
        let x_2735 : vec2<f32> = clamp(vec2<f32>(x_2731.x, x_2731.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2736 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2735.x, x_2735.y, x_2736.z, x_2736.w);
        let x_2738 : u32 = u_xlatu68;
        let x_2741 : vec4<f32> = x_2641.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2738)];
        let x_2743 : vec4<f32> = u_xlat11;
        let x_2746 : u32 = u_xlatu68;
        let x_2749 : vec4<f32> = x_2641.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2746)];
        let x_2751 : vec2<f32> = ((vec2<f32>(x_2741.x, x_2741.y) * vec2<f32>(x_2743.x, x_2743.y)) + vec2<f32>(x_2749.z, x_2749.w));
        let x_2752 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2751.x, x_2751.y, x_2752.z, x_2752.w);
      } else {
        let x_2756 : i32 = u_xlati70;
        u_xlatb70 = (x_2756 == 1i);
        let x_2758 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2758);
        let x_2760 : i32 = u_xlati70;
        if ((x_2760 != 0i)) {
          let x_2765 : vec3<f32> = vs_TEXCOORD7;
          let x_2767 : i32 = u_xlati72;
          let x_2770 : i32 = u_xlati72;
          let x_2774 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2767 + 1i) / 4i)][((x_2770 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2765.y, x_2765.y) * vec2<f32>(x_2774.x, x_2774.y));
          let x_2777 : i32 = u_xlati72;
          let x_2779 : i32 = u_xlati72;
          let x_2782 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[(x_2777 / 4i)][(x_2779 % 4i)];
          let x_2784 : vec3<f32> = vs_TEXCOORD7;
          let x_2787 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2782.x, x_2782.y) * vec2<f32>(x_2784.x, x_2784.x)) + x_2787);
          let x_2789 : i32 = u_xlati72;
          let x_2792 : i32 = u_xlati72;
          let x_2796 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2789 + 2i) / 4i)][((x_2792 + 2i) % 4i)];
          let x_2798 : vec3<f32> = vs_TEXCOORD7;
          let x_2801 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2796.x, x_2796.y) * vec2<f32>(x_2798.z, x_2798.z)) + x_2801);
          let x_2803 : vec2<f32> = u_xlat53;
          let x_2804 : i32 = u_xlati72;
          let x_2807 : i32 = u_xlati72;
          let x_2811 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2804 + 3i) / 4i)][((x_2807 + 3i) % 4i)];
          u_xlat53 = (x_2803 + vec2<f32>(x_2811.x, x_2811.y));
          let x_2814 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2814 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2817 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2817);
          let x_2819 : u32 = u_xlatu68;
          let x_2822 : vec4<f32> = x_2641.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2819)];
          let x_2824 : vec2<f32> = u_xlat53;
          let x_2826 : u32 = u_xlatu68;
          let x_2829 : vec4<f32> = x_2641.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2826)];
          let x_2831 : vec2<f32> = ((vec2<f32>(x_2822.x, x_2822.y) * x_2824) + vec2<f32>(x_2829.z, x_2829.w));
          let x_2832 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2831.x, x_2831.y, x_2832.z, x_2832.w);
        } else {
          let x_2835 : vec3<f32> = vs_TEXCOORD7;
          let x_2837 : i32 = u_xlati72;
          let x_2840 : i32 = u_xlati72;
          let x_2844 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2837 + 1i) / 4i)][((x_2840 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2835.y, x_2835.y, x_2835.y, x_2835.y) * x_2844);
          let x_2846 : i32 = u_xlati72;
          let x_2848 : i32 = u_xlati72;
          let x_2851 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[(x_2846 / 4i)][(x_2848 % 4i)];
          let x_2852 : vec3<f32> = vs_TEXCOORD7;
          let x_2855 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2851 * vec4<f32>(x_2852.x, x_2852.x, x_2852.x, x_2852.x)) + x_2855);
          let x_2857 : i32 = u_xlati72;
          let x_2860 : i32 = u_xlati72;
          let x_2864 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2857 + 2i) / 4i)][((x_2860 + 2i) % 4i)];
          let x_2865 : vec3<f32> = vs_TEXCOORD7;
          let x_2868 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2864 * vec4<f32>(x_2865.z, x_2865.z, x_2865.z, x_2865.z)) + x_2868);
          let x_2870 : vec4<f32> = u_xlat12;
          let x_2871 : i32 = u_xlati72;
          let x_2874 : i32 = u_xlati72;
          let x_2878 : vec4<f32> = x_2641.x_AdditionalLightsWorldToLights[((x_2871 + 3i) / 4i)][((x_2874 + 3i) % 4i)];
          u_xlat12 = (x_2870 + x_2878);
          let x_2880 : vec4<f32> = u_xlat12;
          let x_2882 : vec4<f32> = u_xlat12;
          let x_2884 : vec3<f32> = (vec3<f32>(x_2880.x, x_2880.y, x_2880.z) / vec3<f32>(x_2882.w, x_2882.w, x_2882.w));
          let x_2885 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2884.x, x_2884.y, x_2884.z, x_2885.w);
          let x_2887 : vec4<f32> = u_xlat12;
          let x_2889 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2887.x, x_2887.y, x_2887.z), vec3<f32>(x_2889.x, x_2889.y, x_2889.z));
          let x_2892 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2892);
          let x_2894 : f32 = u_xlat70;
          let x_2896 : vec4<f32> = u_xlat12;
          let x_2898 : vec3<f32> = (vec3<f32>(x_2894, x_2894, x_2894) * vec3<f32>(x_2896.x, x_2896.y, x_2896.z));
          let x_2899 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2899.w);
          let x_2901 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2901.x, x_2901.y, x_2901.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2906 : f32 = u_xlat70;
          u_xlat70 = max(x_2906, 0.000001f);
          let x_2909 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2909);
          let x_2911 : f32 = u_xlat70;
          let x_2913 : vec4<f32> = u_xlat12;
          let x_2915 : vec3<f32> = (vec3<f32>(x_2911, x_2911, x_2911) * vec3<f32>(x_2913.z, x_2913.x, x_2913.y));
          let x_2916 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);
          let x_2919 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2919);
          let x_2923 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2923, 0.0f, 1.0f);
          let x_2927 : vec4<f32> = u_xlat13;
          let x_2930 : vec4<bool> = (vec4<f32>(x_2927.y, x_2927.z, x_2927.y, x_2927.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2930.x, x_2930.y);
          let x_2933 : bool = u_xlatb53.x;
          if (x_2933) {
            let x_2938 : f32 = u_xlat13.x;
            x_2934 = x_2938;
          } else {
            let x_2941 : f32 = u_xlat13.x;
            x_2934 = -(x_2941);
          }
          let x_2943 : f32 = x_2934;
          u_xlat53.x = x_2943;
          let x_2946 : bool = u_xlatb53.y;
          if (x_2946) {
            let x_2951 : f32 = u_xlat13.x;
            x_2947 = x_2951;
          } else {
            let x_2954 : f32 = u_xlat13.x;
            x_2947 = -(x_2954);
          }
          let x_2956 : f32 = x_2947;
          u_xlat53.y = x_2956;
          let x_2958 : vec4<f32> = u_xlat12;
          let x_2960 : f32 = u_xlat70;
          let x_2963 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2958.x, x_2958.y) * vec2<f32>(x_2960, x_2960)) + x_2963);
          let x_2965 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2965 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2968 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2968, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2972 : u32 = u_xlatu68;
          let x_2975 : vec4<f32> = x_2641.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2972)];
          let x_2977 : vec2<f32> = u_xlat53;
          let x_2979 : u32 = u_xlatu68;
          let x_2982 : vec4<f32> = x_2641.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2979)];
          let x_2984 : vec2<f32> = ((vec2<f32>(x_2975.x, x_2975.y) * x_2977) + vec2<f32>(x_2982.z, x_2982.w));
          let x_2985 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2984.x, x_2984.y, x_2985.z, x_2985.w);
        }
      }
      let x_2992 : vec4<f32> = u_xlat11;
      let x_2995 : f32 = x_126.x_GlobalMipBias.x;
      let x_2996 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2992.x, x_2992.y), x_2995);
      u_xlat11 = x_2996;
      let x_2998 : bool = u_xlatb7.y;
      if (x_2998) {
        let x_3003 : f32 = u_xlat11.w;
        x_2999 = x_3003;
      } else {
        let x_3006 : f32 = u_xlat11.x;
        x_2999 = x_3006;
      }
      let x_3007 : f32 = x_2999;
      u_xlat70 = x_3007;
      let x_3009 : bool = u_xlatb7.x;
      if (x_3009) {
        let x_3013 : vec4<f32> = u_xlat11;
        x_3010 = vec3<f32>(x_3013.x, x_3013.y, x_3013.z);
      } else {
        let x_3016 : f32 = u_xlat70;
        x_3010 = vec3<f32>(x_3016, x_3016, x_3016);
      }
      let x_3018 : vec3<f32> = x_3010;
      let x_3019 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3018.x, x_3018.y, x_3018.z, x_3019.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3025 : vec4<f32> = u_xlat11;
    let x_3027 : u32 = u_xlatu68;
    let x_3030 : vec4<f32> = x_2533.x_AdditionalLightsColor[bitcast<i32>(x_3027)];
    let x_3032 : vec3<f32> = (vec3<f32>(x_3025.x, x_3025.y, x_3025.z) * vec3<f32>(x_3030.x, x_3030.y, x_3030.z));
    let x_3033 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3032.x, x_3032.y, x_3032.z, x_3033.w);
    let x_3035 : f32 = u_xlat25;
    let x_3037 : vec4<f32> = u_xlat11;
    let x_3039 : vec3<f32> = (vec3<f32>(x_3035, x_3035, x_3035) * vec3<f32>(x_3037.x, x_3037.y, x_3037.z));
    let x_3040 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3039.x, x_3039.y, x_3039.z, x_3040.w);
    let x_3042 : vec4<f32> = u_xlat1;
    let x_3044 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3042.x, x_3042.y, x_3042.z), vec3<f32>(x_3044.x, x_3044.y, x_3044.z));
    let x_3047 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3047, 0.0f, 1.0f);
    let x_3049 : f32 = u_xlat68;
    let x_3050 : f32 = u_xlat69;
    u_xlat68 = (x_3049 * x_3050);
    let x_3052 : f32 = u_xlat68;
    let x_3054 : vec4<f32> = u_xlat11;
    let x_3056 : vec3<f32> = (vec3<f32>(x_3052, x_3052, x_3052) * vec3<f32>(x_3054.x, x_3054.y, x_3054.z));
    let x_3057 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3057.w);
    let x_3059 : vec4<f32> = u_xlat9;
    let x_3061 : vec2<f32> = u_xlat49;
    let x_3064 : vec3<f32> = u_xlat2;
    let x_3065 : vec3<f32> = ((vec3<f32>(x_3059.x, x_3059.y, x_3059.z) * vec3<f32>(x_3061.x, x_3061.x, x_3061.x)) + x_3064);
    let x_3066 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3065.x, x_3065.y, x_3065.z, x_3066.w);
    let x_3068 : vec4<f32> = u_xlat9;
    let x_3070 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3068.x, x_3068.y, x_3068.z), vec3<f32>(x_3070.x, x_3070.y, x_3070.z));
    let x_3073 : f32 = u_xlat68;
    u_xlat68 = max(x_3073, 1.17549435e-37f);
    let x_3075 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3075);
    let x_3077 : f32 = u_xlat68;
    let x_3079 : vec4<f32> = u_xlat9;
    let x_3081 : vec3<f32> = (vec3<f32>(x_3077, x_3077, x_3077) * vec3<f32>(x_3079.x, x_3079.y, x_3079.z));
    let x_3082 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3082.w);
    let x_3084 : vec4<f32> = u_xlat1;
    let x_3086 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3084.x, x_3084.y, x_3084.z), vec3<f32>(x_3086.x, x_3086.y, x_3086.z));
    let x_3089 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3089, 0.0f, 1.0f);
    let x_3091 : vec4<f32> = u_xlat10;
    let x_3093 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3091.x, x_3091.y, x_3091.z), vec3<f32>(x_3093.x, x_3093.y, x_3093.z));
    let x_3096 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3096, 0.0f, 1.0f);
    let x_3098 : f32 = u_xlat68;
    let x_3099 : f32 = u_xlat68;
    u_xlat68 = (x_3098 * x_3099);
    let x_3101 : f32 = u_xlat68;
    let x_3103 : f32 = u_xlat0.x;
    u_xlat68 = ((x_3101 * x_3103) + 1.000010014f);
    let x_3106 : f32 = u_xlat69;
    let x_3107 : f32 = u_xlat69;
    u_xlat69 = (x_3106 * x_3107);
    let x_3109 : f32 = u_xlat68;
    let x_3110 : f32 = u_xlat68;
    u_xlat68 = (x_3109 * x_3110);
    let x_3112 : f32 = u_xlat69;
    u_xlat69 = max(x_3112, 0.100000001f);
    let x_3114 : f32 = u_xlat68;
    let x_3115 : f32 = u_xlat69;
    u_xlat68 = (x_3114 * x_3115);
    let x_3117 : f32 = u_xlat66;
    let x_3118 : f32 = u_xlat68;
    u_xlat68 = (x_3117 * x_3118);
    let x_3120 : f32 = u_xlat64;
    let x_3121 : f32 = u_xlat68;
    u_xlat68 = (x_3120 / x_3121);
    let x_3123 : vec4<f32> = u_xlat5;
    let x_3125 : f32 = u_xlat68;
    let x_3128 : vec4<f32> = u_xlat6;
    let x_3130 : vec3<f32> = ((vec3<f32>(x_3123.x, x_3123.y, x_3123.z) * vec3<f32>(x_3125, x_3125, x_3125)) + vec3<f32>(x_3128.x, x_3128.y, x_3128.z));
    let x_3131 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3131.w);
    let x_3133 : vec4<f32> = u_xlat9;
    let x_3135 : vec4<f32> = u_xlat11;
    let x_3138 : vec4<f32> = u_xlat8;
    let x_3140 : vec3<f32> = ((vec3<f32>(x_3133.x, x_3133.y, x_3133.z) * vec3<f32>(x_3135.x, x_3135.y, x_3135.z)) + vec3<f32>(x_3138.x, x_3138.y, x_3138.z));
    let x_3141 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3140.x, x_3140.y, x_3140.z, x_3141.w);

    continuing {
      let x_3143 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3143 + bitcast<u32>(1i));
    }
  }
  let x_3145 : vec4<f32> = u_xlat3;
  let x_3147 : f32 = u_xlat21;
  let x_3150 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_3145.x, x_3145.y, x_3145.z) * vec3<f32>(x_3147, x_3147, x_3147)) + vec3<f32>(x_3150.x, x_3150.z, x_3150.w));
  let x_3153 : vec4<f32> = u_xlat8;
  let x_3155 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3153.x, x_3153.y, x_3153.z) + x_3155);
  let x_3159 : f32 = u_xlat63;
  let x_3161 : vec3<f32> = u_xlat0;
  let x_3162 : vec3<f32> = (vec3<f32>(x_3159, x_3159, x_3159) * x_3161);
  let x_3163 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3162.x, x_3162.y, x_3162.z, x_3163.w);
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

