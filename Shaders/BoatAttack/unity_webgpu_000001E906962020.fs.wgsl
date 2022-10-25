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

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_602 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_789 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2309 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2798 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2900 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb3 : vec4<bool>;
  var u_xlat65 : f32;
  var u_xlatu65 : u32;
  var u_xlati65 : i32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var u_xlat48 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb24 : vec2<bool>;
  var u_xlatb45 : bool;
  var x_2257 : f32;
  var u_xlat24 : vec2<f32>;
  var u_xlat45 : f32;
  var x_2376 : f32;
  var x_2387 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var u_xlati69 : i32;
  var u_xlati71 : i32;
  var u_xlatb69 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3193 : f32;
  var x_3206 : f32;
  var x_3258 : f32;
  var x_3269 : vec3<f32>;
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
  let x_597 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres0;
  let x_607 : vec3<f32> = (x_597 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres1;
  let x_615 : vec3<f32> = (x_610 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres2;
  let x_624 : vec3<f32> = (x_618 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres3;
  let x_632 : vec3<f32> = (x_627 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = x_602.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_661 < x_663);
  let x_666 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_682);
  let x_687 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_687);
  let x_691 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_691);
  let x_694 : vec4<f32> = u_xlat3;
  let x_696 : vec4<f32> = u_xlat4;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(x_696.y, x_696.z, x_696.w));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = max(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_704.x, x_704.y, x_704.z);
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat65 = dot(x_708, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_713 : f32 = u_xlat65;
  u_xlat65 = (-(x_713) + 4.0f);
  let x_718 : f32 = u_xlat65;
  u_xlatu65 = u32(x_718);
  let x_722 : u32 = u_xlatu65;
  u_xlati65 = (bitcast<i32>(x_722) << bitcast<u32>(2i));
  let x_725 : vec3<f32> = vs_TEXCOORD7;
  let x_727 : i32 = u_xlati65;
  let x_730 : i32 = u_xlati65;
  let x_734 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_727 + 1i) / 4i)][((x_730 + 1i) % 4i)];
  let x_736 : vec3<f32> = (vec3<f32>(x_725.y, x_725.y, x_725.y) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : i32 = u_xlati65;
  let x_741 : i32 = u_xlati65;
  let x_744 : vec4<f32> = x_602.x_MainLightWorldToShadow[(x_739 / 4i)][(x_741 % 4i)];
  let x_746 : vec3<f32> = vs_TEXCOORD7;
  let x_749 : vec4<f32> = u_xlat3;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_746.x, x_746.x, x_746.x)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : i32 = u_xlati65;
  let x_757 : i32 = u_xlati65;
  let x_761 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_754 + 2i) / 4i)][((x_757 + 2i) % 4i)];
  let x_763 : vec3<f32> = vs_TEXCOORD7;
  let x_766 : vec4<f32> = u_xlat3;
  let x_768 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_763.z, x_763.z, x_763.z)) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat3;
  let x_773 : i32 = u_xlati65;
  let x_776 : i32 = u_xlati65;
  let x_780 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_773 + 3i) / 4i)][((x_776 + 3i) % 4i)];
  let x_782 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) + vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  u_xlat1.w = 1.0f;
  let x_791 : vec4<f32> = x_789.unity_SHAr;
  let x_792 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_791, x_792);
  let x_796 : vec4<f32> = x_789.unity_SHAg;
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_796, x_797);
  let x_801 : vec4<f32> = x_789.unity_SHAb;
  let x_802 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_801, x_802);
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_805.y, x_805.z, x_805.z, x_805.x) * vec4<f32>(x_807.x, x_807.y, x_807.z, x_807.z));
  let x_811 : vec4<f32> = x_789.unity_SHBr;
  let x_812 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_811, x_812);
  let x_816 : vec4<f32> = x_789.unity_SHBg;
  let x_817 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_816, x_817);
  let x_821 : vec4<f32> = x_789.unity_SHBb;
  let x_822 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_821, x_822);
  let x_826 : f32 = u_xlat1.y;
  let x_828 : f32 = u_xlat1.y;
  u_xlat64 = (x_826 * x_828);
  let x_831 : f32 = u_xlat1.x;
  let x_833 : f32 = u_xlat1.x;
  let x_835 : f32 = u_xlat64;
  u_xlat64 = ((x_831 * x_833) + -(x_835));
  let x_840 : vec4<f32> = x_789.unity_SHC;
  let x_842 : f32 = u_xlat64;
  let x_845 : vec4<f32> = u_xlat7;
  let x_847 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(x_842, x_842, x_842)) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat4;
  let x_852 : vec4<f32> = u_xlat6;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) + vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat4;
  let x_859 : vec3<f32> = max(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_860 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_864 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
  let x_869 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_865.x, x_865.y));
  let x_870 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat6;
  let x_874 : vec4<f32> = hlslcc_FragCoord;
  let x_876 : vec2<f32> = (vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_874.x, x_874.y));
  let x_877 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
  let x_880 : f32 = u_xlat6.y;
  let x_882 : f32 = x_126.x_ScaleBiasRt.x;
  let x_885 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_880 * x_882) + x_885);
  let x_887 : f32 = u_xlat64;
  u_xlat6.z = (-(x_887) + 1.0f);
  let x_892 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_892) * 0.959999979f) + 0.959999979f);
  let x_897 : f32 = u_xlat64;
  u_xlat65 = (-(x_897) + 1.0f);
  let x_900 : f32 = u_xlat64;
  let x_902 : vec4<f32> = u_xlat5;
  let x_904 : vec3<f32> = (vec3<f32>(x_900, x_900, x_900) * vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat5;
  let x_911 : vec3<f32> = (vec3<f32>(x_907.x, x_907.y, x_907.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_912 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec3<f32> = u_xlat0;
  let x_916 : vec4<f32> = u_xlat5;
  let x_921 : vec3<f32> = ((vec3<f32>(x_914.x, x_914.x, x_914.x) * vec3<f32>(x_916.x, x_916.y, x_916.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_922 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : f32 = u_xlat42;
  u_xlat0.x = (-(x_924) + 1.0f);
  let x_929 : f32 = u_xlat0.x;
  let x_931 : f32 = u_xlat0.x;
  u_xlat64 = (x_929 * x_931);
  let x_933 : f32 = u_xlat64;
  u_xlat64 = max(x_933, 0.0078125f);
  let x_937 : f32 = u_xlat64;
  let x_938 : f32 = u_xlat64;
  u_xlat66 = (x_937 * x_938);
  let x_940 : f32 = u_xlat42;
  let x_941 : f32 = u_xlat65;
  u_xlat42 = (x_940 + x_941);
  let x_943 : f32 = u_xlat42;
  u_xlat42 = clamp(x_943, 0.0f, 1.0f);
  let x_945 : f32 = u_xlat64;
  u_xlat65 = ((x_945 * 4.0f) + 2.0f);
  let x_954 : vec4<f32> = u_xlat6;
  let x_957 : f32 = x_126.x_GlobalMipBias.x;
  let x_958 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_954.x, x_954.z), x_957);
  u_xlat67 = x_958.x;
  let x_961 : f32 = u_xlat67;
  u_xlat68 = (x_961 + -1.0f);
  let x_964 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_965 : f32 = u_xlat68;
  u_xlat68 = ((x_964 * x_965) + 1.0f);
  let x_968 : f32 = u_xlat21;
  let x_969 : f32 = u_xlat67;
  u_xlat21 = min(x_968, x_969);
  let x_973 : f32 = x_602.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_973);
  let x_975 : bool = u_xlatb67;
  if (x_975) {
    let x_979 : f32 = x_602.x_MainLightShadowParams.y;
    u_xlatb67 = (x_979 == 1.0f);
    let x_981 : bool = u_xlatb67;
    if (x_981) {
      let x_984 : vec4<f32> = u_xlat3;
      let x_987 : vec4<f32> = x_602.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) + x_987);
      let x_990 : vec4<f32> = u_xlat6;
      let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
      let x_993 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_991.x, x_991.y, x_993);
      let x_1005 : vec3<f32> = txVec0;
      let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
      u_xlat8.x = x_1007;
      let x_1010 : vec4<f32> = u_xlat6;
      let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
      let x_1013 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
      let x_1020 : vec3<f32> = txVec1;
      let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1020.xy, x_1020.z);
      u_xlat8.y = x_1022;
      let x_1024 : vec4<f32> = u_xlat3;
      let x_1027 : vec4<f32> = x_602.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) + x_1027);
      let x_1030 : vec4<f32> = u_xlat6;
      let x_1031 : vec2<f32> = vec2<f32>(x_1030.x, x_1030.y);
      let x_1033 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1031.x, x_1031.y, x_1033);
      let x_1040 : vec3<f32> = txVec2;
      let x_1042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1040.xy, x_1040.z);
      u_xlat8.z = x_1042;
      let x_1045 : vec4<f32> = u_xlat6;
      let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
      let x_1048 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
      let x_1055 : vec3<f32> = txVec3;
      let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1055.xy, x_1055.z);
      u_xlat8.w = x_1057;
      let x_1059 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_1059, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1068 : f32 = x_602.x_MainLightShadowParams.y;
      u_xlatb6.x = (x_1068 == 2.0f);
      let x_1072 : bool = u_xlatb6.x;
      if (x_1072) {
        let x_1075 : vec4<f32> = u_xlat3;
        let x_1078 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1078.z, x_1078.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1082 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat6;
        let x_1086 : vec2<f32> = floor(vec2<f32>(x_1084.x, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1091 : vec4<f32> = u_xlat3;
        let x_1094 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.z, x_1094.w)) + -(vec2<f32>(x_1097.x, x_1097.y)));
        let x_1101 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1101.x, x_1101.x, x_1101.y, x_1101.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1107 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1105.x, x_1105.x, x_1105.z, x_1105.z) * vec4<f32>(x_1107.x, x_1107.x, x_1107.z, x_1107.z));
        let x_1110 : vec4<f32> = u_xlat9;
        let x_1114 : vec2<f32> = (vec2<f32>(x_1110.y, x_1110.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1120 : vec2<f32> = u_xlat48;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1120));
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1126 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1126) + vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec2<f32> = u_xlat48;
        let x_1131 : vec2<f32> = min(x_1129, vec2<f32>(0.0f, 0.0f));
        let x_1132 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat10;
        let x_1137 : vec4<f32> = u_xlat10;
        let x_1140 : vec2<f32> = u_xlat51;
        let x_1141 : vec2<f32> = ((-(vec2<f32>(x_1134.x, x_1134.y)) * vec2<f32>(x_1137.x, x_1137.y)) + x_1140);
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1144, vec2<f32>(0.0f, 0.0f));
        let x_1146 : vec2<f32> = u_xlat48;
        let x_1148 : vec2<f32> = u_xlat48;
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1146) * x_1148) + vec2<f32>(x_1150.y, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1153.x, x_1153.y) + vec2<f32>(1.0f, 1.0f));
        let x_1156 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1158 + vec2<f32>(1.0f, 1.0f));
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1164 : vec2<f32> = (vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1165 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec2<f32> = u_xlat51;
        let x_1168 : vec2<f32> = (x_1167 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1173 : vec2<f32> = (vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec2<f32> = u_xlat48;
        let x_1177 : vec2<f32> = (x_1176 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1178 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1180.y, x_1180.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1184 : f32 = u_xlat10.x;
        u_xlat11.z = x_1184;
        let x_1187 : f32 = u_xlat48.x;
        u_xlat11.w = x_1187;
        let x_1190 : f32 = u_xlat12.x;
        u_xlat9.z = x_1190;
        let x_1193 : f32 = u_xlat8.x;
        u_xlat9.w = x_1193;
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1195.z, x_1195.w, x_1195.x, x_1195.z) + vec4<f32>(x_1197.z, x_1197.w, x_1197.x, x_1197.z));
        let x_1201 : f32 = u_xlat11.y;
        u_xlat10.z = x_1201;
        let x_1204 : f32 = u_xlat48.y;
        u_xlat10.w = x_1204;
        let x_1207 : f32 = u_xlat9.y;
        u_xlat12.z = x_1207;
        let x_1210 : f32 = u_xlat8.z;
        u_xlat12.w = x_1210;
        let x_1212 : vec4<f32> = u_xlat10;
        let x_1214 : vec4<f32> = u_xlat12;
        let x_1216 : vec3<f32> = (vec3<f32>(x_1212.z, x_1212.y, x_1212.w) + vec3<f32>(x_1214.z, x_1214.y, x_1214.w));
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat9;
        let x_1221 : vec4<f32> = u_xlat13;
        let x_1223 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.z, x_1219.w) / vec3<f32>(x_1221.z, x_1221.w, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1226.x, x_1226.y, x_1226.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat12;
        let x_1237 : vec4<f32> = u_xlat8;
        let x_1239 : vec3<f32> = (vec3<f32>(x_1235.z, x_1235.y, x_1235.w) / vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
        let x_1240 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat10;
        let x_1244 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat9;
        let x_1250 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1252 : vec3<f32> = (vec3<f32>(x_1247.y, x_1247.x, x_1247.z) * vec3<f32>(x_1250.x, x_1250.x, x_1250.x));
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1258 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1260 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1258.y, x_1258.y, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
        let x_1264 : f32 = u_xlat10.x;
        u_xlat9.w = x_1264;
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1269 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.y, x_1272.w, x_1272.x, x_1272.w));
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.z, x_1281.w));
        let x_1285 : f32 = u_xlat9.y;
        u_xlat10.w = x_1285;
        let x_1287 : vec4<f32> = u_xlat10;
        let x_1288 : vec2<f32> = vec2<f32>(x_1287.y, x_1287.z);
        let x_1289 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1289.x, x_1288.x, x_1289.z, x_1288.y);
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1297.y));
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1303 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y) * vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y)) + vec4<f32>(x_1306.w, x_1306.y, x_1306.w, x_1306.z));
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1312 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y) * vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y)) + vec4<f32>(x_1315.x, x_1315.w, x_1315.z, x_1315.w));
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1321 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1319.x, x_1319.x, x_1319.x, x_1319.y) * vec4<f32>(x_1321.z, x_1321.w, x_1321.y, x_1321.z));
        let x_1325 : vec4<f32> = u_xlat8;
        let x_1327 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1325.y, x_1325.y, x_1325.z, x_1325.z) * x_1327);
        let x_1330 : f32 = u_xlat8.z;
        let x_1332 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1330 * x_1332);
        let x_1336 : vec4<f32> = u_xlat11;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.x, x_1336.y);
        let x_1339 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1347 : vec3<f32> = txVec4;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat27 = x_1349;
        let x_1351 : vec4<f32> = u_xlat11;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1362 : vec3<f32> = txVec5;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1362.xy, x_1362.z);
        u_xlat70 = x_1364;
        let x_1365 : f32 = u_xlat70;
        let x_1367 : f32 = u_xlat14.y;
        u_xlat70 = (x_1365 * x_1367);
        let x_1370 : f32 = u_xlat14.x;
        let x_1371 : f32 = u_xlat27;
        let x_1373 : f32 = u_xlat70;
        u_xlat27 = ((x_1370 * x_1371) + x_1373);
        let x_1376 : vec2<f32> = u_xlat48;
        let x_1378 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec6;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1385.xy, x_1385.z);
        u_xlat48.x = x_1387;
        let x_1390 : f32 = u_xlat14.z;
        let x_1392 : f32 = u_xlat48.x;
        let x_1394 : f32 = u_xlat27;
        u_xlat27 = ((x_1390 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat10;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec7;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1407.xy, x_1407.z);
        u_xlat48.x = x_1409;
        let x_1412 : f32 = u_xlat14.w;
        let x_1414 : f32 = u_xlat48.x;
        let x_1416 : f32 = u_xlat27;
        u_xlat27 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat12;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec8;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1429.xy, x_1429.z);
        u_xlat48.x = x_1431;
        let x_1434 : f32 = u_xlat15.x;
        let x_1436 : f32 = u_xlat48.x;
        let x_1438 : f32 = u_xlat27;
        u_xlat27 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat12;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec9;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1451.xy, x_1451.z);
        u_xlat48.x = x_1453;
        let x_1456 : f32 = u_xlat15.y;
        let x_1458 : f32 = u_xlat48.x;
        let x_1460 : f32 = u_xlat27;
        u_xlat27 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat10;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec10;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat48.x = x_1475;
        let x_1478 : f32 = u_xlat15.z;
        let x_1480 : f32 = u_xlat48.x;
        let x_1482 : f32 = u_xlat27;
        u_xlat27 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec11;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat48.x = x_1497;
        let x_1500 : f32 = u_xlat15.w;
        let x_1502 : f32 = u_xlat48.x;
        let x_1504 : f32 = u_xlat27;
        u_xlat27 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.z, x_1507.w);
        let x_1510 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec12;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1517.xy, x_1517.z);
        u_xlat48.x = x_1519;
        let x_1522 : f32 = u_xlat6.x;
        let x_1524 : f32 = u_xlat48.x;
        let x_1526 : f32 = u_xlat27;
        u_xlat67 = ((x_1522 * x_1524) + x_1526);
      } else {
        let x_1529 : vec4<f32> = u_xlat3;
        let x_1532 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1535 : vec2<f32> = ((vec2<f32>(x_1529.x, x_1529.y) * vec2<f32>(x_1532.z, x_1532.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1536 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1535.x, x_1535.y, x_1536.z, x_1536.w);
        let x_1538 : vec4<f32> = u_xlat6;
        let x_1540 : vec2<f32> = floor(vec2<f32>(x_1538.x, x_1538.y));
        let x_1541 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
        let x_1543 : vec4<f32> = u_xlat3;
        let x_1546 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1549 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1543.x, x_1543.y) * vec2<f32>(x_1546.z, x_1546.w)) + -(vec2<f32>(x_1549.x, x_1549.y)));
        let x_1553 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1553.x, x_1553.x, x_1553.y, x_1553.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1556 : vec4<f32> = u_xlat8;
        let x_1558 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1556.x, x_1556.x, x_1556.z, x_1556.z) * vec4<f32>(x_1558.x, x_1558.x, x_1558.z, x_1558.z));
        let x_1561 : vec4<f32> = u_xlat9;
        let x_1565 : vec2<f32> = (vec2<f32>(x_1561.y, x_1561.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1566 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1566.x, x_1565.x, x_1566.z, x_1565.y);
        let x_1568 : vec4<f32> = u_xlat9;
        let x_1571 : vec2<f32> = u_xlat48;
        let x_1573 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1571));
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1573.x, x_1574.y, x_1573.y, x_1574.w);
        let x_1576 : vec2<f32> = u_xlat48;
        let x_1578 : vec2<f32> = (-(x_1576) + vec2<f32>(1.0f, 1.0f));
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
        let x_1581 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1581, vec2<f32>(0.0f, 0.0f));
        let x_1583 : vec2<f32> = u_xlat51;
        let x_1585 : vec2<f32> = u_xlat51;
        let x_1587 : vec4<f32> = u_xlat9;
        let x_1589 : vec2<f32> = ((-(x_1583) * x_1585) + vec2<f32>(x_1587.x, x_1587.y));
        let x_1590 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
        let x_1592 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1592, vec2<f32>(0.0f, 0.0f));
        let x_1595 : vec2<f32> = u_xlat51;
        let x_1597 : vec2<f32> = u_xlat51;
        let x_1599 : vec4<f32> = u_xlat8;
        let x_1601 : vec2<f32> = ((-(x_1595) * x_1597) + vec2<f32>(x_1599.y, x_1599.w));
        let x_1602 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1601.x, x_1602.y, x_1601.y);
        let x_1604 : vec4<f32> = u_xlat9;
        let x_1607 : vec2<f32> = (vec2<f32>(x_1604.x, x_1604.y) + vec2<f32>(2.0f, 2.0f));
        let x_1608 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
        let x_1610 : vec3<f32> = u_xlat29;
        let x_1612 : vec2<f32> = (vec2<f32>(x_1610.x, x_1610.z) + vec2<f32>(2.0f, 2.0f));
        let x_1613 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1613.x, x_1612.x, x_1613.z, x_1612.y);
        let x_1616 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1616 * 0.081632003f);
        let x_1620 : vec4<f32> = u_xlat8;
        let x_1623 : vec3<f32> = (vec3<f32>(x_1620.z, x_1620.x, x_1620.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1624 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
        let x_1626 : vec4<f32> = u_xlat9;
        let x_1629 : vec2<f32> = (vec2<f32>(x_1626.x, x_1626.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1630 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1629.x, x_1629.y, x_1630.z, x_1630.w);
        let x_1633 : f32 = u_xlat12.y;
        u_xlat11.x = x_1633;
        let x_1635 : vec2<f32> = u_xlat48;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1635.x, x_1635.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1643 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1643.x, x_1642.x, x_1643.z, x_1642.y);
        let x_1645 : vec2<f32> = u_xlat48;
        let x_1649 : vec2<f32> = ((vec2<f32>(x_1645.x, x_1645.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1649.x, x_1650.y, x_1649.y, x_1650.w);
        let x_1653 : f32 = u_xlat8.x;
        u_xlat9.y = x_1653;
        let x_1656 : f32 = u_xlat10.y;
        u_xlat9.w = x_1656;
        let x_1658 : vec4<f32> = u_xlat9;
        let x_1659 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1658 + x_1659);
        let x_1661 : vec2<f32> = u_xlat48;
        let x_1664 : vec2<f32> = ((vec2<f32>(x_1661.y, x_1661.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1665 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1665.x, x_1664.x, x_1665.z, x_1664.y);
        let x_1667 : vec2<f32> = u_xlat48;
        let x_1670 : vec2<f32> = ((vec2<f32>(x_1667.y, x_1667.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1671 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1670.x, x_1671.y, x_1670.y, x_1671.w);
        let x_1674 : f32 = u_xlat8.y;
        u_xlat10.y = x_1674;
        let x_1676 : vec4<f32> = u_xlat10;
        let x_1677 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1676 + x_1677);
        let x_1679 : vec4<f32> = u_xlat9;
        let x_1680 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1679 / x_1680);
        let x_1682 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1682 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1688 : vec4<f32> = u_xlat10;
        let x_1689 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1688 / x_1689);
        let x_1691 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1691 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1693 : vec4<f32> = u_xlat9;
        let x_1696 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1693.w, x_1693.x, x_1693.y, x_1693.z) * vec4<f32>(x_1696.x, x_1696.x, x_1696.x, x_1696.x));
        let x_1699 : vec4<f32> = u_xlat10;
        let x_1702 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1699.x, x_1699.w, x_1699.y, x_1699.z) * vec4<f32>(x_1702.y, x_1702.y, x_1702.y, x_1702.y));
        let x_1705 : vec4<f32> = u_xlat9;
        let x_1706 : vec3<f32> = vec3<f32>(x_1705.y, x_1705.z, x_1705.w);
        let x_1707 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1706.x, x_1707.y, x_1706.y, x_1706.z);
        let x_1710 : f32 = u_xlat10.x;
        u_xlat12.y = x_1710;
        let x_1712 : vec4<f32> = u_xlat6;
        let x_1715 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1718 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1712.x, x_1712.y, x_1712.x, x_1712.y) * vec4<f32>(x_1715.x, x_1715.y, x_1715.x, x_1715.y)) + vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1718.y));
        let x_1721 : vec4<f32> = u_xlat6;
        let x_1724 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1727 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1721.x, x_1721.y) * vec2<f32>(x_1724.x, x_1724.y)) + vec2<f32>(x_1727.w, x_1727.y));
        let x_1731 : f32 = u_xlat12.y;
        u_xlat9.y = x_1731;
        let x_1734 : f32 = u_xlat10.z;
        u_xlat12.y = x_1734;
        let x_1736 : vec4<f32> = u_xlat6;
        let x_1739 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1742 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1736.x, x_1736.y, x_1736.x, x_1736.y) * vec4<f32>(x_1739.x, x_1739.y, x_1739.x, x_1739.y)) + vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1742.y));
        let x_1745 : vec4<f32> = u_xlat6;
        let x_1748 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat12;
        let x_1753 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * vec2<f32>(x_1748.x, x_1748.y)) + vec2<f32>(x_1751.w, x_1751.y));
        let x_1754 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
        let x_1757 : f32 = u_xlat12.y;
        u_xlat9.z = x_1757;
        let x_1760 : vec4<f32> = u_xlat6;
        let x_1763 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1766 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1760.x, x_1760.y, x_1760.x, x_1760.y) * vec4<f32>(x_1763.x, x_1763.y, x_1763.x, x_1763.y)) + vec4<f32>(x_1766.x, x_1766.y, x_1766.x, x_1766.z));
        let x_1770 : f32 = u_xlat10.w;
        u_xlat12.y = x_1770;
        let x_1773 : vec4<f32> = u_xlat6;
        let x_1776 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1779 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1773.x, x_1773.y, x_1773.x, x_1773.y) * vec4<f32>(x_1776.x, x_1776.y, x_1776.x, x_1776.y)) + vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1779.y));
        let x_1783 : vec4<f32> = u_xlat6;
        let x_1786 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1789 : vec4<f32> = u_xlat12;
        let x_1791 : vec2<f32> = ((vec2<f32>(x_1783.x, x_1783.y) * vec2<f32>(x_1786.x, x_1786.y)) + vec2<f32>(x_1789.w, x_1789.y));
        let x_1792 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1791.x, x_1791.y, x_1792.z);
        let x_1795 : f32 = u_xlat12.y;
        u_xlat9.w = x_1795;
        let x_1798 : vec4<f32> = u_xlat6;
        let x_1801 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1801.x, x_1801.y)) + vec2<f32>(x_1804.x, x_1804.w));
        let x_1807 : vec4<f32> = u_xlat12;
        let x_1808 : vec3<f32> = vec3<f32>(x_1807.x, x_1807.z, x_1807.w);
        let x_1809 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1808.x, x_1809.y, x_1808.y, x_1808.z);
        let x_1811 : vec4<f32> = u_xlat6;
        let x_1814 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y) * vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y)) + vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1817.y));
        let x_1821 : vec4<f32> = u_xlat6;
        let x_1824 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.w, x_1827.y));
        let x_1831 : f32 = u_xlat9.x;
        u_xlat10.x = x_1831;
        let x_1833 : vec4<f32> = u_xlat6;
        let x_1836 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1839 : vec4<f32> = u_xlat10;
        let x_1841 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1836.x, x_1836.y)) + vec2<f32>(x_1839.x, x_1839.y));
        let x_1842 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
        let x_1845 : vec4<f32> = u_xlat8;
        let x_1847 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1845.x, x_1845.x, x_1845.x, x_1845.x) * x_1847);
        let x_1850 : vec4<f32> = u_xlat8;
        let x_1852 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1850.y, x_1850.y, x_1850.y, x_1850.y) * x_1852);
        let x_1855 : vec4<f32> = u_xlat8;
        let x_1857 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1855.z, x_1855.z, x_1855.z, x_1855.z) * x_1857);
        let x_1859 : vec4<f32> = u_xlat8;
        let x_1861 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1859.w, x_1859.w, x_1859.w, x_1859.w) * x_1861);
        let x_1864 : vec4<f32> = u_xlat13;
        let x_1865 : vec2<f32> = vec2<f32>(x_1864.x, x_1864.y);
        let x_1867 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec13;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1874.xy, x_1874.z);
        u_xlat70 = x_1876;
        let x_1878 : vec4<f32> = u_xlat13;
        let x_1879 : vec2<f32> = vec2<f32>(x_1878.z, x_1878.w);
        let x_1881 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec14;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1888.xy, x_1888.z);
        u_xlat9.x = x_1890;
        let x_1893 : f32 = u_xlat9.x;
        let x_1895 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1893 * x_1895);
        let x_1899 : f32 = u_xlat18.x;
        let x_1900 : f32 = u_xlat70;
        let x_1903 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1899 * x_1900) + x_1903);
        let x_1906 : vec2<f32> = u_xlat48;
        let x_1908 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec15;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1915.xy, x_1915.z);
        u_xlat48.x = x_1917;
        let x_1920 : f32 = u_xlat18.z;
        let x_1922 : f32 = u_xlat48.x;
        let x_1924 : f32 = u_xlat70;
        u_xlat48.x = ((x_1920 * x_1922) + x_1924);
        let x_1928 : vec4<f32> = u_xlat16;
        let x_1929 : vec2<f32> = vec2<f32>(x_1928.x, x_1928.y);
        let x_1931 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1929.x, x_1929.y, x_1931);
        let x_1939 : vec3<f32> = txVec16;
        let x_1941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1939.xy, x_1939.z);
        u_xlat69 = x_1941;
        let x_1943 : f32 = u_xlat18.w;
        let x_1944 : f32 = u_xlat69;
        let x_1947 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1943 * x_1944) + x_1947);
        let x_1951 : vec4<f32> = u_xlat14;
        let x_1952 : vec2<f32> = vec2<f32>(x_1951.x, x_1951.y);
        let x_1954 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec17;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1961.xy, x_1961.z);
        u_xlat69 = x_1963;
        let x_1965 : f32 = u_xlat19.x;
        let x_1966 : f32 = u_xlat69;
        let x_1969 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1965 * x_1966) + x_1969);
        let x_1973 : vec4<f32> = u_xlat14;
        let x_1974 : vec2<f32> = vec2<f32>(x_1973.z, x_1973.w);
        let x_1976 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
        let x_1983 : vec3<f32> = txVec18;
        let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1983.xy, x_1983.z);
        u_xlat69 = x_1985;
        let x_1987 : f32 = u_xlat19.y;
        let x_1988 : f32 = u_xlat69;
        let x_1991 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1987 * x_1988) + x_1991);
        let x_1995 : vec4<f32> = u_xlat15;
        let x_1996 : vec2<f32> = vec2<f32>(x_1995.x, x_1995.y);
        let x_1998 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1996.x, x_1996.y, x_1998);
        let x_2005 : vec3<f32> = txVec19;
        let x_2007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2005.xy, x_2005.z);
        u_xlat69 = x_2007;
        let x_2009 : f32 = u_xlat19.z;
        let x_2010 : f32 = u_xlat69;
        let x_2013 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2009 * x_2010) + x_2013);
        let x_2017 : vec4<f32> = u_xlat16;
        let x_2018 : vec2<f32> = vec2<f32>(x_2017.z, x_2017.w);
        let x_2020 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2018.x, x_2018.y, x_2020);
        let x_2027 : vec3<f32> = txVec20;
        let x_2029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2027.xy, x_2027.z);
        u_xlat69 = x_2029;
        let x_2031 : f32 = u_xlat19.w;
        let x_2032 : f32 = u_xlat69;
        let x_2035 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2031 * x_2032) + x_2035);
        let x_2039 : vec4<f32> = u_xlat17;
        let x_2040 : vec2<f32> = vec2<f32>(x_2039.x, x_2039.y);
        let x_2042 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
        let x_2049 : vec3<f32> = txVec21;
        let x_2051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2049.xy, x_2049.z);
        u_xlat69 = x_2051;
        let x_2053 : f32 = u_xlat20.x;
        let x_2054 : f32 = u_xlat69;
        let x_2057 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2053 * x_2054) + x_2057);
        let x_2061 : vec4<f32> = u_xlat17;
        let x_2062 : vec2<f32> = vec2<f32>(x_2061.z, x_2061.w);
        let x_2064 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2062.x, x_2062.y, x_2064);
        let x_2071 : vec3<f32> = txVec22;
        let x_2073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2071.xy, x_2071.z);
        u_xlat69 = x_2073;
        let x_2075 : f32 = u_xlat20.y;
        let x_2076 : f32 = u_xlat69;
        let x_2079 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2075 * x_2076) + x_2079);
        let x_2083 : vec3<f32> = u_xlat30;
        let x_2084 : vec2<f32> = vec2<f32>(x_2083.x, x_2083.y);
        let x_2086 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
        let x_2093 : vec3<f32> = txVec23;
        let x_2095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2093.xy, x_2093.z);
        u_xlat69 = x_2095;
        let x_2097 : f32 = u_xlat20.z;
        let x_2098 : f32 = u_xlat69;
        let x_2101 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2097 * x_2098) + x_2101);
        let x_2105 : vec2<f32> = u_xlat57;
        let x_2107 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec24;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2114.xy, x_2114.z);
        u_xlat69 = x_2116;
        let x_2118 : f32 = u_xlat20.w;
        let x_2119 : f32 = u_xlat69;
        let x_2122 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2118 * x_2119) + x_2122);
        let x_2126 : vec4<f32> = u_xlat12;
        let x_2127 : vec2<f32> = vec2<f32>(x_2126.x, x_2126.y);
        let x_2129 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2127.x, x_2127.y, x_2129);
        let x_2136 : vec3<f32> = txVec25;
        let x_2138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2136.xy, x_2136.z);
        u_xlat69 = x_2138;
        let x_2140 : f32 = u_xlat8.x;
        let x_2141 : f32 = u_xlat69;
        let x_2144 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2140 * x_2141) + x_2144);
        let x_2148 : vec4<f32> = u_xlat12;
        let x_2149 : vec2<f32> = vec2<f32>(x_2148.z, x_2148.w);
        let x_2151 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
        let x_2158 : vec3<f32> = txVec26;
        let x_2160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2158.xy, x_2158.z);
        u_xlat69 = x_2160;
        let x_2162 : f32 = u_xlat8.y;
        let x_2163 : f32 = u_xlat69;
        let x_2166 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2162 * x_2163) + x_2166);
        let x_2170 : vec2<f32> = u_xlat52;
        let x_2172 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec27;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2179.xy, x_2179.z);
        u_xlat69 = x_2181;
        let x_2183 : f32 = u_xlat8.z;
        let x_2184 : f32 = u_xlat69;
        let x_2187 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2183 * x_2184) + x_2187);
        let x_2191 : vec4<f32> = u_xlat6;
        let x_2192 : vec2<f32> = vec2<f32>(x_2191.x, x_2191.y);
        let x_2194 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2192.x, x_2192.y, x_2194);
        let x_2201 : vec3<f32> = txVec28;
        let x_2203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2201.xy, x_2201.z);
        u_xlat6.x = x_2203;
        let x_2206 : f32 = u_xlat8.w;
        let x_2208 : f32 = u_xlat6.x;
        let x_2211 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2206 * x_2208) + x_2211);
      }
    }
  } else {
    let x_2215 : vec4<f32> = u_xlat3;
    let x_2216 : vec2<f32> = vec2<f32>(x_2215.x, x_2215.y);
    let x_2218 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
    let x_2225 : vec3<f32> = txVec29;
    let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2225.xy, x_2225.z);
    u_xlat67 = x_2227;
  }
  let x_2229 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2229) + 1.0f);
  let x_2233 : f32 = u_xlat67;
  let x_2235 : f32 = x_602.x_MainLightShadowParams.x;
  let x_2238 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2233 * x_2235) + x_2238);
  let x_2243 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2243);
  let x_2248 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2248 >= 1.0f);
  let x_2250 : bool = u_xlatb45;
  let x_2252 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2250 | x_2252);
  let x_2256 : bool = u_xlatb24.x;
  if (x_2256) {
    x_2257 = 1.0f;
  } else {
    let x_2262 : f32 = u_xlat3.x;
    x_2257 = x_2262;
  }
  let x_2263 : f32 = x_2257;
  u_xlat3.x = x_2263;
  let x_2265 : vec3<f32> = vs_TEXCOORD7;
  let x_2267 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2269 : vec3<f32> = (x_2265 + -(x_2267));
  let x_2270 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
  let x_2273 : vec4<f32> = u_xlat6;
  let x_2275 : vec4<f32> = u_xlat6;
  u_xlat24.x = dot(vec3<f32>(x_2273.x, x_2273.y, x_2273.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2280 : f32 = u_xlat24.x;
  let x_2282 : f32 = x_602.x_MainLightShadowParams.z;
  let x_2285 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2280 * x_2282) + x_2285);
  let x_2289 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2289, 0.0f, 1.0f);
  let x_2294 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2294) + 1.0f);
  let x_2298 : f32 = u_xlat24.x;
  let x_2299 : f32 = u_xlat45;
  let x_2302 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2298 * x_2299) + x_2302);
  let x_2311 : f32 = x_2309.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2311 == -1.0f));
  let x_2315 : bool = u_xlatb24.x;
  if (x_2315) {
    let x_2318 : vec3<f32> = vs_TEXCOORD7;
    let x_2321 : vec4<f32> = x_2309.x_MainLightWorldToLight[1i];
    u_xlat24 = (vec2<f32>(x_2318.y, x_2318.y) * vec2<f32>(x_2321.x, x_2321.y));
    let x_2325 : vec4<f32> = x_2309.x_MainLightWorldToLight[0i];
    let x_2327 : vec3<f32> = vs_TEXCOORD7;
    let x_2330 : vec2<f32> = u_xlat24;
    u_xlat24 = ((vec2<f32>(x_2325.x, x_2325.y) * vec2<f32>(x_2327.x, x_2327.x)) + x_2330);
    let x_2333 : vec4<f32> = x_2309.x_MainLightWorldToLight[2i];
    let x_2335 : vec3<f32> = vs_TEXCOORD7;
    let x_2338 : vec2<f32> = u_xlat24;
    u_xlat24 = ((vec2<f32>(x_2333.x, x_2333.y) * vec2<f32>(x_2335.z, x_2335.z)) + x_2338);
    let x_2340 : vec2<f32> = u_xlat24;
    let x_2342 : vec4<f32> = x_2309.x_MainLightWorldToLight[3i];
    u_xlat24 = (x_2340 + vec2<f32>(x_2342.x, x_2342.y));
    let x_2345 : vec2<f32> = u_xlat24;
    u_xlat24 = ((x_2345 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2353 : vec2<f32> = u_xlat24;
    let x_2355 : f32 = x_126.x_GlobalMipBias.x;
    let x_2356 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2353, x_2355);
    u_xlat6 = x_2356;
    let x_2358 : f32 = x_2309.x_MainLightCookieTextureFormat;
    let x_2360 : f32 = x_2309.x_MainLightCookieTextureFormat;
    let x_2362 : f32 = x_2309.x_MainLightCookieTextureFormat;
    let x_2364 : f32 = x_2309.x_MainLightCookieTextureFormat;
    let x_2365 : vec4<f32> = vec4<f32>(x_2358, x_2360, x_2362, x_2364);
    let x_2372 : vec4<bool> = (vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2365.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2372.x, x_2372.y);
    let x_2375 : bool = u_xlatb24.y;
    if (x_2375) {
      let x_2380 : f32 = u_xlat6.w;
      x_2376 = x_2380;
    } else {
      let x_2383 : f32 = u_xlat6.x;
      x_2376 = x_2383;
    }
    let x_2384 : f32 = x_2376;
    u_xlat45 = x_2384;
    let x_2386 : bool = u_xlatb24.x;
    if (x_2386) {
      let x_2390 : vec4<f32> = u_xlat6;
      x_2387 = vec3<f32>(x_2390.x, x_2390.y, x_2390.z);
    } else {
      let x_2393 : f32 = u_xlat45;
      x_2387 = vec3<f32>(x_2393, x_2393, x_2393);
    }
    let x_2395 : vec3<f32> = x_2387;
    let x_2396 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2402 : vec4<f32> = u_xlat6;
  let x_2405 : vec4<f32> = x_126.x_MainLightColor;
  let x_2407 : vec3<f32> = (vec3<f32>(x_2402.x, x_2402.y, x_2402.z) * vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
  let x_2408 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
  let x_2410 : f32 = u_xlat68;
  let x_2412 : vec4<f32> = u_xlat6;
  let x_2414 : vec3<f32> = (vec3<f32>(x_2410, x_2410, x_2410) * vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
  let x_2415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2415.w);
  let x_2417 : vec3<f32> = u_xlat2;
  let x_2419 : vec4<f32> = u_xlat1;
  u_xlat24.x = dot(-(x_2417), vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2424 : f32 = u_xlat24.x;
  let x_2426 : f32 = u_xlat24.x;
  u_xlat24.x = (x_2424 + x_2426);
  let x_2429 : vec4<f32> = u_xlat1;
  let x_2431 : vec2<f32> = u_xlat24;
  let x_2435 : vec3<f32> = u_xlat2;
  let x_2437 : vec3<f32> = ((vec3<f32>(x_2429.x, x_2429.y, x_2429.z) * -(vec3<f32>(x_2431.x, x_2431.x, x_2431.x))) + -(x_2435));
  let x_2438 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
  let x_2440 : vec4<f32> = u_xlat1;
  let x_2442 : vec3<f32> = u_xlat2;
  u_xlat24.x = dot(vec3<f32>(x_2440.x, x_2440.y, x_2440.z), x_2442);
  let x_2446 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2446, 0.0f, 1.0f);
  let x_2450 : f32 = u_xlat24.x;
  u_xlat24.x = (-(x_2450) + 1.0f);
  let x_2455 : f32 = u_xlat24.x;
  let x_2457 : f32 = u_xlat24.x;
  u_xlat24.x = (x_2455 * x_2457);
  let x_2461 : f32 = u_xlat24.x;
  let x_2463 : f32 = u_xlat24.x;
  u_xlat24.x = (x_2461 * x_2463);
  let x_2467 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_2467) * 0.699999988f) + 1.700000048f);
  let x_2474 : f32 = u_xlat0.x;
  let x_2475 : f32 = u_xlat45;
  u_xlat0.x = (x_2474 * x_2475);
  let x_2479 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2479 * 6.0f);
  let x_2491 : vec4<f32> = u_xlat8;
  let x_2494 : f32 = u_xlat0.x;
  let x_2495 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2491.x, x_2491.y, x_2491.z), x_2494);
  u_xlat8 = x_2495;
  let x_2497 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2497 + -1.0f);
  let x_2501 : f32 = x_789.unity_SpecCube0_HDR.w;
  let x_2503 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2501 * x_2503) + 1.0f);
  let x_2508 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2508, 0.0f);
  let x_2512 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2512);
  let x_2516 : f32 = u_xlat0.x;
  let x_2518 : f32 = x_789.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2516 * x_2518);
  let x_2522 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2522);
  let x_2526 : f32 = u_xlat0.x;
  let x_2528 : f32 = x_789.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2526 * x_2528);
  let x_2531 : vec4<f32> = u_xlat8;
  let x_2533 : vec3<f32> = u_xlat0;
  let x_2535 : vec3<f32> = (vec3<f32>(x_2531.x, x_2531.y, x_2531.z) * vec3<f32>(x_2533.x, x_2533.x, x_2533.x));
  let x_2536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
  let x_2538 : f32 = u_xlat64;
  let x_2540 : f32 = u_xlat64;
  let x_2544 : vec2<f32> = ((vec2<f32>(x_2538, x_2538) * vec2<f32>(x_2540, x_2540)) + vec2<f32>(-1.0f, 1.0f));
  let x_2545 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2544.x, x_2544.y, x_2545.z, x_2545.w);
  let x_2548 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2548);
  let x_2551 : vec4<f32> = u_xlat5;
  let x_2554 : f32 = u_xlat42;
  u_xlat30 = (-(vec3<f32>(x_2551.x, x_2551.y, x_2551.z)) + vec3<f32>(x_2554, x_2554, x_2554));
  let x_2557 : vec2<f32> = u_xlat24;
  let x_2559 : vec3<f32> = u_xlat30;
  let x_2561 : vec4<f32> = u_xlat5;
  u_xlat30 = ((vec3<f32>(x_2557.x, x_2557.x, x_2557.x) * x_2559) + vec3<f32>(x_2561.x, x_2561.y, x_2561.z));
  let x_2564 : vec3<f32> = u_xlat0;
  let x_2566 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2564.x, x_2564.x, x_2564.x) * x_2566);
  let x_2568 : vec4<f32> = u_xlat8;
  let x_2570 : vec3<f32> = u_xlat30;
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
  let x_2587 : f32 = x_789.unity_LightData.z;
  u_xlat0.x = (x_2585 * x_2587);
  let x_2590 : vec4<f32> = u_xlat1;
  let x_2593 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat42 = dot(vec3<f32>(x_2590.x, x_2590.y, x_2590.z), vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
  let x_2596 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2596, 0.0f, 1.0f);
  let x_2598 : f32 = u_xlat42;
  let x_2600 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2598 * x_2600);
  let x_2603 : vec3<f32> = u_xlat0;
  let x_2605 : vec4<f32> = u_xlat6;
  let x_2607 : vec3<f32> = (vec3<f32>(x_2603.x, x_2603.x, x_2603.x) * vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
  let x_2608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
  let x_2610 : vec3<f32> = u_xlat2;
  let x_2612 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2614 : vec3<f32> = (x_2610 + vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
  let x_2615 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
  let x_2617 : vec4<f32> = u_xlat6;
  let x_2619 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_2617.x, x_2617.y, x_2617.z), vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
  let x_2624 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2624, 1.17549435e-37f);
  let x_2629 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2629);
  let x_2632 : vec3<f32> = u_xlat0;
  let x_2634 : vec4<f32> = u_xlat6;
  let x_2636 : vec3<f32> = (vec3<f32>(x_2632.x, x_2632.x, x_2632.x) * vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
  let x_2637 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
  let x_2639 : vec4<f32> = u_xlat1;
  let x_2641 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_2639.x, x_2639.y, x_2639.z), vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2646 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2646, 0.0f, 1.0f);
  let x_2650 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2652 : vec4<f32> = u_xlat6;
  u_xlat0.z = dot(vec3<f32>(x_2650.x, x_2650.y, x_2650.z), vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
  let x_2657 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2657, 0.0f, 1.0f);
  let x_2660 : vec3<f32> = u_xlat0;
  let x_2662 : vec3<f32> = u_xlat0;
  let x_2664 : vec2<f32> = (vec2<f32>(x_2660.x, x_2660.z) * vec2<f32>(x_2662.x, x_2662.z));
  let x_2665 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2664.x, x_2665.y, x_2664.y);
  let x_2668 : f32 = u_xlat0.x;
  let x_2670 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2668 * x_2670) + 1.000010014f);
  let x_2676 : f32 = u_xlat0.x;
  let x_2678 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2676 * x_2678);
  let x_2682 : f32 = u_xlat0.z;
  u_xlat42 = max(x_2682, 0.100000001f);
  let x_2685 : f32 = u_xlat42;
  let x_2687 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2685 * x_2687);
  let x_2690 : f32 = u_xlat65;
  let x_2692 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2690 * x_2692);
  let x_2695 : f32 = u_xlat66;
  let x_2697 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2695 / x_2697);
  let x_2700 : vec4<f32> = u_xlat5;
  let x_2702 : vec3<f32> = u_xlat0;
  let x_2705 : vec4<f32> = u_xlat7;
  let x_2707 : vec3<f32> = ((vec3<f32>(x_2700.x, x_2700.y, x_2700.z) * vec3<f32>(x_2702.x, x_2702.x, x_2702.x)) + vec3<f32>(x_2705.x, x_2705.y, x_2705.z));
  let x_2708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
  let x_2710 : vec4<f32> = u_xlat3;
  let x_2712 : vec4<f32> = u_xlat6;
  let x_2714 : vec3<f32> = (vec3<f32>(x_2710.x, x_2710.y, x_2710.z) * vec3<f32>(x_2712.x, x_2712.y, x_2712.z));
  let x_2715 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2714.x, x_2714.y, x_2714.z, x_2715.w);
  let x_2718 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2720 : f32 = x_789.unity_LightData.y;
  u_xlat0.x = min(x_2718, x_2720);
  let x_2725 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2725));
  let x_2729 : f32 = x_2309.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2731 : f32 = x_2309.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2733 : f32 = x_2309.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2735 : f32 = x_2309.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2736 : vec4<f32> = vec4<f32>(x_2729, x_2731, x_2733, x_2735);
  let x_2742 : vec4<bool> = (vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2736.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2742.x, x_2742.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2753 : u32 = u_xlatu_loop_1;
    let x_2754 : u32 = u_xlatu0;
    if ((x_2753 < x_2754)) {
    } else {
      break;
    }
    let x_2757 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2757 >> 2u);
    let x_2760 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2760 & 3u));
    let x_2763 : u32 = u_xlatu64;
    let x_2766 : vec4<f32> = x_789.unity_LightIndices[bitcast<i32>(x_2763)];
    let x_2776 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2781 : vec4<u32> = indexable[x_2776];
    u_xlat64 = dot(x_2766, bitcast<vec4<f32>>(x_2781));
    let x_2784 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2784));
    let x_2787 : vec3<f32> = vs_TEXCOORD7;
    let x_2799 : u32 = u_xlatu64;
    let x_2802 : vec4<f32> = x_2798.x_AdditionalLightsPosition[bitcast<i32>(x_2799)];
    let x_2805 : u32 = u_xlatu64;
    let x_2808 : vec4<f32> = x_2798.x_AdditionalLightsPosition[bitcast<i32>(x_2805)];
    u_xlat30 = ((-(x_2787) * vec3<f32>(x_2802.w, x_2802.w, x_2802.w)) + vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
    let x_2811 : vec3<f32> = u_xlat30;
    let x_2812 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(x_2811, x_2812);
    let x_2814 : f32 = u_xlat67;
    u_xlat67 = max(x_2814, 6.10351562e-05f);
    let x_2816 : f32 = u_xlat67;
    u_xlat48.x = inverseSqrt(x_2816);
    let x_2819 : vec2<f32> = u_xlat48;
    let x_2821 : vec3<f32> = u_xlat30;
    let x_2822 : vec3<f32> = (vec3<f32>(x_2819.x, x_2819.x, x_2819.x) * x_2821);
    let x_2823 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2822.x, x_2822.y, x_2822.z, x_2823.w);
    let x_2825 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_2825);
    let x_2827 : f32 = u_xlat67;
    let x_2828 : u32 = u_xlatu64;
    let x_2831 : f32 = x_2798.x_AdditionalLightsAttenuation[bitcast<i32>(x_2828)].x;
    u_xlat67 = (x_2827 * x_2831);
    let x_2833 : f32 = u_xlat67;
    let x_2835 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2833) * x_2835) + 1.0f);
    let x_2838 : f32 = u_xlat67;
    u_xlat67 = max(x_2838, 0.0f);
    let x_2840 : f32 = u_xlat67;
    let x_2841 : f32 = u_xlat67;
    u_xlat67 = (x_2840 * x_2841);
    let x_2843 : f32 = u_xlat67;
    let x_2844 : f32 = u_xlat69;
    u_xlat67 = (x_2843 * x_2844);
    let x_2846 : u32 = u_xlatu64;
    let x_2849 : vec4<f32> = x_2798.x_AdditionalLightsSpotDir[bitcast<i32>(x_2846)];
    let x_2851 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2849.x, x_2849.y, x_2849.z), vec3<f32>(x_2851.x, x_2851.y, x_2851.z));
    let x_2854 : f32 = u_xlat69;
    let x_2855 : u32 = u_xlatu64;
    let x_2858 : f32 = x_2798.x_AdditionalLightsAttenuation[bitcast<i32>(x_2855)].z;
    let x_2860 : u32 = u_xlatu64;
    let x_2863 : f32 = x_2798.x_AdditionalLightsAttenuation[bitcast<i32>(x_2860)].w;
    u_xlat69 = ((x_2854 * x_2858) + x_2863);
    let x_2865 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2865, 0.0f, 1.0f);
    let x_2867 : f32 = u_xlat69;
    let x_2868 : f32 = u_xlat69;
    u_xlat69 = (x_2867 * x_2868);
    let x_2870 : f32 = u_xlat67;
    let x_2871 : f32 = u_xlat69;
    u_xlat67 = (x_2870 * x_2871);
    let x_2874 : u32 = u_xlatu64;
    u_xlatu69 = (x_2874 >> 5u);
    let x_2877 : u32 = u_xlatu64;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_2877) & 31i)));
    let x_2882 : i32 = u_xlati70;
    let x_2884 : u32 = u_xlatu69;
    let x_2887 : f32 = x_2309.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2884)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_2882) & bitcast<u32>(x_2887)));
    let x_2891 : i32 = u_xlati69;
    if ((x_2891 != 0i)) {
      let x_2901 : u32 = u_xlatu64;
      let x_2904 : f32 = x_2900.x_AdditionalLightsLightTypes[bitcast<i32>(x_2901)].el;
      u_xlati69 = i32(x_2904);
      let x_2906 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_2906 != 0i));
      let x_2910 : u32 = u_xlatu64;
      u_xlati71 = (bitcast<i32>(x_2910) << bitcast<u32>(2i));
      let x_2913 : i32 = u_xlati70;
      if ((x_2913 != 0i)) {
        let x_2917 : vec3<f32> = vs_TEXCOORD7;
        let x_2919 : i32 = u_xlati71;
        let x_2922 : i32 = u_xlati71;
        let x_2926 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_2919 + 1i) / 4i)][((x_2922 + 1i) % 4i)];
        let x_2928 : vec3<f32> = (vec3<f32>(x_2917.y, x_2917.y, x_2917.y) * vec3<f32>(x_2926.x, x_2926.y, x_2926.w));
        let x_2929 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2928.x, x_2928.y, x_2928.z, x_2929.w);
        let x_2931 : i32 = u_xlati71;
        let x_2933 : i32 = u_xlati71;
        let x_2936 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[(x_2931 / 4i)][(x_2933 % 4i)];
        let x_2938 : vec3<f32> = vs_TEXCOORD7;
        let x_2941 : vec4<f32> = u_xlat11;
        let x_2943 : vec3<f32> = ((vec3<f32>(x_2936.x, x_2936.y, x_2936.w) * vec3<f32>(x_2938.x, x_2938.x, x_2938.x)) + vec3<f32>(x_2941.x, x_2941.y, x_2941.z));
        let x_2944 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2944.w);
        let x_2946 : i32 = u_xlati71;
        let x_2949 : i32 = u_xlati71;
        let x_2953 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_2946 + 2i) / 4i)][((x_2949 + 2i) % 4i)];
        let x_2955 : vec3<f32> = vs_TEXCOORD7;
        let x_2958 : vec4<f32> = u_xlat11;
        let x_2960 : vec3<f32> = ((vec3<f32>(x_2953.x, x_2953.y, x_2953.w) * vec3<f32>(x_2955.z, x_2955.z, x_2955.z)) + vec3<f32>(x_2958.x, x_2958.y, x_2958.z));
        let x_2961 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2960.x, x_2960.y, x_2960.z, x_2961.w);
        let x_2963 : vec4<f32> = u_xlat11;
        let x_2965 : i32 = u_xlati71;
        let x_2968 : i32 = u_xlati71;
        let x_2972 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_2965 + 3i) / 4i)][((x_2968 + 3i) % 4i)];
        let x_2974 : vec3<f32> = (vec3<f32>(x_2963.x, x_2963.y, x_2963.z) + vec3<f32>(x_2972.x, x_2972.y, x_2972.w));
        let x_2975 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2974.x, x_2974.y, x_2974.z, x_2975.w);
        let x_2977 : vec4<f32> = u_xlat11;
        let x_2979 : vec4<f32> = u_xlat11;
        let x_2981 : vec2<f32> = (vec2<f32>(x_2977.x, x_2977.y) / vec2<f32>(x_2979.z, x_2979.z));
        let x_2982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2981.x, x_2981.y, x_2982.z, x_2982.w);
        let x_2984 : vec4<f32> = u_xlat11;
        let x_2987 : vec2<f32> = ((vec2<f32>(x_2984.x, x_2984.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2988 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
        let x_2990 : vec4<f32> = u_xlat11;
        let x_2994 : vec2<f32> = clamp(vec2<f32>(x_2990.x, x_2990.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2995 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2994.x, x_2994.y, x_2995.z, x_2995.w);
        let x_2997 : u32 = u_xlatu64;
        let x_3000 : vec4<f32> = x_2900.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2997)];
        let x_3002 : vec4<f32> = u_xlat11;
        let x_3005 : u32 = u_xlatu64;
        let x_3008 : vec4<f32> = x_2900.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3005)];
        let x_3010 : vec2<f32> = ((vec2<f32>(x_3000.x, x_3000.y) * vec2<f32>(x_3002.x, x_3002.y)) + vec2<f32>(x_3008.z, x_3008.w));
        let x_3011 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3010.x, x_3010.y, x_3011.z, x_3011.w);
      } else {
        let x_3015 : i32 = u_xlati69;
        u_xlatb69 = (x_3015 == 1i);
        let x_3017 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_3017);
        let x_3019 : i32 = u_xlati69;
        if ((x_3019 != 0i)) {
          let x_3024 : vec3<f32> = vs_TEXCOORD7;
          let x_3026 : i32 = u_xlati71;
          let x_3029 : i32 = u_xlati71;
          let x_3033 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_3026 + 1i) / 4i)][((x_3029 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3024.y, x_3024.y) * vec2<f32>(x_3033.x, x_3033.y));
          let x_3036 : i32 = u_xlati71;
          let x_3038 : i32 = u_xlati71;
          let x_3041 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[(x_3036 / 4i)][(x_3038 % 4i)];
          let x_3043 : vec3<f32> = vs_TEXCOORD7;
          let x_3046 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3041.x, x_3041.y) * vec2<f32>(x_3043.x, x_3043.x)) + x_3046);
          let x_3048 : i32 = u_xlati71;
          let x_3051 : i32 = u_xlati71;
          let x_3055 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_3048 + 2i) / 4i)][((x_3051 + 2i) % 4i)];
          let x_3057 : vec3<f32> = vs_TEXCOORD7;
          let x_3060 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3055.x, x_3055.y) * vec2<f32>(x_3057.z, x_3057.z)) + x_3060);
          let x_3062 : vec2<f32> = u_xlat53;
          let x_3063 : i32 = u_xlati71;
          let x_3066 : i32 = u_xlati71;
          let x_3070 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_3063 + 3i) / 4i)][((x_3066 + 3i) % 4i)];
          u_xlat53 = (x_3062 + vec2<f32>(x_3070.x, x_3070.y));
          let x_3073 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3073 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3076 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3076);
          let x_3078 : u32 = u_xlatu64;
          let x_3081 : vec4<f32> = x_2900.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3078)];
          let x_3083 : vec2<f32> = u_xlat53;
          let x_3085 : u32 = u_xlatu64;
          let x_3088 : vec4<f32> = x_2900.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3085)];
          let x_3090 : vec2<f32> = ((vec2<f32>(x_3081.x, x_3081.y) * x_3083) + vec2<f32>(x_3088.z, x_3088.w));
          let x_3091 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3090.x, x_3090.y, x_3091.z, x_3091.w);
        } else {
          let x_3094 : vec3<f32> = vs_TEXCOORD7;
          let x_3096 : i32 = u_xlati71;
          let x_3099 : i32 = u_xlati71;
          let x_3103 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_3096 + 1i) / 4i)][((x_3099 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3094.y, x_3094.y, x_3094.y, x_3094.y) * x_3103);
          let x_3105 : i32 = u_xlati71;
          let x_3107 : i32 = u_xlati71;
          let x_3110 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[(x_3105 / 4i)][(x_3107 % 4i)];
          let x_3111 : vec3<f32> = vs_TEXCOORD7;
          let x_3114 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3110 * vec4<f32>(x_3111.x, x_3111.x, x_3111.x, x_3111.x)) + x_3114);
          let x_3116 : i32 = u_xlati71;
          let x_3119 : i32 = u_xlati71;
          let x_3123 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_3116 + 2i) / 4i)][((x_3119 + 2i) % 4i)];
          let x_3124 : vec3<f32> = vs_TEXCOORD7;
          let x_3127 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3123 * vec4<f32>(x_3124.z, x_3124.z, x_3124.z, x_3124.z)) + x_3127);
          let x_3129 : vec4<f32> = u_xlat12;
          let x_3130 : i32 = u_xlati71;
          let x_3133 : i32 = u_xlati71;
          let x_3137 : vec4<f32> = x_2900.x_AdditionalLightsWorldToLights[((x_3130 + 3i) / 4i)][((x_3133 + 3i) % 4i)];
          u_xlat12 = (x_3129 + x_3137);
          let x_3139 : vec4<f32> = u_xlat12;
          let x_3141 : vec4<f32> = u_xlat12;
          let x_3143 : vec3<f32> = (vec3<f32>(x_3139.x, x_3139.y, x_3139.z) / vec3<f32>(x_3141.w, x_3141.w, x_3141.w));
          let x_3144 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3143.x, x_3143.y, x_3143.z, x_3144.w);
          let x_3146 : vec4<f32> = u_xlat12;
          let x_3148 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_3146.x, x_3146.y, x_3146.z), vec3<f32>(x_3148.x, x_3148.y, x_3148.z));
          let x_3151 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_3151);
          let x_3153 : f32 = u_xlat69;
          let x_3155 : vec4<f32> = u_xlat12;
          let x_3157 : vec3<f32> = (vec3<f32>(x_3153, x_3153, x_3153) * vec3<f32>(x_3155.x, x_3155.y, x_3155.z));
          let x_3158 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3157.x, x_3157.y, x_3157.z, x_3158.w);
          let x_3160 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_3160.x, x_3160.y, x_3160.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3165 : f32 = u_xlat69;
          u_xlat69 = max(x_3165, 0.000001f);
          let x_3168 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_3168);
          let x_3170 : f32 = u_xlat69;
          let x_3172 : vec4<f32> = u_xlat12;
          let x_3174 : vec3<f32> = (vec3<f32>(x_3170, x_3170, x_3170) * vec3<f32>(x_3172.z, x_3172.x, x_3172.y));
          let x_3175 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3174.x, x_3174.y, x_3174.z, x_3175.w);
          let x_3178 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3178);
          let x_3182 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3182, 0.0f, 1.0f);
          let x_3186 : vec4<f32> = u_xlat13;
          let x_3189 : vec4<bool> = (vec4<f32>(x_3186.y, x_3186.z, x_3186.y, x_3186.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3189.x, x_3189.y);
          let x_3192 : bool = u_xlatb53.x;
          if (x_3192) {
            let x_3197 : f32 = u_xlat13.x;
            x_3193 = x_3197;
          } else {
            let x_3200 : f32 = u_xlat13.x;
            x_3193 = -(x_3200);
          }
          let x_3202 : f32 = x_3193;
          u_xlat53.x = x_3202;
          let x_3205 : bool = u_xlatb53.y;
          if (x_3205) {
            let x_3210 : f32 = u_xlat13.x;
            x_3206 = x_3210;
          } else {
            let x_3213 : f32 = u_xlat13.x;
            x_3206 = -(x_3213);
          }
          let x_3215 : f32 = x_3206;
          u_xlat53.y = x_3215;
          let x_3217 : vec4<f32> = u_xlat12;
          let x_3219 : f32 = u_xlat69;
          let x_3222 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3217.x, x_3217.y) * vec2<f32>(x_3219, x_3219)) + x_3222);
          let x_3224 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3224 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3227 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3227, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3231 : u32 = u_xlatu64;
          let x_3234 : vec4<f32> = x_2900.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3231)];
          let x_3236 : vec2<f32> = u_xlat53;
          let x_3238 : u32 = u_xlatu64;
          let x_3241 : vec4<f32> = x_2900.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3238)];
          let x_3243 : vec2<f32> = ((vec2<f32>(x_3234.x, x_3234.y) * x_3236) + vec2<f32>(x_3241.z, x_3241.w));
          let x_3244 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
        }
      }
      let x_3251 : vec4<f32> = u_xlat11;
      let x_3254 : f32 = x_126.x_GlobalMipBias.x;
      let x_3255 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3251.x, x_3251.y), x_3254);
      u_xlat11 = x_3255;
      let x_3257 : bool = u_xlatb6.y;
      if (x_3257) {
        let x_3262 : f32 = u_xlat11.w;
        x_3258 = x_3262;
      } else {
        let x_3265 : f32 = u_xlat11.x;
        x_3258 = x_3265;
      }
      let x_3266 : f32 = x_3258;
      u_xlat69 = x_3266;
      let x_3268 : bool = u_xlatb6.x;
      if (x_3268) {
        let x_3272 : vec4<f32> = u_xlat11;
        x_3269 = vec3<f32>(x_3272.x, x_3272.y, x_3272.z);
      } else {
        let x_3275 : f32 = u_xlat69;
        x_3269 = vec3<f32>(x_3275, x_3275, x_3275);
      }
      let x_3277 : vec3<f32> = x_3269;
      let x_3278 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3277.x, x_3277.y, x_3277.z, x_3278.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3284 : vec4<f32> = u_xlat11;
    let x_3286 : u32 = u_xlatu64;
    let x_3289 : vec4<f32> = x_2798.x_AdditionalLightsColor[bitcast<i32>(x_3286)];
    let x_3291 : vec3<f32> = (vec3<f32>(x_3284.x, x_3284.y, x_3284.z) * vec3<f32>(x_3289.x, x_3289.y, x_3289.z));
    let x_3292 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3291.x, x_3291.y, x_3291.z, x_3292.w);
    let x_3294 : f32 = u_xlat68;
    let x_3296 : vec4<f32> = u_xlat11;
    let x_3298 : vec3<f32> = (vec3<f32>(x_3294, x_3294, x_3294) * vec3<f32>(x_3296.x, x_3296.y, x_3296.z));
    let x_3299 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3298.x, x_3298.y, x_3298.z, x_3299.w);
    let x_3301 : vec4<f32> = u_xlat1;
    let x_3303 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_3301.x, x_3301.y, x_3301.z), vec3<f32>(x_3303.x, x_3303.y, x_3303.z));
    let x_3306 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3306, 0.0f, 1.0f);
    let x_3308 : f32 = u_xlat64;
    let x_3309 : f32 = u_xlat67;
    u_xlat64 = (x_3308 * x_3309);
    let x_3311 : f32 = u_xlat64;
    let x_3313 : vec4<f32> = u_xlat11;
    let x_3315 : vec3<f32> = (vec3<f32>(x_3311, x_3311, x_3311) * vec3<f32>(x_3313.x, x_3313.y, x_3313.z));
    let x_3316 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3315.x, x_3315.y, x_3315.z, x_3316.w);
    let x_3318 : vec3<f32> = u_xlat30;
    let x_3319 : vec2<f32> = u_xlat48;
    let x_3322 : vec3<f32> = u_xlat2;
    u_xlat30 = ((x_3318 * vec3<f32>(x_3319.x, x_3319.x, x_3319.x)) + x_3322);
    let x_3324 : vec3<f32> = u_xlat30;
    let x_3325 : vec3<f32> = u_xlat30;
    u_xlat64 = dot(x_3324, x_3325);
    let x_3327 : f32 = u_xlat64;
    u_xlat64 = max(x_3327, 1.17549435e-37f);
    let x_3329 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_3329);
    let x_3331 : f32 = u_xlat64;
    let x_3333 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_3331, x_3331, x_3331) * x_3333);
    let x_3335 : vec4<f32> = u_xlat1;
    let x_3337 : vec3<f32> = u_xlat30;
    u_xlat64 = dot(vec3<f32>(x_3335.x, x_3335.y, x_3335.z), x_3337);
    let x_3339 : f32 = u_xlat64;
    u_xlat64 = clamp(x_3339, 0.0f, 1.0f);
    let x_3341 : vec4<f32> = u_xlat10;
    let x_3343 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(vec3<f32>(x_3341.x, x_3341.y, x_3341.z), x_3343);
    let x_3345 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3345, 0.0f, 1.0f);
    let x_3347 : f32 = u_xlat64;
    let x_3348 : f32 = u_xlat64;
    u_xlat64 = (x_3347 * x_3348);
    let x_3350 : f32 = u_xlat64;
    let x_3352 : f32 = u_xlat9.x;
    u_xlat64 = ((x_3350 * x_3352) + 1.000010014f);
    let x_3355 : f32 = u_xlat67;
    let x_3356 : f32 = u_xlat67;
    u_xlat67 = (x_3355 * x_3356);
    let x_3358 : f32 = u_xlat64;
    let x_3359 : f32 = u_xlat64;
    u_xlat64 = (x_3358 * x_3359);
    let x_3361 : f32 = u_xlat67;
    u_xlat67 = max(x_3361, 0.100000001f);
    let x_3363 : f32 = u_xlat64;
    let x_3364 : f32 = u_xlat67;
    u_xlat64 = (x_3363 * x_3364);
    let x_3366 : f32 = u_xlat65;
    let x_3367 : f32 = u_xlat64;
    u_xlat64 = (x_3366 * x_3367);
    let x_3369 : f32 = u_xlat66;
    let x_3370 : f32 = u_xlat64;
    u_xlat64 = (x_3369 / x_3370);
    let x_3372 : vec4<f32> = u_xlat5;
    let x_3374 : f32 = u_xlat64;
    let x_3377 : vec4<f32> = u_xlat7;
    u_xlat30 = ((vec3<f32>(x_3372.x, x_3372.y, x_3372.z) * vec3<f32>(x_3374, x_3374, x_3374)) + vec3<f32>(x_3377.x, x_3377.y, x_3377.z));
    let x_3380 : vec3<f32> = u_xlat30;
    let x_3381 : vec4<f32> = u_xlat11;
    let x_3384 : vec4<f32> = u_xlat8;
    let x_3386 : vec3<f32> = ((x_3380 * vec3<f32>(x_3381.x, x_3381.y, x_3381.z)) + vec3<f32>(x_3384.x, x_3384.y, x_3384.z));
    let x_3387 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3386.x, x_3386.y, x_3386.z, x_3387.w);

    continuing {
      let x_3389 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3389 + bitcast<u32>(1i));
    }
  }
  let x_3391 : vec4<f32> = u_xlat4;
  let x_3393 : f32 = u_xlat21;
  let x_3396 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_3391.x, x_3391.y, x_3391.z) * vec3<f32>(x_3393, x_3393, x_3393)) + vec3<f32>(x_3396.x, x_3396.y, x_3396.z));
  let x_3399 : vec4<f32> = u_xlat8;
  let x_3401 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3399.x, x_3399.y, x_3399.z) + x_3401);
  let x_3405 : f32 = u_xlat63;
  let x_3407 : vec3<f32> = u_xlat0;
  let x_3408 : vec3<f32> = (vec3<f32>(x_3405, x_3405, x_3405) * x_3407);
  let x_3409 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3408.x, x_3408.y, x_3408.z, x_3409.w);
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

